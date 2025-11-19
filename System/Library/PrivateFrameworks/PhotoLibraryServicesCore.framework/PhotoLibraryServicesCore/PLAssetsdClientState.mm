@interface PLAssetsdClientState
- (BOOL)consumeSandboxExtensions:(id)a3;
- (PLAssetsdClientState)init;
@end

@implementation PLAssetsdClientState

- (PLAssetsdClientState)init
{
  v7.receiver = self;
  v7.super_class = PLAssetsdClientState;
  v2 = [(PLAssetsdClientState *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(PLAssetsdClientSandboxExtensions);
    sandboxExtensions = v2->_sandboxExtensions;
    v2->_sandboxExtensions = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)consumeSandboxExtensions:(id)a3
{
  atomic_store([(PLAssetsdClientSandboxExtensions *)self->_sandboxExtensions consumeSandboxExtensions:a3], &self->_isOpen);
  v4 = atomic_load(&self->_isOpen);
  return v4 & 1;
}

@end