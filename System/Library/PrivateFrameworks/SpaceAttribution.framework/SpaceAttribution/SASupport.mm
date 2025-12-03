@interface SASupport
+ (BOOL)isFileCloned:(const char *)cloned;
+ (BOOL)isFilePurgeable:(const char *)purgeable;
+ (BOOL)isItemMountedOnSystemVolume:(id)volume;
+ (BOOL)shouldExcludeCacheSizeForBundle:(id)bundle;
+ (BOOL)targetDeviceIsHomePod;
+ (BOOL)targetDeviceIsIpad;
+ (BOOL)targetDeviceIsWatch;
+ (BOOL)volumeSupportsAttributionTags:(id)tags;
+ (BOOL)volumeSupportsCloneGroups:(id)groups;
+ (BOOL)volumeSupportsCloneMapping:(id)mapping;
+ (id)buildVersion;
+ (id)getAllAppsUsageTime:(id)time;
+ (id)getEnterpriseVolumesPaths;
+ (id)getFSPurgeableDataOnVolumes:(id)volumes;
+ (id)getPathForDirStatKey:(unint64_t)key volumePath:(id)path;
+ (id)getPathOfNodeID:(unint64_t)d FSid:(fsid *)sid;
+ (id)getPathOfiNode:(unint64_t)node inVolume:(id)volume;
+ (id)getRelevantVolumes;
+ (id)getResolvedPath:(id)path;
+ (id)getResolvedPathForFD:(int)d;
+ (id)getResolvedURL:(id)l;
+ (id)getURLMountPoint:(id)point;
+ (id)getVolumesPaths;
+ (id)getiCloudPlanSizeGB;
+ (unint64_t)calculateMovingSumFor:(unint64_t)for with:(unint64_t)with numOfSamples:(unint64_t)samples windowLength:(unint64_t)length;
+ (unint64_t)getCloneDstreamIDForPath:(id)path;
+ (unint64_t)getDirStatKeyForOriginID:(unint64_t)d ofMount:(char *)mount;
+ (unint64_t)getDiskCapacity;
+ (unint64_t)getDiskUsed;
+ (unint64_t)getFSPurgeableOnVolume:(id)volume purgeableUrgency:(unint64_t)urgency respectZeroSizeFiles:(BOOL)files;
+ (unint64_t)getInodeForDirStatKey:(unint64_t)key volumePath:(const char *)path;
+ (unint64_t)getInodeIDForPath:(id)path;
+ (void)getLSAppRecordForBundle:(id)bundle reply:(id)reply;
+ (void)getVolSizeFromAttrList:(const char *)list completionHandler:(id)handler;
@end

@implementation SASupport

+ (BOOL)isItemMountedOnSystemVolume:(id)volume
{
  volumeCopy = volume;
  memset(&v6, 0, 512);
  if (statfs([volumeCopy fileSystemRepresentation], &v6))
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003A050();
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    LODWORD(v4) = (BYTE1(v6.f_flags) >> 6) & 1;
  }

  return v4;
}

+ (id)getPathOfiNode:(unint64_t)node inVolume:(id)volume
{
  volumeCopy = volume;
  bzero(&v8, 0x878uLL);
  if (node)
  {
    if (statfs([volumeCopy fileSystemRepresentation], &v8))
    {
      v6 = SALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003A174();
      }

      goto LABEL_6;
    }

    if (fsgetpath(v9, 0x400uLL, &v8.f_fsid, node) < 1)
    {
LABEL_6:
      node = 0;
      goto LABEL_9;
    }

    node = [NSString stringWithCString:v9 encoding:4];
  }

LABEL_9:

  return node;
}

+ (unint64_t)getDirStatKeyForOriginID:(unint64_t)d ofMount:(char *)mount
{
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v6[2] = 0;
  v7 = 0u;
  v6[0] = 1;
  v6[1] = 3;
  v6[3] = d;
  if (!fsctl(mount, 0xC1104A71uLL, v6, 1u))
  {
    return v7;
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003A228();
  }

  return 0;
}

+ (unint64_t)getInodeForDirStatKey:(unint64_t)key volumePath:(const char *)path
{
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v7 = 0u;
  v6[0] = 1;
  v6[1] = 33;
  keyCopy = key;
  if (!fsctl(path, 0xC1104A71uLL, v6, 0))
  {
    return *(&v7 + 1);
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10003A2AC();
  }

  return 0;
}

+ (id)getPathForDirStatKey:(unint64_t)key volumePath:(id)path
{
  pathCopy = path;
  v6 = +[SASupport getInodeForDirStatKey:volumePath:](SASupport, "getInodeForDirStatKey:volumePath:", key, [pathCopy fileSystemRepresentation]);
  if (v6)
  {
    v7 = [SASupport getPathOfiNode:v6 inVolume:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)targetDeviceIsIpad
{
  if (qword_100073640 != -1)
  {
    sub_10003A4B0();
  }

  return byte_100073638;
}

+ (BOOL)targetDeviceIsHomePod
{
  if (qword_100073650 != -1)
  {
    sub_10003A4C4();
  }

  return byte_100073648;
}

+ (BOOL)volumeSupportsAttributionTags:(id)tags
{
  tagsCopy = tags;
  v9 = xmmword_10004CC70;
  v10 = 0;
  LODWORD(v8) = 0;
  v6 = 0u;
  v7 = 0u;
  if (getattrlist([tagsCopy UTF8String], &v9, &v6, 0x24uLL, 0))
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003A4D8();
    }
  }

  else
  {
    if ((BYTE10(v7) & 0x40) != 0)
    {
      LODWORD(v4) = (BYTE10(v6) >> 6) & 1;
      goto LABEL_8;
    }

    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003A548();
    }
  }

  LOBYTE(v4) = 0;
LABEL_8:

  return v4;
}

+ (BOOL)volumeSupportsCloneMapping:(id)mapping
{
  mappingCopy = mapping;
  v9 = xmmword_10004CC70;
  v10 = 0;
  LODWORD(v8) = 0;
  v6 = 0u;
  v7 = 0u;
  if (getattrlist([mappingCopy UTF8String], &v9, &v6, 0x24uLL, 0))
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003A5C8();
    }
  }

  else
  {
    if ((BYTE7(v7) & 4) != 0)
    {
      LODWORD(v4) = (BYTE7(v6) >> 2) & 1;
      goto LABEL_8;
    }

    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003A638();
    }
  }

  LOBYTE(v4) = 0;
LABEL_8:

  return v4;
}

+ (BOOL)volumeSupportsCloneGroups:(id)groups
{
  v10 = 0;
  memset(v6, 0, sizeof(v6));
  v7 = v11;
  v8 = xmmword_10004CC60;
  v3 = 1;
  v9 = 1;
  if (fsctl([groups fileSystemRepresentation], 0xC0684A87uLL, v6, 0))
  {
    if (*__error() == 45)
    {
      return 0;
    }

    else
    {
      v4 = SALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10003A6B8();
      }

      return 1;
    }
  }

  return v3;
}

+ (id)getResolvedPathForFD:(int)d
{
  if (d)
  {
    v9 = 0;
    v8 = xmmword_10004CC88;
    bzero(v10, 0x420uLL);
    if (fgetattrlist(d, &v8, v10, 0x420uLL, 0) < 0)
    {
      v5 = SALog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10003A740();
      }

      v6 = 0;
    }

    else
    {
      if (v11[1])
      {
        v4 = [NSString stringWithUTF8String:v11 + v11[0], v8, v9];
        v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
      }

      else
      {
        v5 = 0;
      }

      v6 = [v5 path:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getResolvedURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy || ([lCopy path], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v9 = v4;
    goto LABEL_12;
  }

  bzero(v12, 0x420uLL);
  path = [v4 path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (getattrlist(fileSystemRepresentation, &v11, v12, 0x420uLL, 0) < 0)
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003A808();
    }

    v9 = 0;
    goto LABEL_10;
  }

  if (v13[1])
  {
    v8 = [NSString stringWithUTF8String:v13 + v13[0]];
    v9 = [NSURL fileURLWithPath:v8 isDirectory:1];
LABEL_10:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)getResolvedPath:(id)path
{
  if (path)
  {
    v3 = [NSURL fileURLWithPath:path isDirectory:1];
    v4 = [SASupport getResolvedURL:v3];
    path = [v4 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

+ (id)getURLMountPoint:(id)point
{
  bzero(v10, 0x40CuLL);
  path = [point path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (getattrlist(fileSystemRepresentation, &v9, v10, 0x40CuLL, 1u) < 0)
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003A8AC();
    }
  }

  else if (v11[1])
  {
    v6 = [NSString stringWithUTF8String:v11 + v11[0]];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (BOOL)targetDeviceIsWatch
{
  if (qword_100073660 != -1)
  {
    sub_10003A950();
  }

  return byte_100073658;
}

+ (void)getLSAppRecordForBundle:(id)bundle reply:(id)reply
{
  replyCopy = reply;
  bundleCopy = bundle;
  v9 = 0;
  v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleCopy allowPlaceholder:1 error:&v9];

  v8 = v9;
  replyCopy[2](replyCopy, v8, v7);
}

+ (id)getPathOfNodeID:(unint64_t)d FSid:(fsid *)sid
{
  if (d)
  {
    if ((fsgetpath(v8, 0x400uLL, sid, d) & 0x8000000000000000) == 0)
    {
      v4 = [NSString stringWithUTF8String:v8];
      goto LABEL_8;
    }

    v5 = *__error();
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003A964();
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)getFSPurgeableDataOnVolumes:(id)volumes
{
  volumesCopy = volumes;
  v30 = objc_opt_new();
  v29 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = volumesCopy;
  v25 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v25)
  {
    v24 = *v37;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v4;
        v5 = *(*(&v36 + 1) + 8 * v4);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        allKeys = [&off_100069030 allKeys];
        v28 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v28)
        {
          v6 = *v33;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v33 != v6)
              {
                objc_enumerationMutation(allKeys);
              }

              v8 = *(*(&v32 + 1) + 8 * i);
              context = objc_autoreleasePoolPush();
              v9 = [&off_100069030 objectForKeyedSubscript:v8];
              longLongValue = [v9 longLongValue];

              v11 = [SASupport getFSPurgeableOnVolume:v5 purgeableUrgency:longLongValue respectZeroSizeFiles:1];
              v12 = [SASupport getFSPurgeableOnVolume:v5 purgeableUrgency:longLongValue respectZeroSizeFiles:0];
              v13 = [v30 valueForKey:v5];
              v14 = [v29 valueForKey:v5];
              if (v14)
              {
                v15 = v14;
                v16 = [NSNumber numberWithUnsignedLongLong:v11];
                [v13 setObject:v16 forKey:v8];

                v17 = [NSNumber numberWithUnsignedLongLong:v12];
                [v15 setObject:v17 forKey:v8];
              }

              else
              {
                v18 = [NSNumber numberWithUnsignedLongLong:v11];
                v19 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v18, v8, 0];

                [v30 setValue:v19 forKey:v5];
                v20 = [NSNumber numberWithUnsignedLongLong:v12];
                v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v20, v8, 0];

                [v29 setValue:v15 forKey:v5];
                v13 = v19;
              }

              objc_autoreleasePoolPop(context);
            }

            v28 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v28);
        }

        v4 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v25);
  }

  v21 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v30, @"RESPECT_0_SIZE", v29, @"NO_RESPECT_0_SIZE", 0];

  return v21;
}

+ (unint64_t)getFSPurgeableOnVolume:(id)volume purgeableUrgency:(unint64_t)urgency respectZeroSizeFiles:(BOOL)files
{
  filesCopy = files;
  volumeCopy = volume;
  v8 = volumeCopy;
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
  *&v14 = 0;
  v15 = 0u;
  *(&v14 + 1) = urgency;
  if (filesCopy)
  {
    *&v14 = 8;
  }

  if (fsctl([volumeCopy fileSystemRepresentation], 0xC0E84A70uLL, &v14, 1u) < 0)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 138412802;
      v30 = v8;
      v31 = 2048;
      urgencyCopy = urgency;
      v33 = 2080;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Failed to get FSPurgeable data of urgency (%llu) with error: %s", buf, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v22;
  }

  return v9;
}

+ (BOOL)isFilePurgeable:(const char *)purgeable
{
  v5 = 0;
  if (!fsctl(purgeable, 0x40084A47uLL, &v5, 1u))
  {
    return (v5 & 0xE00) != 0;
  }

  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003A9E0();
  }

  return 0;
}

+ (BOOL)isFileCloned:(const char *)cloned
{
  v6[0] = 0;
  v6[1] = 0;
  if (fsctl(cloned, 0x40104A0EuLL, v6, 1u))
  {
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003AA68();
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    return (LOBYTE(v6[0]) >> 1) & 1;
  }

  return v4;
}

+ (unint64_t)getInodeIDForPath:(id)path
{
  pathCopy = path;
  memset(&v7, 0, sizeof(v7));
  if (stat([pathCopy fileSystemRepresentation], &v7))
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003AAF0();
    }

    st_ino = 0;
  }

  else
  {
    st_ino = v7.st_ino;
  }

  return st_ino;
}

+ (unint64_t)getCloneDstreamIDForPath:(id)path
{
  v5 = 0;
  v6 = 0;
  if (!fsctl([path fileSystemRepresentation], 0x40104A0EuLL, &v5, 1u))
  {
    return v6;
  }

  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003AA68();
  }

  return 0;
}

+ (void)getVolSizeFromAttrList:(const char *)list completionHandler:(id)handler
{
  memset(v11, 0, 28);
  v12[2] = 0;
  v12[0] = 5;
  v12[1] = 2692743172;
  handlerCopy = handler;
  v6 = getattrlist(list, v12, v11, 0x1CuLL, 1u);
  v7 = SALog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "+[SASupport getVolSizeFromAttrList:completionHandler:]";
      v15 = 2080;
      listCopy = list;
      v17 = 2048;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: Can't get volume size for %s (err %li)", buf, 0x20u);
    }

    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10003AB60(list, v11, v8);
    }

    v9 = 0;
  }

  if (*(&v11[1] + 4) <= *(&v11[2] + 4))
  {
    v10 = *(&v11[2] + 4);
  }

  else
  {
    v10 = *(&v11[1] + 4);
  }

  handlerCopy[2](handlerCopy, v10, *(v11 + 4), v9);
}

+ (id)getVolumesPaths
{
  if (qword_100073670 != -1)
  {
    sub_10003AC18();
  }

  v3 = qword_100073668;

  return v3;
}

+ (unint64_t)calculateMovingSumFor:(unint64_t)for with:(unint64_t)with numOfSamples:(unint64_t)samples windowLength:(unint64_t)length
{
  if (samples >= length)
  {
    samplesCopy = length;
  }

  else
  {
    samplesCopy = samples;
  }

  return (samplesCopy * with + (length >> 1) + (length - samplesCopy) * for) / length;
}

+ (id)getEnterpriseVolumesPaths
{
  v2 = +[SASupport getRelevantVolumes];
  v3 = objc_opt_new();
  v4 = qword_100073678;
  qword_100073678 = v3;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v15 = 0;
        if (fsctl([v10 fileSystemRepresentation], 0x40024A6CuLL, &v15, 0))
        {
          v11 = SALog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            sub_10003ACC0(&v20, &v21);
          }
        }

        else if (v15 == 576)
        {
          [qword_100073678 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = qword_100073678;
  v13 = qword_100073678;

  return v12;
}

+ (BOOL)shouldExcludeCacheSizeForBundle:(id)bundle
{
  bundleCopy = bundle;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&off_100069080 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&off_100069080);
        }

        if ([bundleCopy hasPrefix:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = SALog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_10003AD20();
          }

          v8 = 1;
          goto LABEL_13;
        }
      }

      v5 = [&off_100069080 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

+ (id)getRelevantVolumes
{
  if (qword_100073688 != -1)
  {
    sub_10003AD94();
  }

  v3 = qword_100073680;

  return v3;
}

+ (id)buildVersion
{
  if (qword_100073698 != -1)
  {
    sub_10003ADA8();
  }

  v3 = qword_100073690;

  return v3;
}

+ (id)getAllAppsUsageTime:(id)time
{
  timeCopy = time;
  if (objc_opt_class())
  {
    v4 = BiomeLibrary();
    v5 = [v4 App];
    inFocus = [v5 InFocus];

    v7 = objc_opt_new();
    v8 = objc_autoreleasePoolPush();
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_1000017E4;
    v23[4] = sub_1000017F4;
    v24 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_1000017E4;
    v21[4] = sub_1000017F4;
    v9 = timeCopy;
    v22 = v9;
    v10 = [BMPublisherOptions alloc];
    v11 = +[NSDate date];
    v12 = [v10 initWithStartDate:v9 endDate:v11 maxEvents:0 lastN:0 reversed:0];

    v13 = [inFocus publisherWithOptions:v12];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100004908;
    v17[3] = &unk_100064868;
    v19 = v23;
    v20 = v21;
    v14 = v7;
    v18 = v14;
    v15 = [v13 sinkWithCompletion:&stru_100064840 receiveInput:v17];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v23, 8);

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)getiCloudPlanSizeGB
{
  if (objc_opt_class() && objc_opt_class())
  {
    v2 = +[ACAccountStore defaultStore];
    aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

    aa_lastKnownQuota = [aa_primaryAppleAccount aa_lastKnownQuota];
    v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [aa_lastKnownQuota unsignedLongLongValue] >> 30);
  }

  else
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003ADBC();
    }

    v5 = 0;
  }

  return v5;
}

+ (unint64_t)getDiskCapacity
{
  if (APFSContainerGetBootDevice())
  {
    v2 = SALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10003ADFC();
    }

LABEL_4:
    unsignedLongLongValue = 0;
    goto LABEL_13;
  }

  v2 = 0;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cfBootDisk: %@", buf, 0xCu);
  }

  v5 = IOBSDNameMatching(kIOMainPortDefault, 0, [0 fileSystemRepresentation]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (!MatchingService)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B10C();
    }

    goto LABEL_4;
  }

  *buf = 0;
  if (IORegistryEntryCreateIterator(MatchingService, "IOService", 3u, buf))
  {
    v7 = SALog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = -1025;
    while (1)
    {
      v11 = IOIteratorNext(*buf);
      if (!v11)
      {
        v7 = SALog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10003B09C();
        }

        goto LABEL_11;
      }

      v12 = v11;
      if (IOObjectConformsTo(v11, "IOBlockStorageDevice"))
      {
        break;
      }

      v13 = __CFADD__(v10++, 1);
      if (v13)
      {
        v7 = SALog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10003B018();
        }

        goto LABEL_11;
      }
    }

    *buf = 0;
    if (!IORegistryEntryCreateIterator(v12, "IOService", 1u, buf))
    {
      v14 = -1025;
      while (1)
      {
        v15 = IOIteratorNext(*buf);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (IOObjectConformsTo(v15, "IOMedia"))
        {
          CFProperty = IORegistryEntryCreateCFProperty(v16, @"Size", kCFAllocatorDefault, 0);
          if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v7 = CFProperty;
            unsignedLongLongValue = [v7 unsignedLongLongValue];
          }

          else
          {
            v18 = SALog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10003AEDC();
            }

            v7 = 0;
            unsignedLongLongValue = 0;
          }

          goto LABEL_12;
        }

        v13 = __CFADD__(v14++, 1);
        if (v13)
        {
          v7 = SALog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_10003AF5C();
          }

          goto LABEL_11;
        }
      }

      v7 = SALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10003AFD8();
      }

      goto LABEL_11;
    }

    v7 = SALog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  sub_10003AE6C();
LABEL_11:
  unsignedLongLongValue = 0;
LABEL_12:

LABEL_13:
  return unsignedLongLongValue;
}

+ (unint64_t)getDiskUsed
{
  memset(v6, 0, 20);
  v7[2] = 0;
  v7[0] = 5;
  v7[1] = 2147483668;
  v2 = getattrlist("/", v7, v6, 0x14uLL, 1u);
  v3 = SALog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10003B17C();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003B218(v6, v4);
  }

  return *&v6[1] - *&v6[3];
}

@end