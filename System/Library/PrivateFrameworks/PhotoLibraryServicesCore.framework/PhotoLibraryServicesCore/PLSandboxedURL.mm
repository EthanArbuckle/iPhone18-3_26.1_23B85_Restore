@interface PLSandboxedURL
- (PLSandboxedURL)initWithCoder:(id)a3;
- (PLSandboxedURL)initWithURL:(id)a3 sandboxExtensionToken:(id)a4 consume:(BOOL)a5;
- (id)initFileURLWithPath:(id)a3 sandboxExtensionToken:(id)a4 consume:(BOOL)a5;
- (void)_commonPLSandboxedURLInitialize;
- (void)_initSandboxExtensionToken:(id)a3 consume:(BOOL)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSandboxedURL

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLSandboxedURL;
  v4 = a3;
  [(PLSandboxedURL *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sandboxExtensionToken forKey:{@"sandboxExtensionToken", v5.receiver, v5.super_class}];
}

- (PLSandboxedURL)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
  [(PLSandboxedURL *)self _initSandboxExtensionToken:v5 consume:1];

  v8.receiver = self;
  v8.super_class = PLSandboxedURL;
  v6 = [(PLSandboxedURL *)&v8 initWithCoder:v4];

  return v6;
}

- (void)dealloc
{
  if ((self->_sandboxExtensionHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = PLSandboxedURL;
  [(PLSandboxedURL *)&v3 dealloc];
}

- (void)_commonPLSandboxedURLInitialize
{
  if ([(NSString *)self->_sandboxExtensionToken length])
  {
    [(NSString *)self->_sandboxExtensionToken UTF8String];
    self->_sandboxExtensionHandle = sandbox_extension_consume();
  }
}

- (id)initFileURLWithPath:(id)a3 sandboxExtensionToken:(id)a4 consume:(BOOL)a5
{
  if (a3)
  {
    v6 = a5;
    v8 = a3;
    [(PLSandboxedURL *)self _initSandboxExtensionToken:a4 consume:v6];
    v12.receiver = self;
    v12.super_class = PLSandboxedURL;
    v9 = [(PLSandboxedURL *)&v12 initFileURLWithPath:v8];

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PLSandboxedURL)initWithURL:(id)a3 sandboxExtensionToken:(id)a4 consume:(BOOL)a5
{
  if (a3)
  {
    v6 = a5;
    v8 = a3;
    [(PLSandboxedURL *)self _initSandboxExtensionToken:a4 consume:v6];
    v9 = [v8 absoluteString];

    v13.receiver = self;
    v13.super_class = PLSandboxedURL;
    v10 = [(PLSandboxedURL *)&v13 initWithString:v9];

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_initSandboxExtensionToken:(id)a3 consume:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copy];
  sandboxExtensionToken = self->_sandboxExtensionToken;
  self->_sandboxExtensionToken = v6;

  if (v4)
  {

    [(PLSandboxedURL *)self _commonPLSandboxedURLInitialize];
  }
}

@end