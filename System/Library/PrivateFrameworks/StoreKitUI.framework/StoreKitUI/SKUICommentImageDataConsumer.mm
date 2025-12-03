@interface SKUICommentImageDataConsumer
- (id)_scaledImageWithBounds:(CGSize)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)imageForImage:(id)image;
@end

@implementation SKUICommentImageDataConsumer

- (id)imageForImage:(id)image
{
  imageCopy = image;
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
  v21 = imageCopy;
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

- (id)_scaledImageWithBounds:(CGSize)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.height;
  v10 = bounds.width;
  v11 = MEMORY[0x277D759A0];
  blockCopy = block;
  mainScreen = [v11 mainScreen];
  [mainScreen scale];
  v15 = v14;
  v19.width = v10;
  v19.height = v9;
  UIGraphicsBeginImageContextWithOptions(v19, 1, v15);

  blockCopy[2](blockCopy, x, y, width, height);
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

@end