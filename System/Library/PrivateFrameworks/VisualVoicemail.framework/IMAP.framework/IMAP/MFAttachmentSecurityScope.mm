@interface MFAttachmentSecurityScope
+ (id)securityScopedURL:(id)l;
+ (id)securityScopedURL:(id)l withToken:(id)token;
- (BOOL)isBundle;
- (BOOL)isReadable;
- (MFAttachmentSecurityScope)initWithSecurityScopedURL:(id)l withToken:(id)token;
- (id)_temporaryReadURL:(id)l error:(id *)error;
- (id)data;
- (id)securityScopeToken;
- (id)startReadAccess;
- (id)startWriteAccess;
- (void)_attachSecurityScope;
- (void)_removeTemporaryReadURL;
- (void)dealloc;
- (void)startReadAccess;
- (void)startWriteAccess;
- (void)stopAccess;
@end

@implementation MFAttachmentSecurityScope

+ (id)securityScopedURL:(id)l
{
  lCopy = l;
  v4 = [[MFAttachmentSecurityScope alloc] initWithSecurityScopedURL:lCopy withToken:0];

  return v4;
}

+ (id)securityScopedURL:(id)l withToken:(id)token
{
  tokenCopy = token;
  lCopy = l;
  v7 = [[MFAttachmentSecurityScope alloc] initWithSecurityScopedURL:lCopy withToken:tokenCopy];

  return v7;
}

- (MFAttachmentSecurityScope)initWithSecurityScopedURL:(id)l withToken:(id)token
{
  lCopy = l;
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = MFAttachmentSecurityScope;
  v9 = [(MFAttachmentSecurityScope *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCA9E8]);
    fileCoordinator = v9->_fileCoordinator;
    v9->_fileCoordinator = v10;

    objc_storeStrong(&v9->_securityScopedURL, l);
    objc_storeStrong(&v9->_securityScopeToken, token);
  }

  return v9;
}

- (void)dealloc
{
  [(MFAttachmentSecurityScope *)self stopAccess];
  v3.receiver = self;
  v3.super_class = MFAttachmentSecurityScope;
  [(MFAttachmentSecurityScope *)&v3 dealloc];
}

- (id)startWriteAccess
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = vm_imap_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v3 startWriteAccess];
    }
  }

  if (!self->_secureWriteURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedWrite || (v4 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedWrite = v4, v4))
    {
      fileCoordinator = self->_fileCoordinator;
      securityScopedURL = self->_securityScopedURL;
      v24[4] = self;
      v25 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __45__MFAttachmentSecurityScope_startWriteAccess__block_invoke;
      v24[3] = &unk_279E35820;
      [(NSFileCoordinator *)fileCoordinator coordinateWritingItemAtURL:securityScopedURL options:8 error:&v25 byAccessor:v24];
      stringByDeletingLastPathComponent = v25;
      if (!self->_secureWriteURL)
      {
        v8 = vm_imap_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)stringByDeletingLastPathComponent startWriteAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      goto LABEL_19;
    }

    path = [(NSURL *)self->_securityScopedURL path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [(NSURL *)self->_securityScopedURL path];
    if ([defaultManager isWritableFileAtPath:path2])
    {
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [defaultManager2 isWritableFileAtPath:stringByDeletingLastPathComponent];

      if (!v13)
      {
        p_super = vm_imap_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startWriteAccess:v16];
        }

        goto LABEL_18;
      }
    }

    v14 = self->_securityScopedURL;
    p_super = &self->_secureWriteURL->super;
    self->_secureWriteURL = v14;
LABEL_18:

LABEL_19:
  }

  secureWriteURL = self->_secureWriteURL;

  return secureWriteURL;
}

- (id)startReadAccess
{
  v40 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = vm_imap_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(MFAttachmentSecurityScope *)v3 startWriteAccess];
    }
  }

  if (!self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _attachSecurityScope];
    if (self->_securedRead || (v4 = [(NSURL *)self->_securityScopedURL startAccessingSecurityScopedResource], self->_securedRead = v4, v4))
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__4;
      v37 = __Block_byref_object_dispose__4;
      v38 = 0;
      securityScopedURL = self->_securityScopedURL;
      obj = 0;
      v6 = [(NSURL *)securityScopedURL checkPromisedItemIsReachableAndReturnError:&obj];
      objc_storeStrong(&v38, obj);
      if (v6)
      {
        fileCoordinator = self->_fileCoordinator;
        v8 = self->_securityScopedURL;
        v10 = (v34 + 5);
        v9 = v34[5];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke;
        v30[3] = &unk_279E35848;
        v30[4] = self;
        v30[5] = &v33;
        v31 = v9;
        [(NSFileCoordinator *)fileCoordinator coordinateReadingItemAtURL:v8 options:8 error:&v31 byAccessor:v30];
        objc_storeStrong(v10, v31);
      }

      if (!self->_secureReadURL)
      {
        v11 = vm_imap_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          vf_publicDescription = [v34[5] vf_publicDescription];
          [(MFAttachmentSecurityScope *)vf_publicDescription startReadAccess];
        }

        [(MFAttachmentSecurityScope *)self stopAccess];
      }

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [(NSURL *)self->_securityScopedURL path];
      v18 = [defaultManager isReadableFileAtPath:path];

      if (v18)
      {
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__4;
        v37 = __Block_byref_object_dispose__4;
        v38 = 0;
        v19 = self->_fileCoordinator;
        v20 = self->_securityScopedURL;
        v28[5] = &v33;
        v29 = 0;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_69;
        v28[3] = &unk_279E35848;
        v28[4] = self;
        [(NSFileCoordinator *)v19 coordinateReadingItemAtURL:v20 options:8 error:&v29 byAccessor:v28];
        objc_storeStrong(&v38, v29);
        _Block_object_dispose(&v33, 8);
      }

      else
      {
        v21 = vm_imap_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachmentSecurityScope *)&self->_securityScopedURL startReadAccess:v21];
        }
      }
    }
  }

  secureReadURL = self->_secureReadURL;
  v14 = *MEMORY[0x277D85DE8];

  return secureReadURL;
}

void __44__MFAttachmentSecurityScope_startReadAccess__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 _temporaryReadURL:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

void __44__MFAttachmentSecurityScope_startReadAccess__block_invoke_69(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 _temporaryReadURL:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

- (id)_temporaryReadURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 stringByAppendingPathComponent:uUIDString];

  lastPathComponent = [lCopy lastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(uUIDString) = [defaultManager createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:error];

  if (uUIDString)
  {
    v12 = [v9 stringByAppendingPathComponent:lastPathComponent];
    v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v12 isDirectory:0];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [defaultManager2 linkItemAtURL:lCopy toURL:v13 error:error];

    if (v15)
    {
      goto LABEL_9;
    }

    v16 = vm_imap_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)v13 _temporaryReadURL:error error:v16];
    }

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtPath:v9 error:0];
  }

  else
  {
    v12 = vm_imap_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MFAttachmentSecurityScope *)v9 _temporaryReadURL:v12 error:v18, v19, v20, v21, v22, v23];
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (void)_removeTemporaryReadURL
{
  *v4 = 138412546;
  *&v4[4] = self;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_2720B1000, a2, a3, "Failed to remove temporary read directory [%@] error [%@]", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)stopAccess
{
  if (self->_securedRead)
  {
    [(NSURL *)self->_securityScopedURL stopAccessingSecurityScopedResource];
  }

  if (self->_secureReadURL)
  {
    [(MFAttachmentSecurityScope *)self _removeTemporaryReadURL];
    secureReadURL = self->_secureReadURL;
    self->_secureReadURL = 0;

    self->_securedRead = 0;
  }

  if (self->_securedWrite)
  {
    [(NSURL *)self->_securityScopedURL stopAccessingSecurityScopedResource];
  }

  secureWriteURL = self->_secureWriteURL;
  if (secureWriteURL)
  {
    self->_secureWriteURL = 0;

    self->_securedWrite = 0;
  }
}

- (id)securityScopeToken
{
  if (!self->_securityScopeToken)
  {
    v3 = *MEMORY[0x277D861C0];
    path = [(NSURL *)self->_securityScopedURL path];
    [path fileSystemRepresentation];
    v5 = *MEMORY[0x277D861E0];
    v6 = sandbox_extension_issue_file();

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v6 length:strlen(v6) + 1];
      securityScopeToken = self->_securityScopeToken;
      self->_securityScopeToken = v7;
    }
  }

  v9 = self->_securityScopeToken;

  return v9;
}

- (void)_attachSecurityScope
{
  securityScopeToken = [(MFAttachmentSecurityScope *)self securityScopeToken];

  if (securityScopeToken)
  {
    securityScopedURL = self->_securityScopedURL;
    securityScopeToken2 = [(MFAttachmentSecurityScope *)self securityScopeToken];
    MEMORY[0x2743C28B0](securityScopedURL, securityScopeToken2);
  }
}

- (id)data
{
  secureReadURL = self->_secureReadURL;
  if (!secureReadURL)
  {
    startReadAccess = [(MFAttachmentSecurityScope *)self startReadAccess];
    secureReadURL = self->_secureReadURL;
  }

  v7 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:secureReadURL options:3 error:&v7];

  return v5;
}

- (BOOL)isReadable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_securityScopedURL path];
  v5 = [defaultManager isReadableFileAtPath:path];

  if (v5)
  {
    return 1;
  }

  securityScopedURL = self->_securityScopedURL;
  v9 = 0;
  v6 = [(NSURL *)securityScopedURL checkPromisedItemIsReachableAndReturnError:&v9];

  return v6;
}

- (BOOL)isBundle
{
  v8 = 0;
  isReadable = [(MFAttachmentSecurityScope *)self isReadable];
  v4 = 0;
  if (isReadable)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)self->_secureReadURL path];
    [defaultManager fileExistsAtPath:path isDirectory:&v8];

    v4 = v8;
  }

  return v4 & 1;
}

- (void)startWriteAccess
{
  v7 = *MEMORY[0x277D85DE8];
  vf_publicDescription = [self vf_publicDescription];
  v5 = 138543362;
  v6 = vf_publicDescription;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#Attachments Error accessing secure write URL [%{public}@]", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)startReadAccess
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#Attachments Error accessing secure read URL [%{public}@]", buf, 0xCu);
}

- (void)_temporaryReadURL:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5(&dword_2720B1000, a2, a3, "#Attachments Failed to create temporary read directory [%@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_temporaryReadURL:(os_log_t)log error:.cold.2(uint64_t a1, id *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = [*a2 vf_publicDescription];
  }

  else
  {
    v6 = @"unknown";
  }

  v8 = 138412546;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_2720B1000, log, OS_LOG_TYPE_ERROR, "#Attachments Failed to create temporary read URL [%@] error [%{public}@]", &v8, 0x16u);
  if (a2)
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end