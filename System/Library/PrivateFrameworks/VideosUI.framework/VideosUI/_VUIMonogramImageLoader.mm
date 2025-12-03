@interface _VUIMonogramImageLoader
+ (id)sharedInstance;
- (_VUIMonogramImageLoader)init;
- (id)URLForObject:(id)object;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _VUIMonogramImageLoader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[_VUIMonogramImageLoader sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

- (_VUIMonogramImageLoader)init
{
  v12[6] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _VUIMonogramImageLoader;
  v2 = [(_VUIMonogramImageLoader *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v11[0] = &unk_1F5E5CE28;
    v4 = objc_opt_new();
    v12[0] = v4;
    v11[1] = &unk_1F5E5CE40;
    v5 = objc_opt_new();
    v12[1] = v5;
    v11[2] = &unk_1F5E5CE58;
    v6 = objc_opt_new();
    v12[2] = v6;
    v12[3] = v3;
    v11[3] = &unk_1F5E5CE70;
    v11[4] = &unk_1F5E5CE88;
    v11[5] = &unk_1F5E5CEA0;
    v12[4] = v3;
    v12[5] = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
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
    v6 = MEMORY[0x1E696AD98];
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
    if ([_VUIMonogramAppleAccountImageGenerator isAppleAccountsURL:imageURL])
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

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objectCopy;
    preferedMonogramType = [v15 preferedMonogramType];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101___VUIMonogramImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
    aBlock[3] = &unk_1E872FB28;
    v25 = handlerCopy;
    v17 = _Block_copy(aBlock);
    generatorByType = self->_generatorByType;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:preferedMonogramType];
    v20 = [(NSDictionary *)generatorByType objectForKey:v19];

    if (v20)
    {
      v21 = [v20 loadImageForObject:v15 scaleToSize:fitCopy cropToFit:direction imageDirection:v17 completionHandler:{width, height}];
      [v21 tv_setGeneratorType:preferedMonogramType];
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:107 userInfo:0];
      (*(v17 + 2))(v17, 0, 0, 0, 0, v22);

      v21 = 0;
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
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:tv_generatorType];
  v8 = [(NSDictionary *)generatorByType objectForKey:v7];

  [v8 cancelLoad:loadCopy];
}

@end