@interface NSFileManager
- (BOOL)tsu_canCloneItemAtURL:(id)l toURL:(id)rL;
- (BOOL)tsu_grantUserWritePosixPermissionAtPath:(id)path error:(id *)error;
- (BOOL)tsu_linkOrCopyItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)tsu_makeWritableItemAtURL:(id)l permissionsOverride:(id)override resetCreationDate:(BOOL)date error:(id *)error;
- (BOOL)tsu_replaceItemAtURL:(id)l withItemAtURL:(id)rL backupItemName:(id)name options:(unint64_t)options resultingItemURL:(id *)uRL error:(id *)error;
- (void)tsu_removeContentsOfDirectoryAtURL:(id)l reason:(id)reason urlsToExclude:(id)exclude logContext:(id)context;
@end

@implementation NSFileManager

- (BOOL)tsu_canCloneItemAtURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = rLCopy;
  if (lCopy)
  {
    if (rLCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015E4B8();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015E4CC();
  }

  v8 = [NSString stringWithUTF8String:"[NSFileManager(TSUAdditions) tsu_canCloneItemAtURL:toURL:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSFileManager_TSUAdditions.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:15 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "srcURL"];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!v7)
  {
LABEL_9:
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015E560();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015E588();
    }

    v10 = [NSString stringWithUTF8String:"[NSFileManager(TSUAdditions) tsu_canCloneItemAtURL:toURL:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSFileManager_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:16 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "dstURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_14:
  if ([lCopy tsu_volumeSupportsCloning])
  {
    v12 = [lCopy tsu_isOnSameVolumeAs:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)tsu_linkOrCopyItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v10 = rLCopy;
  if (lCopy)
  {
    if (rLCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015E61C();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015E630();
  }

  v11 = [NSString stringWithUTF8String:"[NSFileManager(TSUAdditions) tsu_linkOrCopyItemAtURL:toURL:error:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSFileManager_TSUAdditions.m"];
  [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:22 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "srcURL"];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!v10)
  {
LABEL_9:
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015E6C4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015E6EC();
    }

    v13 = [NSString stringWithUTF8String:"[NSFileManager(TSUAdditions) tsu_linkOrCopyItemAtURL:toURL:error:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSFileManager_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:23 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "dstURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_14:
  if ([(NSFileManager *)self tsu_canCloneItemAtURL:lCopy toURL:v10]|| ![(NSFileManager *)self linkItemAtURL:lCopy toURL:v10 error:0])
  {
    v18 = 0;
    v16 = [(NSFileManager *)self copyItemAtURL:lCopy toURL:v10 error:&v18];
    v15 = v18;
    if (error && !v16)
    {
      v15 = v15;
      v16 = 0;
      *error = v15;
    }
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  return v16;
}

- (BOOL)tsu_replaceItemAtURL:(id)l withItemAtURL:(id)rL backupItemName:(id)name options:(unint64_t)options resultingItemURL:(id *)uRL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  v27 = NSURLThumbnailDictionaryKey;
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  v17 = [rLCopy resourceValuesForKeys:v16 error:0];

  if (!v17)
  {
    v26 = NSURLThumbnailDictionaryKey;
    v18 = [NSArray arrayWithObjects:&v26 count:1];
    v17 = [lCopy resourceValuesForKeys:v18 error:0];
  }

  v19 = [(NSFileManager *)self replaceItemAtURL:lCopy withItemAtURL:rLCopy backupItemName:nameCopy options:options resultingItemURL:uRL error:error];
  if (v19 && v17)
  {
    v25 = 0;
    v20 = [lCopy setResourceValues:v17 error:&v25];
    v21 = v25;
    if ((v20 & 1) == 0)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015E780();
      }

      v22 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015E7A8(v17, v22, v21);
      }
    }
  }

  return v19;
}

- (BOOL)tsu_makeWritableItemAtURL:(id)l permissionsOverride:(id)override resetCreationDate:(BOOL)date error:(id *)error
{
  dateCopy = date;
  lCopy = l;
  overrideCopy = override;
  path = [lCopy path];
  if (path)
  {
    v13 = [(NSFileManager *)self attributesOfItemAtPath:path error:error];
    v14 = v13;
    if (v13)
    {
      filePosixPermissions = [v13 filePosixPermissions];
      v16 = filePosixPermissions;
      if (overrideCopy)
      {
        filePosixPermissions = [overrideCopy unsignedIntegerValue];
      }

      v18 = filePosixPermissions | 0x80;
      fileIsImmutable = [v14 fileIsImmutable];
      if (v16 != v18 || (fileIsImmutable & 1) != 0 || dateCopy)
      {
        if (dateCopy)
        {
          v20 = +[NSDate date];
          v26[0] = NSFilePosixPermissions;
          v21 = [NSNumber numberWithUnsignedInteger:v18];
          v27[0] = v21;
          v27[1] = &__kCFBooleanFalse;
          v26[1] = NSFileImmutable;
          v26[2] = NSFileCreationDate;
          v26[3] = NSFileModificationDate;
          v27[2] = v20;
          v27[3] = v20;
          v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
        }

        else
        {
          v24[0] = NSFilePosixPermissions;
          v20 = [NSNumber numberWithUnsignedInteger:v18];
          v24[1] = NSFileImmutable;
          v25[0] = v20;
          v25[1] = &__kCFBooleanFalse;
          v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
        }

        v17 = [(NSFileManager *)self sfu_setAttributes:v22 ofItemAtURL:lCopy recursively:1 error:error];
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)tsu_removeContentsOfDirectoryAtURL:(id)l reason:(id)reason urlsToExclude:(id)exclude logContext:(id)context
{
  lCopy = l;
  reasonCopy = reason;
  excludeCopy = exclude;
  contextCopy = context;
  v14 = objc_alloc_init(NSMutableSet);
  if (lCopy)
  {
    path = [lCopy path];
    v16 = [(NSFileManager *)self fileExistsAtPath:path];

    if (v16)
    {
      v48 = 0;
      v17 = [(NSFileManager *)self contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:0 error:&v48];
      v18 = v48;
      v19 = v18;
      if (v17)
      {
        v33 = v18;
        v35 = v17;
        v37 = excludeCopy;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = v17;
        v21 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v45;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v45 != v23)
              {
                objc_enumerationMutation(v20);
              }

              uRLByStandardizingPath = [*(*(&v44 + 1) + 8 * i) URLByStandardizingPath];
              [v14 addObject:uRLByStandardizingPath];
            }

            v22 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
          }

          while (v22);
        }

        excludeCopy = v37;
        [v14 minusSet:v37];
        v19 = v33;
        v17 = v35;
      }

      else
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_10015E8B0();
        }

        v26 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          log = v26;
          publicString = [contextCopy publicString];
          privateString = [contextCopy privateString];
          path2 = [lCopy path];
          v28 = objc_opt_class();
          v31 = NSStringFromClass(v28);
          domain = [v19 domain];
          code = [v19 code];
          *buf = 138545154;
          v51 = publicString;
          v52 = 2112;
          v53 = privateString;
          v54 = 2112;
          v55 = path2;
          v56 = 2114;
          v57 = reasonCopy;
          v58 = 2114;
          v59 = v31;
          v60 = 2114;
          v61 = domain;
          v62 = 2048;
          v63 = code;
          v64 = 2112;
          v65 = v19;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@ %@ Failed to enumerate the directory at '%@' due to '%{public}@ after error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x52u);
        }
      }
    }
  }

  if ([v14 count])
  {
    v27 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CD90;
    block[3] = &unk_1001CDD68;
    v40 = v14;
    selfCopy = self;
    v42 = contextCopy;
    v43 = reasonCopy;
    dispatch_async(v27, block);
  }
}

- (BOOL)tsu_grantUserWritePosixPermissionAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v40 = 0;
  v7 = [(NSFileManager *)self attributesOfItemAtPath:pathCopy error:&v40];
  v8 = v40;
  fileType = [v7 fileType];
  if (([fileType isEqualToString:NSFileTypeDirectory] & 1) != 0 || (objc_msgSend(fileType, "isEqualToString:", NSFileTypeRegular) & 1) != 0 || objc_msgSend(fileType, "isEqualToString:", NSFileTypeSymbolicLink))
  {
    errorCopy = error;
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 filePosixPermissions] | 0x80);
    v11 = [NSDictionary dictionaryWithObject:v10 forKey:NSFilePosixPermissions];
    v39 = v8;
    v12 = [(NSFileManager *)self setAttributes:v11 ofItemAtPath:pathCopy error:&v39];
    v13 = v39;

    if (v12)
    {
      if (![fileType isEqualToString:NSFileTypeDirectory])
      {
        v24 = 1;
LABEL_26:
        v8 = v13;
        goto LABEL_27;
      }

      v31 = fileType;
      v14 = objc_autoreleasePoolPush();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v34 = 0;
      v15 = [(NSFileManager *)self contentsOfDirectoryAtPath:pathCopy error:&v34];
      v16 = v34;
      v17 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v28 = v14;
        v29 = v13;
        v30 = v7;
        v19 = *v36;
        while (2)
        {
          v20 = 0;
          v21 = v16;
          do
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v22 = [pathCopy stringByAppendingPathComponent:*(*(&v35 + 1) + 8 * v20)];
            v33 = v21;
            v23 = [(NSFileManager *)self tsu_grantUserWritePosixPermissionAtPath:v22 error:&v33];
            v16 = v33;

            if ((v23 & 1) == 0)
            {
              v16 = v16;

              v24 = 0;
              v13 = v16;
              v7 = v30;
              goto LABEL_18;
            }

            v20 = v20 + 1;
            v21 = v16;
          }

          while (v18 != v20);
          v18 = [v15 countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v24 = 1;
        v13 = v29;
        v7 = v30;
LABEL_18:
        v14 = v28;
      }

      else
      {
        v24 = 1;
      }

      objc_autoreleasePoolPop(v14);
      fileType = v31;
    }

    else
    {
      v24 = 0;
    }

    if (errorCopy && !v24)
    {
      if (!v13)
      {
        v27 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
        *errorCopy = v27;

        v24 = 0;
        v8 = 0;
        goto LABEL_27;
      }

      v25 = v13;
      v24 = 0;
      *errorCopy = v13;
    }

    goto LABEL_26;
  }

  v24 = 1;
LABEL_27:

  return v24;
}

@end