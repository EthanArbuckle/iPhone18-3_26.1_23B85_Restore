@interface _TVSymbolImageLoader
+ (id)sharedInstance;
- (_TVSymbolImageLoader)init;
- (id)URLForObject:(id)object;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _TVSymbolImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_TVSymbolImageLoader sharedInstance];
  }

  v3 = sharedInstance_loader;

  return v3;
}

- (_TVSymbolImageLoader)init
{
  v6.receiver = self;
  v6.super_class = _TVSymbolImageLoader;
  v2 = [(_TVSymbolImageLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageLoaderQueue = v2->_imageLoaderQueue;
    v2->_imageLoaderQueue = v3;
  }

  return v2;
}

- (id)imageKeyForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
    symbolName = [v4 symbolName];
    imageSymbolConfiguration = [v4 imageSymbolConfiguration];
    if (imageSymbolConfiguration)
    {
      v7 = [symbolName stringByAppendingString:@"_"];

      v8 = _UIImageSymbolConfigurationTextualSummary();
      tv_MD5String = [v8 tv_MD5String];
      symbolName = [v7 stringByAppendingString:tv_MD5String];
    }
  }

  else
  {
    symbolName = 0;
  }

  return symbolName;
}

- (id)URLForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    symbolName = [objectCopy symbolName];
    if (symbolName)
    {
      v5 = MEMORY[0x277CBEBC0];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol://%@", symbolName];
      v7 = [v5 URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  objectCopy = object;
  loaderCopy = loader;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objectCopy;
    symbolName = [v14 symbolName];
    imageSymbolConfiguration = [v14 imageSymbolConfiguration];

    if (symbolName)
    {
      v17 = [(_TVSymbolImageLoader *)self URLForObject:v14];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v29 = MEMORY[0x277CBEBC0];
        v21 = MEMORY[0x277CCACA8];
        v22 = [(_TVSymbolImageLoader *)self imageKeyForObject:v14];
        v23 = [v21 stringWithFormat:@"imageKey://%@", v22];
        v19 = [v29 URLWithString:v23];
      }

      v24 = [loaderCopy recordForResource:3 withInitiator:2];
      v25 = [MEMORY[0x277CCAD20] requestWithURL:v19];
      [v24 willSendRequest:v25];

      v26 = MEMORY[0x277CCA8C8];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __112___TVSymbolImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
      v30[3] = &unk_279D6E348;
      symbolName = symbolName;
      v31 = symbolName;
      imageSymbolConfiguration = imageSymbolConfiguration;
      v32 = imageSymbolConfiguration;
      v33 = v24;
      v34 = handlerCopy;
      v27 = v24;
      v20 = [v26 blockOperationWithBlock:v30];
      [(NSOperationQueue *)self->_imageLoaderQueue addOperation:v20];

      goto LABEL_9;
    }
  }

  else
  {
    symbolName = 0;
    imageSymbolConfiguration = 0;
  }

  v20 = 0;
LABEL_9:

  return v20;
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

@end