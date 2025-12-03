@interface TLKImage
+ (id)keyForScale:(double)scale isDarkStyle:(BOOL)style;
+ (id)templateImageForImage:(id)image;
- (CGSize)size;
- (TLKImage)initWithImage:(id)image;
- (double)aspectRatio;
- (id)cachedImageForScale:(double)scale isDarkStyle:(BOOL)style;
- (void)cacheImage:(id)image forScale:(double)scale isDarkStyle:(BOOL)style;
- (void)clearImagesWithNotification:(id)notification;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation TLKImage

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TLKImage)initWithImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = TLKImage;
  v5 = [(TLKImage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TLKImage *)v5 setUiImage:imageCopy];
    if (([objc_opt_class() imageIsSymbol:imageCopy] & 1) == 0)
    {
      [imageCopy size];
      [(TLKImage *)v6 setSize:?];
    }

    -[TLKImage setIsTemplate:](v6, "setIsTemplate:", [objc_opt_class() isTemplateImage:imageCopy]);
  }

  return v6;
}

+ (id)templateImageForImage:(id)image
{
  imageCopy = image;
  if (([self isTemplateImage:imageCopy] & 1) == 0)
  {
    v5 = [imageCopy imageWithRenderingMode:2];

    imageCopy = v5;
  }

  return imageCopy;
}

- (void)clearImagesWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_autoreleasePoolPush();
  imageCache = [(TLKImage *)self imageCache];
  [imageCache removeAllObjects];

  objc_autoreleasePoolPop(v4);
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  handlerCopy = handler;
  uiImage = [(TLKImage *)self uiImage];
  (*(handler + 2))(handlerCopy, uiImage, 1);
}

- (id)cachedImageForScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  imageCache = [(TLKImage *)self imageCache];
  v7 = [objc_opt_class() keyForScale:styleCopy isDarkStyle:scale];
  v8 = [imageCache objectForKey:v7];

  return v8;
}

- (void)cacheImage:(id)image forScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  imageCopy = image;
  imageCache = [(TLKImage *)self imageCache];

  if (!imageCache)
  {
    v10 = objc_opt_new();
    [(TLKImage *)self setImageCache:v10];
  }

  imageCache2 = [(TLKImage *)self imageCache];
  v11 = [objc_opt_class() keyForScale:styleCopy isDarkStyle:scale];
  [imageCache2 setObject:imageCopy forKey:v11];
}

+ (id)keyForScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:styleCopy];
  v8 = [v5 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

- (double)aspectRatio
{
  [(TLKImage *)self size];
  if (v4 == 0.0)
  {
    return self->_aspectRatio;
  }

  else
  {
    return v3 / v4;
  }
}

@end