@interface SCUIAssetProvider
- (SCUIAssetProvider)initWithBundleURL:(id)a3;
- (id)_assetManager;
- (id)imageNamed:(id)a3;
@end

@implementation SCUIAssetProvider

- (SCUIAssetProvider)initWithBundleURL:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SCUIAssetProvider *)a2 initWithBundleURL:?];
  }

  v10.receiver = self;
  v10.super_class = SCUIAssetProvider;
  v7 = [(SCUIAssetProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_bundleURL, a3);
  }

  return v8;
}

- (id)imageNamed:(id)a3
{
  v4 = a3;
  v5 = [(SCUIAssetProvider *)self _assetManager];
  v6 = [v5 imageNamed:v4 withTrait:0];
  if (!v6)
  {
    v7 = [(NSURL *)self->_bundleURL URLByAppendingPathComponent:v4];
    v8 = MEMORY[0x277D755B8];
    v9 = [v7 path];
    v6 = [v8 imageWithContentsOfFile:v9];
  }

  return v6;
}

- (id)_assetManager
{
  assetManager = self->_assetManager;
  if (!assetManager)
  {
    v4 = [(NSURL *)self->_bundleURL URLByAppendingPathComponent:@"Assets.car"];
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = [objc_alloc(MEMORY[0x277D75DE0]) initWithURL:v4 idiom:v6 error:0];
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