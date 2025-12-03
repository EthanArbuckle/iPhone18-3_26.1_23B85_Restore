@interface _TVResourceImageLoader
+ (id)sharedInstance;
- (_TVResourceImageLoader)init;
- (id)URLForObject:(id)object;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _TVResourceImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_TVResourceImageLoader sharedInstance];
  }

  v3 = sharedInstance_loader_0;

  return v3;
}

- (_TVResourceImageLoader)init
{
  v6.receiver = self;
  v6.super_class = _TVResourceImageLoader;
  v2 = [(_TVResourceImageLoader *)&v6 init];
  if (v2)
  {
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    imageLoaderQueue = v2->_imageLoaderQueue;
    v2->_imageLoaderQueue = mainQueue;
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
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
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
    objectCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"resource://%@", objectCopy];
    v5 = [v6 URLWithString:objectCopy];
  }

  return v5;
}

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  objectCopy = object;
  loaderCopy = loader;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objectCopy;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = direction == 1;
  if (v16)
  {
    v18 = [(_TVResourceImageLoader *)self URLForObject:objectCopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v22 = MEMORY[0x277CBEBC0];
      v23 = MEMORY[0x277CCACA8];
      v24 = [(_TVResourceImageLoader *)self imageKeyForObject:objectCopy];
      v25 = [v23 stringWithFormat:@"imageKey://%@", v24];
      v20 = [v22 URLWithString:v25];
    }

    v26 = [loaderCopy recordForResource:3 withInitiator:2];
    v27 = [MEMORY[0x277CCAD20] requestWithURL:v20];
    [v26 willSendRequest:v27];

    v28 = MEMORY[0x277CCA8C8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __114___TVResourceImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
    v31[3] = &unk_279D6E8E0;
    v35 = v17;
    v32 = v16;
    v33 = v26;
    v34 = handlerCopy;
    v29 = v26;
    v21 = [v28 blockOperationWithBlock:v31];
    [(NSOperationQueue *)self->_imageLoaderQueue addOperation:v21];
  }

  else
  {
    v21 = 0;
  }

  return v21;
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