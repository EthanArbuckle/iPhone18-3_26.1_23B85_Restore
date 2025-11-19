@interface ASPCarryLog_NANDDriver
- (id)nandCounters_get;
- (id)nandStats_get_hoursAgo:(unsigned int)a3;
- (int)iolog_disable;
- (int)iolog_enable;
- (int)nandCounters_save:(id)a3;
- (int)nandStats_save:(id)a3;
- (int)writeFullSpdToFileWithHdrBuf:(void *)a3 hdrSize:(unint64_t)a4 totalLbaCnt:(unint64_t)a5 filePtr:(__sFILE *)a6 spdSizeLimit:(unint64_t)a7;
- (unint64_t)iolog_export:(id)a3 max_export_size:(unint64_t)a4;
- (void)addSpdEstSizeExceedLimitToFile:(__sFILE *)a3 limit:(unsigned int)a4;
- (void)getSpdHdrWithSize:(unint64_t *)a3 gcIdle:(BOOL *)a4 totalLbaCnt:(unint64_t *)a5 estSpdSize:(unsigned int *)a6;
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

- (unint64_t)iolog_export:(id)a3 max_export_size:(unint64_t)a4
{
  v5 = a3;
  v22 = 0;
  v23 = 0;
  v6 = [v5 UTF8String];
  v21 = 0;
  v7 = +[NSFileManager defaultManager];
  if (![v7 fileExistsAtPath:v5])
  {
    v11 = open(v6, 522, 438);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000499EC(v6, v13, v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_17;
  }

  v8 = [v7 attributesOfItemAtPath:v5 error:0];
  v9 = [v8 fileSize];

  v10 = open(v6, 522, 438);
  if (v10 < 0)
  {
    goto LABEL_12;
  }

  v11 = v10;
  if (v9)
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
  if (!sub_10002E660(v11, a4, &v21))
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

- (int)nandCounters_save:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [NSURL fileURLWithPath:v4 isDirectory:0];
  v7 = [(ASPCarryLog_NANDDriver *)self nandCounters_get];
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100049A8C();
    }

    goto LABEL_8;
  }

  if (([v7 writeToURL:v6 error:0] & 1) == 0)
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

- (id)nandStats_get_hoursAgo:(unsigned int)a3
{
  v5 = 0;
  v6 = 0;
  if (sub_10002EB7C(0, a3, 0, &v6, &v5))
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

- (int)nandStats_save:(id)a3
{
  v3 = [a3 UTF8String];
  if (print_all_stats(v3) == 1)
  {
    result = print_band_stats(v3);
    if (result != 1)
    {
      v5 = oslog;
      result = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100049B60(v3, v5, v6, v7, v8, v9, v10, v11);
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
      sub_100049AF4(v3, v12, v13, v14, v15, v16, v17, v18);
      return 0;
    }
  }

  return result;
}

- (void)getSpdHdrWithSize:(unint64_t *)a3 gcIdle:(BOOL *)a4 totalLbaCnt:(unint64_t *)a5 estSpdSize:(unsigned int *)a6
{
  v9 = 0;
  v7 = sub_10002E8D4(&v9, a3, a4, a5, a6);
  result = v9;
  if (!v7)
  {
    if (v9)
    {
      free(v9);
      result = 0;
      *a3 = 0;
    }
  }

  return result;
}

- (void)addSpdEstSizeExceedLimitToFile:(__sFILE *)a3 limit:(unsigned int)a4
{
  __ptr = a4;
  v5 = 0x4FBFF00000001;
  fwrite(&v5, 8uLL, 1uLL, a3);
  fwrite(&__ptr, 4uLL, 1uLL, a3);
}

- (int)writeFullSpdToFileWithHdrBuf:(void *)a3 hdrSize:(unint64_t)a4 totalLbaCnt:(unint64_t)a5 filePtr:(__sFILE *)a6 spdSizeLimit:(unint64_t)a7
{
  __size = 0;
  __ptr = 0;
  if (!a6 || !fwrite(a3, a4, 1uLL, a6) || !sub_10004A4FC(a6, a5, a7))
  {
    return 0;
  }

  sub_10002EB64(&__ptr, &__size);
  v10 = 0;
  v11 = __ptr;
  if (__ptr && __size)
  {
    v10 = fwrite(__ptr, __size, 1uLL, a6) != 0;
    v11 = __ptr;
  }

  if (v11)
  {
    free(v11);
  }

  return v10;
}

@end