@interface PLXPCLibraryToken
+ (id)clientToServiceSandboxExtensionForURL:(id)l;
- (PLXPCLibraryToken)initWithCoder:(id)coder;
- (PLXPCLibraryToken)initWithURL:(id)l;
- (PLXPCLibraryToken)initWithURL:(id)l sandboxExtension:(id)extension clientOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLXPCLibraryToken

- (PLXPCLibraryToken)initWithCoder:(id)coder
{
  v20[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PLXPCLibraryToken;
  v6 = [(PLXPCLibraryToken *)&v19 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v6->_url;
    v6->_url = v7;

    if (!v6->_url)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PLXPCLibraryToken.m" lineNumber:105 description:@"PLXPCLibraryToken.url cannot be nil"];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    sandboxExtension = v6->_sandboxExtension;
    v6->_sandboxExtension = v9;

    v11 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"clientOptions"];
    clientOptions = v6->_clientOptions;
    v6->_clientOptions = v14;

    v16 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_sandboxExtension forKey:@"sandboxExtension"];
  [coderCopy encodeObject:self->_clientOptions forKey:@"clientOptions"];
}

- (PLXPCLibraryToken)initWithURL:(id)l sandboxExtension:(id)extension clientOptions:(id)options
{
  lCopy = l;
  extensionCopy = extension;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = PLXPCLibraryToken;
  v11 = [(PLXPCLibraryToken *)&v20 init];
  if (v11)
  {
    v12 = [lCopy copy];
    url = v11->_url;
    v11->_url = v12;

    v14 = [extensionCopy copy];
    sandboxExtension = v11->_sandboxExtension;
    v11->_sandboxExtension = v14;

    v16 = [optionsCopy copy];
    clientOptions = v11->_clientOptions;
    v11->_clientOptions = v16;

    v18 = v11;
  }

  return v11;
}

- (PLXPCLibraryToken)initWithURL:(id)l
{
  lCopy = l;
  v5 = [objc_opt_class() clientToServiceSandboxExtensionForURL:lCopy];
  clientOptions = [objc_opt_class() clientOptions];
  v7 = [(PLXPCLibraryToken *)self initWithURL:lCopy sandboxExtension:v5 clientOptions:clientOptions];

  return v7;
}

+ (id)clientToServiceSandboxExtensionForURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  if ([PLFileUtilities isVarMobileMediaPath:path])
  {
    v6 = 0;
  }

  else
  {
    v7 = PLGetSandboxExtensionTokenWithFlags(path, *MEMORY[0x1E69E9BB0], *MEMORY[0x1E69E9BF0], 0);
    v6 = PLSandboxExtensionTokenAsData(v7);

    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [PLFilePathDescription descriptionWithFileURL:lCopy];
      v11 = v10;
      v12 = @"YES";
      v14 = 138543874;
      v15 = v9;
      if (!v6)
      {
        v12 = @"NO";
      }

      v16 = 2112;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ hasExtension:%{public}@", &v14, 0x20u);
    }
  }

  return v6;
}

@end