@interface SLSecurityScopedURL
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSandboxExtendedURL:(id)a3;
- (NSString)debugDescription;
- (NSURL)URL;
- (SLSecurityScopedURL)initWithBSXPCCoder:(id)a3;
- (SLSecurityScopedURL)initWithCoder:(id)a3;
- (SLSecurityScopedURL)initWithURL:(id)a3;
- (SLSecurityScopedURL)initWithURL:(id)a3 extensionType:(int64_t)a4;
- (id)_issueSandboxExtension;
- (unint64_t)hash;
- (void)URL;
- (void)_issueSandboxExtension;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLSecurityScopedURL

- (SLSecurityScopedURL)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SLSecurityScopedURL;
  v6 = [(SLSecurityScopedURL *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
  }

  return v7;
}

- (SLSecurityScopedURL)initWithURL:(id)a3 extensionType:(int64_t)a4
{
  v5 = [(SLSecurityScopedURL *)self initWithURL:a3];
  v6 = v5;
  if (v5)
  {
    if (!a4)
    {
      v8 = MEMORY[0x277D861B8];
      v7 = 1;
      goto LABEL_6;
    }

    if (a4 == 1)
    {
      v7 = 0;
      v8 = MEMORY[0x277D861C0];
LABEL_6:
      v5->_readonly = v7;
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v8];
      sandboxExtensionClass = v6->_sandboxExtensionClass;
      v6->_sandboxExtensionClass = v9;
    }
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  URL = self->_URL;
  v6 = [(SLSecurityScopedURL *)self sandboxExtensionClass];
  v7 = [(SLSecurityScopedURL *)self sandboxExtensionToken];
  v8 = [v3 stringWithFormat:@"<%@ %p URL=%@ sandboxExtensionClass=%@ sandboxExtensionToken=%@ sandboxExtensionHandle=%lld>", v4, self, URL, v6, v7, -[SLSecurityScopedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")];

  return v8;
}

- (NSURL)URL
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SLSecurityScopedURL *)self sandboxExtensionToken];
  if (v3)
  {
    v4 = v3;
    v5 = [(SLSecurityScopedURL *)self sandboxExtensionHandle];

    if (!v5)
    {
      v6 = [(SLSecurityScopedURL *)self sandboxExtensionToken];
      [v6 UTF8String];
      [(SLSecurityScopedURL *)self setSandboxExtensionHandle:sandbox_extension_consume()];

      v7 = [(SLSecurityScopedURL *)self sandboxExtensionHandle];
      v8 = SLFrameworkLogHandle();
      v9 = v8;
      if (v7 < 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(SLSecurityScopedURL *)self URL];
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        URL = self->_URL;
        v14 = 138412290;
        v15 = URL;
        _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_INFO, "Successfully consumed sandbox extension for URL: %@", &v14, 0xCu);
      }

      [(SLSecurityScopedURL *)self setSandboxExtensionToken:0];
    }
  }

  v11 = self->_URL;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SLSecurityScopedURL *)self isEqualToSandboxExtendedURL:v4];

  return v5;
}

- (BOOL)isEqualToSandboxExtendedURL:(id)a3
{
  v9 = a3;
  v10 = [(SLSecurityScopedURL *)self URL];
  if (v10 || ([v9 URL], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(SLSecurityScopedURL *)self URL];
    v4 = [v9 URL];
    if (![v3 isEqual:v4])
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = [(SLSecurityScopedURL *)self sandboxExtensionToken];
  if (v13 || ([v9 sandboxExtensionToken], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(SLSecurityScopedURL *)self sandboxExtensionToken];
    v7 = [v9 sandboxExtensionToken];
    if (![v6 isEqual:v7])
    {
      v12 = 0;
      goto LABEL_15;
    }

    v20 = v11;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v20 = v11;
    v14 = v5;
    v19 = 0;
    v15 = 0;
  }

  v16 = [(SLSecurityScopedURL *)self sandboxExtensionHandle];
  v12 = v16 == [v9 sandboxExtensionHandle];
  if (v15)
  {
    v5 = v14;
    v11 = v20;
LABEL_15:

    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = v14;
  v11 = v20;
  if (v13)
  {
LABEL_16:

    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_22:

  if (v11)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!v10)
  {
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(SLSecurityScopedURL *)self URL];
  v4 = [v3 hash];
  v5 = [(SLSecurityScopedURL *)self sandboxExtensionToken];
  v6 = [v5 hash] ^ v4;
  v7 = [(SLSecurityScopedURL *)self sandboxExtensionHandle];

  return v6 ^ v7;
}

- (id)_issueSandboxExtension
{
  v3 = [(SLSecurityScopedURL *)self sandboxExtensionClass];

  if (v3)
  {
    v4 = [(SLSecurityScopedURL *)self sandboxExtensionClass];
    [v4 UTF8String];
    v5 = [(NSURL *)self->_URL path];
    [v5 fileSystemRepresentation];
    v6 = sandbox_extension_issue_file();

    if (v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      free(v6);
      goto LABEL_8;
    }

    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SLSecurityScopedURL *)self _issueSandboxExtension];
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (SLSecurityScopedURL)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector("URL");
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_isReadonly);
  v9 = [v4 decodeBoolForKey:v8];

  v10 = [(SLSecurityScopedURL *)self initWithURL:v7 readonly:v9];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_sandboxExtensionToken);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    sandboxExtensionToken = v10->_sandboxExtensionToken;
    v10->_sandboxExtensionToken = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLSecurityScopedURL *)self URL];
  v6 = NSStringFromSelector("URL");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLSecurityScopedURL *)self _issueSandboxExtension];
  v8 = NSStringFromSelector(sel_sandboxExtensionToken);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLSecurityScopedURL *)self isReadonly];
  v10 = NSStringFromSelector(sel_isReadonly);
  [v4 encodeBool:v9 forKey:v10];
}

- (SLSecurityScopedURL)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector("URL");
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_isReadonly);
  v9 = [v4 decodeBoolForKey:v8];

  v10 = [(SLSecurityScopedURL *)self initWithURL:v7 readonly:v9];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_sandboxExtensionToken);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    sandboxExtensionToken = v10->_sandboxExtensionToken;
    v10->_sandboxExtensionToken = v13;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLSecurityScopedURL *)self URL];
  v6 = NSStringFromSelector("URL");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLSecurityScopedURL *)self _issueSandboxExtension];
  v8 = NSStringFromSelector(sel_sandboxExtensionToken);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLSecurityScopedURL *)self isReadonly];
  v10 = NSStringFromSelector(sel_isReadonly);
  [v4 encodeBool:v9 forKey:v10];
}

- (void)URL
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 sandboxExtensionToken];
  [a1 sandboxExtensionHandle];
  OUTLINED_FUNCTION_0_1(&dword_231772000, v3, v4, "Unable to consume sandbox extension with token %@, received handle %lld", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_issueSandboxExtension
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 sandboxExtensionClass];
  v10 = [a1 URL];
  OUTLINED_FUNCTION_0_1(&dword_231772000, v3, v4, "Unable to issue sandbox extension of class %@ for URL %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end