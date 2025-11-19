@interface FairPlayDecryptFileOperation
- (BOOL)_decryptWithSession:(id)a3 error:(id *)a4;
- (FairPlayDecryptFileOperation)initWithPath:(id)a3 dpInfo:(id)a4;
- (void)_initializeProgressWithFileHandle:(id)a3;
- (void)_updateProgressWithByteCount:(int64_t)a3;
- (void)dealloc;
- (void)run;
@end

@implementation FairPlayDecryptFileOperation

- (FairPlayDecryptFileOperation)initWithPath:(id)a3 dpInfo:(id)a4
{
  if (!a3 || !a4)
  {
    sub_1002721EC(a2, self);
  }

  v9.receiver = self;
  v9.super_class = FairPlayDecryptFileOperation;
  v7 = [(FairPlayDecryptFileOperation *)&v9 init];
  if (v7)
  {
    v7->_dpInfo = a4;
    v7->_path = a3;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FairPlayDecryptFileOperation;
  [(FairPlayDecryptFileOperation *)&v3 dealloc];
}

- (void)run
{
  v3 = [[FairPlayDecryptSession alloc] initWithDPInfo:self->_dpInfo];

  self->_dpInfo = 0;
  if (v3)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v25 = sub_100102CDC;
    v26 = &unk_100327350;
    v27 = self;
    v28 = v3;
    HIDWORD(v23) = 0;
    v4 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [(FairPlayDecryptSession *)v3 identifier], 0, @"itunesstored FairPlay asset decryption", 0, 900.0, @"TimeoutActionRelease", &v23 + 1);
    v5 = +[SSLogConfig sharedDaemonConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v9 = objc_opt_class();
        v29 = 138412546;
        v30 = v9;
        v31 = 1024;
        LODWORD(v32) = v4;
        LODWORD(v23) = 18;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          [NSString stringWithCString:v10 encoding:4, &v29, v23];
          free(v11);
          SSFileLog();
        }
      }

      [(FairPlayDecryptFileOperation *)self setError:ISError()];
      [(FairPlayDecryptFileOperation *)self setSuccess:0];
    }

    else
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v17 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v18 = v17 | 2;
      }

      else
      {
        v18 = v17;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = [(FairPlayDecryptSession *)v3 identifier];
        v29 = 138412546;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        LODWORD(v23) = 22;
        v21 = _os_log_send_and_compose_impl();
        if (v21)
        {
          v22 = v21;
          [NSString stringWithCString:v21 encoding:4, &v29, v23];
          free(v22);
          SSFileLog();
        }
      }

      v25(v24);
      IOPMAssertionRelease(HIDWORD(v23));
    }
  }

  else
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v29 = 138412290;
      v30 = objc_opt_class();
      LODWORD(v23) = 12;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        [NSString stringWithCString:v15 encoding:4, &v29, v23];
        free(v16);
        SSFileLog();
      }
    }

    [(FairPlayDecryptFileOperation *)self setError:ISError()];
  }
}

- (BOOL)_decryptWithSession:(id)a3 error:(id *)a4
{
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:self->_path];
  if (v7)
  {
    v8 = v7;
    v29 = a4;
    [(FairPlayDecryptFileOperation *)self _initializeProgressWithFileHandle:v7];
    v9 = 0;
    while (1)
    {
      [v9 drain];
      v9 = objc_alloc_init(NSAutoreleasePool);
      v10 = [(NSFileHandle *)v8 readDataOfLength:0x8000];
      v11 = [(NSData *)v10 length];
      v12 = v11 == 0;
      if (!v11)
      {
        break;
      }

      v30 = 0;
      v13 = [a3 decryptBytes:v10 error:&v30];
      if (v13)
      {
        [(NSFileHandle *)v8 seekToFileOffset:[(NSFileHandle *)v8 offsetInFile]- [(NSData *)v10 length]];
        [(NSFileHandle *)v8 writeData:v13];
        [(FairPlayDecryptFileOperation *)self _updateProgressWithByteCount:[(NSFileHandle *)v8 offsetInFile]];
      }

      else
      {
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        v15 = [v14 shouldLog];
        v16 = [v14 shouldLogToDisk];
        v17 = [v14 OSLogObject];
        if (v16)
        {
          v18 = v15 | 2;
        }

        else
        {
          v18 = v15;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 2;
        }

        if (v19)
        {
          v20 = objc_opt_class();
          v31 = 138412546;
          v32 = v20;
          v33 = 2112;
          v34 = v30;
          LODWORD(v28) = 22;
          v27 = &v31;
          v21 = _os_log_send_and_compose_impl();
          if (v21)
          {
            v22 = v21;
            v23 = [NSString stringWithCString:v21 encoding:4, &v31, v28];
            free(v22);
            v27 = v23;
            SSFileLog();
          }
        }

        v24 = v30;
        if (v24)
        {
          goto LABEL_21;
        }
      }
    }

    v24 = 0;
LABEL_21:
    [(NSFileHandle *)v8 synchronizeFile];
    a4 = v29;
    [(NSFileHandle *)v8 closeFile];
    [v9 drain];
    v25 = v24;
  }

  else
  {
    v24 = ISError();
    v12 = 0;
  }

  if (a4)
  {
    *a4 = v24;
  }

  return v12;
}

- (void)_initializeProgressWithFileHandle:(id)a3
{
  memset(&v5.st_size, 0, 48);
  if (fstat([a3 fileDescriptor], &v5) != -1)
  {
    v4 = OBJC_IVAR___ISOperation__progress;
    [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setUnits:1];
    [*&self->ISOperation_opaque[v4] setMaxValue:v5.st_size];
    [*&self->ISOperation_opaque[v4] resetSnapshots];
    self->_lastSnapshotTime = -1.79769313e308;
    [(FairPlayDecryptFileOperation *)self _updateProgressWithByteCount:0];
  }
}

- (void)_updateProgressWithByteCount:(int64_t)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___ISOperation__progress;
  v6 = *&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress];
  if ([v6 maxValue] <= a3)
  {
    v3 = [*&self->ISOperation_opaque[v5] maxValue];
  }

  [v6 setCurrentValue:v3];
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_lastSnapshotTime + kSSOperationDefaultSnapshotInterval < Current)
  {
    [*&self->ISOperation_opaque[v5] snapshot];
    [(FairPlayDecryptFileOperation *)self sendProgressToDelegate];
    self->_lastSnapshotTime = Current;
  }
}

@end