@interface PPSFileUtilities
+ (BOOL)markAsPurgeable:(id)a3 label:(apfs_label_purgeable_request *)a4;
+ (BOOL)markAsPurgeable:(id)a3 urgency:(unint64_t)a4 startDate:(id)a5;
+ (BOOL)supportsEnhancedAPFS;
+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)a3 startDate:(unint64_t)a4;
+ (id)containerPath;
@end

@implementation PPSFileUtilities

+ (BOOL)markAsPurgeable:(id)a3 label:(apfs_label_purgeable_request *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && a4->var0)
  {
    a4->var0 |= 0x10005uLL;
    v7 = open([v5 fileSystemRepresentation], 0);
    v8 = v7;
    if (v7 < 0)
    {
      v11 = PPSLogAPFS();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = *&a4->var2;
        *v24 = *&a4->var0;
        *&v24[16] = v20;
        *&v24[32] = *&a4->var4;
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
      v9 = ffsctl(v7, 0xC0304A6FuLL, a4, 0);
      close(v8);
      v10 = PPSLogAPFS();
      v11 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v22 = *&a4->var2;
          *v24 = *&a4->var0;
          *&v24[16] = v22;
          *&v24[32] = *&a4->var4;
          v23 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
          *v24 = 138412546;
          *&v24[4] = v6;
          *&v24[12] = 2112;
          *&v24[14] = v23;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Marked file '%@' as purgeable with label: '%@'", v24, 0x16u);
        }

        v17 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *&a4->var2;
        *v24 = *&a4->var0;
        *&v24[16] = v12;
        *&v24[32] = *&a4->var4;
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
        _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v16, v24, 0x26u);
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)markAsPurgeable:(id)a3 urgency:(unint64_t)a4 startDate:(id)a5
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = a3;
  [PPSFileUtilities _purgeableLabelWithUrgency:a4 startDate:a5];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  LOBYTE(a5) = [PPSFileUtilities markAsPurgeable:v7 label:v9];

  return a5;
}

+ (BOOL)supportsEnhancedAPFS
{
  if (qword_2811F7E28 != -1)
  {
    dispatch_once(&qword_2811F7E28, &__block_literal_global_5);
  }

  return _MergedGlobals_106;
}

uint64_t __46__PPSFileUtilities_APFS__supportsEnhancedAPFS__block_invoke()
{
  result = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/filesystems");
  if (result)
  {
    v1 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"e-apfs", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      _MergedGlobals_106 = 1;
    }

    return IOObjectRelease(v1);
  }

  return result;
}

+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)a3 startDate:(unint64_t)a4
{
  v10 = a5;
  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  retstr->var5 = 0;
  retstr->var0 = a4;
  v7 = +[PPSFileUtilities supportsEnhancedAPFS];
  if (v10 && v7)
  {
    retstr->var2 = 0x80000;
    v7 = [v10 timeIntervalSince1970];
    retstr->var4 = 1000000000 * v8;
  }

  return MEMORY[0x2821F96F8](v7);
}

+ (id)containerPath
{
  if (containerPath_onceToken != -1)
  {
    dispatch_once(&containerPath_onceToken, &__block_literal_global_59);
  }

  v3 = containerPath_containerPath;

  return v3;
}

void __33__PPSFileUtilities_containerPath__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
    v3 = containerPath_containerPath;
    containerPath_containerPath = v2;

    free(v1);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v6 = 1;
    _os_log_error_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error fetching group container systemgroup.com.apple.powerlog : %llu", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end