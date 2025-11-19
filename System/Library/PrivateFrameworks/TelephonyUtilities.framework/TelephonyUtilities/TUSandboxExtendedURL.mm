@interface TUSandboxExtendedURL
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSandboxExtendedURL:(id)a3;
- (NSURL)URL;
- (TUSandboxExtendedURL)init;
- (TUSandboxExtendedURL)initWithCoder:(id)a3;
- (TUSandboxExtendedURL)initWithURL:(id)a3;
- (TUSandboxExtendedURL)initWithURL:(id)a3 withExtensionType:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)URL;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUSandboxExtendedURL

- (TUSandboxExtendedURL)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUSandboxExtendedURL;
  v6 = [(TUSandboxExtendedURL *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
  }

  return v7;
}

- (TUSandboxExtendedURL)initWithURL:(id)a3 withExtensionType:(int64_t)a4
{
  v5 = [(TUSandboxExtendedURL *)self initWithURL:a3];
  if (v5)
  {
    if (!a4)
    {
      v6 = MEMORY[0x1E69E9BA8];
      goto LABEL_6;
    }

    if (a4 == 1)
    {
      v6 = MEMORY[0x1E69E9BB0];
LABEL_6:
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v6];
      sandboxExtensionClass = v5->_sandboxExtensionClass;
      v5->_sandboxExtensionClass = v7;
    }
  }

  return v5;
}

- (TUSandboxExtendedURL)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUSandboxExtendedURL.m" lineNumber:52 description:{@"%s is not available. Use a designated initializer instead.", "-[TUSandboxExtendedURL init]"}];

  return 0;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "Releasing sandbox handle for URL: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  URL = self->_URL;
  v6 = [(TUSandboxExtendedURL *)self sandboxExtensionClass];
  v7 = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
  v8 = [v3 stringWithFormat:@"<%@ %p URL=%@ sandboxExtensionClass=%@ sandboxExtensionToken=%@ sandboxExtensionHandle=%lld>", v4, self, URL, v6, v7, -[TUSandboxExtendedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")];

  return v8;
}

- (NSURL)URL
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
  if (v3)
  {
    v4 = v3;
    v5 = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];

    if (!v5)
    {
      v6 = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
      [v6 UTF8String];
      [(TUSandboxExtendedURL *)self setSandboxExtensionHandle:sandbox_extension_consume()];

      v7 = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];
      v8 = TUDefaultLog();
      v9 = v8;
      if (v7 < 0)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(TUSandboxExtendedURL *)self URL];
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        URL = self->_URL;
        v14 = 138412290;
        v15 = URL;
        _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Successfully consumed sandbox extension for URL %@", &v14, 0xCu);
      }

      [(TUSandboxExtendedURL *)self setSandboxExtensionToken:0];
    }
  }

  v11 = self->_URL;
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSandboxExtendedURL *)self isEqualToSandboxExtendedURL:v4];

  return v5;
}

- (BOOL)isEqualToSandboxExtendedURL:(id)a3
{
  v4 = a3;
  v5 = [(TUSandboxExtendedURL *)self URL];
  v6 = [v4 URL];
  if (TUObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
    v8 = [v4 sandboxExtensionToken];
    if (TUStringsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];
      v10 = v9 == [v4 sandboxExtensionHandle];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(TUSandboxExtendedURL *)self URL];
  v4 = [v3 hash];
  v5 = [(TUSandboxExtendedURL *)self sandboxExtensionToken];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUSandboxExtendedURL *)self sandboxExtensionHandle];

  return v6 ^ v7;
}

- (TUSandboxExtendedURL)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector("URL");
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = [(TUSandboxExtendedURL *)self initWithURL:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sandboxExtensionToken);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    sandboxExtensionToken = v8->_sandboxExtensionToken;
    v8->_sandboxExtensionToken = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUSandboxExtendedURL *)self URL];
  v6 = NSStringFromSelector("URL");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUSandboxExtendedURL *)self sandboxExtensionClass];

  if (v7)
  {
    v8 = [(TUSandboxExtendedURL *)self pid];
    v9 = [(TUSandboxExtendedURL *)self sandboxExtensionClass];
    [v9 UTF8String];
    v10 = [(TUSandboxExtendedURL *)self URL];
    v11 = [v10 path];
    [v11 fileSystemRepresentation];
    if (v8)
    {
      [(TUSandboxExtendedURL *)self pid];
      v12 = sandbox_extension_issue_file_to_process_by_pid();
    }

    else
    {
      v12 = sandbox_extension_issue_file();
    }

    v13 = v12;

    if (v13)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
      v15 = NSStringFromSelector(sel_sandboxExtensionToken);
      [v4 encodeObject:v14 forKey:v15];

      free(v13);
    }

    else
    {
      v16 = TUDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [TUSandboxExtendedURL encodeWithCoder:?];
      }
    }
  }
}

- (void)URL
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [a1 sandboxExtensionToken];
  [a1 sandboxExtensionHandle];
  OUTLINED_FUNCTION_1_2(&dword_1956FD000, v3, v4, "Unable to consume sandbox extension with token %@, received handle %lld", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 sandboxExtensionClass];
  v10 = [a1 URL];
  OUTLINED_FUNCTION_1_2(&dword_1956FD000, v3, v4, "Unable to issue sandbox extension of class %@ for URL %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

@end