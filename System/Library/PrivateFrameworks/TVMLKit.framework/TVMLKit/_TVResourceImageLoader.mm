@interface _TVResourceImageLoader
+ (id)sharedInstance;
- (_TVResourceImageLoader)init;
- (id)URLForObject:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
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
    v3 = [MEMORY[0x277CCABD8] mainQueue];
    imageLoaderQueue = v2->_imageLoaderQueue;
    v2->_imageLoaderQueue = v3;
  }

  return v2;
}

- (id)imageKeyForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
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
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"resource://%@", v3];
    v5 = [v6 URLWithString:v7];
  }

  return v5;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v12 = a3;
  v13 = a7;
  v14 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = a6 == 1;
  if (v16)
  {
    v18 = [(_TVResourceImageLoader *)self URLForObject:v12];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v22 = MEMORY[0x277CBEBC0];
      v23 = MEMORY[0x277CCACA8];
      v24 = [(_TVResourceImageLoader *)self imageKeyForObject:v12];
      v25 = [v23 stringWithFormat:@"imageKey://%@", v24];
      v20 = [v22 URLWithString:v25];
    }

    v26 = [v13 recordForResource:3 withInitiator:2];
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
    v34 = v14;
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

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 cancel];
  }
}

@end