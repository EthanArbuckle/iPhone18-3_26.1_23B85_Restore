@interface UAPasteboardFileItemProvider
+ (BOOL)conformsToProtocol:(id)protocol;
- (UAPasteboardFileItemProvider)initWithURL:(id)l sandboxExtension:(id)extension;
- (id)getFileName;
- (void)accessFileAtURLWithCompletion:(id)completion;
- (void)getDataWithCompletionBlock:(id)block;
@end

@implementation UAPasteboardFileItemProvider

- (UAPasteboardFileItemProvider)initWithURL:(id)l sandboxExtension:(id)extension
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  extensionCopy = extension;
  v38.receiver = self;
  v38.super_class = UAPasteboardFileItemProvider;
  v8 = [(UAPasteboardFileItemProvider *)&v38 init];
  v9 = v8;
  if (v8)
  {
    [(UAPasteboardFileItemProvider *)v8 setFileURL:lCopy];
    [(UAPasteboardFileItemProvider *)v9 setPreferFileRep:1];
    [(UAPasteboardFileItemProvider *)v9 setSandboxExtension:extensionCopy];
    fileURL = [(UAPasteboardFileItemProvider *)v9 fileURL];
    if (fileURL)
    {
      v11 = fileURL;
      fileURL2 = [(UAPasteboardFileItemProvider *)v9 fileURL];
      pathExtension = [fileURL2 pathExtension];

      if (pathExtension)
      {
        v14 = [MEMORY[0x277CE1CB8] typeWithTag:pathExtension tagClass:*MEMORY[0x277CE1CC0] conformingToType:*MEMORY[0x277CE1D40]];
        identifier = [v14 identifier];
        [(UAPasteboardFileItemProvider *)v9 setType:identifier];
      }
    }

    type = [(UAPasteboardFileItemProvider *)v9 type];

    if (!type)
    {
      [(UAPasteboardFileItemProvider *)v9 setType:@"public.item"];
      v37 = 0;
      v17 = *MEMORY[0x277CBE868];
      v36 = 0;
      v18 = [lCopy getResourceValue:&v37 forKey:v17 error:&v36];
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
          domain = [v20 domain];
          v24 = domain;
          if (domain == *MEMORY[0x277CCA050])
          {
            code = [v21 code];

            if (code == 260)
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
          v40 = lCopy;
          v41 = 2112;
          v42 = v21;
          _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_ERROR, "Error checking if url %{private}@ is directory: %@", buf, 0x16u);
        }
      }

LABEL_18:
      v35 = 0;
      v27 = *MEMORY[0x277CBE7B8];
      v34 = 0;
      v28 = [lCopy getResourceValue:&v35 forKey:v27 error:&v34];
      v29 = v35;
      v30 = v34;

      if (v28)
      {
        identifier2 = [v29 identifier];
        [(UAPasteboardFileItemProvider *)v9 setType:identifier2];
      }

      else
      {
        if (!v30)
        {
LABEL_24:

          goto LABEL_25;
        }

        identifier2 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(identifier2, OS_LOG_TYPE_INFO))
        {
          *buf = 138543619;
          v40 = v30;
          v41 = 2113;
          v42 = lCopy;
          _os_log_impl(&dword_226A4E000, identifier2, OS_LOG_TYPE_INFO, "Error %{public}@ getting content type for file item provider url=%{private}@", buf, 0x16u);
        }
      }

      goto LABEL_24;
    }
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)conformsToProtocol:(id)protocol
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___UAPasteboardFileItemProvider;
  protocolCopy = protocol;
  v4 = objc_msgSendSuper2(&v6, sel_conformsToProtocol_, protocolCopy);

  return (&unk_283A69178 != protocolCopy) & v4;
}

- (id)getFileName
{
  fileURL = [(UAPasteboardFileItemProvider *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  return lastPathComponent;
}

- (void)getDataWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__UAPasteboardFileItemProvider_getDataWithCompletionBlock___block_invoke;
  v6[3] = &unk_2785C45B0;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
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

- (void)accessFileAtURLWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _uaGetLogForCategory(@"pasteboard-client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    fileURL = [(UAPasteboardFileItemProvider *)self fileURL];
    *buf = 138412290;
    v25 = fileURL;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "Accessing file at URL: %@", buf, 0xCu);
  }

  sandboxExtension = [(UAPasteboardFileItemProvider *)self sandboxExtension];

  if (sandboxExtension)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    sandboxExtension2 = [(UAPasteboardFileItemProvider *)self sandboxExtension];
    bytes = [sandboxExtension2 bytes];
    sandboxExtension3 = [(UAPasteboardFileItemProvider *)self sandboxExtension];
    v12 = [v8 initWithBytes:bytes length:objc_msgSend(sandboxExtension3 encoding:{"length"), 4}];

    [v12 cStringUsingEncoding:4];
    sandbox_extension_consume();
  }

  v13 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  fileURL2 = [(UAPasteboardFileItemProvider *)self fileURL];
  v23 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__UAPasteboardFileItemProvider_accessFileAtURLWithCompletion___block_invoke;
  v21[3] = &unk_2785C45D8;
  v21[4] = self;
  v15 = completionCopy;
  v22 = v15;
  [v13 coordinateReadingItemAtURL:fileURL2 options:0 error:&v23 byAccessor:v21];
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

  sandboxExtension4 = [(UAPasteboardFileItemProvider *)self sandboxExtension];

  if (sandboxExtension4)
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