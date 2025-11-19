@interface StreamingZipDownloadDataConsumer
- (BOOL)consumeData:(id)a3 error:(id *)a4;
- (BOOL)finish:(id *)a3;
- (StreamingZipDownloadDataConsumer)initWithPath:(id)a3 options:(id)a4;
- (id)_stringWithFileSystemRepresentation:(const char *)a3;
- (id)_stringWithFileSystemRepresentation:(const char *)a3 length:(unint64_t)a4;
- (unint64_t)_diskUsageForPath:(id)a3;
- (unint64_t)diskUsage;
- (void)_initializeExtractorWithPath:(id)a3 options:(id)a4;
- (void)reset;
- (void)suspend;
- (void)truncate;
@end

@implementation StreamingZipDownloadDataConsumer

- (StreamingZipDownloadDataConsumer)initWithPath:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = StreamingZipDownloadDataConsumer;
  v8 = [(StreamingZipDownloadDataConsumer *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(StreamingZipDownloadDataConsumer *)v8 _initializeExtractorWithPath:v6 options:v7];
    v10 = *(&v9->super._overrideProgress + 1);
    if (v10)
    {
      [v10 setExtractorDelegate:v9];
      v11 = [v7 copy];
      v12 = *(&v9->_hasConsumedData + 1);
      *(&v9->_hasConsumedData + 1) = v11;

      v13 = [v6 copy];
      v14 = *(&v9->_options + 1);
      *(&v9->_options + 1) = v13;
    }

    else
    {
      v14 = v9;
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)consumeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100109F0C;
  v22 = sub_100109F1C;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = *(&self->super._overrideProgress + 1);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100109F24;
  v14[3] = &unk_100328D70;
  v16 = &v18;
  v17 = &v24;
  v9 = v7;
  v15 = v9;
  [v8 supplyBytes:v6 withCompletionBlock:v14];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v25;
  if (BYTE1(self->_extractor))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v25 + 24);
  }

  BYTE1(self->_extractor) = v11 & 1;
  v12 = *(v10 + 24);
  if (a4 && (v10[3] & 1) == 0)
  {
    *a4 = v19[5];
    v12 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

- (unint64_t)diskUsage
{
  result = [(StreamingZipDownloadDataConsumer *)self resumptionOffset];
  if (result)
  {
    v4 = *(&self->_options + 1);

    return [(StreamingZipDownloadDataConsumer *)self _diskUsageForPath:v4];
  }

  return result;
}

- (BOOL)finish:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100109F0C;
  v18 = sub_100109F1C;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = *(&self->super._overrideProgress + 1);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010A17C;
  v10[3] = &unk_100328D98;
  v12 = &v14;
  v13 = &v20;
  v7 = v5;
  v11 = v7;
  [v6 finishStreamWithCompletionBlock:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v21 + 24);
  if (a3 && (v21[3] & 1) == 0)
  {
    *a3 = v15[5];
    v8 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v8 & 1;
}

- (void)reset
{
  [(StreamingZipDownloadDataConsumer *)self suspend];
  [(StreamingZipDownloadDataConsumer *)self _initializeExtractorWithPath:*(&self->_options + 1) options:*(&self->_hasConsumedData + 1)];
  BYTE1(self->_extractor) = *(&self->_percentComplete + 1) != 0;
}

- (void)suspend
{
  v3 = dispatch_semaphore_create(0);
  v4 = *(&self->super._overrideProgress + 1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010A340;
  v6[3] = &unk_100328DC0;
  v7 = v3;
  v5 = v3;
  [v4 suspendStreamWithCompletionBlock:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)truncate
{
  [(StreamingZipDownloadDataConsumer *)self suspend];
  v3 = objc_alloc_init(NSFileManager);
  [v3 removeItemAtPath:*(&self->_options + 1) error:0];
  [(StreamingZipDownloadDataConsumer *)self _initializeExtractorWithPath:*(&self->_options + 1) options:*(&self->_hasConsumedData + 1)];
  BYTE1(self->_extractor) = *(&self->_percentComplete + 1) != 0;
}

- (void)_initializeExtractorWithPath:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(ISWeakLinkedClassForString()) initWithPath:v7 options:v6];

  v9 = *(&self->super._overrideProgress + 1);
  *(&self->super._overrideProgress + 1) = v8;

  v10 = objc_alloc_init(SSPromise);
  v11 = *(&self->super._overrideProgress + 1);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10010A4F8;
  v16 = &unk_100328DE8;
  v17 = self;
  v18 = v10;
  v12 = v10;
  [v11 prepareForExtraction:&v13];
  [v12 waitUntilFinished];
}

- (unint64_t)_diskUsageForPath:(id)a3
{
  v3 = a3;
  v4 = [NSMutableSet setWithCapacity:0];
  v5 = [NSMutableArray arrayWithCapacity:1];
  v93 = 0;
  v95 = 0;
  v92 = 0xA200000900000005;
  v94 = 0x500000002;
  v6 = malloc_type_malloc(0x8000uLL, 0xF218F1B2uLL);
  v84 = v3;
  if (v3)
  {
    [v5 addObject:v3];
    goto LABEL_16;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v96 = 138412290;
  v97 = objc_opt_class();
  v12 = v97;
  LODWORD(v83) = 12;
  v81 = &v96;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v10 = [NSString stringWithCString:v13 encoding:4, &v96, v83, 0];
    free(v13);
    v81 = v10;
    SSFileLog();
LABEL_14:
  }

LABEL_16:
  if ([v5 count])
  {
    v89 = 0;
    v88 = v4;
    v87 = v5;
    v85 = v6;
    while (1)
    {
      v14 = [v5 objectAtIndex:{0, v82}];
      [v5 removeObjectAtIndex:0];
      v91 = v14;
      v15 = open([v14 fileSystemRepresentation], 1048832);
      if ((v15 & 0x80000000) == 0)
      {
        v86 = v15;
        v16 = 0;
LABEL_20:
        v6 = v85;
        while (1)
        {
          v17 = getattrlistbulk(v86, &v92, v85, 0x8000uLL, 0);
          if (v17 == -1)
          {
            break;
          }

          v18 = v17;
          if (!v17)
          {
            goto LABEL_128;
          }

          if (v17 >= 1)
          {
            v19 = v85;
            while (1)
            {
              v21 = *v19;
              v20 = v19[1];
              v22 = v19[4];
              if ((v20 & 0x20000000) != 0)
              {
                if (v19[6])
                {
                  v39 = +[SSLogConfig sharedDaemonConfig];
                  if (!v39)
                  {
                    v39 = +[SSLogConfig sharedConfig];
                  }

                  v40 = [v39 shouldLog];
                  if ([v39 shouldLogToDisk])
                  {
                    v40 |= 2u;
                  }

                  v41 = [v39 OSLogObject];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    v42 = v40;
                  }

                  else
                  {
                    v42 = v40 & 2;
                  }

                  if (v42)
                  {
                    v43 = objc_opt_class();
                    v44 = v43;
                    v45 = __error();
                    v46 = strerror(*v45);
                    v96 = 138413058;
                    v97 = v43;
                    v98 = 2080;
                    v99 = v46;
                    v100 = 2048;
                    v101 = v16;
                    v102 = 2112;
                    v103 = v91;
                    LODWORD(v83) = 42;
                    v82 = &v96;
                    v47 = _os_log_send_and_compose_impl();

                    goto LABEL_96;
                  }

                  goto LABEL_98;
                }

                v23 = (v19 + 7);
                if ((v20 & 1) == 0)
                {
LABEL_27:
                  v24 = 0;
                  v25 = 0xFFFFFFFFLL;
                  if ((v20 & 8) != 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_54;
                }
              }

              else
              {
                v23 = (v19 + 6);
                if ((v20 & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

              v48 = v23[1];
              v24 = v23 + *v23;
              v23 += 2;
              v25 = (v48 - 1);
              if ((v20 & 8) != 0)
              {
LABEL_28:
                v26 = *v23++;
                v27 = v26 == 2;
                if ((v20 & 0x2000000) != 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_55;
              }

LABEL_54:
              v27 = 0;
              if ((v20 & 0x2000000) != 0)
              {
LABEL_29:
                v29 = *v23;
                v23 += 2;
                v28 = v29;
                if (v27)
                {
                  goto LABEL_56;
                }

                goto LABEL_30;
              }

LABEL_55:
              v28 = 0;
              if (v27)
              {
LABEL_56:
                if ((v19[3] & 2) != 0 && !*v23)
                {
                  v39 = +[SSLogConfig sharedDaemonConfig];
                  if (!v39)
                  {
                    v39 = +[SSLogConfig sharedConfig];
                  }

                  v58 = [v39 shouldLog];
                  if ([v39 shouldLogToDisk])
                  {
                    v58 |= 2u;
                  }

                  v41 = [v39 OSLogObject];
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    v58 &= 2u;
                  }

                  if (v58)
                  {
                    v59 = objc_opt_class();
                    v96 = 138412802;
                    v97 = v59;
                    v98 = 2112;
                    v99 = v91;
                    v100 = 2080;
                    v101 = v24;
                    v54 = v59;
                    LODWORD(v83) = 32;
                    v82 = &v96;
LABEL_95:
                    v47 = _os_log_send_and_compose_impl();

LABEL_96:
                    if (v47)
                    {
                      v41 = [NSString stringWithCString:v47 encoding:4];
                      free(v47);
                      v82 = v41;
                      SSFileLog();
                      goto LABEL_98;
                    }

LABEL_99:

                    goto LABEL_100;
                  }

LABEL_98:

                  goto LABEL_99;
                }

                if (!v24)
                {
                  v39 = +[SSLogConfig sharedDaemonConfig];
                  if (!v39)
                  {
                    v39 = +[SSLogConfig sharedConfig];
                  }

                  v52 = [v39 shouldLog];
                  if ([v39 shouldLogToDisk])
                  {
                    v52 |= 2u;
                  }

                  v41 = [v39 OSLogObject];
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 &= 2u;
                  }

                  if (v52)
                  {
                    v53 = objc_opt_class();
                    v96 = 138412802;
                    v97 = v53;
                    v98 = 2048;
                    v99 = v16;
                    v100 = 2112;
                    v101 = v91;
                    v54 = v53;
                    LODWORD(v83) = 32;
                    v82 = &v96;
                    goto LABEL_95;
                  }

                  goto LABEL_98;
                }

                v32 = objc_autoreleasePoolPush();
                v49 = [(StreamingZipDownloadDataConsumer *)self _stringWithFileSystemRepresentation:v24 length:v25];
                v33 = [v91 stringByAppendingPathComponent:v49];

                if (v33)
                {
                  v50 = v87;
                  goto LABEL_73;
                }

                v34 = +[SSLogConfig sharedDaemonConfig];
                if (!v34)
                {
                  v34 = +[SSLogConfig sharedConfig];
                }

                v55 = [v34 shouldLog];
                if ([v34 shouldLogToDisk])
                {
                  v55 |= 2u;
                }

                v36 = [v34 OSLogObject];
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v55 &= 2u;
                }

                if (!v55)
                {
                  goto LABEL_84;
                }

                v56 = objc_opt_class();
                v96 = 138412802;
                v97 = v56;
                v98 = 2080;
                v99 = v24;
                v100 = 2112;
                v101 = v91;
                v38 = v56;
                LODWORD(v83) = 32;
                v82 = &v96;
LABEL_82:
                v57 = _os_log_send_and_compose_impl();

                if (v57)
                {
                  v36 = [NSString stringWithCString:v57 encoding:4];
                  free(v57);
                  v82 = v36;
                  SSFileLog();
                  goto LABEL_84;
                }

LABEL_85:

LABEL_86:
                objc_autoreleasePoolPop(v32);
                goto LABEL_100;
              }

LABEL_30:
              if (v22)
              {
                v51 = *v23++;
                v30 = v51 == 1;
                if ((v22 & 4) != 0)
                {
LABEL_32:
                  v31 = *v23;
                  if (!v30)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_63;
                }
              }

              else
              {
                v30 = 0;
                if ((v22 & 4) != 0)
                {
                  goto LABEL_32;
                }
              }

              v31 = 0;
              if (!v30)
              {
LABEL_33:
                v32 = objc_autoreleasePoolPush();
                v33 = [NSNumber numberWithUnsignedLongLong:v28];
                if ([v88 containsObject:v33])
                {
                  v34 = +[SSLogConfig sharedDaemonConfig];
                  if (!v34)
                  {
                    v34 = +[SSLogConfig sharedConfig];
                  }

                  v35 = [v34 shouldLog];
                  if ([v34 shouldLogToDisk])
                  {
                    v35 |= 2u;
                  }

                  v36 = [v34 OSLogObject];
                  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                  {
                    v35 &= 2u;
                  }

                  if (v35)
                  {
                    v37 = objc_opt_class();
                    v96 = 138412802;
                    v97 = v37;
                    v98 = 2112;
                    v99 = v91;
                    v100 = 2080;
                    v101 = v24;
                    v38 = v37;
                    LODWORD(v83) = 32;
                    v82 = &v96;
                    goto LABEL_82;
                  }

LABEL_84:

                  goto LABEL_85;
                }

                v89 += v31;
                v50 = v88;
LABEL_73:
                [v50 addObject:{v33, v82}];
                goto LABEL_86;
              }

LABEL_63:
              v89 += v31;
LABEL_100:
              v19 = (v19 + v21);
              ++v16;
              if (!--v18)
              {
                goto LABEL_20;
              }
            }
          }
        }

        v70 = +[SSLogConfig sharedDaemonConfig];
        if (!v70)
        {
          v70 = +[SSLogConfig sharedConfig];
        }

        v71 = [v70 shouldLog];
        if ([v70 shouldLogToDisk])
        {
          v72 = v71 | 2;
        }

        else
        {
          v72 = v71;
        }

        v73 = [v70 OSLogObject];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          v74 = v72;
        }

        else
        {
          v74 = v72 & 2;
        }

        if (v74)
        {
          v75 = objc_opt_class();
          v76 = v75;
          v77 = __error();
          v78 = strerror(*v77);
          v96 = 138413058;
          v97 = v75;
          v98 = 2048;
          v99 = v16;
          v100 = 2112;
          v101 = v91;
          v102 = 2080;
          v103 = v78;
          LODWORD(v83) = 42;
          v82 = &v96;
          v79 = _os_log_send_and_compose_impl();

          if (v79)
          {
            v73 = [NSString stringWithCString:v79 encoding:4, &v96, v83];
            free(v79);
            v82 = v73;
            SSFileLog();
            goto LABEL_126;
          }
        }

        else
        {
LABEL_126:
        }

LABEL_128:
        close(v86);
        v4 = v88;
        v5 = v87;
        goto LABEL_129;
      }

      v60 = +[SSLogConfig sharedDaemonConfig];
      if (!v60)
      {
        v60 = +[SSLogConfig sharedConfig];
      }

      v61 = [v60 shouldLog];
      if ([v60 shouldLogToDisk])
      {
        v62 = v61 | 2;
      }

      else
      {
        v62 = v61;
      }

      v63 = [v60 OSLogObject];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = v62;
      }

      else
      {
        v64 = v62 & 2;
      }

      if (!v64)
      {
        goto LABEL_113;
      }

      v65 = objc_opt_class();
      v66 = v65;
      v67 = __error();
      v68 = strerror(*v67);
      v96 = 138412802;
      v97 = v65;
      v98 = 2112;
      v99 = v91;
      v100 = 2080;
      v101 = v68;
      LODWORD(v83) = 32;
      v82 = &v96;
      v69 = _os_log_send_and_compose_impl();

      if (v69)
      {
        break;
      }

LABEL_114:

LABEL_129:
      if (![v5 count])
      {
        goto LABEL_132;
      }
    }

    v63 = [NSString stringWithCString:v69 encoding:4, &v96, v83];
    free(v69);
    v82 = v63;
    SSFileLog();
LABEL_113:

    goto LABEL_114;
  }

  v89 = 0;
LABEL_132:
  free(v6);

  return v89;
}

- (id)_stringWithFileSystemRepresentation:(const char *)a3
{
  v5 = strlen(a3);

  return [(StreamingZipDownloadDataConsumer *)self _stringWithFileSystemRepresentation:a3 length:v5];
}

- (id)_stringWithFileSystemRepresentation:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 stringWithFileSystemRepresentation:a3 length:a4];

  return v7;
}

@end