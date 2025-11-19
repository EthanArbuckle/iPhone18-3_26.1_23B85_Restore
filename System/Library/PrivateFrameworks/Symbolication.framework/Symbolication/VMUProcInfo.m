@interface VMUProcInfo
+ (id)getProcessIds;
+ (int)processParentId:(int)a3;
- (BOOL)isCFM;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNative;
- (BOOL)isRunning;
- (BOOL)isSemiCriticalProcess;
- (BOOL)isZombie;
- (BOOL)shouldAnalyzeWithCorpse;
- (BOOL)terminate;
- (VMUProcInfo)initWithPid:(int)a3;
- (VMUProcInfo)initWithTask:(unsigned int)a3;
- (VMUProcInfo)initWithVMUTask:(id)a3;
- (id)_infoFromCommandLine:(int)a3;
- (id)arguments;
- (id)envVars;
- (id)firstArgument;
- (id)name;
- (id)platformName;
- (id)procTableName;
- (id)realAppName;
- (id)requestedAppName;
- (id)userAppName;
- (id)valueForEnvVar:(id)a3;
- (int)cpuType;
- (int)ppid;
- (int64_t)compare:(id)a3;
- (int64_t)compareByName:(id)a3;
- (int64_t)compareByUserAppName:(id)a3;
- (timeval)startTime;
- (unint64_t)hash;
- (unsigned)platform;
- (void)dealloc;
- (void)update;
@end

@implementation VMUProcInfo

- (id)name
{
  name = self->_name;
  if (!name)
  {
    if (!self->_pid)
    {
      self->_name = @"mach_kernel";
      goto LABEL_7;
    }

    v4 = [(VMUProcInfo *)self userAppName];
    v5 = [v4 lastPathComponent];
    v6 = self->_name;
    self->_name = v5;

    v7 = self->_name;
    if (!v7 || ![(NSString *)v7 length])
    {
      name = [(VMUProcInfo *)self procTableName];
      v8 = [name lastPathComponent];
      v9 = self->_name;
      self->_name = v8;

LABEL_7:
    }
  }

  v10 = self->_name;

  return v10;
}

- (id)userAppName
{
  v3 = [(VMUProcInfo *)self realAppName];
  v4 = v3;
  if (v3)
  {
    [v3 rangeOfString:@"LaunchCFMApp"];
    if (v5)
    {
      v6 = [(VMUProcInfo *)self firstArgument];

      v4 = v6;
    }
  }

  return v4;
}

- (id)realAppName
{
  if (!self->_realAppName)
  {
    v3 = [(VMUProcInfo *)self _infoFromCommandLine:0];
    realAppName = self->_realAppName;
    self->_realAppName = v3;

    v5 = self->_realAppName;
    if (!v5 || ![(NSString *)v5 length])
    {
      v6 = [(VMUProcInfo *)self procTableName];
      v7 = self->_realAppName;
      self->_realAppName = v6;
    }
  }

  v8 = self->_realAppName;

  return v8;
}

- (void)dealloc
{
  if (!self->_vmuTask)
  {
    task = self->_task;
    if (task + 1 >= 2)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], task);
    }
  }

  v4.receiver = self;
  v4.super_class = VMUProcInfo;
  [(VMUProcInfo *)&v4 dealloc];
}

- (BOOL)shouldAnalyzeWithCorpse
{
  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    return 0;
  }

  if (shouldAnalyzeWithCorpse_onceToken != -1)
  {
    [VMUProcInfo shouldAnalyzeWithCorpse];
  }

  v5 = shouldAnalyzeWithCorpse_s_criticalSystemProcesses;
  v6 = [(VMUProcInfo *)self name];
  LOBYTE(v5) = [v5 containsObject:v6];

  return v5;
}

- (id)procTableName
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_procTableName)
  {
    goto LABEL_11;
  }

  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    v4 = [(VMUTask *)self->_vmuTask memoryCache];
    v5 = [(VMUTaskMemoryCache *)v4 coreFileProcName];
    v6 = [v5 copy];
    procTableName = self->_procTableName;
    self->_procTableName = v6;

LABEL_11:
    v12 = self->_procTableName;
    goto LABEL_12;
  }

  size = 0;
  *v17 = 0xE00000001;
  pid = self->_pid;
  v18 = 1;
  v19 = pid;
  if (sysctl(v17, 4u, 0, &size, 0, 0) < 0)
  {
    v15 = "Failure calling sysctl to get buf size";
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, size, 0x10B2040B74D5165uLL);
    if ((sysctl(v17, 4u, v9, &size, 0, 0) & 0x80000000) == 0)
    {
      if (v9[10] == self->_pid)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9 + 243];
      }

      else
      {
        v10 = @"Exited process";
      }

      v11 = self->_procTableName;
      self->_procTableName = &v10->isa;

      free(v9);
      goto LABEL_11;
    }

    free(v9);
    v15 = "Failure calling sysctl to get proc buf";
  }

  perror(v15);
  v12 = 0;
LABEL_12:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (VMUProcInfo)initWithPid:(int)a3
{
  v4 = [(VMUProcInfo *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = a3;
    v4->_task = 0;
    vmuTask = v4->_vmuTask;
    v4->_vmuTask = 0;
  }

  return v5;
}

- (VMUProcInfo)initWithTask:(unsigned int)a3
{
  x = 0;
  v4 = [(VMUProcInfo *)self init];
  v5 = v4;
  if (v4)
  {
    vmuTask = v4->_vmuTask;
    v4->_vmuTask = 0;

    if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], a3, 0, 1))
    {
      v5->_task = a3;
      if (!pid_for_task(a3, &x))
      {
        v5->_pid = x;
      }
    }
  }

  return v5;
}

- (VMUProcInfo)initWithVMUTask:(id)a3
{
  v5 = a3;
  v6 = [(VMUProcInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vmuTask, a3);
    v7->_pid = [(VMUTask *)v7->_vmuTask pid];
    v7->_task = [(VMUTask *)v7->_vmuTask taskPort];
  }

  return v7;
}

+ (id)getProcessIds
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  size = 0;
  *v10 = 0xE00000001;
  v2 = [MEMORY[0x1E695DF70] array];
  if (sysctl(v10, 3u, 0, &size, 0, 0) < 0)
  {
    perror("Failure calling sysctl to get process list buffer size");
  }

  else
  {
    v3 = malloc_type_calloc(1uLL, size, 0x10B2040B74D5165uLL);
    if ((sysctl(v10, 3u, v3, &size, 0, 0) & 0x80000000) == 0 && (size / 0x288) >= 1)
    {
      v4 = (size / 0x288) & 0x7FFFFFFF;
      v5 = v3 + 10;
      do
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInteger:*v5];
        [v2 insertObject:v6 atIndex:0];

        v5 += 162;
        --v4;
      }

      while (v4);
    }

    free(v3);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (int)processParentId:(int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 648;
  v6 = 1;
  v7 = 0x10000000ELL;
  v8 = a3;
  sysctl(&v6, 4u, v9, &v5, 0, 0);
  if (v5 == 648)
  {
    result = v10;
  }

  else
  {
    result = -1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (timeval)startTime
{
  v16 = *MEMORY[0x1E69E9840];
  p_startTime = &self->_startTime;
  tv_sec = self->_startTime.tv_sec;
  if (tv_sec)
  {
    goto LABEL_4;
  }

  if (!self->_startTime.tv_usec)
  {
    vmuTask = self->_vmuTask;
    if (vmuTask && [(VMUTask *)vmuTask isCore])
    {
      *v14 = 0;
      v8 = [(VMUTask *)self->_vmuTask memoryCache];
      if ([VMUTaskMemoryCache getCoreFileProcStarttimeSec:v8])
      {
      }

      else
      {
        v10 = [(VMUTask *)self->_vmuTask memoryCache];
        v11 = [VMUTaskMemoryCache getCoreFileProcStarttimeUSec:v10];

        if (!v11)
        {
          tv_sec = *v14;
          self->_startTime.tv_sec = *v14;
          self->_startTime.tv_usec = 0;
          goto LABEL_4;
        }
      }

      goto LABEL_20;
    }

    size = 0;
    *v14 = 1;
    *&v14[4] = 0x10000000ELL;
    pid = self->_pid;
    if (sysctl(v14, 4u, 0, &size, 0, 0) < 0)
    {
      v12 = "Failure calling sysctl to get buf size";
    }

    else
    {
      v9 = malloc_type_calloc(1uLL, size, 0x10B2040B74D5165uLL);
      if ((sysctl(v14, 4u, v9, &size, 0, 0) & 0x80000000) == 0)
      {
        if (v9[2].tv_usec == self->_pid)
        {
          *p_startTime = *v9;
          free(v9);
          tv_sec = p_startTime->tv_sec;
          goto LABEL_4;
        }

        free(v9);
LABEL_20:
        v5 = 0;
        tv_sec = 0;
        goto LABEL_5;
      }

      free(v9);
      v12 = "Failure calling sysctl to get proc buf";
    }

    perror(v12);
    goto LABEL_20;
  }

  tv_sec = 0;
LABEL_4:
  v5 = *&self->_startTime.tv_usec;
LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
  result.tv_usec = v5;
  result.tv_sec = tv_sec;
  return result;
}

- (id)_infoFromCommandLine:(int)a3
{
  v37 = *MEMORY[0x1E69E9840];
  size = 0;
  if ((a3 - 3) > 1)
  {
    v5 = &stru_1F461F9C8;
  }

  else
  {
    v5 = objc_opt_new();
  }

  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    *v35 = 0;
    v33 = 0;
    v7 = [(VMUTask *)self->_vmuTask memoryCache];
    if ([VMUTaskMemoryCache getCoreFileUserstack:v7])
    {
    }

    else
    {
      v9 = [(VMUTask *)self->_vmuTask memoryCache];
      v10 = [VMUTaskMemoryCache getCoreFileArgsLen:v9];

      if (!v10)
      {
        goto LABEL_13;
      }
    }

    v31 = 0;
    v32 = 0;
    v11 = [(VMUTask *)self->_vmuTask memoryCache];
    v12 = [v11 mapAddress:*v35 - v33 size:v33 returnedAddress:&v32 returnedSize:&v31];

    if (v12)
    {
      goto LABEL_13;
    }

    size = v31;
    v17 = malloc_type_malloc(v31, 0x8A07D299uLL);
    if (!v17)
    {
      goto LABEL_13;
    }

    v8 = v17;
    memcpy(v17, v32, size);
  }

  else
  {
    *v35 = 0x800000001;
    v32 = 8;
    if (sysctl(v35, 2u, &size, &v32, 0, 0))
    {
LABEL_13:
      v13 = v5;
      goto LABEL_14;
    }

    *v35 = 0x3100000001;
    pid = self->_pid;
    v8 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (sysctl(v35, 3u, v8, &size, 0, 0))
    {
LABEL_10:
      free(v8);
      goto LABEL_13;
    }
  }

  *(v8 + size - 1) = 0;
  if (!a3)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = v8 + 1;
LABEL_29:
    v22 = [v20 stringWithUTF8String:v21];

    free(v8);
    v13 = v22;
    goto LABEL_14;
  }

  v18 = size;
  v19 = 4;
  if (size >= 5)
  {
    while (*(v8 + v19))
    {
      if (size == ++v19)
      {
        goto LABEL_10;
      }
    }
  }

  if (v19 >= size)
  {
    goto LABEL_10;
  }

  while (!*(v8 + v19))
  {
    if (size == ++v19)
    {
      goto LABEL_10;
    }
  }

  if (a3 == 1)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = (v8 + v19);
    goto LABEL_29;
  }

  if (v19 < size)
  {
    while (*(v8 + v19))
    {
      if (++v19 >= size)
      {
        goto LABEL_10;
      }
    }
  }

  if (v19 >= size)
  {
    goto LABEL_10;
  }

  while (!*(v8 + v19))
  {
    if (size == ++v19)
    {
      goto LABEL_10;
    }
  }

  v23 = *v8 - (*v8 > 0);
  if (v23 >= 1 && v19 < size)
  {
    v27 = 0;
    while (1)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8 + v19];
      v29 = v28;
      if (v28)
      {
        v30 = [(__CFString *)v28 length];
      }

      else
      {
        NSLog(&cfstr_ArgumentNumDUt.isa, v27, v8 + v19);
        v30 = strlen(v8 + v19);
      }

      v19 += v30;
      if (v19 < size)
      {
        while (!*(v8 + v19))
        {
          if (++v19 >= size)
          {
            v19 = size;
            break;
          }
        }
      }

      if (a3 == 2)
      {
        break;
      }

      if (a3 == 3 && v29)
      {
        [(__CFString *)v5 addObject:v29];
      }

      v27 = (v27 + 1);
      v18 = size;
      if (v27 >= v23 || v19 >= size)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_72;
  }

LABEL_45:
  if ((a3 & 0xFFFFFFFE) != 2 && v19 < v18)
  {
    if (a3 == 4)
    {
      do
      {
        if (*(v8 + v19))
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8 + v19];
          if ([v25 length] && objc_msgSend(v25, "rangeOfString:", @"=") != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(__CFString *)v5 addObject:v25];
            v26 = [v25 length];
          }

          else
          {
            v26 = strlen(v8 + v19);
          }

          v19 += v26;

          v18 = size;
        }

        ++v19;
      }

      while (v19 < v18);
    }

    goto LABEL_10;
  }

  v29 = v5;
LABEL_72:
  free(v8);
  v13 = v29;
LABEL_14:
  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)requestedAppName
{
  if (!self->_requestedAppName)
  {
    v3 = [(VMUProcInfo *)self _infoFromCommandLine:1];
    requestedAppName = self->_requestedAppName;
    self->_requestedAppName = v3;

    v5 = self->_requestedAppName;
    if (!v5 || ![(NSString *)v5 length])
    {
      v6 = [(VMUProcInfo *)self procTableName];
      v7 = self->_requestedAppName;
      self->_requestedAppName = v6;
    }
  }

  v8 = self->_requestedAppName;

  return v8;
}

- (id)firstArgument
{
  p_firstArg = &self->_firstArg;
  firstArg = self->_firstArg;
  if (!firstArg)
  {
    v5 = [(VMUProcInfo *)self _infoFromCommandLine:2];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1F461F9C8;
    }

    objc_storeStrong(p_firstArg, v7);

    firstArg = self->_firstArg;
  }

  return firstArg;
}

- (id)arguments
{
  arguments = self->_arguments;
  if (!arguments)
  {
    v4 = [(VMUProcInfo *)self _infoFromCommandLine:3];
    v5 = self->_arguments;
    self->_arguments = v4;

    arguments = self->_arguments;
  }

  return arguments;
}

- (id)envVars
{
  envVars = self->_envVars;
  if (!envVars)
  {
    v4 = [(VMUProcInfo *)self _infoFromCommandLine:4];
    v5 = self->_envVars;
    self->_envVars = v4;

    envVars = self->_envVars;
  }

  return envVars;
}

- (id)valueForEnvVar:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 length];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@=", v4];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(VMUProcInfo *)self envVars];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 hasPrefix:v8])
          {
            v16 = [v15 substringFromIndex:v7 + 1];

            v12 = v16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (int)ppid
{
  result = self->_ppid;
  if (!result)
  {
    vmuTask = self->_vmuTask;
    if (vmuTask && [(VMUTask *)vmuTask isCore])
    {
      v5 = [(VMUTask *)self->_vmuTask memoryCache];
      [VMUTaskMemoryCache getCoreFilePPid:v5];

      result = -1;
    }

    else
    {
      result = [VMUProcInfo processParentId:self->_pid];
    }

    self->_ppid = result;
  }

  return result;
}

- (void)update
{
  name = self->_name;
  self->_name = 0;

  v4 = [(VMUProcInfo *)self name];
  envVars = self->_envVars;
  self->_envVars = 0;

  v6 = [(VMUProcInfo *)self envVars];
  procTableName = self->_procTableName;
  self->_procTableName = 0;

  v8 = [(VMUProcInfo *)self procTableName];
  realAppName = self->_realAppName;
  self->_realAppName = 0;

  v10 = [(VMUProcInfo *)self realAppName];
  requestedAppName = self->_requestedAppName;
  self->_requestedAppName = 0;

  v12 = [(VMUProcInfo *)self requestedAppName];
  firstArg = self->_firstArg;
  self->_firstArg = 0;

  v14 = [(VMUProcInfo *)self firstArgument];

  [(VMUProcInfo *)self isZombie];
}

- (BOOL)isCFM
{
  v2 = [(VMUProcInfo *)self realAppName];
  v3 = [v2 rangeOfString:@"LaunchCFMApp"] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (int)cpuType
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = -1;
  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    v4 = [(VMUTask *)self->_vmuTask memoryCache];
    v5 = [v4 getCoreFileCPUType:&v11];

    if (v5)
    {
      result = -1;
    }

    else
    {
      result = v11;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    *v12 = 0u;
    v10 = 12;
    if (sysctlnametomib("sysctl.proc_cputype", v12, &v10) != -1)
    {
      v7 = v10;
      v12[v10] = self->_pid;
      v9 = 4;
      v10 = v7 + 1;
      if (sysctl(v12, v7 + 1, &v11, &v9, 0, 0) == -1)
      {
        v11 = -1;
      }
    }

    result = v11;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isNative
{
  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    v4 = [(VMUTask *)self->_vmuTask memoryCache];
    v5 = [v4 taskIsTranslated];

    return v5;
  }

  else
  {
    task = self->_task;
    return CSTaskIsTranslated() ^ 1;
  }
}

- (unsigned)platform
{
  v8 = 0;
  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    v4 = [(VMUTask *)self->_vmuTask memoryCache];
    v5 = [v4 getPlatform:&v8];

    if (v5)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    task = self->_task;

    return CSPlatformForTask();
  }
}

- (id)platformName
{
  v2 = [(VMUProcInfo *)self platform];

  return VMUPlatformNameForPlatform(v2);
}

- (BOOL)isRunning
{
  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    return 0;
  }

  pid = self->_pid;

  return VMUProcessIsAnalyzable(pid);
}

- (BOOL)isSemiCriticalProcess
{
  if (isSemiCriticalProcess_onceToken != -1)
  {
    [VMUProcInfo isSemiCriticalProcess];
  }

  v3 = [(VMUProcInfo *)self name];
  if ([isSemiCriticalProcess_s_semiCriticalSystemProcesses containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasSuffix:@"boardd"];
  }

  return v4;
}

void __36__VMUProcInfo_isSemiCriticalProcess__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Carousel", @"SpringBoard", 0}];
  v1 = isSemiCriticalProcess_s_semiCriticalSystemProcesses;
  isSemiCriticalProcess_s_semiCriticalSystemProcesses = v0;
}

- (BOOL)isZombie
{
  v14 = *MEMORY[0x1E69E9840];
  vmuTask = self->_vmuTask;
  if (!vmuTask || ![(VMUTask *)vmuTask isCore])
  {
    isZombie = 1;
    if (self->_isZombie)
    {
      goto LABEL_9;
    }

    size = 0;
    *v11 = 0xE00000001;
    pid = self->_pid;
    v12 = 1;
    v13 = pid;
    if (sysctl(v11, 4u, 0, &size, 0, 0) < 0)
    {
      v9 = "Failure calling sysctl to get buf size";
    }

    else
    {
      v6 = malloc_type_calloc(1uLL, size, 0x10B2040B74D5165uLL);
      if (sysctl(v11, 4u, v6, &size, 0, 0) < 0)
      {
        free(v6);
        v9 = "Failure calling sysctl to get proc buf";
      }

      else
      {
        if (*(v6 + 10) == self->_pid)
        {
          self->_isZombie = *(v6 + 36) == 5;
          free(v6);
          isZombie = self->_isZombie;
          goto LABEL_9;
        }

        free(v6);
        v9 = "Process exited";
      }
    }

    perror(v9);
  }

  isZombie = 0;
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return isZombie;
}

void __38__VMUProcInfo_shouldAnalyzeWithCorpse__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Activity Monitor", @"audiomxd", @"bluetoothd", @"cameracaptured", @"cfprefsd", @"configd", @"coreaudiod", @"coreservicesd", @"coresymbolicationd", @"diagnosticd", @"hidd", @"kernelmanagerd", @"kextd", @"launchd", @"launchd.development", @"launchservicesd", @"logd", @"loginwindow", @"mach_kernel", @"mds", @"mdworker", @"mediaplaybackd", @"notifyd", @"opendirectoryd", @"powerd", @"ReportCrash", @"ReportMemoryException", @"ReportPanic", @"rpc.lockd", @"securityd", @"spindump_agent", @"sysdiagnose", @"taskgated", @"TouchBarServer", @"UserEventAgent", @"videocodecd", @"watchdogd", @"wifid", @"WindowServer", @"WindowManager", 0}];
  v1 = shouldAnalyzeWithCorpse_s_criticalSystemProcesses;
  shouldAnalyzeWithCorpse_s_criticalSystemProcesses = v0;
}

- (BOOL)terminate
{
  vmuTask = self->_vmuTask;
  if (vmuTask && [(VMUTask *)vmuTask isCore])
  {
    return 1;
  }

  pid = self->_pid;
  if (pid < 1)
  {
    return 0;
  }

  v6 = kill(pid, 3);
  v7 = kill(self->_pid, 9);
  return !v6 || v7 == 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 pid] == self->_pid;

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  pid = self->_pid;
  if (pid >= [v4 pid])
  {
    v7 = self->_pid;
    v6 = v7 != [v4 pid];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int64_t)compareByName:(id)a3
{
  v4 = a3;
  v5 = [(VMUProcInfo *)self name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (int64_t)compareByUserAppName:(id)a3
{
  v4 = a3;
  v5 = [(VMUProcInfo *)self userAppName];
  v6 = [v4 userAppName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VMUProcInfo;
  return [(VMUProcInfo *)&v3 hash];
}

@end