@interface TRIFileSystemCompressor
+ (BOOL)_enumerateFilesInDirectory:(id)a3 block:(id)a4;
- ($A5A652246548B43F8BC05201A1C72A70)_compressContentsOfSourceHandle:(id)a3 toDestinationFd:(int)a4 shouldDefer:(id)a5;
- ($A5A652246548B43F8BC05201A1C72A70)compressContentsOfFileHandle:(id)a3 toDestinationFile:(id)a4 shouldDefer:(id)a5;
- ($A5A652246548B43F8BC05201A1C72A70)inPlaceCompressDirectory:(id)a3 shouldDefer:(id)a4;
- ($A5A652246548B43F8BC05201A1C72A70)inPlaceCompressFile:(id)a3 shouldDefer:(id)a4;
- (BOOL)_isCompressibleFile:(id)a3;
- (id)_temporaryCompressionFileForFile:(id)a3;
@end

@implementation TRIFileSystemCompressor

- (id)_temporaryCompressionFileForFile:(id)a3
{
  v5 = [a3 stringByDeletingLastPathComponent];
  v6 = objc_opt_new();
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];

  v9 = [v8 stringByAppendingPathExtension:@"trial-afsc-compressed"];
  if (!v9)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIFileSystemCompressor.m" lineNumber:41 description:{@"Expression was unexpectedly nil/false: %@", @"[temporaryFile stringByAppendingPathExtension:@trial-afsc-compressed]"}];
  }

  return v9;
}

- ($A5A652246548B43F8BC05201A1C72A70)inPlaceCompressFile:(id)a3 shouldDefer:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"TRIFileSystemCompressor.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];
  }

  if ([(TRIFileSystemCompressor *)self _isCompressibleFile:v7])
  {
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_1000105F0;
    }

    v10 = objc_retainBlock(v9);

    v11 = [NSURL fileURLWithPath:v7];
    v34 = 0;
    v12 = [NSFileHandle fileHandleForReadingFromURL:v11 error:&v34];
    v13 = v34;

    if (!v12)
    {
      v14 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v7;
        v37 = 2112;
        v38 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to open file %@ for AFSC compression: %@", buf, 0x16u);
      }

      v18 = 0;
      goto LABEL_25;
    }

    v14 = [(TRIFileSystemCompressor *)self _temporaryCompressionFileForFile:v7];
    v15 = open_dprotected_np([v14 fileSystemRepresentation], 514, 4, 0, 384);
    if ((v15 & 0x80000000) != 0)
    {
      v20 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = __error();
        v28 = strerror(*v27);
        v29 = *__error();
        *buf = 136315394;
        v36 = v28;
        v37 = 1024;
        LODWORD(v38) = v29;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Skipping AFSC compression because temp file could not be opened: %s (%d)", buf, 0x12u);
      }
    }

    else
    {
      v16 = v15;
      if (v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = &stru_100010610;
      }

      v18 = [(TRIFileSystemCompressor *)self _compressContentsOfSourceHandle:v12 toDestinationFd:v15 shouldDefer:v17];
      close(v16);
      if (v18 == 2)
      {
        goto LABEL_25;
      }

      if (v18)
      {
        v22 = [v14 fileSystemRepresentation];
        v23 = [v7 fileSystemRepresentation];
        rename(v22, v23, v24);
        if (!v25)
        {
          v18 = 1;
          goto LABEL_25;
        }

        v26 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v30 = __error();
          v31 = strerror(*v30);
          v32 = *__error();
          *buf = 138413058;
          v36 = v14;
          v37 = 2112;
          v38 = v7;
          v39 = 2080;
          v40 = v31;
          v41 = 1024;
          v42 = v32;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Couldn't rename %@ --> %@: %s (%d)", buf, 0x26u);
        }

        v20 = +[NSFileManager defaultManager];
        [v20 removeItemAtPath:v14 error:0];
        v18 = 0;
LABEL_24:

LABEL_25:
        v8 = v10;
        goto LABEL_26;
      }

      v19 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping AFSC compression due to error while compressing.", buf, 2u);
      }

      v20 = +[NSFileManager defaultManager];
      [v20 removeItemAtPath:v14 error:0];
    }

    v18 = 1;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_26:

  return v18;
}

- (BOOL)_isCompressibleFile:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v9];

  v6 = 0;
  if (v5)
  {
    if (v9 == 1)
    {
      v7 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unexpectedly requested to AFSC compress a directory %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- ($A5A652246548B43F8BC05201A1C72A70)compressContentsOfFileHandle:(id)a3 toDestinationFile:(id)a4 shouldDefer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIFileSystemCompressor.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"handle"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v24 = +[NSAssertionHandler currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"TRIFileSystemCompressor.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];

LABEL_3:
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_100010630;
  }

  v13 = objc_retainBlock(v12);

  v14 = open_dprotected_np([v10 fileSystemRepresentation], 514, 4, 0, 384);
  if ((v14 & 0x80000000) != 0)
  {
    v17 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = __error();
      v21 = strerror(*v20);
      v22 = *__error();
      *buf = 138412802;
      v26 = v10;
      v27 = 2080;
      v28 = v21;
      v29 = 1024;
      v30 = v22;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to open %@: %s (%d)", buf, 0x1Cu);
    }

    v16 = 0;
  }

  else
  {
    v15 = v14;
    v16 = [(TRIFileSystemCompressor *)self _compressContentsOfSourceHandle:v9 toDestinationFd:v14 shouldDefer:v13];
    close(v15);
    if (v16 == 1)
    {
      v16 = 1;
    }

    else
    {
      v18 = +[NSFileManager defaultManager];
      [v18 removeItemAtPath:v10 error:0];
    }
  }

  return v16;
}

- ($A5A652246548B43F8BC05201A1C72A70)_compressContentsOfSourceHandle:(id)a3 toDestinationFd:(int)a4 shouldDefer:(id)a5
{
  v6 = a3;
  v7 = a5;
  memset(&v42, 0, sizeof(v42));
  if (fstat([v6 fileDescriptor], &v42))
  {
    v8 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = __error();
      v26 = strerror(*v25);
      v27 = *__error();
      *v45 = 136315394;
      *&v45[4] = v26;
      *&v45[12] = 1024;
      *&v45[14] = v27;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to fstat source file handle for AFSC compression: %s (%d)", v45, 0x12u);
    }

    v9.var0 = 0;
    goto LABEL_5;
  }

  if (v42.st_size)
  {
    v30 = ParallelCompressionAFSCStreamOpen();
    if (v30)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

      if (!v12)
      {
        v28 = +[NSAssertionHandler currentHandler];
        v29 = [NSString stringWithUTF8String:"dispatch_queue_t  _Nonnull _PASAutoreleasingSerialQueueWithQOS(const char * _Nullable, qos_class_t)"];
        [v28 handleFailureInFunction:v29 file:@"_PASDispatchInline.h" lineNumber:191 description:{@"Unsupported QOS class: %u", 17}];
      }

      v8 = dispatch_queue_create("com.apple.trial.compression-io", v12);

      v13 = dispatch_semaphore_create(2);
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 1;
      while (1)
      {
        v14 = atomic_load(v39 + 6);
        if (v14 != 1)
        {
LABEL_21:
          dispatch_sync(v8, &stru_100010678);
          v9.var0 = atomic_load(v39 + 6);
          v21 = ParallelCompressionAFSCStreamClose();
          v22 = v21;
          if (v9.var0 == 1 && v21 != 0)
          {
            v24 = TRILogCategory_Archiving();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v45 = 67109120;
              *&v45[4] = v22;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "AFSC stream failed to close with error (%d)", v45, 8u);
            }

            v9.var0 = 0;
          }

          _Block_object_dispose(&v38, 8);

          goto LABEL_5;
        }

        v15 = objc_autoreleasePoolPush();
        dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
        *v45 = 0;
        *&v45[8] = v45;
        *&v45[16] = 0x3032000000;
        v46 = sub_100006ED0;
        v47 = sub_100006EE0;
        v37 = 0;
        v16 = [v6 readDataUpToLength:0x20000 error:&v37];
        v17 = v37;
        v48 = v16;
        v18 = *(*&v45[8] + 40);
        if (!v18)
        {
          break;
        }

        if (![v18 length])
        {
          goto LABEL_19;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100006EE8;
        block[3] = &unk_100010658;
        v34 = &v38;
        v35 = v45;
        v32 = v13;
        v33 = v7;
        v36 = v30;
        dispatch_async(v8, block);

        v19 = 1;
LABEL_20:
        _Block_object_dispose(v45, 8);

        objc_autoreleasePoolPop(v15);
        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v20 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v17;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to read source file during AFSC compression: %@", buf, 0xCu);
      }

      atomic_store(0, v39 + 6);
LABEL_19:
      dispatch_semaphore_signal(v13);
      v19 = 0;
      goto LABEL_20;
    }

    v9.var0 = 0;
  }

  else
  {
    v8 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "File data is empty, ignoring compression.", v45, 2u);
    }

    v9.var0 = 1;
LABEL_5:
  }

  return v9;
}

- ($A5A652246548B43F8BC05201A1C72A70)inPlaceCompressDirectory:(id)a3 shouldDefer:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRIFileSystemCompressor.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"dirPath"}];
  }

  v24 = 0;
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v7 isDirectory:&v24];

  if (!v10)
  {
    goto LABEL_18;
  }

  if ((v24 & 1) == 0)
  {
    v17 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unexpectedly requested to AFSC compress a file %@", &buf, 0xCu);
    }

LABEL_18:
    v16.var0 = 0;
    goto LABEL_19;
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_100010698;
  }

  v12 = objc_retainBlock(v11);

  v13 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Compressing files in %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2810000000;
  v27 = &unk_10000B013;
  v28 = 1;
  v14 = objc_opt_class();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000073FC;
  v21[3] = &unk_1000106C0;
  v8 = v12;
  v22 = v8;
  p_buf = &buf;
  v21[4] = self;
  if (([v14 _enumerateFilesInDirectory:v7 block:v21] & 1) == 0)
  {
    v15 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Some files not AFSC compressed due to directory enumeration failure.", v20, 2u);
    }
  }

  v16.var0 = *(*(&buf + 1) + 32);

  _Block_object_dispose(&buf, 8);
LABEL_19:

  return v16;
}

+ (BOOL)_enumerateFilesInDirectory:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 enumeratorAtPath:v5];

    v10 = objc_autoreleasePoolPush();
    v11 = [v9 nextObject];
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        v13 = [v9 fileAttributes];
        v14 = [v13 objectForKeyedSubscript:NSFileType];

        if (v14 != NSFileTypeDirectory)
        {
          v15 = [v5 stringByAppendingPathComponent:v12];
          v16 = [v7 addString:v15];

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        objc_autoreleasePoolPop(v10);
        v10 = objc_autoreleasePoolPush();
        v12 = [v9 nextObject];
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      objc_autoreleasePoolPop(v10);
      v17 = 0;
    }

    else
    {
LABEL_7:
      objc_autoreleasePoolPop(v10);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100007800;
      v19[3] = &unk_1000106E8;
      v20 = v6;
      v17 = [v7 enumerateStringsWithBlock:v19];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end