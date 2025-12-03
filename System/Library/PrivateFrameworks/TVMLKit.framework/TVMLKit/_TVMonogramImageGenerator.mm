@interface _TVMonogramImageGenerator
- (NSOperationQueue)imageGeneratorQueue;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (id)loadImageForURL:(id)l scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
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

- (id)loadImageForURL:(id)l scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  loaderCopy = loader;
  lCopy = l;
  v17 = +[TVURLImageLoader sharedInstance];
  v18 = [v17 loadImageForObject:lCopy scaleToSize:fitCopy cropToFit:direction imageDirection:loaderCopy requestLoader:handlerCopy completionHandler:{width, height}];

  return v18;
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
  v6 = +[TVURLImageLoader sharedInstance];
  imageURL = [v5 imageURL];
  v8 = [v6 imageKeyForObject:imageURL];

  imageURL2 = [v5 imageURL];
  if ([imageURL2 tv_isResourceURL])
  {
    fillColor = [v5 fillColor];

    if (fillColor)
    {
      v20 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v17 = 0;
      fillColor2 = [v5 fillColor];
      [fillColor2 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];

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

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  objectCopy = object;
  loaderCopy = loader;
  handlerCopy = handler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  height = 0;
  if (objectCopy && (isKindOfClass & 1) != 0)
  {
    imageURL = [objectCopy imageURL];
    if (imageURL)
    {
      height = [(_TVMonogramImageGenerator *)self loadImageForURL:imageURL scaleToSize:fitCopy cropToFit:direction imageDirection:loaderCopy requestLoader:handlerCopy completionHandler:width, height];
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
  loadCopy = load;
  v4 = +[TVURLImageLoader sharedInstance];
  [v4 cancelLoad:loadCopy];
}

@end