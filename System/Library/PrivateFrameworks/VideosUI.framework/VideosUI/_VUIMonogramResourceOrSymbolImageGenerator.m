@interface _VUIMonogramResourceOrSymbolImageGenerator
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7;
- (void)cancelLoad:(id)a3;
@end

@implementation _VUIMonogramResourceOrSymbolImageGenerator

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
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

  v17 = [v15 imageURL];
  if ([v17 vuicore_isResourceURL])
  {
    v18 = [v17 vuicore_resourceName];
    v19 = a6 == 1;
    v20 = objc_alloc_init(MEMORY[0x1E696AAE0]);
    objc_initWeak(&location, v20);
    v21 = v33;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __120___VUIMonogramResourceOrSymbolImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
    v33[3] = &unk_1E87349A8;
    objc_copyWeak(v37, &location);
    v22 = v18;
    v34 = v22;
    v37[1] = v19;
    v35 = v16;
    v36 = v13;
    [v20 addExecutionBlock:v33];
    v23 = [(_VUIMonogramImageGenerator *)self imageGeneratorQueue];
    [v23 addOperation:v20];

    v24 = v34;
  }

  else
  {
    if (![v17 vuicore_isSymbolURL])
    {
      v20 = 0;
      goto LABEL_12;
    }

    v25 = [v17 vuicore_symbolName];
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
    v22 = v25;
    v30 = v22;
    v31 = v13;
    [v20 addExecutionBlock:v28];
    v26 = [(_VUIMonogramImageGenerator *)self imageGeneratorQueue];
    [v26 addOperation:v20];

    v24 = v29;
  }

  objc_destroyWeak(v21 + 7);
  objc_destroyWeak(&location);

LABEL_12:
LABEL_13:

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