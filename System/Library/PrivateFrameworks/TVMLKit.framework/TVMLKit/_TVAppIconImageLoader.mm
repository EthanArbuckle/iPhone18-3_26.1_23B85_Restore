@interface _TVAppIconImageLoader
+ (id)sharedInstance;
- (_TVAppIconImageLoader)init;
- (id)URLForObject:(id)a3;
- (id)_createApplicationIconForIdentifier:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
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

- (id)URLForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"app://%@", v3];
    v5 = [v6 URLWithString:v7];
  }

  return v5;
}

- (id)imageKeyForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 stringByAppendingString:@"-2"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v10 = a3;
  v11 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
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
    v20 = v11;
    v16 = [v15 blockOperationWithBlock:v18];
    [(NSOperationQueue *)self->_imageLoaderQueue addOperation:v16];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 cancel];
  }
}

- (id)_createApplicationIconForIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a3];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = MEMORY[0x277D755B8];
  v8 = [v3 bundleIdentifier];
  v9 = [v7 _applicationIconImageForBundleIdentifier:v8 format:2 scale:v6];

  return v9;
}

@end