@interface SUMescalSession
- (BOOL)isComplete;
- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4;
- (SUMescalSession)init;
- (id)_newDataWithBytes:(char *)a3 length:(unsigned int)a4;
- (id)exchangeData:(id)a3 error:(id *)a4;
- (id)primeForAccountCreationWithData:(id)a3 error:(id *)a4;
- (id)signData:(id)a3 error:(id *)a4;
- (void)_teardownSession;
- (void)dealloc;
@end

@implementation SUMescalSession

- (SUMescalSession)init
{
  v27 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SUMescalSession;
  v2 = [(SUMescalSession *)&v22 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.SUMescalSession.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);

    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      SystemEncoding = CFStringGetSystemEncoding();
      ExternalRepresentation = CFStringCreateExternalRepresentation(0, v5, SystemEncoding, 0);
      if (ExternalRepresentation)
      {
        v8 = ExternalRepresentation;
        BytePtr = CFDataGetBytePtr(ExternalRepresentation);
        Length = CFDataGetLength(v8);
        zxcm2Qme0x(BytePtr, Length, &v2->_hardwareInfo);
        CFRelease(v8);
      }

      else
      {
        zxcm2Qme0x(0, 0, &v2->_hardwareInfo);
      }

      CFRelease(v5);
    }

    cp2g1b9ro(&v2->_session, &v2->_hardwareInfo);
    if (v11)
    {
      cp2g1b9ro(&v2->_session, &v2->_hardwareInfo);
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E69D4938] sharedConfig];
        v15 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v16 = v15 | 2;
        }

        else
        {
          v16 = v15;
        }

        if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v16 &= 2u;
        }

        if (v16)
        {
          v17 = objc_opt_class();
          v23 = 138412546;
          v24 = v17;
          v25 = 2048;
          v26 = v13;
          LODWORD(v21) = 22;
          v18 = _os_log_send_and_compose_impl();
          if (v18)
          {
            v19 = v18;
            [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v23, v21}];
            free(v19);
            SSFileLog();
          }
        }

        return 0;
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  session = self->_session;
  if (session)
  {
    IPaI1oem5iL(session);
    self->_session = 0;
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v5.receiver = self;
  v5.super_class = SUMescalSession;
  [(SUMescalSession *)&v5 dealloc];
}

- (id)exchangeData:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__53;
  v22 = __Block_byref_object_dispose__53;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__SUMescalSession_exchangeData_error___block_invoke;
  v11[3] = &unk_1E8167400;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = &v12;
  v11[7] = &v18;
  dispatch_sync(dispatchQueue, v11);
  v6 = v13[5];
  v7 = v19;
  v8 = v19[5];
  if (a4 && !v8)
  {
    *a4 = v13[5];
    v8 = v7[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

id __38__SUMescalSession_exchangeData_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    v18 = 0;
    v17 = 0;
    v16 = -1;
    Mib5yocT(210, v2 + 20, v3, [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), &v18, &v17, &v16);
    if (v4)
    {
      LODWORD(v5) = v4;
      v6 = [MEMORY[0x1E69D4938] sharedConfig];
      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 2;
      }

      if (v9)
      {
        v5 = v5;
        v19 = 134217984;
        v20 = v5;
        LODWORD(v15) = 12;
        v14 = &v19;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v19, v15}];
          free(v11);
          v14 = v12;
          SSFileLog();
        }
      }

      else
      {
        v5 = v5;
      }

      *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:@"SUFairPlayErrorDomain" code:v5 userInfo:{0, v14}];
      [*(a1 + 32) _teardownSession];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _newDataWithBytes:v18 length:v17];
      *(*(a1 + 32) + 16) = v16 == 0;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:15 userInfo:0];
  }

  return *(*(*(a1 + 48) + 8) + 40);
}

- (BOOL)isComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SUMescalSession_isComplete__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)primeForAccountCreationWithData:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__53;
  v22 = __Block_byref_object_dispose__53;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__SUMescalSession_primeForAccountCreationWithData_error___block_invoke;
  v11[3] = &unk_1E8167400;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = &v12;
  v11[7] = &v18;
  dispatch_sync(dispatchQueue, v11);
  v6 = v13[5];
  v7 = v19;
  v8 = v19[5];
  if (a4 && !v8)
  {
    *a4 = v13[5];
    v8 = v7[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

id __57__SUMescalSession_primeForAccountCreationWithData_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v19 = 0;
    v18 = 0;
    jfkdDAjba3jd(v2, 100, [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), &v19, &v18);
    if (v3)
    {
      LODWORD(v4) = v3;
      v5 = [MEMORY[0x1E69D4938] sharedConfig];
      v6 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = v6 | 2;
      }

      else
      {
        v7 = v6;
      }

      if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v8 = objc_opt_class();
        v4 = v4;
        v20 = 138412546;
        v21 = v8;
        v22 = 2048;
        v23 = v4;
        LODWORD(v17) = 22;
        v16 = &v20;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v20, v17}];
          free(v10);
          v16 = v11;
          SSFileLog();
        }
      }

      else
      {
        v4 = v4;
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SUFairPlayErrorDomain" code:v4 userInfo:{0, v16}];
      v14 = 48;
    }

    else
    {
      v12 = [*(a1 + 32) _newDataWithBytes:v19 length:v18];
      v14 = 56;
    }

    v13 = *(a1 + v14);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:15 userInfo:0];
    v13 = *(a1 + 48);
  }

  *(*(v13 + 8) + 40) = v12;
  return *(*(*(a1 + 48) + 8) + 40);
}

- (id)signData:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__53;
  v22 = __Block_byref_object_dispose__53;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__SUMescalSession_signData_error___block_invoke;
  v11[3] = &unk_1E8167400;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = &v12;
  v11[7] = &v18;
  dispatch_sync(dispatchQueue, v11);
  v6 = v13[5];
  v7 = v19;
  v8 = v19[5];
  if (a4 && !v8)
  {
    *a4 = v13[5];
    v8 = v7[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

id __34__SUMescalSession_signData_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:15 userInfo:0];
    v13 = *(a1 + 48);
LABEL_13:
    *(*(v13 + 8) + 40) = v12;
    return *(*(*(a1 + 48) + 8) + 40);
  }

  v18 = 0;
  v17 = 0;
  Fc3vhtJDvr(v2, [*(a1 + 40) bytes], objc_msgSend(*(a1 + 40), "length"), &v18, &v17);
  if (!v3)
  {
    v12 = [*(a1 + 32) _newDataWithBytes:v18 length:v17];
    v13 = *(a1 + 56);
    goto LABEL_13;
  }

  LODWORD(v4) = v3;
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v4 = v4;
    v19 = 138412546;
    v20 = v8;
    v21 = 2048;
    v22 = v4;
    LODWORD(v16) = 22;
    v15 = &v19;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v19, v16}];
      free(v10);
      v15 = v11;
      SSFileLog();
    }
  }

  else
  {
    v4 = v4;
  }

  *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:@"SUFairPlayErrorDomain" code:v4 userInfo:{0, v15}];
  [*(a1 + 32) _teardownSession];
  return *(*(*(a1 + 48) + 8) + 40);
}

- (BOOL)verifyPrimeSignature:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__53;
  v15 = __Block_byref_object_dispose__53;
  v16 = 0;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__SUMescalSession_verifyPrimeSignature_error___block_invoke;
  v10[3] = &unk_1E8167400;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = &v11;
  v10[7] = &v17;
  dispatch_sync(dispatchQueue, v10);
  v6 = v12[5];
  v7 = v18;
  v8 = *(v18 + 24);
  if (a4 && (v18[3] & 1) == 0)
  {
    *a4 = v12[5];
    v8 = *(v7 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8 & 1;
}

id __46__SUMescalSession_verifyPrimeSignature_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 48))
  {
    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    gLg1CWr7p();
    if (v2)
    {
      LODWORD(v3) = v2;
      v4 = [MEMORY[0x1E69D4938] sharedConfig];
      v5 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        v6 = v5 | 2;
      }

      else
      {
        v6 = v5;
      }

      if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v6 &= 2u;
      }

      if (v6)
      {
        v3 = v3;
        v13 = 138412546;
        v14 = objc_opt_class();
        v15 = 2048;
        v16 = v3;
        LODWORD(v12) = 22;
        v11 = &v13;
        v7 = _os_log_send_and_compose_impl();
        if (v7)
        {
          v8 = v7;
          v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v13, v12}];
          free(v8);
          v11 = v9;
          SSFileLog();
        }
      }

      else
      {
        v3 = v3;
      }

      *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:@"SUFairPlayErrorDomain" code:v3 userInfo:{0, v11}];
      [*(a1 + 32) _teardownSession];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69D4C28] code:15 userInfo:0];
  }

  return *(*(*(a1 + 48) + 8) + 40);
}

- (id)_newDataWithBytes:(char *)a3 length:(unsigned int)a4
{
  v9 = *byte_1F41ACE48;
  v6 = CFAllocatorCreate(0, &v9);
  v7 = CFDataCreateWithBytesNoCopy(0, a3, a4, v6);
  CFRelease(v6);
  return v7;
}

- (void)_teardownSession
{
  session = self->_session;
  if (session)
  {
    IPaI1oem5iL(session);
    self->_session = 0;
  }

  self->_complete = 0;
}

@end