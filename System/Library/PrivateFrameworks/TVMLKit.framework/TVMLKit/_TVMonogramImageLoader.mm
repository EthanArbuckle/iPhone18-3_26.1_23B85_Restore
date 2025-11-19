@interface _TVMonogramImageLoader
+ (id)sharedInstance;
- (_TVMonogramImageLoader)init;
- (id)URLForObject:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
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

- (id)imageKeyForObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    generatorByType = self->_generatorByType;
    v6 = MEMORY[0x277CCABB0];
    v7 = v4;
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

- (id)URLForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 imageURL];
    if ([_TVMonogramAppleAccountImageGenerator isAppleAccountsURL:v4])
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v11 = a5;
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v15;
    v19 = v18;
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = [v18 requestLoader];
    }

    v22 = [v19 preferedMonogramType];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __114___TVMonogramImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
    v31[3] = &unk_279D6F138;
    v32 = v17;
    v23 = MEMORY[0x26D6AFBB0](v31);
    generatorByType = self->_generatorByType;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v26 = [(NSDictionary *)generatorByType objectForKey:v25];

    if (v26)
    {
      v27 = v30;
      v21 = [v26 loadImageForObject:v19 scaleToSize:v11 cropToFit:a6 imageDirection:v30 requestLoader:v23 completionHandler:{width, height}];
      [v21 tv_setGeneratorType:v22];
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

- (void)cancelLoad:(id)a3
{
  v4 = a3;
  v5 = [v4 tv_generatorType];
  generatorByType = self->_generatorByType;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [(NSDictionary *)generatorByType objectForKey:v7];

  [v8 cancelLoad:v4];
}

@end