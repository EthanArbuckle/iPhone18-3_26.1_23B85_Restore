@interface VMUSampler
- (BOOL)start;
- (BOOL)stop;
- (BOOL)waitUntilDone;
- (BOOL)wasAllRecursionPreviouslyPrinted:(id)a3;
- (VMUSampler)initWithPID:(int)a3 task:(unsigned int)a4 processName:(id)a5 is64Bit:(BOOL)a6 options:(unint64_t)a7;
- (_CSTypeRef)symbolicator;
- (id)dispatchQueueNameForSerialNumber:(unint64_t)a3 returnedConcurrentFlag:(BOOL *)a4 returnedThreadId:(unint64_t *)a5;
- (id)formatFrame:(unint64_t)a3 showBinaryImage:(BOOL)a4;
- (id)outputString;
- (id)sampleAllThreadsOnce;
- (id)samples;
- (id)setUpForFormatFrame:(unint64_t)a3;
- (id)stopSamplingAndReturnCallNode;
- (id)threadDescriptionStringForBacktrace:(id)a3 returnedAddress:(unint64_t *)a4;
- (id)threadNameForThread:(unsigned int)a3 returnedThreadId:(unint64_t *)a4 returnedDispatchQueueSerialNum:(unint64_t *)a5;
- (unint64_t)recordSampleTo:(id)a3 timestamp:(unint64_t)a4 thread:(unsigned int)a5 clearMemoryCache:(BOOL)a6;
- (void)_checkDispatchThreadLimits;
- (void)_fixupStacks:(id)a3;
- (void)_runSamplingThread;
- (void)dealloc;
- (void)flushData;
- (void)initializeSamplingContextWithOptions:(int)a3;
- (void)printRecursiveBacktrace:(id)a3 threadIndex:(unsigned int)a4;
- (void)sampleForDuration:(unsigned int)a3 interval:(unsigned int)a4;
- (void)setSamplingInterval:(double)a3;
- (void)setSymbolicator:(_CSTypeRef)a3;
- (void)setTimeLimit:(double)a3;
- (void)writeOutput:(id)a3 append:(BOOL)a4;
@end

@implementation VMUSampler

- (id)sampleAllThreadsOnce
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(VMUSampler *)self initializeSamplingContextWithOptions:0];
  if (self->_samplingContext)
  {
    if ([(VMUSampler *)self recordSampleTo:v3 timestamp:mach_absolute_time() thread:0 clearMemoryCache:0])
    {
      [(VMUSampler *)self _fixupStacks:v3];
    }

    else
    {

      v3 = 0;
    }

    v3 = v3;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(VMUSampler *)self stop];
  previousThreadList = self->_previousThreadList;
  if (previousThreadList)
  {
    if (self->_previousThreadCount)
    {
      v4 = 0;
      v5 = MEMORY[0x1E69E9A60];
      do
      {
        mach_port_deallocate(*v5, self->_previousThreadList[v4++]);
      }

      while (v4 < self->_previousThreadCount);
      previousThreadList = self->_previousThreadList;
    }

    free(previousThreadList);
  }

  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSRelease();
  self->_symbolicator._opaque_1 = 0;
  self->_symbolicator._opaque_2 = 0;
  task = self->_task;
  if (task + 1 >= 2 && self->_needTaskPortDealloc)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], task);
  }

  if (self->_samplingContext)
  {
    destroy_sampling_context();
    self->_samplingContext = 0;
  }

  v9.receiver = self;
  v9.super_class = VMUSampler;
  [(VMUSampler *)&v9 dealloc];
}

- (BOOL)stop
{
  if (self->_sampling)
  {
    self->_sampling = 0;
    [(NSConditionLock *)self->_stateLock lockWhenCondition:0];
    [(NSConditionLock *)self->_stateLock unlock];
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate samplingDidStop:self];
      }
    }
  }

  return 1;
}

- (VMUSampler)initWithPID:(int)a3 task:(unsigned int)a4 processName:(id)a5 is64Bit:(BOOL)a6 options:(unint64_t)a7
{
  v11 = a5;
  v42.receiver = self;
  v42.super_class = VMUSampler;
  v12 = [(VMUSampler *)&v42 init];
  v13 = v12;
  if (!v12)
  {
LABEL_27:
    v14 = v13;
    goto LABEL_28;
  }

  v14 = 0;
  if (a3 && a4)
  {
    v12->_pid = a3;
    v12->_task = a4;
    v12->_options = a7 | ((a7 & 0x40) >> 1);
    v15 = [[VMUProcInfo alloc] initWithPid:v12->_pid];
    if ([(VMUProcInfo *)v15 shouldAnalyzeWithCorpse])
    {
      v13->_options |= 0x200uLL;
      if ((a7 & 0x20) != 0)
      {
LABEL_6:
        if ((a7 & 0x10) == 0)
        {
LABEL_16:
          v25 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:259];
          lastThreadBacktraceMap = v13->_lastThreadBacktraceMap;
          v13->_lastThreadBacktraceMap = v25;

          v13->_numberOfCopiedBacktraces = 0;
          if ((a7 & 0x40) != 0)
          {
            v13->_symbolicator._opaque_1 = 0;
            v13->_symbolicator._opaque_2 = 0;
          }

          else if ((a7 & 0x20) != 0)
          {
            if (initWithPID_task_processName_is64Bit_options__once_token != -1)
            {
              [VMUSampler initWithPID:task:processName:is64Bit:options:];
            }

            v13->_symbolicator = initWithPID_task_processName_is64Bit_options__symbolicatorForThisToolTask;
            opaque_1 = v13->_symbolicator._opaque_1;
            opaque_2 = v13->_symbolicator._opaque_2;
            CSRetain();
            v31 = v13->_symbolicator._opaque_1;
            v32 = v13->_symbolicator._opaque_2;
            CSSymbolicatorGetSymbolWithMangledNameFromSymbolOwnerWithNameAtTime();
          }

          else
          {
            task = v13->_task;
            if (a7)
            {
              CSSymbolicatorGetFlagsForNListOnlyData();
            }

            else
            {
              v28 = v13->_task;
            }

            v13->_symbolicator._opaque_1 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
            v13->_symbolicator._opaque_2 = v33;
          }

          v34 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
          stateLock = v13->_stateLock;
          v13->_stateLock = v34;

          v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
          samples = v13->_samples;
          v13->_samples = v36;

          info = 0;
          mach_timebase_info(&info);
          LODWORD(v39) = info.denom;
          LODWORD(v38) = info.numer;
          v13->_tbRate = 1000000000.0 / v38 * v39;
          v13->_interval = 0.01;

          goto LABEL_27;
        }

LABEL_13:
        v21 = [[VMUProcessDescription alloc] initWithTask:v13->_task getBinariesList:1];
        processDescription = v13->_processDescription;
        v13->_processDescription = v21;

        v23 = v13->_processDescription;
        if (v23 && ![(VMUProcessDescription *)v23 pid])
        {
          v24 = v13->_processDescription;
          v13->_processDescription = 0;
        }

        goto LABEL_16;
      }
    }

    else if ((a7 & 0x20) != 0)
    {
      goto LABEL_6;
    }

    if (v11)
    {
      v16 = [v11 copy];
      processName = v13->_processName;
      v13->_processName = v16;
    }

    else
    {
      processName = [(VMUProcInfo *)v15 userAppName];
      v18 = [processName lastPathComponent];
      v19 = [v18 copy];
      v20 = v13->_processName;
      v13->_processName = v19;
    }

    if ((a7 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_28:

  return v14;
}

uint64_t __59__VMUSampler_initWithPID_task_processName_is64Bit_options___block_invoke()
{
  v0 = *MEMORY[0x1E69E9A60];
  CSSymbolicatorGetFlagsForNListOnlyData();
  result = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  *&initWithPID_task_processName_is64Bit_options__symbolicatorForThisToolTask = result;
  *(&initWithPID_task_processName_is64Bit_options__symbolicatorForThisToolTask + 1) = v2;
  return result;
}

- (void)initializeSamplingContextWithOptions:(int)a3
{
  if (self->_samplingContext)
  {
    if (self->_samplingContextOptions == a3)
    {
      return;
    }

    destroy_sampling_context();
    self->_samplingContext = 0;
    self->_samplingContextOptions = 0;
  }

  v5 = [MEMORY[0x1E695DF00] date];
  opaque_1 = self->_symbolicator._opaque_1;
  options = self->_options;
  if ((options & 0x200) != 0)
  {
    v10 = (options >> 3) & 0x20 | (options >> 2) & 0x10 | (options >> 4) & 0x1C0 | a3 | 0x10;
  }

  else
  {
    opaque_2 = self->_symbolicator._opaque_2;
    v9 = self->_symbolicator._opaque_1;
    v10 = (options >> 3) & 0x20 | (options >> 2) & 0x10 | (options >> 4) & 0x1C0 | a3;
  }

  pid = self->_pid;
  task = self->_task;
  sampling_context_for_task_pid_symbolicator = create_sampling_context_for_task_pid_symbolicator();
  self->_samplingContext = sampling_context_for_task_pid_symbolicator;
  self->_samplingContextOptions = v10;
  if (!sampling_context_for_task_pid_symbolicator && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VMUSampler initializeSamplingContextWithOptions:];
  }

  if (g_environment_flags == 1)
  {
    [v5 timeIntervalSinceNow];
    NSLog(&cfstr_TimeToInitiali.isa, -v14);
  }
}

- (void)_checkDispatchThreadLimits
{
  v4 = 0;
  v5 = 0;
  if (proc_pidinfo(self->_pid, 12, 0, &v4, 16) >= 16)
  {
    v3 = BYTE4(v5);
    if ((v5 & 0x100000000) != 0)
    {
      ++self->_dispatchThreadSoftLimitCount;
    }

    if ((v3 & 2) != 0)
    {
      ++self->_dispatchThreadHardLimitCount;
    }
  }
}

- (unint64_t)recordSampleTo:(id)a3 timestamp:(unint64_t)a4 thread:(unsigned int)a5 clearMemoryCache:(BOOL)a6
{
  v6 = a6;
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v56 = a5;
  act_list = 0;
  act_listCnt = 0;
  v53 = 0;
  *thread_info_out = 0u;
  v52 = 0u;
  if (!self->_samplingContext)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VMUSampler recordSampleTo:timestamp:thread:clearMemoryCache:];
    }

    goto LABEL_26;
  }

  if (a5)
  {
    act_list = &v56;
    v10 = 1;
    act_listCnt = 1;
  }

  else
  {
    if (task_threads(self->_task, &act_list, &act_listCnt))
    {
      v11 = 1;
    }

    else
    {
      v11 = act_list == 0;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VMUSampler recordSampleTo:? timestamp:? thread:? clearMemoryCache:?];
      }

      goto LABEL_26;
    }

    v10 = act_listCnt;
  }

  v12 = self->_previousThreadCount != v10;
  if (self->_recordThreadStates)
  {
    v13 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
    if (act_listCnt)
    {
      for (i = 0; i < act_listCnt; ++i)
      {
        v15 = act_list[i];
        thread_info_outCnt[0] = 10;
        if (!thread_info(v15, 3u, thread_info_out, thread_info_outCnt))
        {
          v13[i] = DWORD2(v52);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (task_suspend2(self->_task, &self->_suspensionToken))
  {
    if (v13)
    {
      free(v13);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VMUSampler recordSampleTo:? timestamp:? thread:? clearMemoryCache:?];
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v19 = act_listCnt;
  if (self->_dispatchThreadSoftLimit - 1 < act_listCnt || self->_dispatchThreadHardLimit - 1 < act_listCnt)
  {
    [(VMUSampler *)self _checkDispatchThreadLimits];
    v19 = act_listCnt;
  }

  if (act_list && v19)
  {
    v45 = __PAIR64__(v12, v6);
    v46 = v9;
    self->_mainThread = *act_list;
    v47 = (BYTE1(self->_options) >> 5) & 1;
LABEL_36:
    v20 = 0;
    v48 = 0;
    v21 = g_environment_flags;
    v22 = MEMORY[0x1E69E9C10];
    while (1)
    {
      v23 = act_list[v20];
      if (v13 && !v13[v20])
      {
        goto LABEL_68;
      }

      v50 = 10;
      v24 = thread_info(v23, 3u, thread_info_out, &v50);
      if (v24)
      {
        v25 = v24;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          pid = self->_pid;
          thread_info_outCnt[0] = 67109888;
          thread_info_outCnt[1] = pid;
          v58 = 1024;
          v59 = v20;
          v60 = 1024;
          v61 = v23;
          v62 = 1024;
          v63 = v25;
          _os_log_error_impl(&dword_1C679D000, v22, OS_LOG_TYPE_ERROR, "[VMUSampler recordSampleTo:...] thread_info failed for pid %u thread index %u thread %u, err %d", thread_info_outCnt, 0x1Au);
        }

        goto LABEL_67;
      }

      v27 = NSMapGet(self->_lastThreadBacktraceMap, v23);
      v28 = v27;
      if (!v27)
      {
        break;
      }

      v29 = thread_info_out[1];
      v30 = *(v27 + 1);
      if (thread_info_out[1] < v30)
      {
        v29 = thread_info_out[1] + 1000000;
      }

      if (v29 != v30 || thread_info_out[0] - *v27 != thread_info_out[1] < v30)
      {
        break;
      }

      v33 = *(v27 + 1);
      ++self->_numberOfCopiedBacktraces;
      if (v33)
      {
        goto LABEL_56;
      }

LABEL_66:

LABEL_67:
      v19 = act_listCnt;
LABEL_68:
      if (++v20 >= v19)
      {
        v9 = v46;
        v6 = v45;
        if ((v45 & 0x100000000) != 0)
        {
          goto LABEL_70;
        }

        goto LABEL_89;
      }
    }

    if (v21)
    {
      v32 = [MEMORY[0x1E695DF00] date];

      v48 = v32;
    }

    v33 = [[VMUBacktrace alloc] initWithSamplingContext:self->_samplingContext thread:v23];
    if (v21)
    {
      [v48 timeIntervalSinceNow];
      self->_timeSpentSampling = self->_timeSpentSampling - v34;
    }

    if (!v33)
    {
      goto LABEL_66;
    }

LABEL_56:
    [(VMUBacktrace *)v33 setTimestamp:a4, v45];
    v33->_callstack.context.pid = self->_pid;
    if (v13)
    {
      v35 = v13[v20];
    }

    else
    {
      v35 = 0;
    }

    v33->_callstack.context.run_state = v35;
    if (!v28)
    {
      v36 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
      if (!v36)
      {
LABEL_63:
        if (v47)
        {
          [(VMUSampler *)self printRecursiveBacktrace:v33 threadIndex:v20];
        }

        [v46 addObject:v33];
        goto LABEL_66;
      }

      v28 = v36;
      NSMapInsert(self->_lastThreadBacktraceMap, v23, v36);
      HIDWORD(v45) = 1;
    }

    *v28 = *thread_info_out;
    v28[1] = v33;
    goto LABEL_63;
  }

  self->_mainThread = 0;
  v47 = (BYTE1(self->_options) >> 5) & 1;
  if (v19)
  {
    v45 = __PAIR64__(v12, v6);
    v46 = v9;
    goto LABEL_36;
  }

  v48 = 0;
  if (v12)
  {
LABEL_70:
    if (self->_previousThreadCount)
    {
      v37 = 0;
      v38 = 0;
      v39 = MEMORY[0x1E69E9A60];
      do
      {
        v40 = self->_previousThreadList[v37];
        if (act_listCnt <= v38)
        {
LABEL_76:
          mach_port_deallocate(*v39, self->_previousThreadList[v37]);
          NSMapRemove(self->_lastThreadBacktraceMap, v40);
        }

        else
        {
          v41 = 0;
          while (act_list[v38 + v41] != v40)
          {
            if (act_listCnt - v38 == ++v41)
            {
              goto LABEL_76;
            }
          }

          if (!v41)
          {
            ++v38;
          }

          if (!a5)
          {
            mach_port_deallocate(*v39, self->_previousThreadList[v37]);
          }
        }

        ++v37;
      }

      while (v37 < self->_previousThreadCount);
      v19 = act_listCnt;
    }

    maxPreviousThreadCount = self->_maxPreviousThreadCount;
    if (maxPreviousThreadCount >= v19)
    {
      previousThreadList = self->_previousThreadList;
    }

    else
    {
      v43 = 2 * maxPreviousThreadCount;
      if (v43 > v19)
      {
        v19 = v43;
      }

      self->_maxPreviousThreadCount = v19;
      previousThreadList = malloc_type_realloc(self->_previousThreadList, 4 * v19, 0x100004052888210uLL);
      self->_previousThreadList = previousThreadList;
      v19 = act_listCnt;
    }

    memcpy(previousThreadList, act_list, 4 * v19);
    v19 = act_listCnt;
    self->_previousThreadCount = act_listCnt;
  }

LABEL_89:
  if (v19)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], act_list, 4 * v19);
    act_listCnt = 0;
  }

  if (v13)
  {
    free(v13);
  }

  if (v6 && self->_samplingContext)
  {
    sampling_context_clear_cache();
  }

  task_resume2(self->_suspensionToken);
  self->_stacksFixed = 0;
  if (!(([v9 count] != 0) | v47 & 1) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VMUSampler recordSampleTo:timestamp:thread:clearMemoryCache:];
  }

  v16 = [v9 count];

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)_fixupStacks:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_stacksFixed && self->_samplingContext)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) fixupStackWithSamplingContext:self->_samplingContext symbolicator:{self->_symbolicator._opaque_1, self->_symbolicator._opaque_2}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    self->_stacksFixed = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_runSamplingThread
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)start
{
  if (self->_sampling)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = [(NSConditionLock *)self->_stateLock tryLockWhenCondition:0];
    if (v2)
    {
      self->_sampling = 1;
      [(NSConditionLock *)self->_stateLock unlockWithCondition:1];
      [(NSMutableArray *)self->_samples removeAllObjects];
      self->_numberOfSamples = 0;
      if (self->_interval > 0.0)
      {
        [MEMORY[0x1E696AF00] detachNewThreadSelector:sel__runSamplingThread toTarget:self withObject:0];
      }

      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [self->_delegate samplingDidStart:self];
      }

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (BOOL)waitUntilDone
{
  if (self->_sampling)
  {
    [(NSConditionLock *)self->_stateLock lockWhenCondition:0];
    [(NSConditionLock *)self->_stateLock unlock];
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate samplingDidStop:self];
      }
    }
  }

  return 1;
}

- (void)setSamplingInterval:(double)a3
{
  if (a3 > 0.0)
  {
    self->_interval = a3;
  }
}

- (void)setTimeLimit:(double)a3
{
  if (a3 >= 0.0)
  {
    self->_timeLimit = a3;
  }
}

- (void)setSymbolicator:(_CSTypeRef)a3
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  if ((CSIsNull() & 1) == 0)
  {
    v6 = self->_symbolicator._opaque_1;
    v7 = self->_symbolicator._opaque_2;
    CSRelease();
  }

  self->_symbolicator._opaque_1 = CSRetain();
  self->_symbolicator._opaque_2 = v8;
}

- (_CSTypeRef)symbolicator
{
  opaque_2 = self->_symbolicator._opaque_2;
  opaque_1 = self->_symbolicator._opaque_1;
  result._opaque_2 = opaque_2;
  result._opaque_1 = opaque_1;
  return result;
}

- (id)samples
{
  [(VMUSampler *)self stop];
  samples = self->_samples;

  return samples;
}

- (void)flushData
{
  if (!self->_sampling)
  {
    [(NSMutableArray *)self->_samples removeAllObjects];
    self->_numberOfSamples = 0;
    NSResetMapTable(self->_lastThreadBacktraceMap);
    self->_previousThreadCount = 0;
  }
}

- (id)threadNameForThread:(unsigned int)a3 returnedThreadId:(unint64_t *)a4 returnedDispatchQueueSerialNum:(unint64_t *)a5
{
  samplingContext = self->_samplingContext;
  if (samplingContext)
  {
    samplingContext = thread_name_for_thread_port();
    if (samplingContext)
    {
      samplingContext = [MEMORY[0x1E696AEC0] stringWithUTF8String:samplingContext];
    }

    v5 = vars8;
  }

  return samplingContext;
}

- (id)dispatchQueueNameForSerialNumber:(unint64_t)a3 returnedConcurrentFlag:(BOOL *)a4 returnedThreadId:(unint64_t *)a5
{
  if (self->_samplingContext)
  {
    if (a3)
    {
      v6 = dispatch_queue_name_for_serial_number();
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (!a4)
      {
LABEL_5:
        if (v6)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_14;
      }
    }

    *a4 = 0;
    goto LABEL_5;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_14:

  return v7;
}

- (id)threadDescriptionStringForBacktrace:(id)a3 returnedAddress:(unint64_t *)a4
{
  v6 = a3;
  if (!self->_threadPortToNameMap)
  {
    v7 = objc_opt_new();
    threadPortToNameMap = self->_threadPortToNameMap;
    self->_threadPortToNameMap = v7;

    v9 = objc_opt_new();
    dispatchQueueSerialNumToNameMap = self->_dispatchQueueSerialNumToNameMap;
    self->_dispatchQueueSerialNumToNameMap = v9;
  }

  v11 = [v6 thread];
  v12 = [(VMUSampler *)self mainThread];
  v38 = 0;
  v39 = 0;
  v13 = [(VMUSampler *)self threadNameForThread:v11 returnedThreadId:&v39 returnedDispatchQueueSerialNum:&v38];
  v14 = [v13 length];
  v15 = [v6 dispatchQueueSerialNumber];
  v16 = v15;
  if (v11 == v12)
  {
    if (!v15 || v38 != v15)
    {
      goto LABEL_13;
    }
  }

  else if (!v15)
  {
LABEL_13:
    v22 = self->_threadPortToNameMap;
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    v24 = v23 = a4;
    v19 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v24];

    a4 = v23;
    if (!v19)
    {
      if (v39)
      {
        [MEMORY[0x1E696AD60] stringWithFormat:@"Thread_%qu", v39];
      }

      else
      {
        [MEMORY[0x1E696AD60] stringWithFormat:@"Thread_%x", v11];
      }
      v25 = ;
      v26 = v25;
      if (v14)
      {
        [v25 appendFormat:@": %@", v13];
      }

      else if (v11 == v12)
      {
        [v25 appendFormat:@": %@", kVMUMainThreadName[0]];
        if (!v38 && (self->_options & 4) == 0)
        {
          [v26 appendString:@"   DispatchQueue_<multiple>"];
        }
      }

      v27 = self->_threadPortToNameMap;
      v28 = MEMORY[0x1E696AD98];
      v19 = v26;
      v29 = [v28 numberWithUnsignedInt:v11];
      [(NSMutableDictionary *)v27 setObject:v19 forKeyedSubscript:v29];
    }

    v16 = v11;
LABEL_25:
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((self->_options & 4) != 0)
  {
    goto LABEL_13;
  }

  v17 = self->_dispatchQueueSerialNumToNameMap;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
  v19 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v18];

  if (v19)
  {
    goto LABEL_25;
  }

  v37 = 0;
  v36 = 0;
  v20 = [(VMUSampler *)self dispatchQueueNameForSerialNumber:v16 returnedConcurrentFlag:&v37 returnedThreadId:&v36];
  if (v36 || v37)
  {
    v21 = [MEMORY[0x1E696AD60] stringWithFormat:@"Thread_%qu", v39];
  }

  else
  {
    v21 = [MEMORY[0x1E696AD60] stringWithString:@"Thread_<multiple>"];
  }

  v19 = v21;
  if (v37)
  {
    v31 = "concurrent";
  }

  else
  {
    v31 = "serial";
  }

  [v21 appendFormat:@"   DispatchQueue_%qu: %@  (%s)", v16, v20, v31];
  if (v36 || !v37)
  {
    v32 = self->_dispatchQueueSerialNumToNameMap;
    v33 = MEMORY[0x1E696AD98];
    v34 = v19;
    v35 = [v33 numberWithUnsignedLongLong:v16];
    [(NSMutableDictionary *)v32 setObject:v34 forKeyedSubscript:v35];
  }

  if (a4)
  {
LABEL_26:
    *a4 = v16;
  }

LABEL_27:

  return v19;
}

- (void)sampleForDuration:(unsigned int)a3 interval:(unsigned int)a4
{
  [(VMUSampler *)self setSamplingInterval:a4 / 1000000.0];
  [(VMUSampler *)self setTimeLimit:a3];
  [(VMUSampler *)self start];

  [(VMUSampler *)self waitUntilDone];
}

- (id)stopSamplingAndReturnCallNode
{
  v3 = objc_autoreleasePoolPush();
  [(VMUSampler *)self stop];
  [(VMUSampler *)self _fixupStacks:self->_samples];
  v4 = [VMUCallTreeNode rootForSamples:self->_samples symbolicator:self->_symbolicator._opaque_1 sampler:self->_symbolicator._opaque_2 options:self, ((self->_options >> 2) & 0x21 | self->_options & 2) ^ 1];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)outputString
{
  v3 = objc_autoreleasePoolPush();
  if (!self->_processName)
  {
    self->_processName = @"unknown-process";
  }

  v4 = self->_interval * 1000.0;
  if (v4 <= 1)
  {
    v5 = @"Analysis of sampling %@ (pid %d) every %d millisecond\n";
  }

  else
  {
    v5 = @"Analysis of sampling %@ (pid %d) every %d milliseconds\n";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, self->_processName, self->_pid, v4];
  if (self->_dispatchThreadSoftLimitCount || self->_dispatchThreadHardLimitCount)
  {
    v7 = [MEMORY[0x1E696AD60] string];
    v8 = v7;
    if (self->_dispatchThreadSoftLimitCount)
    {
      [v7 appendFormat:@"Dispatch Thread %@ Limit: %u reached in %u of %u samples -- too many dispatch threads blocked in synchronous operations\n", @"Soft", self->_dispatchThreadSoftLimit, self->_dispatchThreadSoftLimitCount, self->_numberOfSamples];
    }

    if (self->_dispatchThreadHardLimitCount)
    {
      [v8 appendFormat:@"Dispatch Thread %@ Limit: %u reached in %u of %u samples -- too many dispatch threads blocked in synchronous operations\n", @"Hard", self->_dispatchThreadHardLimit, self->_dispatchThreadHardLimitCount, self->_numberOfSamples];
    }

    [v8 appendString:@"\n"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VMUProcessDescription *)self->_processDescription description];
  v10 = [(VMUProcessDescription *)self->_processDescription binaryImagesDescription];
  v11 = [(VMUSampler *)self stopSamplingAndReturnCallNode];
  v12 = [v11 fullOutputWithThreshold:5];
  v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v6];
  if ([v9 length])
  {
    [v13 appendString:v9];
  }

  if ([v8 length])
  {
    [v13 appendString:v8];
  }

  [v13 appendString:v12];
  if ([v10 length])
  {
    [v13 appendFormat:@"\n%@", v10];
  }

  objc_autoreleasePoolPop(v3);

  return v13;
}

- (void)writeOutput:(id)a3 append:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(VMUSampler *)self outputString];
  v9 = [v8 UTF8String];

  options = self->_options;
  if (v6)
  {
    v11 = [v6 UTF8String];
    v12 = v11;
    if (v4)
    {
      v13 = "ae";
    }

    else
    {
      v13 = "we";
    }

    v14 = fopen(v11, v13);
    v15 = 1;
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    processName = self->_processName;
    v27 = self->_options;
    v28 = v7;
    if (!processName)
    {
      self->_processName = @"unknown-process";

      processName = self->_processName;
    }

    v19 = [(NSString *)processName stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v20 setDateFormat:@"yyyy-MM-dd_HHmmss"];
    v21 = [(VMUProcessDescription *)self->_processDescription date];
    if (!v21)
    {
      v21 = [MEMORY[0x1E695DF00] date];
    }

    v22 = [v20 stringFromDate:v21];
    v26 = v19;
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%@_%@_XXXX.sample.txt", v19, v22];
    snprintf(__str, 0x400uLL, "%s", [v23 UTF8String]);
    v24 = mkstemps(__str, 11);
    v15 = v24 >= 0;
    if (v24 < 0)
    {
      fwrite("Unable to create secure temp file\n", 0x22uLL, 1uLL, *MEMORY[0x1E69E9848]);
      v12 = 0;
      v14 = 0;
    }

    else
    {
      v14 = fdopen(v24, "we");
      v12 = __str;
    }

    options = v27;
    v7 = v28;
    if (v14)
    {
LABEL_6:
      v16 = strlen(v9);
      if (!fwrite(v9, v16, 1uLL, v14))
      {
        [VMUSampler writeOutput:v12 append:?];
        v15 = 0;
      }

      fclose(v14);
      if (geteuid())
      {
        if (v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        chmod(v12, 0x1A4u);
        if (v15)
        {
LABEL_10:
          fprintf(*MEMORY[0x1E69E9848], "Sample analysis of process %d written to file %s\n", self->_pid, v12);
          LOBYTE(v17) = 0;
          if (v6)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      v17 = (options >> 3) & 1;
      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  perror("fopen");
  fprintf(*MEMORY[0x1E69E9848], "Unable to open/create sample file %s\n", v12);
  v17 = (options >> 3) & 1;
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_20:
  if ((v17 & 1) == 0)
  {
    putchar(10);
    printf("%s", v9);
    putchar(10);
  }

LABEL_22:
  objc_autoreleasePoolPop(v7);

  v25 = *MEMORY[0x1E69E9840];
}

- (id)setUpForFormatFrame:(unint64_t)a3
{
  v5 = objc_opt_new();
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  }

  else
  {
    v9 = @"???";
  }

  [v5 setObject:v9 forKeyedSubscript:@"region"];
  if (CSIsNull())
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v11 = @"imageOffset";
  }

  else
  {
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:BaseAddress];
    [v5 setObject:v13 forKeyedSubscript:@"base"];

    if (a3 >= BaseAddress)
    {
      v14 = a3 - BaseAddress;
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
    [v5 setObject:v15 forKeyedSubscript:@"imageOffset"];

    CSSymbolOwnerGetSymbolWithAddress();
    if (CSIsNull())
    {
      goto LABEL_17;
    }

    v16 = CSSymbolGetName();
    if (v16)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
      [v5 setObject:v17 forKeyedSubscript:@"symbol"];
    }

    else
    {
      [v5 setObject:@"???" forKeyedSubscript:@"symbol"];
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3 - CSSymbolGetRange()];
    [v5 setObject:v18 forKeyedSubscript:@"symbolLocation"];

    CSSymbolOwnerGetSourceInfoWithAddress();
    if (CSIsNull())
    {
      goto LABEL_17;
    }

    Filename = CSSourceInfoGetFilename();
    if (!Filename)
    {
      goto LABEL_17;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Filename];
    [v5 setObject:v20 forKeyedSubscript:@"sourceFile"];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:CSSourceInfoGetLineNumber()];
    v11 = @"sourceLine";
  }

  [v5 setObject:v10 forKeyedSubscript:v11];

LABEL_17:

  return v5;
}

- (id)formatFrame:(unint64_t)a3 showBinaryImage:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(VMUSampler *)self setUpForFormatFrame:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"region"];
    if ([v7 length] <= 0x1E)
    {
      v8 = [v7 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];

      v7 = v8;
    }

    v9 = [v6 objectForKeyedSubscript:@"base"];
    v10 = [v9 unsignedLongLongValue];

    v11 = [v6 objectForKeyedSubscript:@"imageOffset"];
    v12 = [v11 unsignedLongLongValue];

    v13 = v12 + v10;
    if ([v6 count] < 3)
    {
      if (v10 && v12)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p + %llu", v10, v12];
      }

      else
      {
        if (!v13)
        {
          v13 = v12;
        }

        v17 = @"???";
      }
    }

    else
    {
      v34 = v12 + v10;
      v14 = [v6 objectForKeyedSubscript:@"symbol"];
      v15 = [v6 objectForKeyedSubscript:@"symbolLocation"];
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v15 unsignedLongLongValue];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v15;
          _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "*** ignoring non-numeric symbolLocation: '%@'", buf, 0xCu);
        }
      }

      v18 = [v6 objectForKeyedSubscript:@"sourceFile"];
      v19 = [v6 objectForKeyedSubscript:@"sourceLine"];
      v20 = v19;
      v21 = &stru_1F461F9C8;
      if (v18 && v19)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@:%@)", v18, v19];
      }

      v22 = [v6 objectForKeyedSubscript:@"inline"];
      v23 = v22;
      if (v14)
      {
        v33 = v7;
        v24 = v15;
        v25 = v4;
        v26 = MEMORY[0x1E696AEC0];
        v27 = [v22 BOOLValue];
        v28 = @" [inlined]";
        if (!v27)
        {
          v28 = &stru_1F461F9C8;
        }

        v29 = v26;
        v4 = v25;
        v15 = v24;
        v7 = v33;
        v17 = [v29 stringWithFormat:@"%@ + %llu%@%@", v14, v12, v21, v28];
      }

      else
      {
        v17 = 0;
      }

      v13 = v34;
    }

    if (v4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t%#18llx %@", v7, v13, v17];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx %@", v13, v17, v32];
    }
    v16 = ;
  }

  else
  {
    v16 = &stru_1F461F9C8;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)wasAllRecursionPreviouslyPrinted:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"keyPC"];
        v10 = [v9 unsignedLongLongValue];

        previousRecursionKeyPCs = self->_previousRecursionKeyPCs;
        if (!previousRecursionKeyPCs)
        {
          v12 = objc_opt_new();
          v13 = self->_previousRecursionKeyPCs;
          self->_previousRecursionKeyPCs = v12;

          previousRecursionKeyPCs = self->_previousRecursionKeyPCs;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
        v15 = [(NSMutableSet *)previousRecursionKeyPCs containsObject:v14];

        if ((v15 & 1) == 0)
        {
          ++v6;
          v16 = self->_previousRecursionKeyPCs;
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
          [(NSMutableSet *)v16 addObject:v17];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
    v18 = v6 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)printRecursiveBacktrace:(id)a3 threadIndex:(unsigned int)a4
{
  v42 = a3;
  v6 = [v42 recursionInfoArray];
  v7 = v6;
  if ((self->_options & 0x2000) == 0 || v6 && ![(VMUSampler *)self wasAllRecursionPreviouslyPrinted:v6])
  {
    if ([v7 count] >= 2)
    {
      printf("MULTIPLE RANGES OF RECURSION: %zu\n", [v7 count]);
    }

    v33 = a4;
    v8 = [v42 originalLength];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v8];
    v10 = [v9 length];

    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    v40 = v11;
    v12 = objc_opt_new();
    v13 = [v42 backtrace];
    v36 = [v7 count];
    if ([v42 backtraceLength])
    {
      v38 = v13;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v41 = 0;
      v37 = 0;
      v34 = 0;
      v45 = 0;
      v35 = 0;
      v17 = 1;
      v39 = v7;
      v43 = self;
      while (1)
      {
        if (v7 && !v16)
        {
          if (v37 >= v36)
          {
            v44 = 0;
LABEL_19:
            v20 = v15;
            v25 = v45;
            goto LABEL_20;
          }

          v18 = [v7 objectAtIndexedSubscript:v37];
          v16 = [[VMUBacktraceRecursionInfo alloc] initWithDictionary:v18];
          v41 = [(VMUBacktraceRecursionInfo *)v16 keyPC];
          HIDWORD(v35) = [(VMUBacktraceRecursionInfo *)v16 hottestElided];
          LODWORD(v35) = [(VMUBacktraceRecursionInfo *)v16 coldestElided];
          v19 = [(VMUBacktraceRecursionInfo *)v16 depth];

          v45 = v19;
          v34 = v19;
        }

        v44 = v16;
        if (!v16 || v14 + v15 != HIDWORD(v35))
        {
          goto LABEL_19;
        }

        v20 = (v35 + v17);
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"--------"];
        [v12 addObject:v21];

        v22 = [(VMUSampler *)self formatFrame:v41 showBinaryImage:0];
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s ELIDED %u LEVELS OF RECURSION THROUGH %s", "--------", (v34 - 6), objc_msgSend(v22, "UTF8String")];
        [v12 addObject:v23];

        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"--------"];
        [v12 addObject:v24];

        self = v43;
        v25 = 3;
LABEL_20:
        v26 = [(VMUSampler *)self formatFrame:*(v38 + 8 * v14) showBinaryImage:1];
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-*u %@", v40, v14 + v20, v26];
        [v12 addObject:v27];
        v15 = v20;
        v45 = v25;
        if (v25)
        {
          v16 = v44;
          if (*(v38 + 8 * v14) == v41)
          {
            if (v36 == 1)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%s RECURSION LEVEL %u", "--------", v25, v32];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%s RECURSION %u, LEVEL %u", "--------", v37 + 1, v25];
            }
            v28 = ;

            [v12 addObject:v28];
            if (v25 == 1)
            {
              ++v37;

              v45 = 0;
              v16 = 0;
            }

            else
            {
              v45 = (v25 - 1);
            }

            v27 = v28;
          }

          v7 = v39;
        }

        else
        {
          v45 = 0;
          v7 = v39;
          v16 = v44;
        }

        ++v14;
        --v17;
        self = v43;
        if (v14 >= [v42 backtraceLength])
        {
          goto LABEL_35;
        }
      }
    }

    v16 = 0;
LABEL_35:
    v29 = [v12 componentsJoinedByString:@"\n"];
    [(VMUSampler *)self threadDescriptionStringForBacktrace:v42 returnedAddress:0];
    v31 = v30 = v12;
    printf("Thread %u::  %s\n", v33, [v31 UTF8String]);
    puts([v29 UTF8String]);
    puts("\n");
  }
}

- (void)initWithPID:orTask:options:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithPID:orTask:options:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)recordSampleTo:(uint64_t)a1 timestamp:thread:clearMemoryCache:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)recordSampleTo:(uint64_t)a1 timestamp:thread:clearMemoryCache:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

@end