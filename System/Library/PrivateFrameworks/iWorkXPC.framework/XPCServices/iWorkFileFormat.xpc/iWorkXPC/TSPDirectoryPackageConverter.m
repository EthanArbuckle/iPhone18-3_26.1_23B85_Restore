@interface TSPDirectoryPackageConverter
- (BOOL)enumeratePackageEntriesWithZipArchive:(id)a3 needsReadChannel:(BOOL)a4 accessor:(id)a5;
- (BOOL)isValid;
- (BOOL)performAccessor:(id)a3 filePathCharacterIndex:(unint64_t)a4 fileURL:(id)a5 needsReadChannel:(BOOL)a6 zipArchive:(id)a7 error:(id *)a8;
- (unint64_t)progressTotalUnitCountWithZipArchive:(id)a3;
@end

@implementation TSPDirectoryPackageConverter

- (unint64_t)progressTotalUnitCountWithZipArchive:(id)a3
{
  v26.receiver = self;
  v26.super_class = TSPDirectoryPackageConverter;
  v4 = [(TSPPackageConverter *)&v26 progressTotalUnitCountWithZipArchive:a3];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = +[NSFileManager defaultManager];
  v6 = [(TSPPackageConverter *)self URL];
  v27[0] = NSURLIsDirectoryKey;
  v27[1] = NSURLFileSizeKey;
  v7 = [NSArray arrayWithObjects:v27 count:2];
  v8 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:0];

  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v21 = 0;
        v13 = [v12 getResourceValue:&v21 forKey:NSURLIsDirectoryKey error:0];
        v14 = v21;
        v15 = v14;
        if (v13 && ([v14 BOOLValue] & 1) == 0)
        {
          v20 = 0;
          v16 = [v12 getResourceValue:&v20 forKey:NSURLFileSizeKey error:0];
          v17 = v20;
          v18 = v17;
          if (v16)
          {
            v4 = &v4[[v17 unsignedLongLongValue]];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  return v4;
}

- (BOOL)performAccessor:(id)a3 filePathCharacterIndex:(unint64_t)a4 fileURL:(id)a5 needsReadChannel:(BOOL)a6 zipArchive:(id)a7 error:(id *)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a5;
  v16 = [v15 path];
  v17 = [v16 stringByStandardizingPath];
  v18 = [v17 precomposedStringWithCanonicalMapping];

  v19 = [v18 substringFromIndex:a4];
  if (([v19 isEqualToString:@"Index.zip"] & 1) != 0 || -[TSPPackageConverter isDocumentPropertiesPath:](self, "isDocumentPropertiesPath:", v19) || a7 && -[TSPPackageConverter isObjectArchivePath:](self, "isObjectArchivePath:", v19))
  {
    v20 = 0;
    v21 = 1;
    goto LABEL_6;
  }

  if (!v10)
  {
    v20 = 0;
    v24 = 0;
    goto LABEL_16;
  }

  v54 = 0;
  v24 = [[TSUFileIOChannel alloc] initForReadingURL:v15 error:&v54];
  v20 = v54;
  if (v24)
  {
LABEL_16:
    log = v24;
    v53 = 0;
    v52 = 0;
    v26 = [v15 getResourceValue:&v53 forKey:NSURLFileSizeKey error:&v52];
    v27 = v53;
    v28 = v52;
    if ((v26 & 1) == 0)
    {

      if (TSUDefaultCat_init_token != -1)
      {
        sub_100152B30();
      }

      v29 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v43 = [v15 path];
        v34 = objc_opt_class();
        v47 = NSStringFromClass(v34);
        v45 = [v28 domain];
        v35 = [v28 code];
        *buf = 138413314;
        v56 = v43;
        v57 = 2114;
        v58 = v47;
        v59 = 2114;
        v60 = v45;
        v61 = 2048;
        v62 = v35;
        v63 = 2112;
        v64 = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to retrieve file size for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }

      v27 = 0;
    }

    v51 = 0;
    v50 = 0;
    v30 = [v15 getResourceValue:&v51 forKey:NSURLContentModificationDateKey error:&v50];
    v31 = v51;
    v32 = v50;
    if ((v30 & 1) == 0)
    {

      if (TSUDefaultCat_init_token != -1)
      {
        sub_100152B58();
      }

      v33 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v48 = [v15 path];
        v36 = objc_opt_class();
        v46 = NSStringFromClass(v36);
        v44 = [v32 domain];
        v37 = [v32 code];
        *buf = 138413314;
        v56 = v48;
        v57 = 2114;
        v58 = v46;
        v59 = 2114;
        v60 = v44;
        v61 = 2048;
        v62 = v37;
        v63 = 2112;
        v64 = v32;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to retrieve content modification date for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
      }

      v31 = 0;
    }

    v21 = v14[2](v14, v19, v31, [v27 unsignedLongLongValue], 0, log);
    [log close];

    goto LABEL_29;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_100152B80();
  }

  v25 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    log = v25;
    v38 = [v15 path];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v20 domain];
    v42 = [v20 code];
    *buf = 138413314;
    v56 = v38;
    v57 = 2114;
    v58 = v40;
    v59 = 2114;
    v60 = v41;
    v61 = 2048;
    v62 = v42;
    v63 = 2112;
    v64 = v20;
    _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read file from document directory: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);

    v21 = 0;
LABEL_29:
    v25 = log;
    goto LABEL_30;
  }

  v21 = 0;
LABEL_30:

LABEL_6:
  if (a8)
  {
    v22 = v20;
    *a8 = v20;
  }

  return v21;
}

- (BOOL)enumeratePackageEntriesWithZipArchive:(id)a3 needsReadChannel:(BOOL)a4 accessor:(id)a5
{
  v62 = a4;
  v63 = a3;
  v64 = a5;
  v66 = self;
  v55 = [(TSPPackageConverter *)self URL];
  v7 = +[NSFileManager defaultManager];
  v93[0] = NSURLIsDirectoryKey;
  v93[1] = NSURLFileSizeKey;
  v93[2] = NSURLContentModificationDateKey;
  v8 = [NSArray arrayWithObjects:v93 count:3];
  v51 = [v7 enumeratorAtURL:v55 includingPropertiesForKeys:v8 options:0 errorHandler:0];

  v9 = [v55 path];
  v10 = [v9 stringByStandardizingPath];
  v52 = [v10 precomposedStringWithCanonicalMapping];

  v65 = [v52 length];
  v56 = objc_alloc_init(NSMutableArray);
  v54 = objc_alloc_init(NSMutableArray);
  v53 = objc_alloc_init(NSMutableArray);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v51;
  v11 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
  v12 = 0;
  if (v11)
  {
    v60 = *v86;
    v13 = 1;
LABEL_3:
    v14 = 0;
    v58 = v11;
    while (1)
    {
      if (*v86 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v85 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v17 = [(TSPPackageConverter *)v66 isCancelled]| v13 ^ 1;
      if (v17)
      {
        v13 = 0;
      }

      else
      {
        v83 = 0;
        v84 = 0;
        v18 = [v15 getResourceValue:&v84 forKey:NSURLIsDirectoryKey error:&v83];
        v19 = v84;
        v20 = v83;

        if (v18 && ([v19 BOOLValue] & 1) == 0)
        {
          v21 = [v15 path];
          v22 = [v21 stringByStandardizingPath];
          v23 = [v22 precomposedStringWithCanonicalMapping];

          v24 = [v23 substringFromIndex:v65 + 1];
          v25 = [(TSPPackageConverter *)v66 isDataPath:v24];
          v26 = v56;
          if ((v25 & 1) == 0)
          {
            if ([(TSPPackageConverter *)v66 isObjectArchivePath:v24])
            {
              v26 = v54;
            }

            else
            {
              v26 = v53;
            }
          }

          [v26 addObject:{v15, v51}];
        }

        v12 = v20;
      }

      objc_autoreleasePoolPop(v16);
      if (v17)
      {
        break;
      }

      if (v58 == ++v14)
      {
        v11 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  [v56 sortUsingComparator:&stru_1001C6650];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v61 = v56;
  v27 = [v61 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v27)
  {
    v28 = *v80;
LABEL_23:
    v29 = 0;
    while (1)
    {
      if (*v80 != v28)
      {
        objc_enumerationMutation(v61);
      }

      v30 = *(*(&v79 + 1) + 8 * v29);
      v31 = objc_autoreleasePoolPush();
      v32 = [(TSPPackageConverter *)v66 isCancelled]| v13 ^ 1;
      if (v32)
      {
        v13 = 0;
      }

      else
      {
        v78 = v12;
        v13 = [(TSPDirectoryPackageConverter *)v66 performAccessor:v64 filePathCharacterIndex:v65 + 1 fileURL:v30 needsReadChannel:v62 zipArchive:v63 error:&v78];
        v33 = v78;

        v12 = v33;
      }

      objc_autoreleasePoolPop(v31);
      if (v32)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v61 countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (v27)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  if (v13)
  {
    v77.receiver = v66;
    v77.super_class = TSPDirectoryPackageConverter;
    v34 = [(TSPPackageConverter *)&v77 enumeratePackageEntriesWithZipArchive:v63 needsReadChannel:v62 accessor:v64];
  }

  else
  {
    v34 = 0;
  }

  v76 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v59 = v54;
  v35 = [v59 countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v35)
  {
    v36 = *v74;
LABEL_37:
    v37 = 0;
    while (1)
    {
      if (*v74 != v36)
      {
        objc_enumerationMutation(v59);
      }

      v38 = *(*(&v73 + 1) + 8 * v37);
      v39 = objc_autoreleasePoolPush();
      v40 = [(TSPPackageConverter *)v66 isCancelled]| v34 ^ 1;
      if (v40)
      {
        v34 = 0;
      }

      else
      {
        v72 = v12;
        v34 = [(TSPDirectoryPackageConverter *)v66 performAccessor:v64 filePathCharacterIndex:v65 + 1 fileURL:v38 needsReadChannel:v62 zipArchive:v63 error:&v72];
        v41 = v72;

        v12 = v41;
      }

      objc_autoreleasePoolPop(v39);
      if (v40)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [v59 countByEnumeratingWithState:&v73 objects:v90 count:16];
        if (v35)
        {
          goto LABEL_37;
        }

        break;
      }
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v42 = v53;
  v43 = [v42 countByEnumeratingWithState:&v68 objects:v89 count:16];
  if (v43)
  {
    v44 = *v69;
LABEL_48:
    v45 = 0;
    while (1)
    {
      if (*v69 != v44)
      {
        objc_enumerationMutation(v42);
      }

      v46 = *(*(&v68 + 1) + 8 * v45);
      v47 = objc_autoreleasePoolPush();
      v48 = [(TSPPackageConverter *)v66 isCancelled]| v34 ^ 1;
      if (v48)
      {
        v34 = 0;
      }

      else
      {
        v67 = v12;
        v34 = [(TSPDirectoryPackageConverter *)v66 performAccessor:v64 filePathCharacterIndex:v65 + 1 fileURL:v46 needsReadChannel:v62 zipArchive:v63 error:&v67];
        v49 = v67;

        v12 = v49;
      }

      objc_autoreleasePoolPop(v47);
      if (v48)
      {
        break;
      }

      if (v43 == ++v45)
      {
        v43 = [v42 countByEnumeratingWithState:&v68 objects:v89 count:16];
        if (v43)
        {
          goto LABEL_48;
        }

        break;
      }
    }
  }

  return v34;
}

- (BOOL)isValid
{
  v2 = [(TSPPackageConverter *)self URL];
  if ([TSPDirectoryPackage isValidPackageAtURL:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = [TSPExpandedDirectoryPackage isValidPackageAtURL:v2];
  }

  return v3;
}

@end