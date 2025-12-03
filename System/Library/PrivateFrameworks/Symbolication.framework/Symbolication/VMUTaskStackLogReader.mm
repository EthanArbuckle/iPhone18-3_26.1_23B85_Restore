@interface VMUTaskStackLogReader
- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforMallocAddress:(unint64_t)address size:(unint64_t)size;
- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforVMregionAddress:(unint64_t)address;
- (VMUTaskMemoryScanner)scanner;
- (VMUVMRegionTracker)regionTracker;
- (int)enumerateMSLRecordsAndPayloads:(id)payloads;
- (int64_t)getFramesForStackID:(unint64_t)d stackFramesBuffer:(unint64_t *)buffer;
- (unint64_t)nodesInUniquingTable;
- (void)dealloc;
@end

@implementation VMUTaskStackLogReader

- (void)dealloc
{
  if (MEMORY[0x1EEE8C348])
  {
    task = self->super._task;
    msl_stop_reading();
  }

  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = self->super._symbolicator._opaque_2;
  CSRelease();
  v6.receiver = self;
  v6.super_class = VMUTaskStackLogReader;
  [(VMUTaskStackLogReader *)&v6 dealloc];
}

- (VMUVMRegionTracker)regionTracker
{
  regionTracker = self->super._regionTracker;
  if (!regionTracker)
  {
    v4 = [[VMUVMRegionTracker alloc] initWithStackLogReader:self];
    v5 = self->super._regionTracker;
    self->super._regionTracker = v4;

    regionTracker = self->super._regionTracker;
  }

  return regionTracker;
}

- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforMallocAddress:(unint64_t)address size:(unint64_t)size
{
  if (address && size)
  {
    v8 = 0;
    v5 = task_peek(self->super._task, address, size, &v8);
    if (v5)
    {
      NSLog(&cfstr_Vmutaskstacklo.isa, v5);
      return msl_payload_get_invalid();
    }

    else
    {
      msl_payload_version = self->_msl_payload_version;
      return msl_payload_from_lite_zone_ptr();
    }
  }

  else
  {

    return msl_payload_get_invalid();
  }
}

- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforVMregionAddress:(unint64_t)address
{
  if (address)
  {
    return MEMORY[0x1EEE1AD40](self->super._task, address);
  }

  else
  {
    return msl_payload_get_invalid();
  }
}

- (int64_t)getFramesForStackID:(unint64_t)d stackFramesBuffer:(unint64_t *)buffer
{
  task = self->super._task;
  msl_uniquing_table_get_frames_from_task();
  return 0;
}

- (int)enumerateMSLRecordsAndPayloads:(id)payloads
{
  payloadsCopy = payloads;
  v5 = payloadsCopy;
  task = self->super._task;
  if (self->super._usesLiteMode)
  {
    v7 = self->super._task;
    task_start_peeking();
    v8 = self->super._task;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke;
    v22[3] = &unk_1E8278710;
    v22[4] = self;
    v9 = v5;
    v23 = v9;
    task_foreach_malloc_zone(v8, v22);
    address = 0;
    v19 = 0u;
    v20 = 0u;
    *info = 0u;
    nesting_depth = 0;
    infoCnt = 12;
    for (size = 0; !mach_vm_region_recurse(self->super._task, &address, &size, &nesting_depth, info, &infoCnt); size = 0)
    {
      if (!v20)
      {
        v10.var0 = [(VMUTaskStackLogReader *)self liteMSLPayloadforVMregionAddress:address];
        if (!msl_payload_is_invalid())
        {
          (*(v9 + 2))(v9, (DWORD1(v19) << 24) | 0x10u, address, size, v10);
        }
      }

      address += size;
      v19 = 0u;
      v20 = 0u;
      *info = 0u;
      nesting_depth = 0;
      infoCnt = 12;
    }

    v11 = self->super._task;
    task_stop_peeking();

    v12 = 0;
  }

  else
  {
    v14 = payloadsCopy;
    v12 = msl_disk_stack_logs_enumerate_from_task_with_block();
  }

  return v12;
}

uint64_t __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, id, uint64_t, uint64_t, uint64_t, void (*)(int a1, void *aBlock, uint64_t a3, uint64_t a4, uint64_t a5)), void *a4)
{
  v7 = a4;
  if ([v7 hasPrefix:@"MallocStackLoggingLiteZone"] && (objc_msgSend(v7, "hasPrefix:", @"MallocStackLoggingLiteZone_Wrapper") & 1) == 0)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke_2;
    v13[3] = &unk_1E82786E8;
    v13[4] = v10;
    v14 = v9;
    v8 = VMUEnumerateMallocBlocksInZone(v11, 1, a2, task_peek_natural_size, a3, v7, v13);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = result;
    v5 = a4;
    v6 = (a3 + 8);
    do
    {
      [*(v4 + 32) liteMSLPayloadforMallocAddress:*(v6 - 1) size:*v6];
      result = (*(*(v4 + 40) + 16))();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *a2;
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

- (unint64_t)nodesInUniquingTable
{
  task = self->super._task;
  v3 = msl_uniquing_table_copy_from_task();
  if (v3)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    msl_uniquing_table_enumerate();
    MEMORY[0x1C695EDE0](v3);
    v3 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v3;
}

- (VMUTaskMemoryScanner)scanner
{
  WeakRetained = objc_loadWeakRetained(&self->_scanner);

  return WeakRetained;
}

@end