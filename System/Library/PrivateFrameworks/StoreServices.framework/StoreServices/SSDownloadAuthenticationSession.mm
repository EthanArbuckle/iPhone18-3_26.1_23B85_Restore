@interface SSDownloadAuthenticationSession
- (NSURLAuthenticationChallenge)authenticationChallenge;
- (void)_finishWithType:(int)a3 credential:(id)a4;
@end

@implementation SSDownloadAuthenticationSession

- (NSURLAuthenticationChallenge)authenticationChallenge
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SSDownloadAuthenticationSession_authenticationChallenge__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __58__SSDownloadAuthenticationSession_authenticationChallenge__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _copySessionPropertyWithKey:"2"];
  if (v2)
  {
    v3 = v2;
    if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E70])
    {
      v4 = SSXPCCreateCFObjectFromXPCObject(v3);
      v21 = 0;
      v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v21];
      if (v21)
      {
        v6 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v6)
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

        if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v8 &= 2u;
        }

        if (v8)
        {
          v9 = objc_opt_class();
          v22 = 138543618;
          v23 = v9;
          v24 = 2114;
          v25 = v21;
          LODWORD(v20) = 22;
          v10 = _os_log_send_and_compose_impl();
          if (v10)
          {
            v11 = v10;
            v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v20}];
            free(v11);
            SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [[SSDownloadAuthenticationChallengeSender alloc] initWithAuthenticationSession:*(a1 + 32)];
        *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AF10]) initWithProtectionSpace:objc_msgSend(v5 proposedCredential:"protectionSpace") previousFailureCount:objc_msgSend(v5 failureResponse:"proposedCredential") error:objc_msgSend(v5 sender:{"previousFailureCount"), objc_msgSend(v5, "failureResponse"), objc_msgSend(v5, "error"), v19}];
      }
    }

    xpc_release(v3);
  }
}

- (void)_finishWithType:(int)a3 credential:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, "0", 2);
  xpc_dictionary_set_int64(v7, "1", self->super._sessionID);
  xpc_dictionary_set_int64(v7, "2", a3);
  if (a4)
  {
    v23 = 0;
    SSXPCDictionarySetCFObject(v7, "3", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a4 requiringSecureCoding:1 error:&v23]);
    if (v23)
    {
      v8 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v11 = objc_opt_class();
        v24 = 138543618;
        v25 = v11;
        v26 = 2114;
        v27 = v23;
        LODWORD(v22) = 22;
        v21 = &v24;
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          v13 = v12;
          v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v24, v22}];
          free(v13);
          SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v14);
        }
      }
    }
  }

  [(SSXPCConnection *)self->super._controlConnection sendMessage:v7, v21];
  xpc_release(v7);
}

@end