@interface VUIAppIconImageLoader
+ (id)sharedInstance;
- (VUIAppIconImageLoader)init;
- (id)URLForObject:(id)object;
- (id)_createApplicationIconForIdentifier:(id)identifier;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation VUIAppIconImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[VUIAppIconImageLoader sharedInstance];
  }

  v3 = sharedInstance_loader;

  return v3;
}

uint64_t __39__VUIAppIconImageLoader_sharedInstance__block_invoke()
{
  sharedInstance_loader = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (VUIAppIconImageLoader)init
{
  v6.receiver = self;
  v6.super_class = VUIAppIconImageLoader;
  v2 = [(VUIAppIconImageLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageLoaderQueue = v2->_imageLoaderQueue;
    v2->_imageLoaderQueue = v3;
  }

  return v2;
}

- (id)URLForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (objectCopy && (isKindOfClass & 1) != 0)
  {
    v6 = MEMORY[0x277CBEBC0];
    objectCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"app://%@", objectCopy];
    v5 = [v6 URLWithString:objectCopy];
  }

  return v5;
}

- (id)imageKeyForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objectCopy stringByAppendingString:@"-2"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objectCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCA8C8];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __99__VUIAppIconImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
    v17[3] = &unk_279E21118;
    v17[4] = self;
    v18 = v12;
    v19 = handlerCopy;
    v15 = [v14 blockOperationWithBlock:v17];
    [(NSOperationQueue *)self->_imageLoaderQueue addOperation:v15];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __99__VUIAppIconImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _createApplicationIconForIdentifier:*(a1 + 40)];
  v2 = -[VUIImage initWithCGImageRef:preserveAlpha:]([VUIImage alloc], "initWithCGImageRef:preserveAlpha:", [v6 vuiCGImage], 1);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4)
  {
    if (v2)
    {
      (*(v4 + 16))(v4, v2, 0, 0, 0, 0);
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
      (*(v4 + 16))(v4, 0, 0, 0, 0, v5);
    }
  }
}

- (void)cancelLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [loadCopy cancel];
  }
}

- (id)_createApplicationIconForIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifier];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = MEMORY[0x277D755B8];
  bundleIdentifier = [v3 bundleIdentifier];
  v9 = [v7 _applicationIconImageForBundleIdentifier:bundleIdentifier format:2 scale:v6];

  return v9;
}

@end