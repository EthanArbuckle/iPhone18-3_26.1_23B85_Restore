@interface TSUNormalizedSandboxedURL
- (BOOL)hasSandboxAccess;
- (TSUNormalizedSandboxedURL)initWithURL:(id)l originalSandboxedURL:(id)rL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)originalSandboxedURLForNormalizing;
@end

@implementation TSUNormalizedSandboxedURL

- (TSUNormalizedSandboxedURL)initWithURL:(id)l originalSandboxedURL:(id)rL
{
  rLCopy = rL;
  v11.receiver = self;
  v11.super_class = TSUNormalizedSandboxedURL;
  v8 = [(TSUSandboxedURL *)&v11 initWithURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_originalSandboxedURL, rL);
  }

  return v9;
}

- (BOOL)hasSandboxAccess
{
  v4.receiver = self;
  v4.super_class = TSUNormalizedSandboxedURL;
  return [(TSUSandboxedURL *)&v4 hasSandboxAccess]|| [(TSUSandboxedURL *)self->_originalSandboxedURL hasSandboxAccess];
}

- (id)originalSandboxedURLForNormalizing
{
  v5.receiver = self;
  v5.super_class = TSUNormalizedSandboxedURL;
  if ([(TSUSandboxedURL *)&v5 hasSandboxAccess])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(TSUSandboxedURL *)self->_originalSandboxedURL originalSandboxedURLForNormalizing];
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(TSUSandboxedURL *)self->_originalSandboxedURL copyWithZone:?];
  v6 = [TSUNormalizedSandboxedURL allocWithZone:zone];
  v7 = [(TSUSandboxedURL *)self URL];
  v8 = [(TSUNormalizedSandboxedURL *)v6 initWithURL:v7 originalSandboxedURL:v5];

  if (!v8)
  {
    sub_277112C64(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  hasSandboxAccess = [(TSUNormalizedSandboxedURL *)v8 hasSandboxAccess];
  if (hasSandboxAccess != [(TSUNormalizedSandboxedURL *)self hasSandboxAccess])
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNormalizedSandboxedURL copyWithZone:]"];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
    [TSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:216 isFatal:0 description:"Sanboxing access didn't transfer as expected to sandboxed URL copy."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TSUSandboxedURL *)self URL];
  v11.receiver = self;
  v11.super_class = TSUNormalizedSandboxedURL;
  hasSandboxAccess = [(TSUSandboxedURL *)&v11 hasSandboxAccess];
  v8 = @"NO";
  if (hasSandboxAccess)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p URL=%@, hasSandboxAccess=%@, originalSandboxedURL=%@>", v5, self, v6, v8, self->_originalSandboxedURL];

  return v9;
}

@end