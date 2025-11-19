@interface VUIImageBackgroundColorDecorator
- (BOOL)isEqual:(id)a3;
- (CGSize)expectedSize;
- (CGSize)loaderScaleToSize;
- (CGSize)size;
- (VUIImageBackgroundColorDecorator)initWithBackgroundColor:(id)a3 andSize:(CGSize)a4;
- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5;
- (id)decoratorIdentifier;
@end

@implementation VUIImageBackgroundColorDecorator

- (VUIImageBackgroundColorDecorator)initWithBackgroundColor:(id)a3 andSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = VUIImageBackgroundColorDecorator;
  v9 = [(VUIImageBackgroundColorDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backgroundColor, a3);
    v10->_size.width = width;
    v10->_size.height = height;
  }

  return v10;
}

- (CGSize)loaderScaleToSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)expectedSize
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)decoratorIdentifier
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  [(UIColor *)self->_backgroundColor getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithFormat:@"_bc(%.1f, %.1f, %.1f, %.1f)", v8, v7, v6, v5];

  return v3;
}

- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5
{
  v6 = a3;
  v7 = +[VUIGraphicsImageRenderer preferredFormat];
  v8 = [v6 uiImage];
  [v8 size];
  v10 = v9;
  v12 = v11;

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __73__VUIImageBackgroundColorDecorator_decorate_scaledWithSize_croppedToFit___block_invoke;
  v21 = &unk_279E21CE0;
  v24 = 0;
  v25 = 0;
  v26 = v10;
  v27 = v12;
  v22 = self;
  v23 = v6;
  v13 = v6;
  v14 = [VUIGraphicsImageRenderer imageWithSize:v7 format:&v18 actions:v10, v12];
  v15 = v14;
  v16 = +[VUIImage imageWithCGImageRef:preserveAlpha:](VUIImage, "imageWithCGImageRef:preserveAlpha:", [v15 CGImage], 1);

  return v16;
}

void __73__VUIImageBackgroundColorDecorator_decorate_scaledWithSize_croppedToFit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSetFillColorWithColor([v3 CGContext], objc_msgSend(*(*(a1 + 32) + 8), "CGColor"));
  v4 = [v3 CGContext];

  CGContextFillRect(v4, *(a1 + 48));
  v5 = [*(a1 + 40) uiImage];
  [v5 drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 decoratorIdentifier];
    v6 = [(VUIImageBackgroundColorDecorator *)self decoratorIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end