@interface _TVMonogramImageLoader
+ (id)sharedInstance;
- (_TVMonogramImageLoader)init;
- (id)URLForObject:(id)object;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _TVMonogramImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[_TVMonogramImageLoader sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (_TVMonogramImageLoader)init
{
  v12[6] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = _TVMonogramImageLoader;
  v2 = [(_TVMonogramImageLoader *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v11[0] = &unk_287E47E50;
    v4 = objc_opt_new();
    v12[0] = v4;
    v11[1] = &unk_287E47E68;
    v5 = objc_opt_new();
    v12[1] = v5;
    v11[2] = &unk_287E47E80;
    v6 = objc_opt_new();
    v12[2] = v6;
    v12[3] = v3;
    v11[3] = &unk_287E47E98;
    v11[4] = &unk_287E47EB0;
    v11[5] = &unk_287E47EC8;
    v12[4] = v3;
    v12[5] = v3;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];
    generatorByType = v2->_generatorByType;
    v2->_generatorByType = v7;
  }

  return v2;
}

- (id)imageKeyForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    generatorByType = self->_generatorByType;
    v6 = MEMORY[0x277CCABB0];
    v7 = objectCopy;
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "preferedMonogramType")}];
    v9 = [(NSDictionary *)generatorByType objectForKey:v8];

    v10 = [v9 imageKeyForObject:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)URLForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageURL = [objectCopy imageURL];
    if ([_TVMonogramAppleAccountImageGenerator isAppleAccountsURL:imageURL])
    {
      v5 = 0;
    }

    else
    {
      v5 = imageURL;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  objectCopy = object;
  loaderCopy = loader;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objectCopy;
    v19 = v18;
    if (loaderCopy)
    {
      requestLoader = loaderCopy;
    }

    else
    {
      requestLoader = [v18 requestLoader];
    }

    preferedMonogramType = [v19 preferedMonogramType];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __114___TVMonogramImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
    v31[3] = &unk_279D6F138;
    v32 = handlerCopy;
    v23 = MEMORY[0x26D6AFBB0](v31);
    generatorByType = self->_generatorByType;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:preferedMonogramType];
    v26 = [(NSDictionary *)generatorByType objectForKey:v25];

    if (v26)
    {
      v27 = v30;
      v21 = [v26 loadImageForObject:v19 scaleToSize:fitCopy cropToFit:direction imageDirection:v30 requestLoader:v23 completionHandler:{width, height}];
      [v21 tv_setGeneratorType:preferedMonogramType];
    }

    else
    {
      v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
      (v23)[2](v23, 0, 0, 0, 0, v28);

      v21 = 0;
      v27 = v30;
    }
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
  tv_generatorType = [loadCopy tv_generatorType];
  generatorByType = self->_generatorByType;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:tv_generatorType];
  v8 = [(NSDictionary *)generatorByType objectForKey:v7];

  [v8 cancelLoad:loadCopy];
}

@end