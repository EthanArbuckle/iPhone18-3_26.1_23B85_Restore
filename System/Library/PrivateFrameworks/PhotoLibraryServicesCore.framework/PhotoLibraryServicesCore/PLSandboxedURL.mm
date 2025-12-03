@interface PLSandboxedURL
- (PLSandboxedURL)initWithCoder:(id)coder;
- (PLSandboxedURL)initWithURL:(id)l sandboxExtensionToken:(id)token consume:(BOOL)consume;
- (id)initFileURLWithPath:(id)path sandboxExtensionToken:(id)token consume:(BOOL)consume;
- (void)_commonPLSandboxedURLInitialize;
- (void)_initSandboxExtensionToken:(id)token consume:(BOOL)consume;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSandboxedURL

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PLSandboxedURL;
  coderCopy = coder;
  [(PLSandboxedURL *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sandboxExtensionToken forKey:{@"sandboxExtensionToken", v5.receiver, v5.super_class}];
}

- (PLSandboxedURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
  [(PLSandboxedURL *)self _initSandboxExtensionToken:v5 consume:1];

  v8.receiver = self;
  v8.super_class = PLSandboxedURL;
  v6 = [(PLSandboxedURL *)&v8 initWithCoder:coderCopy];

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

- (id)initFileURLWithPath:(id)path sandboxExtensionToken:(id)token consume:(BOOL)consume
{
  if (path)
  {
    consumeCopy = consume;
    pathCopy = path;
    [(PLSandboxedURL *)self _initSandboxExtensionToken:token consume:consumeCopy];
    v12.receiver = self;
    v12.super_class = PLSandboxedURL;
    v9 = [(PLSandboxedURL *)&v12 initFileURLWithPath:pathCopy];

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PLSandboxedURL)initWithURL:(id)l sandboxExtensionToken:(id)token consume:(BOOL)consume
{
  if (l)
  {
    consumeCopy = consume;
    lCopy = l;
    [(PLSandboxedURL *)self _initSandboxExtensionToken:token consume:consumeCopy];
    absoluteString = [lCopy absoluteString];

    v13.receiver = self;
    v13.super_class = PLSandboxedURL;
    v10 = [(PLSandboxedURL *)&v13 initWithString:absoluteString];

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initSandboxExtensionToken:(id)token consume:(BOOL)consume
{
  consumeCopy = consume;
  v6 = [token copy];
  sandboxExtensionToken = self->_sandboxExtensionToken;
  self->_sandboxExtensionToken = v6;

  if (consumeCopy)
  {

    [(PLSandboxedURL *)self _commonPLSandboxedURLInitialize];
  }
}

@end