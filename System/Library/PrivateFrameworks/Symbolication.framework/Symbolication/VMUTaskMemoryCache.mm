@interface VMUTaskMemoryCache
- (BOOL)copyRange:(_VMURange)range to:(void *)to;
- (BOOL)isExclave;
- (BOOL)isSimulator;
- (BOOL)representsCore;
- (VMUTaskMemoryCache)initWithCorePath:(id)path originalBinaryPaths:(id)paths error:(id *)error;
- (VMUTaskMemoryCache)initWithTask:(unsigned int)task;
- (const)peekStringAtAddress:(unint64_t)address;
- (id)coreFileParentProcName;
- (id)coreFileParentProcPath;
- (id)coreFileProcName;
- (id)coreFileProcPath;
- (int)_kernelCorePageRangeQueryWithAddress:(unint64_t)address size:(unint64_t)size dispositions:(unint64_t)dispositions dispositionsCount:(unint64_t *)count;
- (int)getCoreFileCPUType:(int *)type;
- (int)getPlatform:(unsigned int *)platform;
- (int)machVMPageRangeQueryWithAddress:(unint64_t)address size:(unint64_t)size dispositions:(unint64_t)dispositions dispositionsCount:(unint64_t *)count;
- (int)machVMRegionRecurseSubmapInfo64onAddress:(unint64_t *)address size:(unint64_t *)size nestingDepth:(unsigned int *)depth info:(vm_region_submap_info_64_with_extra_flag *)info;
- (int)machVMRegionRecurseSubmapShortInfo64onAddress:(unint64_t *)address size:(unint64_t *)size nestingDepth:(unsigned int *)depth info:(vm_region_submap_short_info_64 *)info;
- (int)mapAddress:(unint64_t)address size:(unint64_t)size returnedAddress:(unint64_t *)returnedAddress returnedSize:(unint64_t *)returnedSize;
- (int)peekAtAddress:(unint64_t)address size:(unint64_t)size returnsBuf:(void *)buf;
- (int)readPointerAt:(unint64_t)at value:(unint64_t *)value;
- (int)startPeeking;
- (int)stopPeeking;
- (int)taskThreadsWithList:(unsigned int *)list listCnt:(unsigned int *)cnt;
- (int)unmapAddress:(unint64_t)address size:(unint64_t)size returnedAddress:(unint64_t *)returnedAddress returnedSize:(unint64_t *)returnedSize;
- (uint64_t)createSymbolicatorWithFlags:(void *)flags andNotification:;
- (uint64_t)exclaveType;
- (uint64_t)getCoreDyldSharedCacheRange:(uint64_t)result;
- (uint64_t)getCoreFileAddressingMask:(uint64_t)result;
- (uint64_t)getCoreFileArgsLen:(uint64_t)result;
- (uint64_t)getCoreFileDirtyFlags:(uint64_t)result;
- (uint64_t)getCoreFileLedgerAlternateAccounting:(uint64_t)result;
- (uint64_t)getCoreFileLedgerAlternateAccountingCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerGraphicsFootprint:(uint64_t)result;
- (uint64_t)getCoreFileLedgerGraphicsFootprintCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerInternal:(uint64_t)result;
- (uint64_t)getCoreFileLedgerInternalCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerIokitMapped:(uint64_t)result;
- (uint64_t)getCoreFileLedgerMediaFootprint:(uint64_t)result;
- (uint64_t)getCoreFileLedgerMediaFootprintCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerNetworkNonvolatile:(uint64_t)result;
- (uint64_t)getCoreFileLedgerNetworkNonvolatileCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerNeuralFootprint:(uint64_t)result;
- (uint64_t)getCoreFileLedgerNeuralFootprintCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerPageTable:(uint64_t)result;
- (uint64_t)getCoreFileLedgerPhysFootprint:(uint64_t)result;
- (uint64_t)getCoreFileLedgerPhysFootprintLifetimeMax:(uint64_t)result;
- (uint64_t)getCoreFileLedgerPurgeableNonvolatile:(uint64_t)result;
- (uint64_t)getCoreFileLedgerPurgeableNonvolatileCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerTaggedFootprint:(uint64_t)result;
- (uint64_t)getCoreFileLedgerTaggedFootprintCompressed:(uint64_t)result;
- (uint64_t)getCoreFileLedgerWiredMem:(uint64_t)result;
- (uint64_t)getCoreFilePPid:(uint64_t)result;
- (uint64_t)getCoreFilePid:(uint64_t)result;
- (uint64_t)getCoreFileProcArgc:(uint64_t)result;
- (uint64_t)getCoreFileProcFlags:(uint64_t)result;
- (uint64_t)getCoreFileProcStarttimeSec:(uint64_t)result;
- (uint64_t)getCoreFileProcStarttimeUSec:(uint64_t)result;
- (uint64_t)getCoreFileUdataPointersIntoBuffer:(void *)buffer count:;
- (uint64_t)getCoreFileUserstack:(uint64_t)result;
- (uint64_t)getExclaveVMFlagsForAddress:(uint64_t)result exclaveVMFlags:;
- (uint64_t)getOwnedVMObjectsIntoBuffer:(size_t *)buffer byteCount:;
- (unint64_t)pageSize;
- (unint64_t)tryPeekAtAddress:(unint64_t)address outPtr:(void *)ptr;
- (void)_createOriginalSymbolOwnersWithPaths:(id)paths;
- (void)dealloc;
- (void)enumerateMemoryCache:(id)cache;
- (void)flushMemoryCache;
- (void)setRegionInfoBlock:(id)block;
@end

@implementation VMUTaskMemoryCache

- (int)stopPeeking
{
  memoryRegions = self->_memoryRegions;
  if (memoryRegions)
  {
    LODWORD(memoryRegions) = mapped_memory_resume_target();
  }

  return memoryRegions;
}

- (int)startPeeking
{
  memoryRegions = self->_memoryRegions;
  if (memoryRegions)
  {
    LODWORD(memoryRegions) = MEMORY[0x1EEE00F70](memoryRegions, a2);
  }

  return memoryRegions;
}

- (void)dealloc
{
  if (self->_memoryRegions)
  {
    set_mapped_memory_cache_region_info_block();
    regionInfoBlock = self->_regionInfoBlock;
    self->_regionInfoBlock = 0;

    if (self->_taskType)
    {
      MEMORY[0x1C695F530](self->_memoryRegions);
    }

    else
    {
      taskPort = self->_taskPort;
      task_release_mapped_memory_cache();
    }

    self->_memoryRegions = 0;
  }

  free(self->_originalSymbolOwners);
  cfOriginalSymbolOwners = self->_cfOriginalSymbolOwners;
  if (cfOriginalSymbolOwners)
  {
    CFRelease(cfOriginalSymbolOwners);
  }

  opaque_1 = self->_minimalSymbolicator._opaque_1;
  opaque_2 = self->_minimalSymbolicator._opaque_2;
  CSRelease();
  v8.receiver = self;
  v8.super_class = VMUTaskMemoryCache;
  [(VMUTaskMemoryCache *)&v8 dealloc];
}

- (unint64_t)pageSize
{
  if (!self->_corePath)
  {
    return *MEMORY[0x1E69E9AC8];
  }

  taskArchitecture = self->_taskArchitecture;
  memoryRegions = self->_memoryRegions;
  mapped_memory_core_file_get_architecture();
  if (CSArchitectureIsArm64())
  {
    return 0x4000;
  }

  if (CSArchitectureIsArm())
  {
    return 0x4000;
  }

  return 4096;
}

- (VMUTaskMemoryCache)initWithCorePath:(id)path originalBinaryPaths:(id)paths error:(id *)error
{
  pathCopy = path;
  pathsCopy = paths;
  v25.receiver = self;
  v25.super_class = VMUTaskMemoryCache;
  v10 = [(VMUTaskMemoryCache *)&v25 init];
  if (v10)
  {
    [pathCopy UTF8String];
    mapped_memory_cache_for_core_file_with_label = create_mapped_memory_cache_for_core_file_with_label();
    v10->_memoryRegions = mapped_memory_cache_for_core_file_with_label;
    if (mapped_memory_cache_for_core_file_with_label)
    {
      [(VMUTaskMemoryCache *)v10 _createOriginalSymbolOwnersWithPaths:pathsCopy];
      v10->_taskType = 1;
      v15 = [pathCopy copy];
      corePath = v10->_corePath;
      v10->_corePath = v15;

      [(VMUTaskMemoryCache *)v10 createSymbolicatorWithFlags:0 andNotification:?];
      if (CSSymbolicatorIsKernelSymbolicator())
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      v10->_taskType = v17;
      if (CSIsNull())
      {
        v18 = @"Failed to create symbolicator.";
      }

      else if (v10->_taskType == 1 && (v19 = v10->_memoryRegions, (mapped_memory_core_file_has_info_for_memory_analysis() & 1) == 0))
      {
        CSRelease();
        v18 = @"File is missing metadata required for analysis.";
      }

      else
      {
        v10->_taskArchitecture = CSSymbolicatorGetArchitecture();
        memoryRegions = v10->_memoryRegions;
        v10->_taskIs64Bit = mapped_memory_is_64_bit();
        v10->_taskIsTranslated = CSSymbolicatorGetTaskIsTranslated();
        v10->_taskPort = 0;
        v10->_pid = -1;
        v21 = v10->_memoryRegions;
        if (mapped_memory_core_file_is_exclave())
        {
          v22 = v10->_memoryRegions;
          if (mapped_memory_core_file_is_exclavecore())
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          v10->_exclaveType = v23;
        }

        else
        {
          v10->_exclaveType = 0;
        }

        if (v10->_taskType != 2 || (CSSymbolicatorGetAOutSymbolOwner(), (CSIsNull() & 1) == 0) && CSSymbolOwnerGetSymbolCount())
        {
          CSRelease();
          goto LABEL_7;
        }

        CSRelease();
        v18 = @"No matching kernel found.";
      }

      v24 = vmuTaskMemoryCacheInitializationError(v18);
      if (error)
      {
        *error = v24;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create mapped memory cache: %s", 0];
      v13 = vmuTaskMemoryCacheInitializationError(v12);
      if (error)
      {
        *error = v13;
      }
    }

    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (VMUTaskMemoryCache)initWithTask:(unsigned int)task
{
  v7.receiver = self;
  v7.super_class = VMUTaskMemoryCache;
  v4 = [(VMUTaskMemoryCache *)&v7 init];
  if (v4)
  {
    v4->_taskIs64Bit = CSTaskIs64Bit();
    v4->_taskIsTranslated = CSTaskIsTranslated();
    v4->_taskArchitecture = MEMORY[0x1C695D930]();
    v4->_taskPort = task;
    v4->_taskType = 0;
    v4->_taskIsSelf = VMUTaskIsSelf();
    if (pid_for_task(task, &v4->_pid))
    {
LABEL_3:

      return 0;
    }

    if (!v4->_taskIsSelf)
    {
      mapped_memory_cache_with_label = task_get_mapped_memory_cache_with_label();
      v4->_memoryRegions = mapped_memory_cache_with_label;
      if (!mapped_memory_cache_with_label)
      {
        fputs([@"VMUTaskMemoryCache initialization failed likely because the target process no longer exists.\n"], *MEMORY[0x1E69E9848]);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VMUTaskMemoryCache initWithTask:];
        }

        goto LABEL_3;
      }
    }
  }

  return v4;
}

- (void)flushMemoryCache
{
  memoryRegions = self->_memoryRegions;
  if (memoryRegions)
  {
    MEMORY[0x1EEE00D80](memoryRegions, a2);
  }
}

- (void)setRegionInfoBlock:(id)block
{
  blockCopy = block;
  v4 = _Block_copy(blockCopy);
  regionInfoBlock = self->_regionInfoBlock;
  self->_regionInfoBlock = v4;

  if (self->_memoryRegions)
  {
    set_mapped_memory_cache_region_info_block();
  }
}

- (void)enumerateMemoryCache:(id)cache
{
  cacheCopy = cache;
  v5 = cacheCopy;
  if (self->_memoryRegions)
  {
    v6 = cacheCopy;
    enumerate_mapped_memory_cache();
  }
}

- (int)mapAddress:(unint64_t)address size:(unint64_t)size returnedAddress:(unint64_t *)returnedAddress returnedSize:(unint64_t *)returnedSize
{
  if (returnedAddress)
  {
    *returnedAddress = 0;
  }

  if (returnedSize)
  {
    *returnedSize = 0;
  }

  memoryRegions = self->_memoryRegions;
  if (memoryRegions)
  {
    node = find_node(memoryRegions, address);
    if (node || (v13 = self->_memoryRegions, (node = map_new_node()) != 0))
    {
      v14 = node;
      if (returnedAddress)
      {
        *returnedAddress = node[2] + address - *node;
      }

      result = 0;
      if (returnedSize)
      {
        *returnedSize = v14[1] - address + *v14;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (memoryExists(*MEMORY[0x1E69E9A60], address, size))
  {
    if (returnedAddress)
    {
      *returnedAddress = address;
    }

    result = 0;
    if (returnedSize)
    {
      *returnedSize = size;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

- (int)unmapAddress:(unint64_t)address size:(unint64_t)size returnedAddress:(unint64_t *)returnedAddress returnedSize:(unint64_t *)returnedSize
{
  if (self->_memoryRegions)
  {
    return MEMORY[0x1EEE00FD0]();
  }

  if (returnedAddress)
  {
    *returnedAddress = 0;
  }

  if (returnedSize)
  {
    *returnedSize = 0;
  }

  return 0;
}

- (int)peekAtAddress:(unint64_t)address size:(unint64_t)size returnsBuf:(void *)buf
{
  v7 = 0;
  v8 = 0;
  result = [(VMUTaskMemoryCache *)self mapAddress:address size:size returnedAddress:&v8 returnedSize:&v7];
  *buf = v8;
  return result;
}

- (const)peekStringAtAddress:(unint64_t)address
{
  if (self->_taskIsSelf)
  {
    return address;
  }

  v16 = 1;
  pageSize = [(VMUTaskMemoryCache *)self pageSize];
  v7 = 0;
  v8 = MEMORY[0x1E69E9830];
  v9 = 1;
LABEL_4:
  v15 = 0;
  v10 = [(VMUTaskMemoryCache *)self mapAddress:address size:v9 returnedAddress:&v15 returnedSize:&v16];
  result = 0;
  if (!v10)
  {
    v11 = v15;
    if (v15)
    {
      while (1)
      {
        v12 = v16;
        if (v7 >= v16)
        {
          v9 = v16 + pageSize;
          v16 += pageSize;
          if (v12 + pageSize <= 0x19000)
          {
            goto LABEL_4;
          }

          return 0;
        }

        v13 = v11[v7];
        if (!v11[v7])
        {
          return v15;
        }

        if ((v13 & 0x80000000) != 0)
        {
          if (__maskrune(v11[v7], 0x40000uLL))
          {
            goto LABEL_18;
          }
        }

        else if ((*(v8 + 4 * v13 + 60) & 0x40000) != 0)
        {
          goto LABEL_18;
        }

        v14 = v13 > 0xD || ((1 << v13) & 0x2600) == 0;
        if (v14 && v13 - 169 >= 2)
        {
          return 0;
        }

LABEL_18:
        ++v7;
      }
    }
  }

  return result;
}

- (int)readPointerAt:(unint64_t)at value:(unint64_t *)value
{
  if (self->_taskIs64Bit)
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  v10 = 0;
  result = [(VMUTaskMemoryCache *)self peekAtAddress:at size:v6 returnsBuf:&v10];
  if (result)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10 == 0;
  }

  if (!v8)
  {
    if (self->_taskIs64Bit)
    {
      v9 = *v10;
    }

    else
    {
      v9 = *v10;
    }

    *value = v9;
  }

  return result;
}

- (BOOL)copyRange:(_VMURange)range to:(void *)to
{
  length = range.length;
  location = range.location;
  __src = 0;
  if (!self->_memoryRegions)
  {
    if ([(VMUTaskMemoryCache *)self peekAtAddress:range.location size:range.length returnsBuf:&__src])
    {
      LOBYTE(node) = 0;
      return node;
    }

    memcpy(to, __src, length);
LABEL_13:
    LOBYTE(node) = 1;
    return node;
  }

  if (!range.length)
  {
    goto LABEL_13;
  }

  while (1)
  {
    node = find_node(self->_memoryRegions, location);
    if (!node)
    {
      memoryRegions = self->_memoryRegions;
      node = map_new_node();
      if (!node)
      {
        return node;
      }
    }

    v10 = location - *node;
    if (length >= node[1] - v10)
    {
      v11 = node[1] - v10;
    }

    else
    {
      v11 = length;
    }

    memcpy(to, &v10[node[2]], v11);
    location = (location + v11);
    length -= v11;
    if (!length)
    {
      goto LABEL_13;
    }
  }
}

- (int)getCoreFileCPUType:(int *)type
{
  if (!self->_corePath)
  {
    return 4;
  }

  memoryRegions = self->_memoryRegions;
  result = mapped_memory_core_file_get_architecture();
  if (result)
  {
    return 5;
  }

  *type = -1;
  return result;
}

- (int)_kernelCorePageRangeQueryWithAddress:(unint64_t)address size:(unint64_t)size dispositions:(unint64_t)dispositions dispositionsCount:(unint64_t *)count
{
  pageSize = [(VMUTaskMemoryCache *)self pageSize];
  if (!size)
  {
    return 4;
  }

  v12 = pageSize;
  v13 = size / pageSize;
  if (size % pageSize || address % pageSize || *count < v13)
  {
    return 4;
  }

  *count = v13;
  opaque_1 = self->_minimalSymbolicator._opaque_1;
  opaque_2 = self->_minimalSymbolicator._opaque_2;
  if (CSIsNull())
  {
    FlagsForNoSymbolOrSourceInfoData = CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData();
    self->_minimalSymbolicator._opaque_1 = [(VMUTaskMemoryCache *)self createSymbolicatorWithFlags:0 andNotification:?];
    self->_minimalSymbolicator._opaque_2 = v23;
  }

  v17 = size + address;
  if (size + address <= address)
  {
    return 0;
  }

  while (1)
  {
    v35 = 0;
    v18 = [(VMUTaskMemoryCache *)self tryPeekAtAddress:address outPtr:&v35, v24, v25, v26, v27, v28, v29, v30];
    if (!v18)
    {
      break;
    }

    if (v18 >= v12)
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 1;
      v20 = self->_minimalSymbolicator._opaque_1;
      v21 = self->_minimalSymbolicator._opaque_2;
      CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
      if ((CSIsNull() & 1) == 0)
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __95__VMUTaskMemoryCache__kernelCorePageRangeQueryWithAddress_size_dispositions_dispositionsCount___block_invoke;
        v27 = &unk_1E8278910;
        v29 = v12;
        v30 = v35;
        v28 = &v31;
        CSSymbolOwnerGetContentForRange();
      }

      if (*(v32 + 24))
      {
        v19 = 13;
      }

      else
      {
        v19 = 5;
      }

      _Block_object_dispose(&v31, 8);
    }

    else
    {
      v19 = 0;
    }

    result = 0;
    *dispositions = v19;
    dispositions += 4;
    address += v12;
    if (address >= v17)
    {
      return result;
    }
  }

  return 5;
}

uint64_t __95__VMUTaskMemoryCache__kernelCorePageRangeQueryWithAddress_size_dispositions_dispositionsCount___block_invoke(uint64_t result, const void *a2, size_t a3)
{
  v4 = *(result + 40);
  if (v4 <= a3)
  {
    v5 = result;
    result = memcmp(*(result + 48), a2, v4);
    if (!result)
    {
      *(*(*(v5 + 32) + 8) + 24) = 0;
    }
  }

  return result;
}

- (int)machVMPageRangeQueryWithAddress:(unint64_t)address size:(unint64_t)size dispositions:(unint64_t)dispositions dispositionsCount:(unint64_t *)count
{
  if (self->_taskType == 2)
  {

    return [VMUTaskMemoryCache _kernelCorePageRangeQueryWithAddress:"_kernelCorePageRangeQueryWithAddress:size:dispositions:dispositionsCount:" size:? dispositions:? dispositionsCount:?];
  }

  else if (self->_corePath)
  {
    v12 = collectPhysFootprint();
    memoryRegions = self->_memoryRegions;

    return MEMORY[0x1EEE00F30](memoryRegions, address, size, dispositions, count, v12);
  }

  else
  {
    taskPort = self->_taskPort;

    return mach_vm_page_range_query(taskPort, address, size, dispositions, count);
  }
}

- (int)machVMRegionRecurseSubmapShortInfo64onAddress:(unint64_t *)address size:(unint64_t *)size nestingDepth:(unsigned int *)depth info:(vm_region_submap_short_info_64 *)info
{
  if (self->_taskType == 2)
  {
    return 4;
  }

  if (self->_corePath)
  {
    memoryRegions = self->_memoryRegions;

    return MEMORY[0x1EEE00F48](memoryRegions, address, size, depth, info);
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v10 = 12;
    return mach_vm_region_recurse(self->_taskPort, address, size, depth, &info->protection, &v10);
  }
}

- (int)machVMRegionRecurseSubmapInfo64onAddress:(unint64_t *)address size:(unint64_t *)size nestingDepth:(unsigned int *)depth info:(vm_region_submap_info_64_with_extra_flag *)info
{
  if (self->_corePath)
  {
    memoryRegions = self->_memoryRegions;

    return MEMORY[0x1EEE00F40](memoryRegions, address, size, depth, info);
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v10 = 19;
    return mach_vm_region_recurse(self->_taskPort, address, size, depth, &info->var0, &v10);
  }
}

- (int)taskThreadsWithList:(unsigned int *)list listCnt:(unsigned int *)cnt
{
  if (self->_corePath)
  {
    return MEMORY[0x1EEE00F78](self->_memoryRegions, list, cnt);
  }

  else
  {
    return task_threads(self->_taskPort, list, cnt);
  }
}

- (int)getPlatform:(unsigned int *)platform
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_haveAttemptedDyldPlatformFetch)
  {
    self->_haveAttemptedDyldPlatformFetch = 1;
    taskType = self->_taskType;
    if (taskType)
    {
      if (taskType != 2)
      {
        if (taskType != 1)
        {
          goto LABEL_11;
        }

        memoryRegions = self->_memoryRegions;
        if ((mapped_memory_core_file_is_exclavecore() & 1) == 0)
        {
          [(NSString *)self->_corePath UTF8String];
          CSSymbolicatorCreateWithPathAndArchitecture();
          if (CSIsNull())
          {
            goto LABEL_19;
          }

          CSSymbolicatorGetSymbolOwnerWithNameAtTime();
          if (CSIsNull() & 1) != 0 || (CSSymbolOwnerGetRegionWithName(), (CSIsNull()) || (Range = CSRegionGetRange(), v11 < 0x170))
          {
            v12 = 0;
          }

          else
          {
            v16 = 0u;
            v17 = 0u;
            v15 = 0u;
            memset(v14, 0, sizeof(v14));
            v12 = [(VMUTaskMemoryCache *)self copyRange:Range to:368, v14];
            if (v12)
            {
              self->_dyldPlatform = v15;
            }
          }

          CSRelease();
          if (!v12)
          {
            goto LABEL_19;
          }

          goto LABEL_10;
        }

        v7 = 14;
LABEL_9:
        self->_dyldPlatform = v7;
LABEL_10:
        self->_dyldPlatformIsValid = 1;
        goto LABEL_11;
      }

      self->_dyldPlatform = 0;
      self->_dyldPlatformIsValid = 0;
    }

    taskPort = self->_taskPort;
    v7 = CSPlatformForTask();
    goto LABEL_9;
  }

LABEL_11:
  if (!self->_dyldPlatformIsValid)
  {
LABEL_19:
    result = 5;
    goto LABEL_20;
  }

  result = 0;
  *platform = self->_dyldPlatform;
LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSimulator
{
  v4 = 0;
  v2 = [(VMUTaskMemoryCache *)self getPlatform:&v4];
  result = 0;
  if (!v2)
  {
    return dyld_is_simulator_platform();
  }

  return result;
}

- (unint64_t)tryPeekAtAddress:(unint64_t)address outPtr:(void *)ptr
{
  result = self->_memoryRegions;
  if (result)
  {
    v8 = *MEMORY[0x1E69E9AC8];
    result = find_node(result, address);
    if (result || (memoryRegions = self->_memoryRegions, (result = map_new_node()) != 0))
    {
      v10 = *(result + 8);
      v11 = *result;
      *ptr = (*(result + 16) + address - *result);
      return v11 - address + v10;
    }
  }

  return result;
}

- (void)_createOriginalSymbolOwnersWithPaths:(id)paths
{
  v24 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = CSSymbolicatorCreateWithMachKernel();
  v18 = v6;
  if (CSIsNull())
  {
    SymbolOwnerCountAtTime = 0;
  }

  else
  {
    SymbolOwnerCountAtTime = CSSymbolicatorGetSymbolOwnerCountAtTime();
  }

  v8 = [pathsCopy count];
  self->_cfOriginalSymbolOwners = CFArrayCreateMutable(0, v8 + SymbolOwnerCountAtTime, MEMORY[0x1E6999358]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = pathsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * i) fileSystemRepresentation];
        CSSymbolicatorCreateWithPathAndArchitecture();
        CSSymbolicatorForeachSymbolOwnerAtTime();
        CSRelease();
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolicatorForeachSymbolOwnerAtTime();
    CSRelease();
  }

  Count = CFArrayGetCount(self->_cfOriginalSymbolOwners);
  self->_originalSymbolOwners = malloc_type_calloc(Count, 0x10uLL, 0x1000040451B5BE8uLL);
  if (Count >= 1)
  {
    v15 = 0;
    for (j = 0; j != Count; ++j)
    {
      self->_originalSymbolOwners[v15++] = *CFArrayGetValueAtIndex(self->_cfOriginalSymbolOwners, j);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __59__VMUTaskMemoryCache__createOriginalSymbolOwnersWithPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  CFArrayAppendValue(*(*(a1 + 32) + 56), v3);
}

void __59__VMUTaskMemoryCache__createOriginalSymbolOwnersWithPaths___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  CFArrayAppendValue(*(*(a1 + 32) + 56), v3);
}

- (uint64_t)createSymbolicatorWithFlags:(void *)flags andNotification:
{
  flagsCopy = flags;
  if (!self)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v6 = *(self + 16);
  if ((v6 - 1) < 2)
  {
    [*(self + 40) fileSystemRepresentation];
    v7 = *(self + 64);
    CFArrayGetCount(*(self + 56));
    v8 = CSSymbolicatorCreateWithCoreFilePathAndFlags();
LABEL_6:
    v3 = v8;
    goto LABEL_7;
  }

  if (!v6)
  {
    v9 = *(self + 24);
    v8 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (id)coreFileProcName
{
  if (self)
  {
    OUTLINED_FUNCTION_0_1(self);
    mapped_memory_core_file_get_proc_name();
    self = OUTLINED_FUNCTION_1_1();
    if (!v2)
    {
      self = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    v1 = vars8;
  }

  return self;
}

- (id)coreFileProcPath
{
  if (self)
  {
    OUTLINED_FUNCTION_0_1(self);
    mapped_memory_core_file_get_proc_path();
    self = OUTLINED_FUNCTION_1_1();
    if (!v2)
    {
      self = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    v1 = vars8;
  }

  return self;
}

- (id)coreFileParentProcName
{
  if (self)
  {
    OUTLINED_FUNCTION_0_1(self);
    mapped_memory_core_file_get_parent_proc_name();
    self = OUTLINED_FUNCTION_1_1();
    if (!v2)
    {
      self = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    v1 = vars8;
  }

  return self;
}

- (id)coreFileParentProcPath
{
  if (self)
  {
    OUTLINED_FUNCTION_0_1(self);
    mapped_memory_core_file_get_parent_proc_path();
    self = OUTLINED_FUNCTION_1_1();
    if (!v2)
    {
      self = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    v1 = vars8;
  }

  return self;
}

- (uint64_t)getCoreFilePid:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00EC8](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFilePPid:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00ED0](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileProcStarttimeSec:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00EF8](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileProcStarttimeUSec:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00F00](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileUserstack:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00F10](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileProcFlags:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00EE0](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileArgsLen:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00DE8](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileProcArgc:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00ED8](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileDirtyFlags:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00DF0](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerInternal:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E28](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerInternalCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E30](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerIokitMapped:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E38](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerAlternateAccounting:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E08](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerAlternateAccountingCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E10](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerPurgeableNonvolatile:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E88](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerPurgeableNonvolatileCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E90](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerPhysFootprint:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E78](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerPhysFootprintLifetimeMax:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E80](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerPageTable:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E70](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerNetworkNonvolatile:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E50](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerNetworkNonvolatileCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E58](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerWiredMem:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00EA8](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerTaggedFootprint:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E98](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerTaggedFootprintCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00EA0](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerMediaFootprint:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E40](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerMediaFootprintCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E48](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerGraphicsFootprint:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E18](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerGraphicsFootprintCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E20](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerNeuralFootprint:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E60](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileLedgerNeuralFootprintCompressed:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00E68](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileUdataPointersIntoBuffer:(void *)buffer count:
{
  if (result)
  {
    if (*(result + 40))
    {
      if (*(result + 16) == 1)
      {
        return MEMORY[0x1EEE00F08](*(result + 8));
      }

      else
      {
        result = 0;
        *buffer = 0;
      }
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (uint64_t)getOwnedVMObjectsIntoBuffer:(size_t *)buffer byteCount:
{
  v13 = *MEMORY[0x1E69E9840];
  if (!result)
  {
LABEL_12:
    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!*(result + 40))
  {
    v8 = *buffer;
    if (sysctlbyname("vm.get_owned_vmobjects", a2, &v8, (result + 24), 4uLL) && *__error() != 2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = *__error();
        *buf = 136315394;
        v10 = "vm.get_owned_vmobjects";
        v11 = 1024;
        v12 = v7;
        _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error setting sysctl: %s. %d.\n", buf, 0x12u);
      }

      result = 5;
    }

    else
    {
      result = 0;
      *buffer = v8;
    }

    goto LABEL_12;
  }

  v4 = *(result + 8);
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE00EB0](v4);
}

- (uint64_t)getCoreDyldSharedCacheRange:(uint64_t)result
{
  if (result)
  {
    if (*(result + 40))
    {
      v3 = *(result + 8);
      result = mapped_memory_core_file_get_dyld_shared_cache_range();
      if (!result)
      {
        *a2 = 0uLL;
      }
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (BOOL)representsCore
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (BOOL)isExclave
{
  if (result)
  {
    return (*(result + 96) - 1) < 2;
  }

  return result;
}

- (uint64_t)exclaveType
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)getExclaveVMFlagsForAddress:(uint64_t)result exclaveVMFlags:
{
  if (result)
  {
    return MEMORY[0x1EEE00E00](*(result + 8));
  }

  return result;
}

- (uint64_t)getCoreFileAddressingMask:(uint64_t)result
{
  if (result)
  {
    return MEMORY[0x1EEE00DD8](*(result + 8));
  }

  return result;
}

- (void)initWithTask:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = @"VMUTaskMemoryCache initialization failed, likely because the target process no longer exists.\n";
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

@end