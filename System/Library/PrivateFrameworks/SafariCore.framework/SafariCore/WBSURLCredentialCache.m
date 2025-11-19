@interface WBSURLCredentialCache
- (WBSURLCredentialCache)initWithCachingMode:(int64_t)a3 credentialFetchBlock:(id)a4;
- (WBSURLCredentialCache)initWithCredentialFetchBlock:(id)a3;
@end

@implementation WBSURLCredentialCache

- (WBSURLCredentialCache)initWithCredentialFetchBlock:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSURLCredentialCache;
  v5 = [(WBSURLCredentialCache *)&v12 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    credentialFetchBlock = v5->_credentialFetchBlock;
    v5->_credentialFetchBlock = v6;

    v8 = dispatch_queue_create("com.apple.SafariShared.WBSURLCredentialCache", 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v8;

    v10 = v5;
  }

  return v5;
}

- (WBSURLCredentialCache)initWithCachingMode:(int64_t)a3 credentialFetchBlock:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    v7 = off_1E7CEF8E8;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v7 = off_1E7CEF7C8;
LABEL_5:
    v8 = objc_alloc(*v7);

    self = v8;
  }

  v9 = [(WBSURLCredentialCache *)self initWithCredentialFetchBlock:v6];

  return v9;
}

@end