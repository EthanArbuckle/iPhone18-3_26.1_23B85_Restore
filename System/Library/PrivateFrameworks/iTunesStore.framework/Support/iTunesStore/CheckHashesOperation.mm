@interface CheckHashesOperation
- (CheckHashesOperation)initWithFilePath:(id)path hashes:(id)hashes bytesToHash:(int64_t)hash;
- (NSArray)hashes;
- (NSString)filePath;
- (void)dealloc;
- (void)run;
@end

@implementation CheckHashesOperation

- (CheckHashesOperation)initWithFilePath:(id)path hashes:(id)hashes bytesToHash:(int64_t)hash
{
  v11.receiver = self;
  v11.super_class = CheckHashesOperation;
  v8 = [(CheckHashesOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_bytesToHash = hash;
    v8->_filePath = [path copy];
    v9->_hashes = [hashes copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckHashesOperation;
  [(CheckHashesOperation *)&v3 dealloc];
}

- (NSString)filePath
{
  v2 = self->_filePath;

  return v2;
}

- (NSArray)hashes
{
  v2 = self->_hashes;

  return v2;
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 = shouldLog;
  }

  else
  {
    v5 = shouldLog & 2;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(NSArray *)self->_hashes count];
    bytesToHash = self->_bytesToHash;
    filePath = self->_filePath;
    v77.st_dev = 138413058;
    *&v77.st_mode = v6;
    WORD2(v77.st_ino) = 2048;
    *(&v77.st_ino + 6) = v7;
    HIWORD(v77.st_gid) = 2048;
    *&v77.st_rdev = bytesToHash;
    LOWORD(v77.st_atimespec.tv_sec) = 2112;
    *(&v77.st_atimespec.tv_sec + 2) = filePath;
    LODWORD(v54) = 42;
    v52 = &v77;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, &v77, v54];
      free(v11);
      v52 = v12;
      SSFileLog();
    }
  }

  v13 = open([(NSString *)self->_filePath fileSystemRepresentation], 0);
  if (v13 == -1)
  {
    __error();
    v63 = SSError();
    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    if (os_log_type_enabled([v33 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v32 = shouldLog2;
    }

    else
    {
      v32 = shouldLog2 & 2;
    }

    if (v32)
    {
      v35 = objc_opt_class();
      v77.st_dev = 138412546;
      *&v77.st_mode = v35;
      WORD2(v77.st_ino) = 2112;
      *(&v77.st_ino + 6) = v63;
      LODWORD(v54) = 22;
      p_c = &v77;
      v36 = _os_log_send_and_compose_impl();
      if (v36)
      {
        v37 = v36;
        v38 = [NSString stringWithCString:v36 encoding:4, &v77, v54];
        free(v37);
        p_c = v38;
        SSFileLog();
      }

      v32 = 0;
    }
  }

  else
  {
    v14 = v13;
    st_size = self->_bytesToHash;
    memset(&v77, 0, sizeof(v77));
    if (!fstat(v13, &v77))
    {
      st_size = v77.st_size;
    }

    v16 = self->_bytesToHash;
    selfCopy = self;
    if ([(NSArray *)self->_hashes count]== 1)
    {
      v18 = st_size;
    }

    else
    {
      v18 = v16;
    }

    v19 = OBJC_IVAR___ISOperation__progress;
    [*&selfCopy->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:st_size];
    v58 = v19;
    [*&selfCopy->ISOperation_opaque[v19] setUnits:1];
    v20 = malloc_type_malloc(0x20000uLL, 0x494493A7uLL);
    v62 = selfCopy;
    if (v20)
    {
      v21 = v20;
      memset(&c, 0, sizeof(c));
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = selfCopy->_hashes;
      v57 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v57)
      {
        v22 = 0;
        v63 = 0;
        v56 = *v65;
        while (2)
        {
          v23 = 0;
          do
          {
            if (*v65 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v59 = v23;
            v60 = *(*(&v64 + 1) + 8 * v23);
            v61 = objc_alloc_init(NSAutoreleasePool);
            CC_MD5_Init(&c);
            v24 = 0;
            LOBYTE(v23) = 1;
            do
            {
              if (v18 <= v24)
              {
                break;
              }

              v25 = (v18 - v24) >= 0x20000 ? 0x20000 : v18 - v24;
              v26 = read(v14, v21, v25);
              if (v26 < 0)
              {
                v27 = v14;

                __error();
                v63 = SSError();
                v28 = +[SSLogConfig sharedDaemonConfig];
                if (!v28)
                {
                  v28 = +[SSLogConfig sharedConfig];
                }

                LODWORD(v23) = [v28 shouldLog];
                if ([v28 shouldLogToDisk])
                {
                  LODWORD(v23) = v23 | 2;
                }

                if (!os_log_type_enabled([v28 OSLogObject], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v23) = v23 & 2;
                }

                if (v23)
                {
                  v29 = objc_opt_class();
                  v68 = 138412546;
                  v69 = v29;
                  v70 = 2112;
                  v71 = v63;
                  LODWORD(v54) = 22;
                  p_c = &v68;
                  v23 = _os_log_send_and_compose_impl();
                  if (v23)
                  {
                    v30 = [NSString stringWithCString:v23 encoding:4, &v68, v54];
                    free(v23);
                    p_c = v30;
                    SSFileLog();
                    LOBYTE(v23) = 0;
                  }
                }

                v14 = v27;
              }

              else
              {
                CC_MD5_Update(&c, v21, v26);
                v24 += v26;
                v22 += v26;
              }
            }

            while (v26 >= v25);
            if ((v23 & 1) == 0)
            {
              goto LABEL_81;
            }

            CC_MD5_Final(md, &c);
            v31 = ISStringFromDigest();
            if (([v31 isEqualToString:v60] & 1) == 0)
            {
              v44 = v14;
              v45 = +[SSLogConfig sharedDaemonConfig];
              if (!v45)
              {
                v45 = +[SSLogConfig sharedConfig];
              }

              shouldLog3 = [v45 shouldLog];
              if ([v45 shouldLogToDisk])
              {
                shouldLog3 |= 2u;
              }

              if (os_log_type_enabled([v45 OSLogObject], OS_LOG_TYPE_DEFAULT))
              {
                v47 = shouldLog3;
              }

              else
              {
                v47 = shouldLog3 & 2;
              }

              if (v47)
              {
                v48 = objc_opt_class();
                v68 = 138412802;
                v69 = v48;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v60;
                LODWORD(v54) = 32;
                p_c = &v68;
                v49 = _os_log_send_and_compose_impl();
                if (v49)
                {
                  v50 = v49;
                  v51 = [NSString stringWithCString:v49 encoding:4, &v68, v54];
                  free(v50);
                  p_c = v51;
                  SSFileLog();
                }
              }

              v63 = SSError();
              LODWORD(v14) = v44;
LABEL_81:
              [v61 drain];
              v32 = 0;
              goto LABEL_82;
            }

            [*&v62->ISOperation_opaque[v58] setCurrentValue:v22];
            [*&v62->ISOperation_opaque[v58] snapshot];
            [(CheckHashesOperation *)v62 sendProgressToDelegate];
            [v61 drain];
            v23 = v59 + 1;
          }

          while ((v59 + 1) != v57);
          v32 = 1;
          v57 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v75 count:16];
          if (v57)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v63 = 0;
        v32 = 1;
      }

LABEL_82:
      free(v21);
      self = v62;
    }

    else
    {
      v39 = +[SSLogConfig sharedDaemonConfig];
      if (!v39)
      {
        v39 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v39 shouldLog];
      if ([v39 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      if (os_log_type_enabled([v39 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v32 = shouldLog4;
      }

      else
      {
        v32 = shouldLog4 & 2;
      }

      self = v62;
      if (v32)
      {
        c.A = 138412290;
        *&c.B = objc_opt_class();
        LODWORD(v54) = 12;
        p_c = &c;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          v42 = v41;
          v43 = [NSString stringWithCString:v41 encoding:4, &c, v54];
          free(v42);
          p_c = v43;
          SSFileLog();
        }

        v32 = 0;
      }

      v63 = 0;
    }

    close(v14);
  }

  [(CheckHashesOperation *)self setError:v63, p_c];
  [(CheckHashesOperation *)self setSuccess:v32];
}

@end