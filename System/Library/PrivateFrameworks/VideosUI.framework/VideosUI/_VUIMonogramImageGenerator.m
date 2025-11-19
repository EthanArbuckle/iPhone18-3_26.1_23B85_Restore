@interface _VUIMonogramImageGenerator
- (NSOperationQueue)imageGeneratorQueue;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7;
- (id)loadImageForURL:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7;
- (void)cancelLoad:(id)a3;
@end

@implementation _VUIMonogramImageGenerator

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

- (id)loadImageForURL:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7
{
  v8 = a5;
  height = a4.height;
  width = a4.width;
  v12 = MEMORY[0x1E69DF7C0];
  v13 = a7;
  v14 = a3;
  v15 = [v12 sharedInstance];
  v16 = [v15 loadImageForObject:v14 scaleToSize:v8 cropToFit:a6 imageDirection:v13 completionHandler:{width, height}];

  return v16;
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
  v6 = [v5 imageURL];
  if (v6)
  {
    v7 = [MEMORY[0x1E69DF7C0] sharedInstance];
    v8 = [v7 imageKeyForObject:v6];

    v9 = [v5 imageURL];
    if ([v9 vuicore_isResourceOrSymbolURL])
    {
      v10 = [v5 fillColor];

      if (v10)
      {
        v24 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v21 = 0;
        v13 = [v5 fillColor];
        if (v13)
        {
          [MEMORY[0x1E69DF6D0] vuiColor:v13 getRed:&v24 green:&v23 blue:&v22 alpha:&v21];
          v14 = v21;
          v15 = v24 * 255.0;
          v16 = v23 * 255.0;
          v17 = v22 * 255.0;
        }

        else
        {
          v14 = 0;
          v17 = 0.0;
          v16 = 0.0;
          v15 = 0.0;
        }

        v18 = 0x1E696A000uLL;
        LODWORD(v18) = vcvtad_u64_f64(v15);
        LODWORD(v11) = vcvtad_u64_f64(v16);
        LODWORD(v12) = vcvtad_u64_f64(v17);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%02X%02X%02X%.1f", v8, v18, v11, v12, v14];

        v8 = v19;
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7
{
  v9 = a5;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = 0;
  if (v13 && (isKindOfClass & 1) != 0)
  {
    v17 = [v13 imageURL];
    if (v17)
    {
      v16 = [(_VUIMonogramImageGenerator *)self loadImageForURL:v17 scaleToSize:v9 cropToFit:a6 imageDirection:v14 completionHandler:width, height];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)cancelLoad:(id)a3
{
  v3 = MEMORY[0x1E69DF7C0];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 cancelLoad:v4];
}

@end