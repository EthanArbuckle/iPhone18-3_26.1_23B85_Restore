@interface SAThread
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (id)threadWithId:(uint64_t)id;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (BOOL)isProcessorIdleThread;
- (NSString)debugDescription;
- (SAThread)initWithId:(unint64_t)id;
- (id)firstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index;
- (id)firstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index;
- (id)lastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index;
- (id)patchedStackForTruncatedStack:(id)stack;
- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index;
- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index;
- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index;
- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index;
- (unint64_t)sampleCountInTimestampRangeStart:(id)start end:(id)end;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)cpuTimeForThreadStateIndex:(uint64_t)index@<X2> inTimestampRangeStart:(uint64_t)start@<X3> end:(void *)end@<X8>;
- (void)enumerateThreadStatesBetweenStartTime:(id)time startSampleIndex:(unint64_t)index endTime:(id)endTime endSampleIndex:(unint64_t)sampleIndex reverseOrder:(BOOL)order block:(id)block;
- (void)forwardFillMonotonicallyIncreasingData;
- (void)insertState:(void *)state atIndex:;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
@end

@implementation SAThread

- (BOOL)isProcessorIdleThread
{
  lastObject = [(NSMutableArray *)self->_threadStates lastObject];
  if (lastObject)
  {
    v3 = lastObject[40] >> 7;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (SAThread)initWithId:(unint64_t)id
{
  v9.receiver = self;
  v9.super_class = SAThread;
  v4 = [(SAThread *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_threadId = id;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    threadStates = v5->_threadStates;
    v5->_threadStates = v6;
  }

  return v5;
}

+ (id)threadWithId:(uint64_t)id
{
  v2 = [objc_alloc(objc_opt_self()) initWithId:a2];

  return v2;
}

- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index
{
  if (![(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (time)
  {
    threadStates = self->_threadStates;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SAThread_indexOfFirstThreadStateOnOrAfterTime_sampleIndex___block_invoke;
    v12[3] = &unk_1E86F7040;
    v12[4] = time;
    time = SABinarySearchArray(threadStates, 1280, v12);
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL && time < [(NSMutableArray *)self->_threadStates count])
  {
    do
    {
      v8 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:time];
      if ([v8 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        v9 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:time];
        endSampleIndex = [v9 endSampleIndex];

        if (endSampleIndex >= index)
        {
          break;
        }
      }

      time = time + 1;
    }

    while (time < [(NSMutableArray *)self->_threadStates count]);
  }

  if (time >= [(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return time;
  }
}

uint64_t __61__SAThread_indexOfFirstThreadStateOnOrAfterTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)firstThreadStateOnOrAfterTime:(id)time sampleIndex:(unint64_t)index
{
  v5 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:time sampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index
{
  if (![(NSMutableArray *)self->_threadStates count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  threadStates = self->_threadStates;
  if (time)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__SAThread_indexOfLastThreadStateOnOrBeforeTime_sampleIndex___block_invoke;
    v14[3] = &unk_1E86F7040;
    v14[4] = time;
    v8 = SABinarySearchArray(threadStates, 1536, v14);
    if (!v8)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v8 = [(NSMutableArray *)threadStates count];
  }

  v9 = v8 - 1;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  while (1)
  {
    v11 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v9];
    if ([v11 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v12 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v9];
      startSampleIndex = [v12 startSampleIndex];

      if (startSampleIndex <= index)
      {
        return v9;
      }
    }

    if (!v9)
    {
      break;
    }

    --v9;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __61__SAThread_indexOfLastThreadStateOnOrBeforeTime_sampleIndex___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 startTimestamp];
  LOBYTE(v4) = [v4 lt:v5];

  if (v4)
  {
    return -1;
  }

  v7 = *(a1 + 32);
  v8 = [a2 endTimestamp];
  LODWORD(v7) = [v7 gt:v8];

  return v7;
}

- (id)lastThreadStateOnOrBeforeTime:(id)time sampleIndex:(unint64_t)index
{
  v5 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:time sampleIndex:index];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_threadStates objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)firstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SAThread *)self firstThreadStateOnOrAfterTime:time sampleIndex:v4];
}

- (unint64_t)indexOfFirstThreadStateOnOrAfterTime:(id)time withSampleIndex:(BOOL)index
{
  if (index)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:time sampleIndex:v4];
}

- (unint64_t)indexOfLastThreadStateOnOrBeforeTime:(id)time withSampleIndex:(BOOL)index
{
  indexCopy = index;
  lastObject = [(NSMutableArray *)self->_threadStates lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!indexCopy || (v10 = 0x7FFFFFFFFFFFFFFFLL, v9 = [lastObject endSampleIndex], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:time sampleIndex:v9];
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)enumerateThreadStatesBetweenStartTime:(id)time startSampleIndex:(unint64_t)index endTime:(id)endTime endSampleIndex:(unint64_t)sampleIndex reverseOrder:(BOOL)order block:(id)block
{
  v13 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:time sampleIndex:index];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
    v15 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:endTime sampleIndex:sampleIndex];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if (v14 <= v15)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __109__SAThread_enumerateThreadStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke;
        v19[3] = &unk_1E86F7068;
        v19[4] = self;
        v19[5] = block;
        v17 = MEMORY[0x1E12EBE50](v19);
        if (order)
        {
          do
          {
            if (v16 + 1 <= v14)
            {
              break;
            }

            v18 = v17[2](v17, v16--);
          }

          while ((v18 & 1) == 0);
        }

        else
        {
          do
          {
            if (v17[2](v17, v14))
            {
              break;
            }

            ++v14;
          }

          while (v14 <= v16);
        }
      }
    }
  }
}

uint64_t __109__SAThread_enumerateThreadStatesBetweenStartTime_startSampleIndex_endTime_endSampleIndex_reverseOrder_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:a2];
  (*(v3 + 16))(v3, v4, a2, &v6);

  return v6;
}

uint64_t __93__SAThread_enumerateThreadStatesBetweenStartTime_endTime_reverseOrder_withSampleIndex_block___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 || (result = [a2 startSampleIndex], result != 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (unint64_t)sampleCountInTimestampRangeStart:(id)start end:(id)end
{
  v31 = *MEMORY[0x1E69E9840];
  if (start && end && ([start le:end] & 1) == 0)
  {
    v13 = *__error();
    v14 = _sa_logt();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [start debugDescription];
      uTF8String = [v15 UTF8String];
      v17 = [end debugDescription];
      *buf = 136315394;
      v28 = uTF8String;
      v29 = 2080;
      uTF8String2 = [v17 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "start time %s after end time %s", buf, 0x16u);
    }

    *__error() = v13;
    v18 = [start debugDescription];
    uTF8String3 = [v18 UTF8String];
    v20 = [end debugDescription];
    [v20 UTF8String];
    _SASetCrashLogMessage(259, "start time %s after end time %s", v21, v22, v23, v24, v25, v26, uTF8String3);

    _os_crash();
    __break(1u);
  }

  result = [(NSMutableArray *)self->_threadStates count];
  if (result)
  {
    v8 = [(SAThread *)self indexOfFirstThreadStateOnOrAfterTime:start sampleIndex:0x7FFFFFFFFFFFFFFFLL];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = 0;
    }

    else
    {
      v9 = v8;
      v10 = [(SAThread *)self indexOfLastThreadStateOnOrBeforeTime:end sampleIndex:0x7FFFFFFFFFFFFFFFLL];
      if (v10 >= v9)
      {
        v11 = v10 - v9 + 1;
      }

      else
      {
        v11 = 0;
      }

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        result = 0;
      }

      else
      {
        result = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)cpuTimeForThreadStateIndex:(uint64_t)index@<X2> inTimestampRangeStart:(uint64_t)start@<X3> end:(void *)end@<X8>
{
  *end = 0;
  end[1] = 0;
  end[2] = 0;
  if (!self)
  {
    return;
  }

  threadStates = [self threadStates];
  v11 = [threadStates count];

  if (v11 < a2)
  {
    return;
  }

  threadStates2 = [self threadStates];
  v43 = [threadStates2 objectAtIndexedSubscript:a2];

  endSampleIndex = [v43 endSampleIndex];
  if (!a2)
  {
    goto LABEL_19;
  }

  startTimestamp = [v43 startTimestamp];
  v15 = [startTimestamp gt:index];

  if (!v15)
  {
    goto LABEL_19;
  }

  threadStates3 = [self threadStates];
  v17 = [threadStates3 objectAtIndexedSubscript:a2 - 1];

  if (endSampleIndex == 0x7FFFFFFFFFFFFFFFLL || [v17 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    creationTimestamp = v17;
  }

  else
  {
    v18 = a2 - 2;
    while (v18 != -1)
    {
      threadStates4 = [self threadStates];
      creationTimestamp = [threadStates4 objectAtIndexedSubscript:v18];

      --v18;
      v17 = creationTimestamp;
      if ([creationTimestamp startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    creationTimestamp = 0;
  }

LABEL_13:
  endTimestamp = [creationTimestamp endTimestamp];
  v22 = [endTimestamp lt:index];

  if (v22)
  {

LABEL_19:
    creationTimestamp = [self creationTimestamp];
    if (!creationTimestamp)
    {
      goto LABEL_24;
    }

    creationTimestamp2 = [self creationTimestamp];
    v28 = [creationTimestamp2 ge:index];

    if (v28)
    {
      *end = [v43 cpuTimeNs];
      end[1] = [v43 instructions];
      cycles = [v43 cycles];
      creationTimestamp = 0;
      goto LABEL_22;
    }

    creationTimestamp = 0;
    goto LABEL_24;
  }

  if (!creationTimestamp)
  {
    goto LABEL_19;
  }

  if (![v43 isIdleWorkQueue] || objc_msgSend(creationTimestamp, "isIdleWorkQueue"))
  {
    cpuTimeNs = [v43 cpuTimeNs];
    *end = cpuTimeNs - [creationTimestamp cpuTimeNs];
    instructions = [v43 instructions];
    end[1] = instructions - [creationTimestamp instructions];
    cycles2 = [v43 cycles];
    cycles = cycles2 - [creationTimestamp cycles];
LABEL_22:
    end[2] = cycles;
  }

LABEL_24:
  if (([v43 isIdleWorkQueue] & 1) == 0)
  {
    threadStates5 = [self threadStates];
    if ([threadStates5 count] - 1 <= a2)
    {
LABEL_42:

      goto LABEL_43;
    }

    endTimestamp2 = [v43 endTimestamp];
    v31 = [endTimestamp2 lt:start];

    if (v31)
    {
      threadStates6 = [self threadStates];
      threadStates5 = [threadStates6 objectAtIndexedSubscript:a2 + 1];

      if (endSampleIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([threadStates5 startSampleIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = a2 + 2;
          while (1)
          {
            threadStates7 = [self threadStates];
            v35 = [threadStates7 count] - 1;

            if (v33 - 1 >= v35)
            {
              break;
            }

            threadStates8 = [self threadStates];
            v37 = [threadStates8 objectAtIndexedSubscript:v33];

            ++v33;
            threadStates5 = v37;
            if ([v37 startSampleIndex] != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_36;
            }
          }

          v37 = 0;
        }

        else
        {
          v37 = threadStates5;
        }

LABEL_36:
        startTimestamp2 = [v37 startTimestamp];
        v39 = [startTimestamp2 gt:start];

        if (v39)
        {

          threadStates5 = 0;
          goto LABEL_42;
        }

        threadStates5 = v37;
      }

      if (threadStates5 && [threadStates5 isIdleWorkQueue])
      {
        cpuTimeNs2 = [threadStates5 cpuTimeNs];
        *end += cpuTimeNs2 - [v43 cpuTimeNs];
        instructions2 = [threadStates5 instructions];
        end[1] += instructions2 - [v43 instructions];
        cycles3 = [threadStates5 cycles];
        end[2] += cycles3 - [v43 cycles];
      }

      goto LABEL_42;
    }
  }

LABEL_43:
}

- (void)forwardFillMonotonicallyIncreasingData
{
  v78 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    threadStates = [self threadStates];
    v3 = [threadStates countByEnumeratingWithState:&v43 objects:v77 count:16];
    if (v3)
    {
      v4 = v3;
      selfCopy = self;
      v5 = 0;
      v6 = 0;
      v7 = *v44;
      v28 = threadStates;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          v9 = v6;
          if (*v44 != v7)
          {
            objc_enumerationMutation(threadStates);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          if (v6)
          {
            if ([*(*(&v43 + 1) + 8 * i) userTimeInNs] && (v11 = objc_msgSend(v10, "userTimeInNs"), v11 < objc_msgSend(v6, "userTimeInNs")) || objc_msgSend(v10, "systemTimeInNs") && (v12 = objc_msgSend(v10, "systemTimeInNs"), v12 < objc_msgSend(v6, "systemTimeInNs")) || objc_msgSend(v10, "instructions") && (v13 = objc_msgSend(v10, "instructions"), v13 < objc_msgSend(v6, "instructions")) || objc_msgSend(v10, "cycles") && (v14 = objc_msgSend(v10, "cycles"), v14 < objc_msgSend(v6, "cycles")))
            {
              v15 = *__error();
              v16 = _sa_logt();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                threadId = [selfCopy threadId];
                threadStates2 = [selfCopy threadStates];
                v25 = [threadStates2 count];
                v40 = [v9 debugDescription];
                v39 = [v10 debugDescription];
                cpuTimeNs = [v9 cpuTimeNs];
                userTimeInNs = [v9 userTimeInNs];
                systemTimeInNs = [v9 systemTimeInNs];
                cpuTimeNs2 = [v10 cpuTimeNs];
                userTimeInNs2 = [v10 userTimeInNs];
                systemTimeInNs2 = [v10 systemTimeInNs];
                instructions = [v9 instructions];
                instructions2 = [v10 instructions];
                cycles = [v9 cycles];
                cycles2 = [v10 cycles];
                *buf = 134221570;
                v48 = threadId;
                v49 = 2048;
                v50 = v5;
                v51 = 2048;
                v52 = v25;
                v53 = 2112;
                v54 = v40;
                v55 = 2112;
                v56 = v39;
                v57 = 2048;
                v58 = cpuTimeNs;
                v59 = 2048;
                v60 = userTimeInNs;
                v61 = 2048;
                v62 = systemTimeInNs;
                v63 = 2048;
                v64 = cpuTimeNs2;
                v65 = 2048;
                v66 = userTimeInNs2;
                v67 = 2048;
                v68 = systemTimeInNs2;
                v69 = 2048;
                v70 = instructions;
                v71 = 2048;
                v72 = instructions2;
                v73 = 2048;
                v74 = cycles;
                v75 = 2048;
                v76 = cycles2;
                _os_log_debug_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_DEBUG, "Thread 0x%llx monotonically increasing data decreased at index %lu of %lu between %@ and %@:\ncpu time %llu (%llu + %llu) -> %llu (%llu + %llu)\ninstructions %llu -> %llu\ncycles %llu -> %llu", buf, 0x98u);

                threadStates = v28;
              }

              *__error() = v15;
            }

            userTimeInNs3 = [v10 userTimeInNs];
            if (userTimeInNs3 < [v9 userTimeInNs])
            {
              userTimeInNs4 = [v9 userTimeInNs];
              if (v10)
              {
                v10[17] = userTimeInNs4;
              }
            }

            systemTimeInNs3 = [v10 systemTimeInNs];
            if (systemTimeInNs3 < [v9 systemTimeInNs])
            {
              systemTimeInNs4 = [v9 systemTimeInNs];
              if (v10)
              {
                v10[18] = systemTimeInNs4;
              }
            }

            instructions3 = [v10 instructions];
            if (instructions3 < [v9 instructions])
            {
              instructions4 = [v9 instructions];
              if (v10)
              {
                v10[19] = instructions4;
              }
            }

            cycles3 = [v10 cycles];
            if (cycles3 < [v9 cycles])
            {
              cycles4 = [v9 cycles];
              if (v10)
              {
                v10[20] = cycles4;
              }
            }
          }

          v6 = v10;

          ++v5;
        }

        v4 = [threadStates countByEnumeratingWithState:&v43 objects:v77 count:16];
      }

      while (v4);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)insertState:(void *)state atIndex:
{
  v53 = *MEMORY[0x1E69E9840];
  if (self)
  {
    stateCopy = state;
    v4 = a2;
    selfCopy = self;
    [self[1] insertObject:a2 atIndex:state];
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{stateCopy, objc_msgSend(selfCopy[1], "count") - stateCopy}];
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = selfCopy[1];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __32__SAThread_insertState_atIndex___block_invoke;
    v45[3] = &unk_1E86F70B8;
    v10 = v7;
    v46 = v10;
    v11 = v8;
    v47 = v11;
    [v9 enumerateObjectsAtIndexes:v6 options:0 usingBlock:v45];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __32__SAThread_insertState_atIndex___block_invoke_2;
    v44[3] = &unk_1E86F7108;
    v44[4] = selfCopy;
    v44[5] = stateCopy;
    v12 = MEMORY[0x1E12EBE50](v44);
    (v12)[2](v12, v10);
    dispatchQueue = [v4 dispatchQueue];
    if (dispatchQueue)
    {
      v14 = [(SARecipeState *)SADispatchQueueState stateWithThread:selfCopy threadStateIndex:stateCopy];
      v15 = (dispatchQueue + 24);
      v16 = *(dispatchQueue + 24);
      if (v16)
      {
        v15 = 0;
      }

      v41 = v15;
      v42 = v14;
      [*(dispatchQueue + 8) addObject:v14];
      [*(dispatchQueue + 8) sortUsingComparator:&__block_literal_global_6];
      if ((v16 & 1) == 0)
      {
        v34 = v12;
        v35 = v11;
        v36 = v10;
        v37 = v4;
        v38 = selfCopy;
        v39 = stateCopy;
        v40 = v6;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v33 = dispatchQueue;
        obj = *(dispatchQueue + 8);
        v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v49;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v49 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v48 + 1) + 8 * i);
              thread = [0 thread];
              thread2 = [v21 thread];
              v24 = thread2;
              if (thread == thread2)
              {
              }

              else
              {
                threadState = [0 threadState];
                endTimestamp = [threadState endTimestamp];
                threadState2 = [v21 threadState];
                startTimestamp = [threadState2 startTimestamp];
                v29 = [endTimestamp ge:startTimestamp];

                if (v29)
                {
                  *v41 = 1;
                  goto LABEL_17;
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
          }

          while (v18);
        }

LABEL_17:

        stateCopy = v39;
        v6 = v40;
        v4 = v37;
        selfCopy = v38;
        v11 = v35;
        v10 = v36;
        dispatchQueue = v33;
        v12 = v34;
      }
    }

    (v12)[2](v12, v11);
    swiftTask = [v4 swiftTask];
    if (swiftTask)
    {
      v31 = [(SARecipeState *)SASwiftTaskState stateWithThread:selfCopy threadStateIndex:stateCopy];
      [swiftTask[1] addObject:v31];
      [swiftTask[1] sortUsingComparator:&__block_literal_global_6];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __32__SAThread_insertState_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 dispatchQueue];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  v4 = [a2 swiftTask];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }
}

void __32__SAThread_insertState_atIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) states];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __32__SAThread_insertState_atIndex___block_invoke_3;
        v11[3] = &unk_1E86F70E0;
        v9 = *(a1 + 40);
        v11[4] = *(a1 + 32);
        v11[5] = v9;
        [v8 enumerateObjectsWithOptions:2 usingBlock:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __32__SAThread_insertState_atIndex___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 thread];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    if ([a2 threadStateIndex] >= *(a1 + 40))
    {
      v9 = [a2 threadStateIndex];
      if (a2)
      {
        a2[2] = v9 + 1;
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (id)patchedStackForTruncatedStack:(id)stack
{
  stackCopy = stack;
  v73 = *MEMORY[0x1E69E9840];
  v6 = [stack objectAtIndexedSubscript:0];
  isTruncatedBacktraceFrame = [v6 isTruncatedBacktraceFrame];

  if ((isTruncatedBacktraceFrame & 1) == 0)
  {
    v42 = *__error();
    v43 = _sa_logt();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v3 = [stackCopy objectAtIndexedSubscript:0];
      v44 = [v3 debugDescription];
      *buf = 136315138;
      uTF8String = [v44 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v43, OS_LOG_TYPE_ERROR, "%s is not a truncated frame", buf, 0xCu);
    }

    *__error() = v42;
    v45 = [stackCopy objectAtIndexedSubscript:0];
    v46 = [v45 debugDescription];
    uTF8String2 = [v46 UTF8String];
    _SASetCrashLogMessage(470, "%s is not a truncated frame", v48, v49, v50, v51, v52, v53, uTF8String2);

    _os_crash();
    __break(1u);
LABEL_48:
    v54 = *__error();
    v55 = _sa_logt();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      uTF8String = v3;
      v69 = 2048;
      v70 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_error_impl(&dword_1E0E2F000, v55, OS_LOG_TYPE_ERROR, "best match length is %lu, but index is %lu", buf, 0x16u);
    }

    *__error() = v54;
    _SASetCrashLogMessage(532, "best match length is %lu, but index is %lu", v56, v57, v58, v59, v60, v61, v3);
    _os_crash();
    __break(1u);
  }

  if (!self->_resampledLeafUserFrame)
  {
    v28 = stackCopy;
    goto LABEL_42;
  }

  v66 = [stackCopy count];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v9 = self->_resampledLeafUserFrame;
  if (v9)
  {
    v10 = v9;
    do
    {
      [v8 insertObject:v10 atIndex:0];
      parentFrame = v10->_parentFrame;
      v12 = parentFrame;

      v10 = v12;
    }

    while (parentFrame);
  }

  v63 = [v8 count];
  if (!v63)
  {
    goto LABEL_29;
  }

  v3 = 0;
  v13 = 0;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v64 = v14;
    v65 = v3;
    if (v66 < 2)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = v15 + 1;
        v17 = stackCopy;
        v18 = [stackCopy objectAtIndexedSubscript:v15 + 1];
        address = [v18 address];
        v20 = v8;
        v21 = [v8 objectAtIndexedSubscript:v13 + v15];
        address2 = [v21 address];

        if (address != address2)
        {
          break;
        }

        if (v16 >= v63 - v13)
        {
          goto LABEL_16;
        }

        v23 = v15 + 2;
        ++v15;
        stackCopy = v17;
        v8 = v20;
        if (v23 >= v66)
        {
          goto LABEL_17;
        }
      }

      v16 = v15;
LABEL_16:
      stackCopy = v17;
      v8 = v20;
    }

LABEL_17:
    v14 = v64;
    v3 = v65;
    if (v16)
    {
      v24 = v16 >= v65;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v3 = v16;
      v14 = v13;
    }

    ++v13;
  }

  while (v13 != v63);
  if (!v3)
  {
LABEL_29:
    if ([stackCopy count] >= 3)
    {
      v27 = [stackCopy objectAtIndexedSubscript:2];
      if ([v27 isKernel])
      {
      }

      else
      {
        if ([stackCopy count] == 3)
        {
        }

        else
        {
          v29 = [stackCopy objectAtIndexedSubscript:3];
          isKernel = [v29 isKernel];

          if ((isKernel & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v31 = [stackCopy objectAtIndexedSubscript:2];
        address3 = [v31 address];
        lastObject = [v8 lastObject];
        address4 = [lastObject address];

        if (address3 == address4)
        {
          v14 = v63 - 1;
          v3 = 1;
          goto LABEL_27;
        }
      }
    }

LABEL_38:
    v35 = *__error();
    v36 = _sa_logt();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v39 = [(SAThread *)selfCopy debugDescription];
      v40 = [v8 debugDescription];
      v41 = [stackCopy debugDescription];
      *buf = 138412802;
      uTF8String = v39;
      v69 = 2112;
      v70 = v40;
      v71 = 2112;
      v72 = v41;
      _os_log_debug_impl(&dword_1E0E2F000, v36, OS_LOG_TYPE_DEBUG, "%@ no matching frames in resampled stack:%@\nvs\n%@", buf, 0x20u);
    }

    *__error() = v35;
    goto LABEL_41;
  }

LABEL_27:
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  [v8 removeObjectsInRange:{v14, v63 - v14}];
  v26 = [stackCopy subarrayWithRange:{1, v66 - 1}];
  [v8 addObjectsFromArray:v26];

  stackCopy = v8;
LABEL_41:
  v28 = stackCopy;

LABEL_42:
  v37 = *MEMORY[0x1E69E9840];

  return v28;
}

- (NSString)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Thread 0x%llx", self->_threadId];

  return v2;
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  if ([(SAThread *)self sizeInBytesForSerializedVersion]!= length)
  {
    v5 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(SAThread *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v17 UTF8String];
      v55 = 2048;
      *v56 = [(SAThread *)self sizeInBytesForSerializedVersion];
      *&v56[8] = 2048;
      *&v56[10] = length;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v5;
    v18 = [(SAThread *)self debugDescription];
    uTF8String2 = [v18 UTF8String];
    [(SAThread *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(4071, "%s: size %lu != buffer length %lu", v20, v21, v22, v23, v24, v25, uTF8String2);

    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  *&buffer->var0 = 769;
  *(&buffer->var1 + 1) = self->_threadId;
  v10 = BYTE6(buffer->var4) & 0xFE | self->_isGlobalForcedIdle;
  BYTE6(buffer->var4) = v10;
  BYTE6(buffer->var4) = v10 & 0xFD | (2 * self->_isMainThread);
  *(&buffer->var2 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_creationTimestamp, dictionary);
  *(&buffer->var3 + 2) = SASerializableIndexForPointerFromSerializationDictionary(self->_exitTimestamp, dictionary);
  if ([(NSMutableArray *)self->_threadStates count]>= 0xFFFFFFFF)
  {
LABEL_8:
    v26 = *__error();
    v27 = _sa_logt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(SAThread *)self debugDescription];
      uTF8String3 = [v28 UTF8String];
      v30 = [(NSMutableArray *)self->_threadStates count];
      *buf = 136315394;
      uTF8String = uTF8String3;
      v55 = 2048;
      *v56 = v30;
      _os_log_error_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_ERROR, "%s has %lu states", buf, 0x16u);
    }

    *__error() = v26;
    buffer = [(SAThread *)self debugDescription];
    uTF8String4 = [($6806D93BA7D51FFB199EB98EFF121020 *)buffer UTF8String];
    [(NSMutableArray *)self->_threadStates count];
    _SASetCrashLogMessage(4085, "%s has %lu states", v32, v33, v34, v35, v36, v37, uTF8String4);

    _os_crash();
    __break(1u);
LABEL_11:
    v38 = *__error();
    v39 = _sa_logt();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [(SAThread *)self debugDescription];
      uTF8String5 = [v40 UTF8String];
      v42 = *(&buffer->var4 + 2);
      sizeInBytesForSerializedVersion = [(SAThread *)self sizeInBytesForSerializedVersion];
      *buf = 136315906;
      uTF8String = uTF8String5;
      v55 = 1024;
      *v56 = v42;
      *&v56[4] = 2048;
      *&v56[6] = v5;
      *&v56[14] = 2048;
      *&v56[16] = sizeInBytesForSerializedVersion;
      _os_log_error_impl(&dword_1E0E2F000, v39, OS_LOG_TYPE_ERROR, "%s: after serializing (with %u threadStates), ended with length %ld, should be %lu", buf, 0x26u);
    }

    *__error() = v38;
    v44 = [(SAThread *)self debugDescription];
    uTF8String6 = [v44 UTF8String];
    v46 = *(&buffer->var4 + 2);
    [(SAThread *)self sizeInBytesForSerializedVersion];
    _SASetCrashLogMessage(4092, "%s: after serializing (with %u threadStates), ended with length %ld, should be %lu", v47, v48, v49, v50, v51, v52, uTF8String6);

    _os_crash();
    __break(1u);
  }

  v11 = [(NSMutableArray *)self->_threadStates count];
  *(&buffer->var4 + 2) = v11;
  SASerializableFillSerializedIndicesWithCollectionOfSerializableInstances(&buffer->var5, v11, self->_threadStates, dictionary);
  v12 = *(&buffer->var4 + 2);
  v5 = 8 * v12 + 48;
  if (v5 != [(SAThread *)self sizeInBytesForSerializedVersion])
  {
    goto LABEL_11;
  }

  v13 = &buffer->var5 + 2 * v12;
  *v13 = SASerializableIndexForPointerFromSerializationDictionary(self->_resampledLeafUserFrame, dictionary);
  *(v13 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_resampledleafOfCRootFramesReplacedBySwiftAsync, dictionary);
  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SATimestamp *)self->_creationTimestamp addSelfToSerializationDictionary:dictionary];
    [(SATimestamp *)self->_exitTimestamp addSelfToSerializationDictionary:dictionary];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_threadStates;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) addSelfToSerializationDictionary:{dictionary, v13}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(SAFrame *)self->_resampledLeafUserFrame addSelfToSerializationDictionary:dictionary];
    [(SAFrame *)self->_resampledleafOfCRootFramesReplacedBySwiftAsync addSelfToSerializationDictionary:dictionary];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v30 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_11;
  }

  if (length <= 0x1F)
  {
    v8 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 2048;
      v29 = 32;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(4121, "bufferLength %lu < serialized SAThread struct %lu", v9, v10, v11, v12, v13, v14, length);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 26) + 32 > length)
  {
LABEL_8:
    v15 = *__error();
    v16 = _sa_logt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy2 = length;
      v28 = 1024;
      LODWORD(v29) = v17;
      _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct with %u thread states", buf, 0x12u);
    }

    *__error() = v15;
    v25 = *(bufferCopy + 26);
    _SASetCrashLogMessage(4122, "bufferLength %lu < serialized SAThread struct with %u thread states", v18, v19, v20, v21, v22, v23, length);
    _os_crash();
    __break(1u);
LABEL_11:
    v24 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThread version" userInfo:0];
    objc_exception_throw(v24);
  }

  result = [SAThread threadWithId:?];
  *(result + 16) = *(bufferCopy + 30) & 1;
  *(result + 17) = (*(bufferCopy + 30) & 2) != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v78 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_24;
  }

  if (length <= 0x1F)
  {
    v36 = *__error();
    bufferCopy = _sa_logt();
    if (os_log_type_enabled(bufferCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy4 = length;
      v76 = 2048;
      v77 = 32;
      _os_log_error_impl(&dword_1E0E2F000, bufferCopy, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct %lu", buf, 0x16u);
    }

    *__error() = v36;
    _SASetCrashLogMessage(4136, "bufferLength %lu < serialized SAThread struct %lu", v37, v38, v39, v40, v41, v42, length);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  bufferCopy = buffer;
  if (8 * *(buffer + 26) + 32 > length)
  {
LABEL_15:
    v43 = *__error();
    v44 = _sa_logt();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy4 = length;
      v76 = 1024;
      LODWORD(v77) = v45;
      _os_log_error_impl(&dword_1E0E2F000, v44, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread struct with %u thread states", buf, 0x12u);
    }

    *__error() = v43;
    v71 = *(bufferCopy + 26);
    _SASetCrashLogMessage(4137, "bufferLength %lu < serialized SAThread struct with %u thread states", v46, v47, v48, v49, v50, v51, length);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(buffer + 10);
  v12 = objc_opt_class();
  v13 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12, 0);
  creationTimestamp = self->_creationTimestamp;
  self->_creationTimestamp = v13;

  v15 = *(bufferCopy + 18);
  v16 = objc_opt_class();
  v17 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v15, dictionary, bufferDictionary, v16, 0);
  exitTimestamp = self->_exitTimestamp;
  self->_exitTimestamp = v17;

  v19 = bufferCopy + 32;
  v20 = *(bufferCopy + 26);
  v21 = objc_opt_class();
  v22 = SASerializableNewMutableArrayFromIndexList(bufferCopy + 32, v20, dictionary, bufferDictionary, v21);
  threadStates = self->_threadStates;
  self->_threadStates = v22;

  if (*(bufferCopy + 1) < 2u)
  {
LABEL_11:
    v35 = *MEMORY[0x1E69E9840];
    return;
  }

  v24 = *(bufferCopy + 26);
  if (8 * v24 + 40 > length)
  {
LABEL_18:
    v52 = *__error();
    v53 = _sa_logt();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy4 = length;
      v76 = 1024;
      LODWORD(v77) = v54;
      _os_log_error_impl(&dword_1E0E2F000, v53, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v52;
    v72 = *(bufferCopy + 26);
    _SASetCrashLogMessage(4147, "bufferLength %lu < serialized SAThread v2 struct with %u thread states", v55, v56, v57, v58, v59, v60, length);
    _os_crash();
    __break(1u);
    goto LABEL_21;
  }

  v25 = *(v19 + 8 * v24);
  v26 = objc_opt_class();
  v27 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v25, dictionary, bufferDictionary, v26, 0);
  resampledLeafUserFrame = self->_resampledLeafUserFrame;
  self->_resampledLeafUserFrame = v27;

  if (*(bufferCopy + 1) < 3u)
  {
    goto LABEL_11;
  }

  v29 = *(bufferCopy + 26);
  if (8 * v29 + 48 > length)
  {
LABEL_21:
    v61 = *__error();
    v62 = _sa_logt();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = *(bufferCopy + 26);
      *buf = 134218240;
      lengthCopy4 = length;
      v76 = 1024;
      LODWORD(v77) = v63;
      _os_log_error_impl(&dword_1E0E2F000, v62, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SAThread v3 struct with %u thread states", buf, 0x12u);
    }

    *__error() = v61;
    v73 = *(bufferCopy + 26);
    _SASetCrashLogMessage(4153, "bufferLength %lu < serialized SAThread v3 struct with %u thread states", v64, v65, v66, v67, v68, v69, length);
    _os_crash();
    __break(1u);
LABEL_24:
    v70 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SAThread version" userInfo:0];
    objc_exception_throw(v70);
  }

  v30 = *(v19 + 8 * v29 + 8);
  v31 = objc_opt_class();
  v32 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v30, dictionary, bufferDictionary, v31, 0);
  resampledleafOfCRootFramesReplacedBySwiftAsync = self->_resampledleafOfCRootFramesReplacedBySwiftAsync;
  self->_resampledleafOfCRootFramesReplacedBySwiftAsync = v32;
  v34 = *MEMORY[0x1E69E9840];
}

@end