@interface RIOMemoryLimits
+ (unint64_t)currentMemoryFootprint;
+ (unint64_t)processMemory;
+ (unint64_t)viewerMemoryAvailableForTexturesOnThisDevice;
@end

@implementation RIOMemoryLimits

+ (unint64_t)processMemory
{
  v13 = *MEMORY[0x277D85DE8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processIdentifier = [processInfo processIdentifier];

  v4 = memorystatus_control();
  if (v4)
  {
    v5 = v4;
    v6 = memoryConstraintLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = processIdentifier;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_26187B000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Failed to get memory limit info for pid %d. Errorno: %d, Limits will appear as 0MB and not fatal.\n", buf, 0xEu);
    }
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unint64_t)viewerMemoryAvailableForTexturesOnThisDevice
{
  v8 = *MEMORY[0x277D85DE8];
  processMemory = [self processMemory];
  v3 = memoryConstraintLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = processMemory;
    _os_log_impl(&dword_26187B000, v3, OS_LOG_TYPE_DEFAULT, "processMemory for textures is %lu", &v6, 0xCu);
  }

  if (processMemory >= 0x1F5)
  {
    if (processMemory >= 0x2BD)
    {
      if (processMemory >= 0x465)
      {
        result = +[RIOMemoryLimits viewerMemoryAvailableForTexturesOnHighMemoryDevices];
      }

      else
      {
        result = 503316480;
      }
    }

    else
    {
      result = 157286400;
    }
  }

  else
  {
    result = 52428800;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unint64_t)currentMemoryFootprint
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *task_info_out = 0u;
  v6 = 0u;
  task_info_outCnt = 93;
  v2 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v2)
  {
    return (vcvts_n_f32_u64(v14, 0xAuLL) * 0.00097656);
  }

  NSLog(&cfstr_FiledToGetMemo.isa, v2);
  return 0;
}

@end