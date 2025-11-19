@interface _TVMonogramImageGenerator
- (NSOperationQueue)imageGeneratorQueue;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (id)loadImageForURL:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
@end

@implementation _TVMonogramImageGenerator

- (NSOperationQueue)imageGeneratorQueue
{
  imageGeneratorQueue = self->_imageGeneratorQueue;
  if (!imageGeneratorQueue)
  {
    v4 = objc_opt_new();
    v5 = self->_imageGeneratorQueue;
    self->_imageGeneratorQueue = v4;

    imageGeneratorQueue = self->_imageGeneratorQueue;
  }

  return imageGeneratorQueue;
}

- (id)loadImageForURL:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v10 = a5;
  height = a4.height;
  width = a4.width;
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v17 = +[TVURLImageLoader sharedInstance];
  v18 = [v17 loadImageForObject:v16 scaleToSize:v10 cropToFit:a6 imageDirection:v15 requestLoader:v14 completionHandler:{width, height}];

  return v18;
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
  v6 = +[TVURLImageLoader sharedInstance];
  v7 = [v5 imageURL];
  v8 = [v6 imageKeyForObject:v7];

  v9 = [v5 imageURL];
  if ([v9 tv_isResourceURL])
  {
    v10 = [v5 fillColor];

    if (v10)
    {
      v20 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v17 = 0;
      v11 = [v5 fillColor];
      [v11 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];

      v12 = 0x277CCA000uLL;
      v13 = &off_26CE87000;
      LODWORD(v13) = vcvtad_u64_f64(v20 * 255.0);
      LODWORD(v14) = vcvtad_u64_f64(v19 * 255.0);
      LODWORD(v12) = vcvtad_u64_f64(v18 * 255.0);
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%02X%02X%02X%.1f", v8, v13, v14, v12, v17];

      v8 = v15;
    }
  }

  else
  {
  }

  return v8;
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
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = 0;
  if (v15 && (isKindOfClass & 1) != 0)
  {
    v20 = [v15 imageURL];
    if (v20)
    {
      v19 = [(_TVMonogramImageGenerator *)self loadImageForURL:v20 scaleToSize:v11 cropToFit:a6 imageDirection:v16 requestLoader:v17 completionHandler:width, height];
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  v4 = +[TVURLImageLoader sharedInstance];
  [v4 cancelLoad:v3];
}

@end