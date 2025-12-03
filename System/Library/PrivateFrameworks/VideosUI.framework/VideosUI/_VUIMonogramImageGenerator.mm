@interface _VUIMonogramImageGenerator
- (NSOperationQueue)imageGeneratorQueue;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (id)loadImageForURL:(id)l scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
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

- (id)loadImageForURL:(id)l scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  v12 = MEMORY[0x1E69DF7C0];
  handlerCopy = handler;
  lCopy = l;
  sharedInstance = [v12 sharedInstance];
  v16 = [sharedInstance loadImageForObject:lCopy scaleToSize:fitCopy cropToFit:direction imageDirection:handlerCopy completionHandler:{width, height}];

  return v16;
}

- (id)imageKeyForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  imageURL = [v5 imageURL];
  if (imageURL)
  {
    mEMORY[0x1E69DF7C0] = [MEMORY[0x1E69DF7C0] sharedInstance];
    v8 = [mEMORY[0x1E69DF7C0] imageKeyForObject:imageURL];

    imageURL2 = [v5 imageURL];
    if ([imageURL2 vuicore_isResourceOrSymbolURL])
    {
      fillColor = [v5 fillColor];

      if (fillColor)
      {
        v24 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v21 = 0;
        fillColor2 = [v5 fillColor];
        if (fillColor2)
        {
          [MEMORY[0x1E69DF6D0] vuiColor:fillColor2 getRed:&v24 green:&v23 blue:&v22 alpha:&v21];
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

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  height = 0;
  if (objectCopy && (isKindOfClass & 1) != 0)
  {
    imageURL = [objectCopy imageURL];
    if (imageURL)
    {
      height = [(_VUIMonogramImageGenerator *)self loadImageForURL:imageURL scaleToSize:fitCopy cropToFit:direction imageDirection:handlerCopy completionHandler:width, height];
    }

    else
    {
      height = 0;
    }
  }

  return height;
}

- (void)cancelLoad:(id)load
{
  v3 = MEMORY[0x1E69DF7C0];
  loadCopy = load;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance cancelLoad:loadCopy];
}

@end