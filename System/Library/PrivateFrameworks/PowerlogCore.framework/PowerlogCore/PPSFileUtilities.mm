@interface PPSFileUtilities
+ (BOOL)markAsPurgeable:(id)purgeable label:(apfs_label_purgeable_request *)label;
+ (BOOL)markAsPurgeable:(id)purgeable urgency:(unint64_t)urgency startDate:(id)date;
+ (BOOL)supportsEnhancedAPFS;
+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)urgency startDate:(unint64_t)date;
+ (id)containerPath;
@end

@implementation PPSFileUtilities

+ (id)containerPath
{
  if (containerPath_onceToken_0 != -1)
  {
    +[PPSFileUtilities containerPath];
  }

  v3 = containerPath_containerPath_0;

  return v3;
}

void __33__PPSFileUtilities_containerPath__block_invoke()
{
  v4 = 1;
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    v3 = containerPath_containerPath_0;
    containerPath_containerPath_0 = v2;

    free(v1);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __33__PPSFileUtilities_containerPath__block_invoke_cold_1(&v4);
  }
}

+ (BOOL)markAsPurgeable:(id)purgeable label:(apfs_label_purgeable_request *)label
{
  v25 = *MEMORY[0x1E69E9840];
  purgeableCopy = purgeable;
  v6 = purgeableCopy;
  if (purgeableCopy && label->var0)
  {
    label->var0 |= 0x10005uLL;
    v7 = open([purgeableCopy fileSystemRepresentation], 0);
    v8 = v7;
    if (v7 < 0)
    {
      v11 = PPSLogAPFS();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = *&label->var2;
        *v24 = *&label->var0;
        *&v24[16] = v20;
        *&v24[32] = *&label->var4;
        v13 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
        v21 = strerror(v8);
        *v24 = 138413058;
        *&v24[4] = v6;
        *&v24[12] = 2112;
        *&v24[14] = v13;
        *&v24[22] = 1024;
        *&v24[24] = v8;
        *&v24[28] = 2080;
        *&v24[30] = v21;
        v16 = "Failed to open file handle for '%@' to apply purgeable status: '%@' (error %d = '%s')";
        goto LABEL_16;
      }
    }

    else
    {
      v9 = ffsctl(v7, 0xC0304A6FuLL, label, 0);
      close(v8);
      v10 = PPSLogAPFS();
      v11 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v22 = *&label->var2;
          *v24 = *&label->var0;
          *&v24[16] = v22;
          *&v24[32] = *&label->var4;
          v23 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
          *v24 = 138412546;
          *&v24[4] = v6;
          *&v24[12] = 2112;
          *&v24[14] = v23;
          _os_log_debug_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEBUG, "Marked file '%@' as purgeable with label: '%@'", v24, 0x16u);
        }

        v17 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *&label->var2;
        *v24 = *&label->var0;
        *&v24[16] = v12;
        *&v24[32] = *&label->var4;
        v13 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
        v14 = __error();
        v15 = strerror(*v14);
        *v24 = 138413058;
        *&v24[4] = v6;
        *&v24[12] = 2112;
        *&v24[14] = v13;
        *&v24[22] = 1024;
        *&v24[24] = v9;
        *&v24[28] = 2080;
        *&v24[30] = v15;
        v16 = "Failed to mark file '%@' as purgeable with label: '%@' (error %d = '%s')";
LABEL_16:
        _os_log_error_impl(&dword_1D8611000, v11, OS_LOG_TYPE_ERROR, v16, v24, 0x26u);
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)markAsPurgeable:(id)purgeable urgency:(unint64_t)urgency startDate:(id)date
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  purgeableCopy = purgeable;
  [PPSFileUtilities _purgeableLabelWithUrgency:urgency startDate:date];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  LOBYTE(date) = [PPSFileUtilities markAsPurgeable:purgeableCopy label:v9];

  return date;
}

+ (BOOL)supportsEnhancedAPFS
{
  if (supportsEnhancedAPFS_onceToken != -1)
  {
    +[PPSFileUtilities(APFS) supportsEnhancedAPFS];
  }

  return supportsEnhancedAPFS_result;
}

uint64_t __46__PPSFileUtilities_APFS__supportsEnhancedAPFS__block_invoke()
{
  result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/filesystems");
  if (result)
  {
    v1 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"e-apfs", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      supportsEnhancedAPFS_result = 1;
    }

    return IOObjectRelease(v1);
  }

  return result;
}

+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)urgency startDate:(unint64_t)date
{
  v10 = a5;
  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  retstr->var5 = 0;
  retstr->var0 = date;
  timeIntervalSince1970 = +[PPSFileUtilities supportsEnhancedAPFS];
  if (v10 && timeIntervalSince1970)
  {
    retstr->var2 = 0x80000;
    timeIntervalSince1970 = [v10 timeIntervalSince1970];
    retstr->var4 = 1000000000 * v8;
  }

  return MEMORY[0x1EEE66BB8](timeIntervalSince1970);
}

void __33__PPSFileUtilities_containerPath__block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = 134217984;
  v4 = v1;
  _os_log_error_impl(&dword_1D8611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error fetching group container systemgroup.com.apple.powerlog : %llu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end