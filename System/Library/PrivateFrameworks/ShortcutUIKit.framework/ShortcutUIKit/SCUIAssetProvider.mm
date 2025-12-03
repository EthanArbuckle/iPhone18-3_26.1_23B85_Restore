@interface SCUIAssetProvider
- (SCUIAssetProvider)initWithBundleURL:(id)l;
- (id)_assetManager;
- (id)imageNamed:(id)named;
@end

@implementation SCUIAssetProvider

- (SCUIAssetProvider)initWithBundleURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [(SCUIAssetProvider *)a2 initWithBundleURL:?];
  }

  v10.receiver = self;
  v10.super_class = SCUIAssetProvider;
  v7 = [(SCUIAssetProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bundleURL, l);
  }

  return v8;
}

- (id)imageNamed:(id)named
{
  namedCopy = named;
  _assetManager = [(SCUIAssetProvider *)self _assetManager];
  v6 = [_assetManager imageNamed:namedCopy withTrait:0];
  if (!v6)
  {
    v7 = [(NSURL *)self->_bundleURL URLByAppendingPathComponent:namedCopy];
    v8 = MEMORY[0x277D755B8];
    path = [v7 path];
    v6 = [v8 imageWithContentsOfFile:path];
  }

  return v6;
}

- (id)_assetManager
{
  assetManager = self->_assetManager;
  if (!assetManager)
  {
    v4 = [(NSURL *)self->_bundleURL URLByAppendingPathComponent:@"Assets.car"];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v7 = [objc_alloc(MEMORY[0x277D75DE0]) initWithURL:v4 idiom:userInterfaceIdiom error:0];
    v8 = self->_assetManager;
    self->_assetManager = v7;

    assetManager = self->_assetManager;
  }

  return assetManager;
}

- (void)initWithBundleURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SCUIAssetProvider.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"bundleURL != nil"}];
}

@end