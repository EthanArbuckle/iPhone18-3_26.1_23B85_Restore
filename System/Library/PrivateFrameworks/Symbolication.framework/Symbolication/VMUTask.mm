@interface VMUTask
- (BOOL)hasStartedWithErrorString:(id *)string;
- (BOOL)isTranslated;
- (VMUTask)initWithCorePath:(id)path originalBinaryPaths:(id)paths error:(id *)error;
- (VMUTask)initWithTask:(unsigned int)task;
- (_VMURange)taskDyldSharedCacheRange;
- (id)ioSurfaceDescriptions;
- (id)processDescription;
- (int)pid;
- (uint64_t)ptrauthStripDataPointer:(uint64_t)result;
- (uint64_t)ptrauthStripFunctionPointer:(uint64_t)result;
- (uint64_t)stripExtraPointerBits:(uint64_t)result;
- (uint64_t)useExtraPointerStripping;
- (unsigned)taskPort;
- (void)dealloc;
@end

@implementation VMUTask

- (unsigned)taskPort
{
  if (self->_taskType)
  {
    return 0;
  }

  else
  {
    return self->_liveTask;
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = mach_error_string(error_value);
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to deallocate target task port: %d (%s)\n", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (id)processDescription
{
  if (!self->_processDescriptionInitialized)
  {
    self->_processDescriptionInitialized = 1;
    v3 = [VMUProcessDescription alloc];
    memoryCache = [(VMUTask *)self memoryCache];
    v5 = [(VMUProcessDescription *)v3 initWithVMUTaskMemoryCache:memoryCache getBinariesList:1];
    processDescription = self->_processDescription;
    self->_processDescription = v5;
  }

  v7 = self->_processDescription;

  return v7;
}

- (uint64_t)useExtraPointerStripping
{
  if (self)
  {
    if ((*(self + 89) & 1) == 0)
    {
      processDescription = [self processDescription];
      *(self + 88) = [processDescription targetUsesExtraPointerBits:*(self + 8)];

      *(self + 89) = 1;
    }

    v3 = *(self + 88);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (VMUTask)initWithTask:(unsigned int)task
{
  v14.receiver = self;
  v14.super_class = VMUTask;
  v4 = [(VMUTask *)&v14 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  v4->_taskType = 0;
  if (task - 1 <= 0xFFFFFFFD)
  {
    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], task, 0, 1))
    {

      v5 = 0;
      goto LABEL_5;
    }

    v5->_liveTask = task;
    v7 = [[VMUTaskMemoryCache alloc] initWithTask:v5->_liveTask];
    taskMemory = v5->_taskMemory;
    v5->_taskMemory = v7;

    liveTask = v5->_liveTask;
    v15 = 0;
    base_address = dyld_process_create_for_task();
    if (base_address)
    {
      v15 = 0;
      v11 = dyld_process_snapshot_create_for_process();
      dyld_process_dispose();
      if (v11)
      {
        shared_cache = dyld_process_snapshot_get_shared_cache();
        if (shared_cache)
        {
          if (dyld_shared_cache_is_mapped_private())
          {
            base_address = 0;
            shared_cache = 0;
          }

          else
          {
            base_address = dyld_shared_cache_get_base_address();
            shared_cache = dyld_shared_cache_get_mapped_size();
          }
        }

        else
        {
          base_address = 0;
        }

        dyld_process_snapshot_dispose();
        goto LABEL_16;
      }

      base_address = 0;
    }

    shared_cache = 0;
LABEL_16:
    v5->_taskDyldSharedCacheRange.location = base_address;
    v5->_taskDyldSharedCacheRange.length = shared_cache;
    v5->_taskIsSelf = mach_task_is_self(v5->_liveTask) != 0;
LABEL_17:
    v5 = v5;
    v6 = v5;
    goto LABEL_18;
  }

LABEL_5:
  v6 = 0;
LABEL_18:

  return v6;
}

- (VMUTask)initWithCorePath:(id)path originalBinaryPaths:(id)paths error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  pathsCopy = paths;
  v31.receiver = self;
  v31.super_class = VMUTask;
  v10 = [(VMUTask *)&v31 init];
  if (v10)
  {
    v30 = 0;
    if (!error)
    {
      error = &v30;
    }

    v11 = [pathCopy copy];
    v12 = *(v10 + 2);
    *(v10 + 2) = v11;

    v13 = [[VMUTaskMemoryCache alloc] initWithCorePath:pathCopy originalBinaryPaths:pathsCopy error:error];
    v14 = *(v10 + 6);
    *(v10 + 6) = v13;

    v15 = *(v10 + 6);
    if (!v15)
    {
      goto LABEL_23;
    }

    if (-[VMUTaskMemoryCache isExclave](v15) || [*(v10 + 6) isKernel])
    {
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
    }

    else if ([(VMUTaskMemoryCache *)*(v10 + 6) getCoreDyldSharedCacheRange:?])
    {
      goto LABEL_23;
    }

    isKernel = [*(v10 + 6) isKernel];
    v17 = 1;
    if (isKernel)
    {
      v17 = 2;
    }

    *(v10 + 12) = v17;
    *(v10 + 24) = 0;
    *(v10 + 9) = [(VMUTaskMemoryCache *)*(v10 + 6) exclaveType];
    if (*(v10 + 12) == 2)
    {
      v18 = *(v10 + 6);
      FlagsForNListOnlyData = CSSymbolicatorGetFlagsForNListOnlyData();
      [(VMUTaskMemoryCache *)v18 createSymbolicatorWithFlags:0 andNotification:?];
      CSSymbolicatorGetAOutSymbolOwner();
      CSSymbolOwnerGetSymbolWithMangledName();
      Range = CSSymbolGetRange();
      CSRelease();
      if (Range)
      {
        v32 = 0;
        if (![v18 peekAtAddress:Range size:8 returnsBuf:&v32])
        {
          if (v32)
          {
            v28 = 64 - *v32;
            *(&v29 + 1) = -((*v32 > 0x40uLL) + 64) & 1;
            *&v29 = v28;
            if (!(v29 >> 32))
            {
              v22 = ~(-1 << v28);

              goto LABEL_18;
            }
          }
        }
      }
    }

    if (![VMUTaskMemoryCache getCoreFileAddressingMask:?])
    {
      v22 = 0;
LABEL_18:
      *(v10 + 10) = v22;
      goto LABEL_24;
    }

    if (*(v10 + 12) == 2)
    {
      v21 = @"kernel";
    }

    else
    {
      if (!*(v10 + 9))
      {
        goto LABEL_24;
      }

      v21 = @"exclave";
    }

    v23 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get addressing mask for %@ core file.", v21];
    v34[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *error = [v23 errorWithDomain:@"VMUTask initialization" code:0 userInfo:v25];

LABEL_23:
    v10 = 0;
  }

LABEL_24:

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)pid
{
  processDescription = [(VMUTask *)self processDescription];
  v3 = [processDescription pid];

  return v3;
}

- (BOOL)isTranslated
{
  processDescription = [(VMUTask *)self processDescription];
  isTranslated = [processDescription isTranslated];

  return isTranslated;
}

- (_VMURange)taskDyldSharedCacheRange
{
  length = self->_taskDyldSharedCacheRange.length;
  location = self->_taskDyldSharedCacheRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)hasStartedWithErrorString:(id *)string
{
  if (self->_taskType)
  {
    return 1;
  }

  liveTask = self->_liveTask;
  v6 = CSTaskHasNotStarted();
  if (string)
  {
    v6 = v6;
    *string = v6;
  }

  v3 = v6 == 0;

  return v3;
}

- (id)ioSurfaceDescriptions
{
  if (self->_taskType || !objc_opt_class())
  {
    v2 = 0;
  }

  else
  {
    surfaceDescriptions = [MEMORY[0x1E696CDF0] surfaceDescriptions];
    v4 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__VMUTask_ioSurfaceDescriptions__block_invoke;
    v6[3] = &unk_1E8278CF8;
    v2 = v4;
    v7 = v2;
    [surfaceDescriptions enumerateKeysAndObjectsUsingBlock:v6];
  }

  return v2;
}

void __32__VMUTask_ioSurfaceDescriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v4 = a3;
  v22 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v23)
  {
    v21 = *v27;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v25 = [v6 width];
        v24 = [v6 height];
        v7 = [VMUIOSurfaceDebugDescription alloc];
        v8 = [v6 virtualAddress];
        v9 = [v6 allocationSize];
        v10 = [v6 surfaceID];
        v11 = [v6 pixelFormat];
        v12 = [v6 pixelFormatString];
        v13 = [v6 dirtySize];
        v14 = [v6 residentSize];
        v15 = [v6 name];
        v16 = [(VMUIOSurfaceDebugDescription *)v7 initWithVirtualAddress:v8 allocationSize:v9 surfaceID:v10 pixelFormat:v11 pixelFormatString:v12 width:v25 height:v24 dirtySize:v13 residentSize:v14 name:v15];

        [v22 addObject:v16];
      }

      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v23);
  }

  [*(a1 + 32) setObject:v22 forKey:v19];
  v17 = *MEMORY[0x1E69E9840];
}

- (uint64_t)ptrauthStripDataPointer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_2_0(result);
    return OUTLINED_FUNCTION_0_3(v2 & v1);
  }

  return result;
}

- (uint64_t)ptrauthStripFunctionPointer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_2_0(result);
    OUTLINED_FUNCTION_1_2();
    return OUTLINED_FUNCTION_0_3(v1);
  }

  return result;
}

- (uint64_t)stripExtraPointerBits:(uint64_t)result
{
  if (result)
  {
    v4 = OUTLINED_FUNCTION_2_0(result);
    v5 = 0xF0FFFFFFFFFFFFFFLL;
    if (!v4)
    {
      v5 = -1;
    }

    v6 = v5 & v1;
    if (v2)
    {
      return v3 & v1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

@end