@interface _TVSymbolImageLoader
+ (id)sharedInstance;
- (_TVSymbolImageLoader)init;
- (id)URLForObject:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
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

- (id)imageKeyForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 symbolName];
    v6 = [v4 imageSymbolConfiguration];
    if (v6)
    {
      v7 = [v5 stringByAppendingString:@"_"];

      v8 = _UIImageSymbolConfigurationTextualSummary();
      v9 = [v8 tv_MD5String];
      v5 = [v7 stringByAppendingString:v9];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)URLForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 symbolName];
    if (v4)
    {
      v5 = MEMORY[0x277CBEBC0];
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol://%@", v4];
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

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v11 = a3;
  v12 = a7;
  v13 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v11;
    v15 = [v14 symbolName];
    v16 = [v14 imageSymbolConfiguration];

    if (v15)
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

      v24 = [v12 recordForResource:3 withInitiator:2];
      v25 = [MEMORY[0x277CCAD20] requestWithURL:v19];
      [v24 willSendRequest:v25];

      v26 = MEMORY[0x277CCA8C8];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __112___TVSymbolImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
      v30[3] = &unk_279D6E348;
      v15 = v15;
      v31 = v15;
      v16 = v16;
      v32 = v16;
      v33 = v24;
      v34 = v13;
      v27 = v24;
      v20 = [v26 blockOperationWithBlock:v30];
      [(NSOperationQueue *)self->_imageLoaderQueue addOperation:v20];

      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v20 = 0;
LABEL_9:

  return v20;
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