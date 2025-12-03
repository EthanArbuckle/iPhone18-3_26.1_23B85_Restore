@interface _VUIMonogramResourceOrSymbolImageGenerator
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _VUIMonogramResourceOrSymbolImageGenerator

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objectCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  if (!v15)
  {
    v20 = 0;
    goto LABEL_13;
  }

  imageURL = [v15 imageURL];
  if ([imageURL vuicore_isResourceURL])
  {
    vuicore_resourceName = [imageURL vuicore_resourceName];
    v19 = direction == 1;
    v20 = objc_alloc_init(MEMORY[0x1E696AAE0]);
    objc_initWeak(&location, v20);
    v21 = v33;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __120___VUIMonogramResourceOrSymbolImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
    v33[3] = &unk_1E87349A8;
    objc_copyWeak(v37, &location);
    v22 = vuicore_resourceName;
    v34 = v22;
    v37[1] = v19;
    v35 = v16;
    v36 = handlerCopy;
    [v20 addExecutionBlock:v33];
    imageGeneratorQueue = [(_VUIMonogramImageGenerator *)self imageGeneratorQueue];
    [imageGeneratorQueue addOperation:v20];

    v24 = v34;
  }

  else
  {
    if (![imageURL vuicore_isSymbolURL])
    {
      v20 = 0;
      goto LABEL_12;
    }

    vuicore_symbolName = [imageURL vuicore_symbolName];
    v20 = objc_alloc_init(MEMORY[0x1E696AAE0]);
    objc_initWeak(&location, v20);
    v21 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __120___VUIMonogramResourceOrSymbolImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2;
    v28[3] = &unk_1E87349D0;
    objc_copyWeak(v32, &location);
    v32[1] = *&width;
    v32[2] = *&height;
    v29 = v16;
    v22 = vuicore_symbolName;
    v30 = v22;
    v31 = handlerCopy;
    [v20 addExecutionBlock:v28];
    imageGeneratorQueue2 = [(_VUIMonogramImageGenerator *)self imageGeneratorQueue];
    [imageGeneratorQueue2 addOperation:v20];

    v24 = v29;
  }

  objc_destroyWeak(v21 + 7);
  objc_destroyWeak(&location);

LABEL_12:
LABEL_13:

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