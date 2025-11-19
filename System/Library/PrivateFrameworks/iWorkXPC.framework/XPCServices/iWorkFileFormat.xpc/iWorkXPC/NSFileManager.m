@interface NSFileManager
- (BOOL)tsu_canCloneItemAtURL:(id)a3 toURL:(id)a4;
- (BOOL)tsu_grantUserWritePosixPermissionAtPath:(id)a3 error:(id *)a4;
- (BOOL)tsu_linkOrCopyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)tsu_makeWritableItemAtURL:(id)a3 permissionsOverride:(id)a4 resetCreationDate:(BOOL)a5 error:(id *)a6;
- (BOOL)tsu_replaceItemAtURL:(id)a3 withItemAtURL:(id)a4 backupItemName:(id)a5 options:(unint64_t)a6 resultingItemURL:(id *)a7 error:(id *)a8;
- (void)tsu_removeContentsOfDirectoryAtURL:(id)a3 reason:(id)a4 urlsToExclude:(id)a5 logContext:(id)a6;
@end

@implementation NSFileManager

- (BOOL)tsu_canCloneItemAtURL:(id)a3 toURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
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
  if ([v5 tsu_volumeSupportsCloning])
  {
    v12 = [v5 tsu_isOnSameVolumeAs:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)tsu_linkOrCopyItemAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
  if ([(NSFileManager *)self tsu_canCloneItemAtURL:v8 toURL:v10]|| ![(NSFileManager *)self linkItemAtURL:v8 toURL:v10 error:0])
  {
    v18 = 0;
    v16 = [(NSFileManager *)self copyItemAtURL:v8 toURL:v10 error:&v18];
    v15 = v18;
    if (a5 && !v16)
    {
      v15 = v15;
      v16 = 0;
      *a5 = v15;
    }
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  return v16;
}

- (BOOL)tsu_replaceItemAtURL:(id)a3 withItemAtURL:(id)a4 backupItemName:(id)a5 options:(unint64_t)a6 resultingItemURL:(id *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v27 = NSURLThumbnailDictionaryKey;
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  v17 = [v14 resourceValuesForKeys:v16 error:0];

  if (!v17)
  {
    v26 = NSURLThumbnailDictionaryKey;
    v18 = [NSArray arrayWithObjects:&v26 count:1];
    v17 = [v13 resourceValuesForKeys:v18 error:0];
  }

  v19 = [(NSFileManager *)self replaceItemAtURL:v13 withItemAtURL:v14 backupItemName:v15 options:a6 resultingItemURL:a7 error:a8];
  if (v19 && v17)
  {
    v25 = 0;
    v20 = [v13 setResourceValues:v17 error:&v25];
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

- (BOOL)tsu_makeWritableItemAtURL:(id)a3 permissionsOverride:(id)a4 resetCreationDate:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [v10 path];
  if (v12)
  {
    v13 = [(NSFileManager *)self attributesOfItemAtPath:v12 error:a6];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 filePosixPermissions];
      v16 = v15;
      if (v11)
      {
        v15 = [v11 unsignedIntegerValue];
      }

      v18 = v15 | 0x80;
      v19 = [v14 fileIsImmutable];
      if (v16 != v18 || (v19 & 1) != 0 || v7)
      {
        if (v7)
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

        v17 = [(NSFileManager *)self sfu_setAttributes:v22 ofItemAtURL:v10 recursively:1 error:a6];
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

  else if (a6)
  {
    [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)tsu_removeContentsOfDirectoryAtURL:(id)a3 reason:(id)a4 urlsToExclude:(id)a5 logContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(NSMutableSet);
  if (v10)
  {
    v15 = [v10 path];
    v16 = [(NSFileManager *)self fileExistsAtPath:v15];

    if (v16)
    {
      v48 = 0;
      v17 = [(NSFileManager *)self contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:&v48];
      v18 = v48;
      v19 = v18;
      if (v17)
      {
        v33 = v18;
        v35 = v17;
        v37 = v12;
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

              v25 = [*(*(&v44 + 1) + 8 * i) URLByStandardizingPath];
              [v14 addObject:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
          }

          while (v22);
        }

        v12 = v37;
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
          v38 = [v13 publicString];
          v36 = [v13 privateString];
          v34 = [v10 path];
          v28 = objc_opt_class();
          v31 = NSStringFromClass(v28);
          v29 = [v19 domain];
          v30 = [v19 code];
          *buf = 138545154;
          v51 = v38;
          v52 = 2112;
          v53 = v36;
          v54 = 2112;
          v55 = v34;
          v56 = 2114;
          v57 = v11;
          v58 = 2114;
          v59 = v31;
          v60 = 2114;
          v61 = v29;
          v62 = 2048;
          v63 = v30;
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
    v41 = self;
    v42 = v13;
    v43 = v11;
    dispatch_async(v27, block);
  }
}

- (BOOL)tsu_grantUserWritePosixPermissionAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v40 = 0;
  v7 = [(NSFileManager *)self attributesOfItemAtPath:v6 error:&v40];
  v8 = v40;
  v9 = [v7 fileType];
  if (([v9 isEqualToString:NSFileTypeDirectory] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", NSFileTypeRegular) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", NSFileTypeSymbolicLink))
  {
    v32 = a4;
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 filePosixPermissions] | 0x80);
    v11 = [NSDictionary dictionaryWithObject:v10 forKey:NSFilePosixPermissions];
    v39 = v8;
    v12 = [(NSFileManager *)self setAttributes:v11 ofItemAtPath:v6 error:&v39];
    v13 = v39;

    if (v12)
    {
      if (![v9 isEqualToString:NSFileTypeDirectory])
      {
        v24 = 1;
LABEL_26:
        v8 = v13;
        goto LABEL_27;
      }

      v31 = v9;
      v14 = objc_autoreleasePoolPush();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v34 = 0;
      v15 = [(NSFileManager *)self contentsOfDirectoryAtPath:v6 error:&v34];
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

            v22 = [v6 stringByAppendingPathComponent:*(*(&v35 + 1) + 8 * v20)];
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
      v9 = v31;
    }

    else
    {
      v24 = 0;
    }

    if (v32 && !v24)
    {
      if (!v13)
      {
        v27 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
        *v32 = v27;

        v24 = 0;
        v8 = 0;
        goto LABEL_27;
      }

      v25 = v13;
      v24 = 0;
      *v32 = v13;
    }

    goto LABEL_26;
  }

  v24 = 1;
LABEL_27:

  return v24;
}

@end