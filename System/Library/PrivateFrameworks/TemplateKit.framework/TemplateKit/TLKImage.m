@interface TLKImage
+ (id)keyForScale:(double)a3 isDarkStyle:(BOOL)a4;
+ (id)templateImageForImage:(id)a3;
- (CGSize)size;
- (TLKImage)initWithImage:(id)a3;
- (double)aspectRatio;
- (id)cachedImageForScale:(double)a3 isDarkStyle:(BOOL)a4;
- (void)cacheImage:(id)a3 forScale:(double)a4 isDarkStyle:(BOOL)a5;
- (void)clearImagesWithNotification:(id)a3;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
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

- (TLKImage)initWithImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TLKImage;
  v5 = [(TLKImage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TLKImage *)v5 setUiImage:v4];
    if (([objc_opt_class() imageIsSymbol:v4] & 1) == 0)
    {
      [v4 size];
      [(TLKImage *)v6 setSize:?];
    }

    -[TLKImage setIsTemplate:](v6, "setIsTemplate:", [objc_opt_class() isTemplateImage:v4]);
  }

  return v6;
}

+ (id)templateImageForImage:(id)a3
{
  v4 = a3;
  if (([a1 isTemplateImage:v4] & 1) == 0)
  {
    v5 = [v4 imageWithRenderingMode:2];

    v4 = v5;
  }

  return v4;
}

- (void)clearImagesWithNotification:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(TLKImage *)self imageCache];
  [v5 removeAllObjects];

  objc_autoreleasePoolPop(v4);
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [(TLKImage *)self uiImage];
  (*(a5 + 2))(v7, v8, 1);
}

- (id)cachedImageForScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
  v6 = [(TLKImage *)self imageCache];
  v7 = [objc_opt_class() keyForScale:v4 isDarkStyle:a3];
  v8 = [v6 objectForKey:v7];

  return v8;
}

- (void)cacheImage:(id)a3 forScale:(double)a4 isDarkStyle:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(TLKImage *)self imageCache];

  if (!v9)
  {
    v10 = objc_opt_new();
    [(TLKImage *)self setImageCache:v10];
  }

  v12 = [(TLKImage *)self imageCache];
  v11 = [objc_opt_class() keyForScale:v5 isDarkStyle:a4];
  [v12 setObject:v8 forKey:v11];
}

+ (id)keyForScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
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