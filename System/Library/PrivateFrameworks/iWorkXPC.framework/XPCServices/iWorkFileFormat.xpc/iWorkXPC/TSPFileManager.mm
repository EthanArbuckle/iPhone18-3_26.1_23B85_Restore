@interface TSPFileManager
+ (BOOL)copyDataFromReadChannel:(id)channel decryptionInfo:(id)info size:(unint64_t)size toWriteChannel:(id)writeChannel encryptionInfo:(id)encryptionInfo encodedLength:(unint64_t *)length error:(id *)error;
+ (BOOL)linkOrCloneItemAtURL:(id)l toURL:(id)rL canLink:(BOOL)link canClone:(BOOL)clone error:(id *)error;
+ (BOOL)linkOrCopyItemAtURL:(id)l decryptionInfo:(id)info toURL:(id)rL encryptionInfo:(id)encryptionInfo canLink:(BOOL)link encodedLength:(unint64_t *)length error:(id *)error;
+ (id)errorWithDomain:(id)domain code:(int64_t)code sourcePath:(id)path targetPath:(id)targetPath;
+ (id)ioCompletionQueue;
+ (void)copyDataFromReadChannel:(id)channel size:(unint64_t)size toWriteChannel:(id)writeChannel synchronous:(BOOL)synchronous completion:(id)completion;
@end

@implementation TSPFileManager

+ (id)errorWithDomain:(id)domain code:(int64_t)code sourcePath:(id)path targetPath:(id)targetPath
{
  domainCopy = domain;
  pathCopy = path;
  targetPathCopy = targetPath;
  if (pathCopy | targetPathCopy)
  {
    v12 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v13 = v12;
    if (pathCopy)
    {
      [v12 setObject:pathCopy forKeyedSubscript:NSFilePathErrorKey];
    }

    if (targetPathCopy)
    {
      [v13 setObject:targetPathCopy forKeyedSubscript:@"TSPTargetFilePath"];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 copy];
  v15 = [NSError errorWithDomain:domainCopy code:code userInfo:v14];

  return v15;
}

+ (BOOL)linkOrCloneItemAtURL:(id)l toURL:(id)rL canLink:(BOOL)link canClone:(BOOL)clone error:(id *)error
{
  cloneCopy = clone;
  linkCopy = link;
  lCopy = l;
  rLCopy = rL;
  if (cloneCopy)
  {
    path = +[NSFileManager defaultManager];
    v15 = [path copyItemAtURL:lCopy toURL:rLCopy error:error];
LABEL_16:

    goto LABEL_17;
  }

  if (linkCopy)
  {
    path = [lCopy path];
    path2 = [rLCopy path];
    v17 = UnsafePointer();
    bundlePath = [v17 bundlePath];
    stringByStandardizingPath = [bundlePath stringByStandardizingPath];
    precomposedStringWithCanonicalMapping = [stringByStandardizingPath precomposedStringWithCanonicalMapping];

    stringByStandardizingPath2 = [path stringByStandardizingPath];
    precomposedStringWithCanonicalMapping2 = [stringByStandardizingPath2 precomposedStringWithCanonicalMapping];
    v30 = precomposedStringWithCanonicalMapping;
    v23 = [precomposedStringWithCanonicalMapping stringByAppendingString:@"/"];
    LOBYTE(precomposedStringWithCanonicalMapping) = [precomposedStringWithCanonicalMapping2 hasPrefix:v23];

    if (precomposedStringWithCanonicalMapping)
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_15;
      }

      v24 = NSCocoaErrorDomain;
      selfCopy2 = self;
      v26 = 257;
    }

    else
    {
      v28 = link([path fileSystemRepresentation], objc_msgSend(path2, "fileSystemRepresentation"));
      v15 = v28 == 0;
      if (!error || !v28)
      {
        goto LABEL_15;
      }

      v26 = *__error();
      selfCopy2 = self;
      v24 = NSPOSIXErrorDomain;
    }

    [selfCopy2 errorWithDomain:v24 code:v26 sourcePath:path targetPath:path2];
    *error = v15 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (error)
  {
    path = [lCopy path];
    path3 = [rLCopy path];
    *error = [self errorWithDomain:NSCocoaErrorDomain code:257 sourcePath:path targetPath:path3];

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

+ (BOOL)linkOrCopyItemAtURL:(id)l decryptionInfo:(id)info toURL:(id)rL encryptionInfo:(id)encryptionInfo canLink:(BOOL)link encodedLength:(unint64_t *)length error:(id *)error
{
  linkCopy = link;
  lCopy = l;
  infoCopy = info;
  rLCopy = rL;
  encryptionInfoCopy = encryptionInfo;
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
  if (lCopy && rLCopy)
  {
    if (UnsafePointer(infoCopy, encryptionInfoCopy))
    {
      v20 = [TSUFileIOChannel alloc];
      v21 = (v63 + 5);
      obj = v63[5];
      v22 = [(TSUFileIOChannel *)v20 initForReadingURL:lCopy error:&obj];
      objc_storeStrong(v21, obj);
      if (v22)
      {
        v23 = [TSUFileIOChannel alloc];
        v24 = (v63 + 5);
        v57 = v63[5];
        v25 = [(TSUFileIOChannel *)v23 initForStreamWritingURL:rLCopy error:&v57];
        objc_storeStrong(v24, v57);
        if (v25)
        {
          v56 = 0;
          v55 = 0;
          v26 = [lCopy getResourceValue:&v56 forKey:NSURLFileSizeKey error:&v55];
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
              path = [lCopy path];
              v46 = objc_opt_class();
              v49 = NSStringFromClass(v46);
              domain = [v52 domain];
              code = [v52 code];
              *buf = 138413314;
              v73 = path;
              v74 = 2114;
              v75 = v49;
              v76 = 2114;
              v77 = domain;
              v78 = 2048;
              v79 = code;
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
          [self transcodeReadChannel:v22 decryptionInfo:infoCopy size:objc_msgSend(v27 toWriteChannel:"unsignedLongLongValue") encryptionInfo:v25 synchronous:encryptionInfoCopy completion:{1, v54}];
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
      if (linkCopy && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 tsu_canCloneItemAtURL:lCopy toURL:rLCopy], v29, (v30 & 1) == 0) && (objc_msgSend(self, "linkOrCloneItemAtURL:toURL:canLink:canClone:error:", lCopy, rLCopy, 1, 0, 0) & 1) != 0)
      {
        LODWORD(v19) = 1;
      }

      else
      {
        v31 = +[NSFileManager defaultManager];
        v32 = (v63 + 5);
        v61 = v63[5];
        LODWORD(v19) = [v31 copyItemAtURL:lCopy toURL:rLCopy error:&v61];
        objc_storeStrong(v32, v61);
      }

      if (length && v19)
      {
        v60 = 0;
        v59 = 0;
        v33 = [rLCopy getResourceValue:&v60 forKey:NSURLFileSizeKey error:&v59];
        v34 = v60;
        v35 = v59;
        if (v33)
        {
          unsignedLongLongValue = [v34 unsignedLongLongValue];
          v69[3] = unsignedLongLongValue;
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
            path2 = [rLCopy path];
            v43 = objc_opt_class();
            v53 = NSStringFromClass(v43);
            domain2 = [v35 domain];
            code2 = [v35 code];
            *buf = 138413314;
            v73 = path2;
            v74 = 2114;
            v75 = v53;
            v76 = 2114;
            v77 = domain2;
            v78 = 2048;
            v79 = code2;
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

  if (length)
  {
LABEL_33:
    *length = v69[3];
  }

  if (error && (v19 & 1) == 0)
  {
    v38 = v63[5];
    if (v38)
    {
      *error = v38;
    }

    else
    {
      path3 = [lCopy path];
      path4 = [rLCopy path];
      v41 = [self errorWithDomain:NSCocoaErrorDomain code:4 sourcePath:path3 targetPath:path4];
      *error = v41;
    }
  }

  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  return v19;
}

+ (BOOL)copyDataFromReadChannel:(id)channel decryptionInfo:(id)info size:(unint64_t)size toWriteChannel:(id)writeChannel encryptionInfo:(id)encryptionInfo encodedLength:(unint64_t *)length error:(id *)error
{
  channelCopy = channel;
  infoCopy = info;
  writeChannelCopy = writeChannel;
  encryptionInfoCopy = encryptionInfo;
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
  [self copyDataFromReadChannel:channelCopy decryptionInfo:infoCopy size:size toWriteChannel:writeChannelCopy encryptionInfo:encryptionInfoCopy synchronous:1 completion:v22];
  if (length)
  {
    *length = v30[3];
  }

  v19 = v24[5];
  if (error && v19)
  {
    *error = v19;
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

+ (void)copyDataFromReadChannel:(id)channel size:(unint64_t)size toWriteChannel:(id)writeChannel synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  channelCopy = channel;
  writeChannelCopy = writeChannel;
  completionCopy = completion;
  v15 = completionCopy;
  if (channelCopy && writeChannelCopy)
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
    if (synchronousCopy)
    {
      v16 = +[NSProgress currentProgress];

      if (v16)
      {
        v16 = [NSProgress progressWithTotalUnitCount:size];
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
    v28 = writeChannelCopy;
    v31 = &v34;
    v20 = v16;
    v29 = v20;
    v32 = v38;
    [channelCopy readWithHandler:v26];
    if (synchronousCopy)
    {
      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      if (v15)
      {
        v15[2](v15, v35[3], v41[5]);
      }
    }

    else if (v15)
    {
      ioCompletionQueue = [self ioCompletionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002DC8;
      block[3] = &unk_1001C51A0;
      v23 = v15;
      v24 = &v34;
      v25 = &v40;
      dispatch_group_notify(v19, ioCompletionQueue, block);
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v40, 8);
  }

  else if (completionCopy)
  {
    v17 = [NSError tsp_unknownReadErrorWithUserInfo:0];
    (v15)[2](v15, 0, v17);
  }
}

@end