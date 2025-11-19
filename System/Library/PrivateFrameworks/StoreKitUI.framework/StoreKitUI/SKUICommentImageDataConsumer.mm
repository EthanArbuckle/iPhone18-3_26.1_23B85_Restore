@interface SKUICommentImageDataConsumer
- (id)_scaledImageWithBounds:(CGSize)a3 contentRect:(CGRect)a4 drawBlock:(id)a5;
- (id)imageForImage:(id)a3;
@end

@implementation SKUICommentImageDataConsumer

- (id)imageForImage:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICommentImageDataConsumer *)v5 imageForImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIStyledImageDataConsumer *)self imageSize];
  v14 = v13;
  v16 = v15;
  [(SKUIStyledImageDataConsumer *)self imageSize];
  v18 = v17;
  [(SKUIStyledImageDataConsumer *)self imageSize];
  v20 = v19;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__SKUICommentImageDataConsumer_imageForImage___block_invoke;
  v26[3] = &unk_2781FCE28;
  v21 = v4;
  v27 = v21;
  v22 = [(SKUICommentImageDataConsumer *)self _scaledImageWithBounds:v26 contentRect:v14 drawBlock:v16, 0.0, 0.0, v18, v20];
  v23 = [v22 imageWithRenderingMode:1];

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, v23, 0);
  }

  return v23;
}

- (id)_scaledImageWithBounds:(CGSize)a3 contentRect:(CGRect)a4 drawBlock:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.height;
  v10 = a3.width;
  v11 = MEMORY[0x277D759A0];
  v12 = a5;
  v13 = [v11 mainScreen];
  [v13 scale];
  v15 = v14;
  v19.width = v10;
  v19.height = v9;
  UIGraphicsBeginImageContextWithOptions(v19, 1, v15);

  v12[2](v12, x, y, width, height);
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

@end