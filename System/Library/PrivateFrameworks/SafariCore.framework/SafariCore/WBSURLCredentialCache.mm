@interface WBSURLCredentialCache
- (WBSURLCredentialCache)initWithCachingMode:(int64_t)mode credentialFetchBlock:(id)block;
- (WBSURLCredentialCache)initWithCredentialFetchBlock:(id)block;
@end

@implementation WBSURLCredentialCache

- (WBSURLCredentialCache)initWithCredentialFetchBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = WBSURLCredentialCache;
  v5 = [(WBSURLCredentialCache *)&v12 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    credentialFetchBlock = v5->_credentialFetchBlock;
    v5->_credentialFetchBlock = v6;

    v8 = dispatch_queue_create("com.apple.SafariShared.WBSURLCredentialCache", 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v8;

    v10 = v5;
  }

  return v5;
}

- (WBSURLCredentialCache)initWithCachingMode:(int64_t)mode credentialFetchBlock:(id)block
{
  blockCopy = block;
  if (!mode)
  {
    v7 = off_1E7CEF8E8;
    goto LABEL_5;
  }

  if (mode == 1)
  {
    v7 = off_1E7CEF7C8;
LABEL_5:
    v8 = objc_alloc(*v7);

    self = v8;
  }

  v9 = [(WBSURLCredentialCache *)self initWithCredentialFetchBlock:blockCopy];

  return v9;
}

@end