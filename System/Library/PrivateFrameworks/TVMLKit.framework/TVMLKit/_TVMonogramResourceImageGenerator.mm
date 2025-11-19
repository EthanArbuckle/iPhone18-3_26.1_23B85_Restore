@interface _TVMonogramResourceImageGenerator
+ (id)tintImage:(id)a3 withColor:(id)a4;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
@end

@implementation _TVMonogramResourceImageGenerator

+ (id)tintImage:(id)a3 withColor:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    [v6 size];
    v8 = v7;
    [v6 size];
    height = v20.height;
    v20.width = v8;
    UIGraphicsBeginImageContext(v20);
    CurrentContext = UIGraphicsGetCurrentContext();
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v8;
    v21.size.height = height;
    v11 = CGRectGetHeight(v21);
    CGContextTranslateCTM(CurrentContext, 0.0, v11);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v12 = [v6 CGImage];
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v8;
    v22.size.height = height;
    CGContextClipToMask(CurrentContext, v22, v12);
    [v5 setFill];

    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v8;
    v23.size.height = height;
    UIRectFill(v23);
    v13 = UIGraphicsGetCurrentContext();
    Image = CGBitmapContextCreateImage(v13);
    v15 = objc_alloc(MEMORY[0x277D755B8]);
    v16 = [v6 imageOrientation];

    v17 = [v15 initWithCGImage:Image imageOrientation:v16];
    UIGraphicsEndImageContext();
    CGImageRelease(Image);
  }

  else
  {
    v17 = 0;
  }

  return v17;
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
  v17 = v16;
  if (v16)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__8;
    v43 = __Block_byref_object_dispose__8;
    v44 = 0;
    v18 = [v16 imageURL];
    if ([v18 tv_isResourceURL])
    {
      v19 = [v13 recordForResource:3 withInitiator:2];
      v20 = [MEMORY[0x277CCAD20] requestWithURL:v18];
      [v19 willSendRequest:v20];

      v21 = [v18 tv_resourceName];
      v22 = a6 == 1;
      v23 = MEMORY[0x277CCA8C8];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __125___TVMonogramResourceImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
      v31[3] = &unk_279D70D98;
      v37 = &v39;
      v24 = v21;
      v32 = v24;
      v38 = v22;
      v33 = v17;
      v34 = self;
      v25 = v19;
      v35 = v25;
      v36 = v14;
      v26 = [v23 blockOperationWithBlock:v31];
      v27 = v40[5];
      v40[5] = v26;

      v28 = [(_TVMonogramImageGenerator *)self imageGeneratorQueue];
      [v28 addOperation:v40[5]];
    }

    v29 = v40[5];

    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v29 = 0;
  }

  return v29;
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