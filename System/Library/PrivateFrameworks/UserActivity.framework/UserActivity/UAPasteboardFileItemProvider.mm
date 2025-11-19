@interface UAPasteboardFileItemProvider
+ (BOOL)conformsToProtocol:(id)a3;
- (UAPasteboardFileItemProvider)initWithURL:(id)a3 sandboxExtension:(id)a4;
- (id)getFileName;
- (void)accessFileAtURLWithCompletion:(id)a3;
- (void)getDataWithCompletionBlock:(id)a3;
@end

@implementation UAPasteboardFileItemProvider

- (UAPasteboardFileItemProvider)initWithURL:(id)a3 sandboxExtension:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = UAPasteboardFileItemProvider;
  v8 = [(UAPasteboardFileItemProvider *)&v38 init];
  v9 = v8;
  if (v8)
  {
    [(UAPasteboardFileItemProvider *)v8 setFileURL:v6];
    [(UAPasteboardFileItemProvider *)v9 setPreferFileRep:1];
    [(UAPasteboardFileItemProvider *)v9 setSandboxExtension:v7];
    v10 = [(UAPasteboardFileItemProvider *)v9 fileURL];
    if (v10)
    {
      v11 = v10;
      v12 = [(UAPasteboardFileItemProvider *)v9 fileURL];
      v13 = [v12 pathExtension];

      if (v13)
      {
        v14 = [MEMORY[0x277CE1CB8] typeWithTag:v13 tagClass:*MEMORY[0x277CE1CC0] conformingToType:*MEMORY[0x277CE1D40]];
        v15 = [v14 identifier];
        [(UAPasteboardFileItemProvider *)v9 setType:v15];
      }
    }

    v16 = [(UAPasteboardFileItemProvider *)v9 type];

    if (!v16)
    {
      [(UAPasteboardFileItemProvider *)v9 setType:@"public.item"];
      v37 = 0;
      v17 = *MEMORY[0x277CBE868];
      v36 = 0;
      v18 = [v6 getResourceValue:&v37 forKey:v17 error:&v36];
      v19 = v37;
      v20 = v36;
      v21 = v20;
      if (v18)
      {
        -[UAPasteboardFileItemProvider setIsDir:](v9, "setIsDir:", [v19 BOOLValue]);
        if ([(UAPasteboardFileItemProvider *)v9 isDir])
        {
          v22 = @"public.directory";
        }

        else
        {
          v22 = @"public.data";
        }

        [(UAPasteboardFileItemProvider *)v9 setType:v22];
      }

      else
      {
        if (v20)
        {
          v23 = [v20 domain];
          v24 = v23;
          if (v23 == *MEMORY[0x277CCA050])
          {
            v25 = [v21 code];

            if (v25 == 260)
            {
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v26 = _uaGetLogForCategory(@"pasteboard-client");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138478083;
          v40 = v6;
          v41 = 2112;
          v42 = v21;
          _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_ERROR, "Error checking if url %{private}@ is directory: %@", buf, 0x16u);
        }
      }

LABEL_18:
      v35 = 0;
      v27 = *MEMORY[0x277CBE7B8];
      v34 = 0;
      v28 = [v6 getResourceValue:&v35 forKey:v27 error:&v34];
      v29 = v35;
      v30 = v34;

      if (v28)
      {
        v31 = [v29 identifier];
        [(UAPasteboardFileItemProvider *)v9 setType:v31];
      }

      else
      {
        if (!v30)
        {
LABEL_24:

          goto LABEL_25;
        }

        v31 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138543619;
          v40 = v30;
          v41 = 2113;
          v42 = v6;
          _os_log_impl(&dword_226A4E000, v31, OS_LOG_TYPE_INFO, "Error %{public}@ getting content type for file item provider url=%{private}@", buf, 0x16u);
        }
      }

      goto LABEL_24;
    }
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)conformsToProtocol:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___UAPasteboardFileItemProvider;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v6, sel_conformsToProtocol_, v3);

  return (&unk_283A69178 != v3) & v4;
}

- (id)getFileName
{
  v2 = [(UAPasteboardFileItemProvider *)self fileURL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (void)getDataWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__UAPasteboardFileItemProvider_getDataWithCompletionBlock___block_invoke;
  v6[3] = &unk_2785C45B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UAPasteboardFileItemProvider *)self accessFileAtURLWithCompletion:v6];
}

void __59__UAPasteboardFileItemProvider_getDataWithCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if ([*(a1 + 32) isDir])
    {
      v5 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:v8 options:1 error:0];
      v6 = [v5 serializedRepresentation];
      v7 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithData:v6];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:v8];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)accessFileAtURLWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UAPasteboardFileItemProvider *)self fileURL];
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "Accessing file at URL: %@", buf, 0xCu);
  }

  v7 = [(UAPasteboardFileItemProvider *)self sandboxExtension];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [(UAPasteboardFileItemProvider *)self sandboxExtension];
    v10 = [v9 bytes];
    v11 = [(UAPasteboardFileItemProvider *)self sandboxExtension];
    v12 = [v8 initWithBytes:v10 length:objc_msgSend(v11 encoding:{"length"), 4}];

    [v12 cStringUsingEncoding:4];
    sandbox_extension_consume();
  }

  v13 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v14 = [(UAPasteboardFileItemProvider *)self fileURL];
  v23 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__UAPasteboardFileItemProvider_accessFileAtURLWithCompletion___block_invoke;
  v21[3] = &unk_2785C45D8;
  v21[4] = self;
  v15 = v4;
  v22 = v15;
  [v13 coordinateReadingItemAtURL:v14 options:0 error:&v23 byAccessor:v21];
  v16 = v23;

  if (v16)
  {
    v17 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_ERROR, "Error coordinating file: %@", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:0];
    (*(v15 + 2))(v15, 0, v18);
  }

  v19 = [(UAPasteboardFileItemProvider *)self sandboxExtension];

  if (v19)
  {
    sandbox_extension_release();
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __62__UAPasteboardFileItemProvider_accessFileAtURLWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) fileURL];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "Providing URL: %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

@end