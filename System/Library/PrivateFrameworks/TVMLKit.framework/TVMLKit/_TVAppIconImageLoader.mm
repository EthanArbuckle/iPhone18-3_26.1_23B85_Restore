@interface _TVAppIconImageLoader
+ (id)sharedInstance;
- (_TVAppIconImageLoader)init;
- (id)URLForObject:(id)object;
- (id)_createApplicationIconForIdentifier:(id)identifier;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _TVAppIconImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_TVAppIconImageLoader sharedInstance];
  }

  v3 = sharedInstance_loader_1;

  return v3;
}

- (_TVAppIconImageLoader)init
{
  v6.receiver = self;
  v6.super_class = _TVAppIconImageLoader;
  v2 = [(_TVAppIconImageLoader *)&v6 init];
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

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objectCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v13;
  if (v13)
  {
    v15 = MEMORY[0x277CCA8C8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __113___TVAppIconImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
    v18[3] = &unk_279D6E908;
    v18[4] = self;
    v19 = v13;
    v20 = handlerCopy;
    v16 = [v15 blockOperationWithBlock:v18];
    [(NSOperationQueue *)self->_imageLoaderQueue addOperation:v16];
  }

  else
  {
    v16 = 0;
  }

  return v16;
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