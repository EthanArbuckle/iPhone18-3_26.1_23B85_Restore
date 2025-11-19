@interface NSURL
+ (id)tsp_iWorkAVAssetURLWithUUID:(id)a3 filename:(id)a4 contentTypeUTI:(id)a5;
+ (id)tsu_fileURLWithPath:(id)a3;
+ (id)tsu_urlFromUserProvidedTelephoneString:(id)a3 withDataDetector:(id)a4;
- (BOOL)tsp_isIWorkAVAssetURL;
- (BOOL)tsu_canOpenURL;
- (BOOL)tsu_conformsToAnyUTI:(id)a3;
- (BOOL)tsu_conformsToUTI:(id)a3;
- (BOOL)tsu_fileSize:(unint64_t *)a3 error:(id *)a4;
- (BOOL)tsu_isInTemporaryDirectory;
- (BOOL)tsu_isInTrash;
- (BOOL)tsu_isOnForeignVolume;
- (BOOL)tsu_isOnSameVolumeAs:(id)a3;
- (BOOL)tsu_isVolumeKnownToBeEjectable;
- (BOOL)tsu_isVolumeKnownToBeLocal;
- (BOOL)tsu_isVolumeKnownToBeRemovable;
- (BOOL)tsu_matchesURL:(id)a3 canCompareFileID:(BOOL)a4;
- (BOOL)tsu_setNeedsDocumentIdentifierAndReturnError:(id *)a3;
- (BOOL)tsu_volumeRenameOpenFail;
- (BOOL)tsu_volumeSupportsCloning;
- (CGImageSource)tsu_createImageSourceFromURLAfterForcingFileCoordination;
- (NSString)tsu_UTI;
- (id)tsp_embeddedUTI;
- (id)tsp_fileIdentifier;
- (id)tsp_queryDictionary;
- (id)tsu_URLExceptPrivate;
- (id)tsu_contentModificationDateWithLogContext:(id)a3;
- (id)tsu_documentIdentifier;
- (id)tsu_fileTypeIdentifierHandlingFileCoordinationPromises;
- (id)tsu_pathExceptPrivate;
- (id)tsu_prettyStringFromTelephoneURL;
- (id)tsu_reachableFileURLByDeletingUnreachablePathComponents;
- (unint64_t)tsu_fileSize;
- (void)tsu_removeCachedResourceValueForKeys:(id)a3;
@end

@implementation NSURL

- (BOOL)tsp_isIWorkAVAssetURL
{
  v2 = [(NSURL *)self scheme];
  v3 = [v2 isEqualToString:@"iWorkAVAsset"];

  return v3;
}

+ (id)tsp_iWorkAVAssetURLWithUUID:(id)a3 filename:(id)a4 contentTypeUTI:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(NSURLComponents);
  [v10 setScheme:@"iWorkAVAsset"];
  [v10 setHost:v9];

  v11 = [@"/" stringByAppendingString:v8];

  [v10 setPath:v11];
  v12 = [@"uti=" stringByAppendingString:v7];

  [v10 setQuery:v12];
  v13 = [v10 URL];

  return v13;
}

- (id)tsp_embeddedUTI
{
  if (![(NSURL *)self tsp_isIWorkAVAssetURL])
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10014FFBC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10014FFD0();
    }

    v3 = [NSString stringWithUTF8String:"[NSURL(TSPersistence) tsp_embeddedUTI]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/NSURL_TSPersistence.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:46 isFatal:0 description:"UTIs only provided within iWork-internal URLs"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = [(NSURL *)self absoluteString];
  v6 = [v5 rangeOfString:@"uti="];
  v8 = v7;
  if (!v7)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150064();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015008C();
    }

    v9 = [NSString stringWithUTF8String:"[NSURL(TSPersistence) tsp_embeddedUTI]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/NSURL_TSPersistence.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:49 isFatal:0 description:"Expected UTI in iWork URL!"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [v5 substringFromIndex:&v6[v8]];

  return v11;
}

- (id)tsp_fileIdentifier
{
  v3 = 0;
  if ([(NSURL *)self checkResourceIsReachableAndReturnError:0])
  {
    v9 = 0;
    v8 = 0;
    v4 = [(NSURL *)self getResourceValue:&v9 forKey:NSURLFileResourceIdentifierKey error:&v8];
    v3 = v9;
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      if (TSUDocumentLifecycleCat_init_token != -1)
      {
        sub_100150120();
      }

      v6 = TSUDocumentLifecycleCat_log_t;
      if (os_log_type_enabled(TSUDocumentLifecycleCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100150148(v6, self, v5);
      }

      v5 = v3;
      v3 = 0;
    }
  }

  return v3;
}

- (id)tsp_queryDictionary
{
  v2 = [(NSURL *)self query];
  v3 = [v2 componentsSeparatedByString:@"&"];

  v4 = [v3 count];
  if (v4)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:v4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v10 count] == 2)
          {
            v11 = [v10 objectAtIndexedSubscript:0];
            v12 = [v4 objectForKeyedSubscript:v11];

            if (!v12)
            {
              v13 = [v10 objectAtIndexedSubscript:1];
              v14 = [v13 stringByRemovingPercentEncoding];
              [v4 setObject:v14 forKeyedSubscript:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v3 = v16;
  }

  return v4;
}

- (id)tsu_documentIdentifier
{
  v5 = 0;
  v2 = [(NSURL *)self getResourceValue:&v5 forKey:NSURLDocumentIdentifierKey error:0];
  v3 = v5;
  if ((v2 & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (unint64_t)tsu_fileSize
{
  v3 = 0;
  [(NSURL *)self tsu_fileSize:&v3 error:0];
  return v3;
}

- (BOOL)tsu_fileSize:(unint64_t *)a3 error:(id *)a4
{
  v5 = self;
  [(NSURL *)self removeCachedResourceValueForKey:NSURLFileSizeKey];
  v38 = 0;
  v29 = v5;
  LODWORD(v5) = [(NSURL *)v5 getResourceValue:&v38 forKey:NSURLFileSizeKey error:0];
  v6 = v38;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    v8 = [v6 unsignedLongLongValue];
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 enumeratorAtURL:v29 includingPropertiesForKeys:0 options:0 errorHandler:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = a4;
    v13 = *v35;
    v14 = 1;
    do
    {
      v15 = 0;
      do
      {
        v16 = v7;
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * v15);
        [v17 removeCachedResourceValueForKey:NSURLFileSizeKey];
        v32 = 0;
        v33 = 0;
        v18 = [v17 getResourceValue:&v33 forKey:NSURLFileSizeKey error:&v32];
        v7 = v33;

        v19 = v32;
        if (v18)
        {
          v8 = &v8[[v7 unsignedLongLongValue]];
        }

        else
        {
          if ((v14 & 1) == 0)
          {
            goto LABEL_17;
          }

          if (TSUDefaultCat_init_token != -1)
          {
            sub_100159318();
          }

          v20 = TSUDefaultCat_log_t;
          if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
          {
            v22 = v20;
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = [v19 domain];
            v26 = [v19 code];
            *buf = 138413314;
            v40 = v29;
            v41 = 2114;
            v42 = v24;
            v43 = 2114;
            v44 = v25;
            v45 = 2048;
            v46 = v26;
            v47 = 2112;
            v48 = v19;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to get NSURLFileSizeKey for URL: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
          }

          if (v30)
          {
            v21 = v19;
            v14 = 0;
            *v30 = v19;
          }

          else
          {
LABEL_17:
            v14 = 0;
          }
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 1;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v14 & 1;
}

- (BOOL)tsu_setNeedsDocumentIdentifierAndReturnError:(id *)a3
{
  v4 = open([(NSURL *)self fileSystemRepresentation], 0x200000);
  if (v4 < 0)
  {
    v6 = -1;
    if (!a3)
    {
      return v6 == 0;
    }

    goto LABEL_9;
  }

  v5 = v4;
  memset(&v8, 0, sizeof(v8));
  v6 = fstat(v4, &v8);
  if (!v6)
  {
    if ((v8.st_flags & 0x40) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = fchflags(v5, v8.st_flags | 0x40);
    }
  }

  close(v5);
  if (a3)
  {
LABEL_9:
    if (v6)
    {
      *a3 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }
  }

  return v6 == 0;
}

- (id)tsu_fileTypeIdentifierHandlingFileCoordinationPromises
{
  v4 = 0;
  [(NSURL *)self getResourceValue:&v4 forKey:NSURLTypeIdentifierKey error:0];
  v2 = v4;

  return v2;
}

- (CGImageSource)tsu_createImageSourceFromURLAfterForcingFileCoordination
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (TSUDefaultCat_init_token != -1)
  {
    sub_100159340();
  }

  v3 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSURL *)self path];
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "About to perform file coordination to create image source from %@:", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSFileCoordinator);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100071EEC;
  v15[3] = &unk_1001CBE68;
  v15[4] = &v17;
  v16 = 0;
  [v5 coordinateReadingItemAtURL:self options:0 error:&v16 byAccessor:v15];
  v6 = v16;
  if (v6)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100159368();
    }

    v7 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [(NSURL *)self path];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v6 domain];
      v14 = [v6 code];
      *buf = 138413314;
      v22 = v10;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to coordinate access to URL: %@ error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }
  }

  v8 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v8;
}

- (BOOL)tsu_isOnForeignVolume
{
  v3 = [(NSURL *)self isFileURL];
  if (v3)
  {
    memset(&v6, 0, 512);
    LOBYTE(v3) = !tsu_reachable_statfs(self, &v6) && (*v6.f_fstypename == 26216 ? (v4 = v6.f_fstypename[2] == 115) : (v4 = 0), !v4) && (*v6.f_fstypename ^ 0x73667061 | v6.f_fstypename[4]) != 0;
  }

  return v3;
}

- (BOOL)tsu_volumeSupportsCloning
{
  v7 = xmmword_10017D1A0;
  v8 = 0;
  v3 = [(NSURL *)self isFileURL];
  if (v3)
  {
    memset(&v9, 0, 512);
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    if (tsu_reachable_statfs(self, &v9) || getattrlist(v9.f_mntonname, &v7, v5, 0x24uLL, 0x21u))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = BYTE10(v5[0]) & 1;
    }
  }

  return v3;
}

- (BOOL)tsu_volumeRenameOpenFail
{
  v3 = [(NSURL *)self isFileURL];
  if (v3)
  {
    memset(&v9, 0, 512);
    v7 = xmmword_10017D1A0;
    v8 = 0;
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    if (tsu_reachable_statfs(self, &v9) || getattrlist(v9.f_mntonname, &v7, v5, 0x24uLL, 0x21u))
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      return (BYTE10(v5[0]) >> 4) & 1;
    }
  }

  return v3;
}

- (id)tsu_reachableFileURLByDeletingUnreachablePathComponents
{
  if ([(NSURL *)self isFileURL])
  {
    v3 = self;
    while (1)
    {
      v4 = [(NSURL *)v3 path];
      v5 = [v4 length];

      if (v5 < 3)
      {
        break;
      }

      if ([(NSURL *)v3 checkResourceIsReachableAndReturnError:0])
      {
        v6 = v3;
        v3 = v6;
        if (v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = [(NSURL *)v3 URLByDeletingLastPathComponent];

        v3 = v7;
      }
    }

    v6 = 0;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)tsu_isOnSameVolumeAs:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self tsu_reachableFileURLByDeletingUnreachablePathComponents];
  v6 = [v4 tsu_reachableFileURLByDeletingUnreachablePathComponents];
  if (![v5 isFileURL] || !objc_msgSend(v6, "isFileURL"))
  {
    v24 = 0;
    goto LABEL_24;
  }

  memset(&v27, 0, sizeof(v27));
  memset(&v26, 0, sizeof(v26));
  v7 = [v5 path];
  v8 = [v7 fileSystemRepresentation];

  if (v8)
  {
    v9 = lstat(v8, &v27);
    if (v9 != -1)
    {
      goto LABEL_10;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      sub_100159390();
    }

    v10 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [(NSURL *)self path];
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 138412546;
      v29 = v12;
      v30 = 2082;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Error retrieving the file system of path %@: %{public}s", buf, 0x16u);
    }
  }

  v9 = -1;
LABEL_10:
  v15 = [v6 path];
  v16 = [v15 fileSystemRepresentation];

  if (!v16)
  {
LABEL_16:
    v17 = -1;
    goto LABEL_17;
  }

  v17 = lstat(v16, &v26);
  if (v17 == -1)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001593B8();
    }

    v18 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      v20 = [v4 path];
      v21 = __error();
      v22 = strerror(*v21);
      *buf = 138412546;
      v29 = v20;
      v30 = 2082;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Error retrieving the file system of path %@: %{public}s", buf, 0x16u);
    }

    goto LABEL_16;
  }

LABEL_17:
  if (v17 | v9)
  {
    v23 = 0;
  }

  else
  {
    v23 = v27.st_dev == v26.st_dev;
  }

  v24 = v23;
LABEL_24:

  return v24;
}

- (BOOL)tsu_isVolumeKnownToBeEjectable
{
  v8 = 0;
  v7 = 0;
  v2 = [(NSURL *)self getPromisedItemResourceValue:&v8 forKey:NSURLVolumeIsEjectableKey error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001593E0();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100159408();
    }

    v3 = &__kCFBooleanFalse;
  }

  v5 = [v3 BOOLValue];

  return v5;
}

- (BOOL)tsu_isVolumeKnownToBeRemovable
{
  v8 = 0;
  v7 = 0;
  v2 = [(NSURL *)self getPromisedItemResourceValue:&v8 forKey:NSURLVolumeIsRemovableKey error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001594B8();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001594E0();
    }

    v3 = &__kCFBooleanFalse;
  }

  v5 = [v3 BOOLValue];

  return v5;
}

- (BOOL)tsu_isVolumeKnownToBeLocal
{
  v8 = 0;
  v7 = 0;
  v2 = [(NSURL *)self getPromisedItemResourceValue:&v8 forKey:NSURLVolumeIsLocalKey error:&v7];
  v3 = v8;
  v4 = v7;
  if ((v2 & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100159590();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001595B8();
    }

    v3 = &__kCFBooleanTrue;
  }

  v5 = [v3 BOOLValue];

  return v5;
}

- (BOOL)tsu_isInTemporaryDirectory
{
  v9 = 2;
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [NSURL tsu_fileURLWithPath:v4];
  v6 = [v3 getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:self error:0];
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)tsu_isInTrash
{
  v3 = +[NSFileManager defaultManager];
  v27 = 0;
  v28 = 2;
  v4 = [v3 getRelationship:&v28 ofDirectory:102 inDomain:0 toItemAtURL:self error:&v27];
  v5 = v27;
  v6 = v5;
  if (v4)
  {
    v7 = v28 == 0;
    goto LABEL_22;
  }

  if (!v5)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_22;
  }

  if (![v5 tsu_isFeatureUnsupportedError])
  {
    if (([v6 tsu_isNoSuchFileError] & 1) == 0)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_100159668();
      }

      v16 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v6 domain];
        v21 = [v6 code];
        *buf = 138413314;
        v30 = self;
        v31 = 2114;
        v32 = v19;
        v33 = 2114;
        v34 = v20;
        v35 = 2048;
        v36 = v21;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to find relationship between URL and trash directory: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }
    }

    goto LABEL_19;
  }

  v8 = [(NSURL *)self URLByDeletingLastPathComponent];
  v9 = [v8 pathComponents];
  v10 = [v9 reverseObjectEnumerator];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v23 + 1) + 8 * i) isEqualToString:{@".Trash", v23}])
        {
          v7 = 1;
          goto LABEL_21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_21:

LABEL_22:
  return v7;
}

+ (id)tsu_fileURLWithPath:(id)a3
{
  if (a3)
  {
    v4 = [NSURL fileURLWithPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tsu_removeCachedResourceValueForKeys:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSURL *)self removeCachedResourceValueForKey:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)tsu_contentModificationDateWithLogContext:(id)a3
{
  v4 = a3;
  [(NSURL *)self removeCachedResourceValueForKey:NSURLContentModificationDateKey];
  v17 = 0;
  v18 = 0;
  v5 = [(NSURL *)self getPromisedItemResourceValue:&v18 forKey:NSURLContentModificationDateKey error:&v17];
  v6 = v18;
  v7 = v17;
  if ((v5 & 1) == 0)
  {

    if (v4)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_100159690();
      }

      v8 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = [v4 publicString];
        v11 = [v4 privateString];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v7 domain];
        v15 = [v7 code];
        *buf = 138544898;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        v23 = 2112;
        v24 = self;
        v25 = 2114;
        v26 = v13;
        v27 = 2114;
        v28 = v14;
        v29 = 2048;
        v30 = v15;
        v31 = 2112;
        v32 = v7;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ %@ Failed to get file modification date for URL=%@ error=errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x48u);
      }
    }

    else
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_1001596B8();
      }

      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001596E0();
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)tsu_pathExceptPrivate
{
  v2 = [(NSURL *)self path];
  v3 = [v2 tsu_pathExceptPrivate];

  return v3;
}

- (id)tsu_URLExceptPrivate
{
  v2 = [(NSURL *)self tsu_pathExceptPrivate];
  v3 = [NSURL tsu_fileURLWithPath:v2];

  return v3;
}

- (BOOL)tsu_matchesURL:(id)a3 canCompareFileID:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v8 = self == v6;
  if (v6 && self != v6)
  {
    if (([(NSURL *)self isEqual:v6]& 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      if ([(NSURL *)self isFileURL]&& [(NSURL *)v7 isFileURL])
      {
        v9 = [(NSURL *)self tsu_pathExceptPrivate];
        v10 = [(NSURL *)v7 tsu_pathExceptPrivate];
        v8 = [v9 isEqualToString:v10];
      }

      else
      {
        v8 = 0;
      }

      if ((v8 & 1) == 0 && v4)
      {
        v16 = 0;
        v11 = [(NSURL *)self getResourceValue:&v16 forKey:NSURLFileResourceIdentifierKey error:0];
        v12 = v16;
        v15 = 0;
        v13 = [(NSURL *)v7 getResourceValue:&v15 forKey:NSURLFileResourceIdentifierKey error:0];
        v8 = 0;
        if (v11 && v13)
        {
          v8 = [v12 isEqual:v15];
        }
      }
    }
  }

  return v8;
}

- (BOOL)tsu_canOpenURL
{
  v3 = [(NSURL *)self scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"tel"];

  if (!v5)
  {
    return 1;
  }

  v6 = [(NSURL *)self resourceSpecifier];
  v7 = [v6 stringByRemovingPercentEncoding];

  v8 = +[NSCharacterSet alphanumericCharacterSet];
  v9 = [v8 invertedSet];
  v10 = [v7 tsu_stringByRemovingCharactersInSet:v9];

  v11 = [v10 length] > 2;
  return v11;
}

+ (id)tsu_urlFromUserProvidedTelephoneString:(id)a3 withDataDetector:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v5 stringByTrimmingCharactersInSet:v7];

  v9 = +[NSCharacterSet alphanumericCharacterSet];
  v10 = [v5 rangeOfCharacterFromSet:v9];

  if ([v8 length])
  {
    v11 = v10 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10007372C;
  v31 = sub_10007373C;
  v32 = 0;
  if ([v8 hasPrefix:@"tel:"])
  {
    v13 = [NSURL URLWithString:v8];
    v14 = v28[5];
    v28[5] = v13;
  }

  else
  {
    if ([v8 containsString:@" "])
    {
      goto LABEL_12;
    }

    v14 = [@"tel:" stringByAppendingString:v8];
    v15 = [NSURL URLWithString:v14];
    v16 = v28[5];
    v28[5] = v15;
  }

LABEL_12:
  v17 = v28[5];
  if (!v17)
  {
    v18 = [v8 tsu_range];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100073744;
    v26[3] = &unk_1001CBFD0;
    v26[4] = &v27;
    [v6 enumerateMatchesInString:v8 options:0 range:v18 usingBlock:{v19, v26}];
    v17 = v28[5];
    if (!v17)
    {
      v20 = +[NSCharacterSet URLFragmentAllowedCharacterSet];
      v21 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v20];
      v22 = [@"tel:" stringByAppendingString:v21];
      v23 = [NSURL URLWithString:v22];
      v24 = v28[5];
      v28[5] = v23;

      v17 = v28[5];
    }
  }

  v12 = v17;
  _Block_object_dispose(&v27, 8);

LABEL_16:

  return v12;
}

- (id)tsu_prettyStringFromTelephoneURL
{
  v2 = [(NSURL *)self resourceSpecifier];
  v3 = [v2 stringByRemovingPercentEncoding];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1001D3878;
  }

  v5 = v4;

  return v4;
}

- (NSString)tsu_UTI
{
  v2 = [(NSURL *)self path];
  v3 = [v2 tsu_pathUTI];

  return v3;
}

- (BOOL)tsu_conformsToUTI:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self pathExtension];
  v6 = [v5 tsu_pathExtensionConformsToUTI:v4];

  return v6;
}

- (BOOL)tsu_conformsToAnyUTI:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self pathExtension];
  v6 = v5;
  if (v5)
  {
    [v5 tsu_allFilenameExtensionIdentifiersForTag];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      v20 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if (([v12 tsu_isDynamic] & 1) == 0)
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v13 = v4;
            v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v22;
              while (2)
              {
                for (j = 0; j != v15; j = j + 1)
                {
                  if (*v22 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  if ([v12 tsu_conformsToUTI:*(*(&v21 + 1) + 8 * j)])
                  {

                    v18 = 1;
                    goto LABEL_23;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v20;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        v18 = 0;
      }

      while (v9);
    }

    else
    {
      v18 = 0;
    }

LABEL_23:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end