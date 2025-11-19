@interface TSPFileManager
+ (BOOL)copyDataFromReadChannel:(id)a3 decryptionInfo:(id)a4 size:(unint64_t)a5 toWriteChannel:(id)a6 encryptionInfo:(id)a7 encodedLength:(unint64_t *)a8 error:(id *)a9;
+ (BOOL)linkOrCloneItemAtURL:(id)a3 toURL:(id)a4 canLink:(BOOL)a5 canClone:(BOOL)a6 error:(id *)a7;
+ (BOOL)linkOrCopyItemAtURL:(id)a3 decryptionInfo:(id)a4 toURL:(id)a5 encryptionInfo:(id)a6 canLink:(BOOL)a7 encodedLength:(unint64_t *)a8 error:(id *)a9;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 sourcePath:(id)a5 targetPath:(id)a6;
+ (id)ioCompletionQueue;
+ (void)copyDataFromReadChannel:(id)a3 size:(unint64_t)a4 toWriteChannel:(id)a5 synchronous:(BOOL)a6 completion:(id)a7;
@end

@implementation TSPFileManager

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 sourcePath:(id)a5 targetPath:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v10 | v11)
  {
    v12 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v13 = v12;
    if (v10)
    {
      [v12 setObject:v10 forKeyedSubscript:NSFilePathErrorKey];
    }

    if (v11)
    {
      [v13 setObject:v11 forKeyedSubscript:@"TSPTargetFilePath"];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 copy];
  v15 = [NSError errorWithDomain:v9 code:a4 userInfo:v14];

  return v15;
}

+ (BOOL)linkOrCloneItemAtURL:(id)a3 toURL:(id)a4 canLink:(BOOL)a5 canClone:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  if (v8)
  {
    v14 = +[NSFileManager defaultManager];
    v15 = [v14 copyItemAtURL:v12 toURL:v13 error:a7];
LABEL_16:

    goto LABEL_17;
  }

  if (v9)
  {
    v14 = [v12 path];
    v16 = [v13 path];
    v17 = UnsafePointer();
    v18 = [v17 bundlePath];
    v19 = [v18 stringByStandardizingPath];
    v20 = [v19 precomposedStringWithCanonicalMapping];

    v21 = [v14 stringByStandardizingPath];
    v22 = [v21 precomposedStringWithCanonicalMapping];
    v30 = v20;
    v23 = [v20 stringByAppendingString:@"/"];
    LOBYTE(v20) = [v22 hasPrefix:v23];

    if (v20)
    {
      if (!a7)
      {
        v15 = 0;
        goto LABEL_15;
      }

      v24 = NSCocoaErrorDomain;
      v25 = a1;
      v26 = 257;
    }

    else
    {
      v28 = link([v14 fileSystemRepresentation], objc_msgSend(v16, "fileSystemRepresentation"));
      v15 = v28 == 0;
      if (!a7 || !v28)
      {
        goto LABEL_15;
      }

      v26 = *__error();
      v25 = a1;
      v24 = NSPOSIXErrorDomain;
    }

    [v25 errorWithDomain:v24 code:v26 sourcePath:v14 targetPath:v16];
    *a7 = v15 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (a7)
  {
    v14 = [v12 path];
    v27 = [v13 path];
    *a7 = [a1 errorWithDomain:NSCocoaErrorDomain code:257 sourcePath:v14 targetPath:v27];

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

+ (BOOL)linkOrCopyItemAtURL:(id)a3 decryptionInfo:(id)a4 toURL:(id)a5 encryptionInfo:(id)a6 canLink:(BOOL)a7 encodedLength:(unint64_t *)a8 error:(id *)a9
{
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  LOBYTE(v19) = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100002188;
  v66 = sub_100002198;
  v67 = 0;
  if (v15 && v17)
  {
    if (UnsafePointer(v16, v18))
    {
      v20 = [TSUFileIOChannel alloc];
      v21 = (v63 + 5);
      obj = v63[5];
      v22 = [(TSUFileIOChannel *)v20 initForReadingURL:v15 error:&obj];
      objc_storeStrong(v21, obj);
      if (v22)
      {
        v23 = [TSUFileIOChannel alloc];
        v24 = (v63 + 5);
        v57 = v63[5];
        v25 = [(TSUFileIOChannel *)v23 initForStreamWritingURL:v17 error:&v57];
        objc_storeStrong(v24, v57);
        if (v25)
        {
          v56 = 0;
          v55 = 0;
          v26 = [v15 getResourceValue:&v56 forKey:NSURLFileSizeKey error:&v55];
          v27 = v56;
          v52 = v55;
          if ((v26 & 1) == 0)
          {

            if (TSUDefaultCat_init_token != -1)
            {
              sub_10014F6C8();
            }

            v28 = TSUDefaultCat_log_t;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v51 = [v15 path];
              v46 = objc_opt_class();
              v49 = NSStringFromClass(v46);
              v47 = [v52 domain];
              v48 = [v52 code];
              *buf = 138413314;
              v73 = v51;
              v74 = 2114;
              v75 = v49;
              v76 = 2114;
              v77 = v47;
              v78 = 2048;
              v79 = v48;
              v80 = 2112;
              v81 = v52;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve file size for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
            }

            v27 = 0;
          }

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_100002228;
          v54[3] = &unk_1001C50E0;
          v54[4] = &v68;
          v54[5] = &v62;
          [a1 transcodeReadChannel:v22 decryptionInfo:v16 size:objc_msgSend(v27 toWriteChannel:"unsignedLongLongValue") encryptionInfo:v25 synchronous:v18 completion:{1, v54}];
          v19 = v63[5];
          [v25 close];
          LOBYTE(v19) = v19 == 0;
        }

        else
        {
          LOBYTE(v19) = 0;
        }

        [v22 close];
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      if (v10 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 tsu_canCloneItemAtURL:v15 toURL:v17], v29, (v30 & 1) == 0) && (objc_msgSend(a1, "linkOrCloneItemAtURL:toURL:canLink:canClone:error:", v15, v17, 1, 0, 0) & 1) != 0)
      {
        LODWORD(v19) = 1;
      }

      else
      {
        v31 = +[NSFileManager defaultManager];
        v32 = (v63 + 5);
        v61 = v63[5];
        LODWORD(v19) = [v31 copyItemAtURL:v15 toURL:v17 error:&v61];
        objc_storeStrong(v32, v61);
      }

      if (a8 && v19)
      {
        v60 = 0;
        v59 = 0;
        v33 = [v17 getResourceValue:&v60 forKey:NSURLFileSizeKey error:&v59];
        v34 = v60;
        v35 = v59;
        if (v33)
        {
          v36 = [v34 unsignedLongLongValue];
          v69[3] = v36;
        }

        else
        {
          if (TSUDefaultCat_init_token != -1)
          {
            sub_10014F6A0();
          }

          v37 = TSUDefaultCat_log_t;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v50 = [v17 path];
            v43 = objc_opt_class();
            v53 = NSStringFromClass(v43);
            v44 = [v35 domain];
            v45 = [v35 code];
            *buf = 138413314;
            v73 = v50;
            v74 = 2114;
            v75 = v53;
            v76 = 2114;
            v77 = v44;
            v78 = 2048;
            v79 = v45;
            v80 = 2112;
            v81 = v35;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to retrieve file size for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
          }
        }

        LOBYTE(v19) = 1;
        goto LABEL_33;
      }
    }
  }

  if (a8)
  {
LABEL_33:
    *a8 = v69[3];
  }

  if (a9 && (v19 & 1) == 0)
  {
    v38 = v63[5];
    if (v38)
    {
      *a9 = v38;
    }

    else
    {
      v39 = [v15 path];
      v40 = [v17 path];
      v41 = [a1 errorWithDomain:NSCocoaErrorDomain code:4 sourcePath:v39 targetPath:v40];
      *a9 = v41;
    }
  }

  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  return v19;
}

+ (BOOL)copyDataFromReadChannel:(id)a3 decryptionInfo:(id)a4 size:(unint64_t)a5 toWriteChannel:(id)a6 encryptionInfo:(id)a7 encodedLength:(unint64_t *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100002188;
  v27 = sub_100002198;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002410;
  v22[3] = &unk_1001C50E0;
  v22[4] = &v29;
  v22[5] = &v23;
  [a1 copyDataFromReadChannel:v15 decryptionInfo:v16 size:a5 toWriteChannel:v17 encryptionInfo:v18 synchronous:1 completion:v22];
  if (a8)
  {
    *a8 = v30[3];
  }

  v19 = v24[5];
  if (a9 && v19)
  {
    *a9 = v19;
    v19 = v24[5];
  }

  v20 = v19 == 0;
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v20;
}

+ (id)ioCompletionQueue
{
  if (qword_1001EA9C8 != -1)
  {
    sub_10014F6F0();
  }

  v3 = qword_1001EA9C0;

  return v3;
}

+ (void)copyDataFromReadChannel:(id)a3 size:(unint64_t)a4 toWriteChannel:(id)a5 synchronous:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  if (v12 && v13)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_100002188;
    v44 = sub_100002198;
    v45 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    if (v8)
    {
      v16 = +[NSProgress currentProgress];

      if (v16)
      {
        v16 = [NSProgress progressWithTotalUnitCount:a4];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100002B08;
        v33[3] = &unk_1001C5128;
        v33[4] = v38;
        [v16 setCancellationHandler:v33];
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100002B1C;
    v26[3] = &unk_1001C5178;
    v30 = &v40;
    v19 = v18;
    v27 = v19;
    v28 = v13;
    v31 = &v34;
    v20 = v16;
    v29 = v20;
    v32 = v38;
    [v12 readWithHandler:v26];
    if (v8)
    {
      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      if (v15)
      {
        v15[2](v15, v35[3], v41[5]);
      }
    }

    else if (v15)
    {
      v21 = [a1 ioCompletionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002DC8;
      block[3] = &unk_1001C51A0;
      v23 = v15;
      v24 = &v34;
      v25 = &v40;
      dispatch_group_notify(v19, v21, block);
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v40, 8);
  }

  else if (v14)
  {
    v17 = [NSError tsp_unknownReadErrorWithUserInfo:0];
    (v15)[2](v15, 0, v17);
  }
}

@end