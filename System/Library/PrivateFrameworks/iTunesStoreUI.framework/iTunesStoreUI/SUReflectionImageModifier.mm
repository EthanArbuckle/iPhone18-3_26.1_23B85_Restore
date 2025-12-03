@interface SUReflectionImageModifier
- (CGRect)imageFrameForImage:(id)image currentFrame:(CGRect)frame finalSize:(CGSize)size;
- (CGSize)finalSizeForSize:(CGSize)size originalSize:(CGSize)originalSize;
- (void)dealloc;
- (void)drawAfterImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size;
@end

@implementation SUReflectionImageModifier

- (void)dealloc
{
  self->_gradient = 0;
  v3.receiver = self;
  v3.super_class = SUReflectionImageModifier;
  [(SUReflectionImageModifier *)&v3 dealloc];
}

- (CGSize)finalSizeForSize:(CGSize)size originalSize:(CGSize)originalSize
{
  height = originalSize.height;
  width = size.width;
  [(SUReflectionImageModifier *)self reflectionHeight:size.width];
  v7 = height + v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGRect)imageFrameForImage:(id)image currentFrame:(CGRect)frame finalSize:(CGSize)size
{
  height = frame.size.height;
  width = frame.size.width;
  x = frame.origin.x;
  [(SUReflectionImageModifier *)self reflectionHeight:image];
  v9 = v8;
  v10 = x;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v9;
  result.origin.x = v10;
  return result;
}

- (void)drawAfterImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size
{
  height = frame.size.height;
  width = frame.size.width;
  x = frame.origin.x;
  Image = CGBitmapContextCreateImage(context);
  if (Image)
  {
    v11 = Image;
    [(SUReflectionImageModifier *)self reflectionHeight];
    v13 = v12;
    v14 = height - v12;
    CGContextGetBaseCTM();
    v18.origin.x = x;
    v18.origin.y = v14;
    v18.size.width = width;
    v18.size.height = v13;
    v19 = CGRectApplyAffineTransform(v18, &v17);
    v15 = CGImageCreateWithImageInRect(v11, v19);
    if (v15)
    {
      v16 = v15;
      CGContextSaveGState(context);
      CGContextTranslateCTM(context, 0.0, v13);
      CGContextScaleCTM(context, 1.0, -1.0);
      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.width = width;
      v20.size.height = v13;
      CGContextDrawImage(context, v20, v16);
      if (self->_gradient)
      {
        CGContextSetCompositeOperation();
        [(UIGradient *)self->_gradient fillRect:context inContext:0.0, 0.0, width, v13];
      }

      CGContextRestoreGState(context);
      CGImageRelease(v16);
    }

    CGImageRelease(v11);
  }
}

@end