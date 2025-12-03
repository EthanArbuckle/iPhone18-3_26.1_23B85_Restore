@interface _TVMonogramAppleAccountImageGenerator
+ (BOOL)isAppleAccountsURL:(id)l;
- (id)loadImageForURL:(id)l scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _TVMonogramAppleAccountImageGenerator

+ (BOOL)isAppleAccountsURL:(id)l
{
  scheme = [l scheme];
  v4 = [scheme isEqualToString:@"x-apple-identity-image"];

  return v4;
}

- (id)loadImageForURL:(id)l scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  lCopy = l;
  loaderCopy = loader;
  handlerCopy = handler;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  if ([objc_opt_class() isAppleAccountsURL:lCopy])
  {
    v16 = MEMORY[0x277CCA8C8];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __126___TVMonogramAppleAccountImageGenerator_loadImageForURL_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
    v25 = &unk_279D70D70;
    v28 = &v30;
    v29 = fmin(width, height);
    v26 = lCopy;
    v27 = handlerCopy;
    v17 = [v16 blockOperationWithBlock:&v22];
    v18 = v31[5];
    v31[5] = v17;

    v19 = [(_TVMonogramImageGenerator *)self imageGeneratorQueue:v22];
    [v19 addOperation:v31[5]];
  }

  v20 = v31[5];
  _Block_object_dispose(&v30, 8);

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