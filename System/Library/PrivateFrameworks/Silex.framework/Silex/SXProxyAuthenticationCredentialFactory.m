@interface SXProxyAuthenticationCredentialFactory
- (SXProxyAuthenticationCredentialFactory)initWithKeyProvider:(id)a3;
- (void)createCredentialForResponse:(id)a3 date:(id)a4 completion:(id)a5;
@end

@implementation SXProxyAuthenticationCredentialFactory

- (SXProxyAuthenticationCredentialFactory)initWithKeyProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXProxyAuthenticationCredentialFactory;
  v6 = [(SXProxyAuthenticationCredentialFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyProvider, a3);
  }

  return v7;
}

- (void)createCredentialForResponse:(id)a3 date:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v9)
    {
      v11 = [(SXProxyAuthenticationCredentialFactory *)self keyProvider];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__SXProxyAuthenticationCredentialFactory_createCredentialForResponse_date_completion___block_invoke;
      v12[3] = &unk_1E8501EB0;
      v15 = v10;
      v13 = v8;
      v14 = v9;
      [v11 requestAuthenticationKeyWithCompletion:v12];
    }

    else
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

void __86__SXProxyAuthenticationCredentialFactory_createCredentialForResponse_date_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [*(a1 + 32) URL];
    v9 = [v8 absoluteString];

    v10 = [v9 length];
    if (v10 >= 0x63)
    {
      v11 = 99;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 substringToIndex:v11];

    [*(a1 + 40) timeIntervalSince1970];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:round(v13 * 1000.0)];
    v15 = [v14 stringValue];

    v27 = v12;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@;%@", v5, v15, v12];;
    v17 = [v16 dataUsingEncoding:4];
    v26 = [v17 base64EncodedStringWithOptions:0];

    v18 = [v7 dataUsingEncoding:4];
    v19 = [v12 dataUsingEncoding:4];
    v20 = [v15 dataUsingEncoding:4];
    memset(&ctx, 0, sizeof(ctx));
    CCHmacInit(&ctx, 2u, [v18 bytes], objc_msgSend(v18, "length"));
    CCHmacUpdate(&ctx, [v19 bytes], objc_msgSend(v19, "length"));
    CCHmacUpdate(&ctx, [v20 bytes], objc_msgSend(v20, "length"));
    v21 = malloc_type_malloc(0x20uLL, 0xE0D02BBBuLL);
    CCHmacFinal(&ctx, v21);
    v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v21 length:32];
    v23 = [v22 base64EncodedStringWithOptions:1];
    v24 = [MEMORY[0x1E695AC48] credentialWithUser:v26 password:v23 persistence:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v25 = SXProxyLog;
    if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_ERROR))
    {
      __86__SXProxyAuthenticationCredentialFactory_createCredentialForResponse_date_completion___block_invoke_cold_1(v25);
    }

    (*(*(a1 + 48) + 16))();
  }
}

@end