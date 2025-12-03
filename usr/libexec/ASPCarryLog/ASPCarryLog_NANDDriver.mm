@interface ASPCarryLog_NANDDriver
- (id)nandCounters_get;
- (id)nandStats_get_hoursAgo:(unsigned int)ago;
- (int)iolog_disable;
- (int)iolog_enable;
- (int)nandCounters_save:(id)counters_save;
- (int)nandStats_save:(id)stats_save;
- (int)writeFullSpdToFileWithHdrBuf:(void *)buf hdrSize:(unint64_t)size totalLbaCnt:(unint64_t)cnt filePtr:(__sFILE *)ptr spdSizeLimit:(unint64_t)limit;
- (unint64_t)iolog_export:(id)iolog_export max_export_size:(unint64_t)max_export_size;
- (void)addSpdEstSizeExceedLimitToFile:(__sFILE *)file limit:(unsigned int)limit;
- (void)getSpdHdrWithSize:(unint64_t *)size gcIdle:(BOOL *)idle totalLbaCnt:(unint64_t *)cnt estSpdSize:(unsigned int *)spdSize;
@end

@implementation ASPCarryLog_NANDDriver

- (int)iolog_enable
{
  if (sub_10002E7E8(15, 0, 0))
  {
    return 1;
  }

  result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10004991C();
    return 0;
  }

  return result;
}

- (int)iolog_disable
{
  if (sub_10002E7E8(0, 0, 0))
  {
    return 1;
  }

  result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100049950();
    return 0;
  }

  return result;
}

- (unint64_t)iolog_export:(id)iolog_export max_export_size:(unint64_t)max_export_size
{
  iolog_exportCopy = iolog_export;
  v22 = 0;
  v23 = 0;
  uTF8String = [iolog_exportCopy UTF8String];
  v21 = 0;
  v7 = +[NSFileManager defaultManager];
  if (![v7 fileExistsAtPath:iolog_exportCopy])
  {
    v11 = open(uTF8String, 522, 438);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000499EC(uTF8String, v13, v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_17;
  }

  v8 = [v7 attributesOfItemAtPath:iolog_exportCopy error:0];
  fileSize = [v8 fileSize];

  v10 = open(uTF8String, 522, 438);
  if (v10 < 0)
  {
    goto LABEL_12;
  }

  v11 = v10;
  if (fileSize)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!sub_10002E538(4u, &v23, &v22))
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000499B8();
    }

    close(v11);
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  write(v11, v23, v22);
  free(v23);
LABEL_8:
  if (!sub_10002E660(v11, max_export_size, &v21))
  {
    v21 = 0;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049984();
    }
  }

  close(v11);
  v12 = v21;
LABEL_18:

  return v12;
}

- (id)nandCounters_get
{
  v8 = CopyWhitelistedNANDFTLInfo(1, a2, v2, v3, v4, v5, v6, v7);

  return v8;
}

- (int)nandCounters_save:(id)counters_save
{
  counters_saveCopy = counters_save;
  v5 = objc_autoreleasePoolPush();
  v6 = [NSURL fileURLWithPath:counters_saveCopy isDirectory:0];
  nandCounters_get = [(ASPCarryLog_NANDDriver *)self nandCounters_get];
  v8 = nandCounters_get;
  if (!nandCounters_get)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049A8C();
    }

    goto LABEL_8;
  }

  if (([nandCounters_get writeToURL:v6 error:0] & 1) == 0)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049A58();
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  objc_autoreleasePoolPop(v5);
  return v9;
}

- (id)nandStats_get_hoursAgo:(unsigned int)ago
{
  v5 = 0;
  v6 = 0;
  if (sub_10002EB7C(0, ago, 0, &v6, &v5))
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    NSDictFromStatsBuffer(v6, v5, v3);
    free(v6);
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049AC0();
    }

    v3 = 0;
  }

  return v3;
}

- (int)nandStats_save:(id)stats_save
{
  uTF8String = [stats_save UTF8String];
  if (print_all_stats(uTF8String) == 1)
  {
    result = print_band_stats(uTF8String);
    if (result != 1)
    {
      v5 = oslog;
      result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100049B60(uTF8String, v5, v6, v7, v8, v9, v10, v11);
        return 0;
      }
    }
  }

  else
  {
    v12 = oslog;
    result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100049AF4(uTF8String, v12, v13, v14, v15, v16, v17, v18);
      return 0;
    }
  }

  return result;
}

- (void)getSpdHdrWithSize:(unint64_t *)size gcIdle:(BOOL *)idle totalLbaCnt:(unint64_t *)cnt estSpdSize:(unsigned int *)spdSize
{
  v9 = 0;
  v7 = sub_10002E8D4(&v9, size, idle, cnt, spdSize);
  result = v9;
  if (!v7)
  {
    if (v9)
    {
      free(v9);
      result = 0;
      *size = 0;
    }
  }

  return result;
}

- (void)addSpdEstSizeExceedLimitToFile:(__sFILE *)file limit:(unsigned int)limit
{
  __ptr = limit;
  v5 = 0x4FBFF00000001;
  fwrite(&v5, 8uLL, 1uLL, file);
  fwrite(&__ptr, 4uLL, 1uLL, file);
}

- (int)writeFullSpdToFileWithHdrBuf:(void *)buf hdrSize:(unint64_t)size totalLbaCnt:(unint64_t)cnt filePtr:(__sFILE *)ptr spdSizeLimit:(unint64_t)limit
{
  __size = 0;
  __ptr = 0;
  if (!ptr || !fwrite(buf, size, 1uLL, ptr) || !sub_10004A4FC(ptr, cnt, limit))
  {
    return 0;
  }

  sub_10002EB64(&__ptr, &__size);
  v10 = 0;
  v11 = __ptr;
  if (__ptr && __size)
  {
    v10 = fwrite(__ptr, __size, 1uLL, ptr) != 0;
    v11 = __ptr;
  }

  if (v11)
  {
    free(v11);
  }

  return v10;
}

@end