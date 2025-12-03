@interface SKUISizeToFitImageDataConsumer
+ (id)consumerWithConstraintSize2:(CGSize)size2;
+ (id)consumerWithConstraintSize:(CGSize)size;
- (CGSize)constraintSize;
- (id)imageForImage:(id)image;
- (void)_drawGradientWithContext:(CGContext *)context imageRect:(CGRect)rect;
@end

@implementation SKUISizeToFitImageDataConsumer

+ (id)consumerWithConstraintSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUISizeToFitImageDataConsumer *)v6 consumerWithConstraintSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = width;
  consumer[2] = height;

  return consumer;
}

+ (id)consumerWithConstraintSize2:(CGSize)size2
{
  height = size2.height;
  width = size2.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUISizeToFitImageDataConsumer *)v6 consumerWithConstraintSize2:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  consumer = [self consumer];
  *(consumer + 8) = width;
  *(consumer + 16) = height;
  *(consumer + 24) = 1;

  return consumer;
}

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
        [(SKUISizeToFitImageDataConsumer *)v5 imageForImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (!self->_custom)
  {
    [imageCopy size];
    width = self->_constraintSize.width;
    height = self->_constraintSize.height;
    if (height == 0.0)
    {
      if (width == 0.0)
      {
        v22 = imageCopy;
        goto LABEL_15;
      }
    }

    else if (width <= height)
    {
      v24 = v20 * (height / v21);
      width = floorf(v24);
      goto LABEL_13;
    }

    v23 = v21 * (width / v20);
    height = floorf(v23);
LABEL_13:
    [imageCopy scale];
    v26 = v25;
    v30.width = width;
    v30.height = height;
    UIGraphicsBeginImageContextWithOptions(v30, 0, v26);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationLow);
    goto LABEL_14;
  }

  v28.width = 0.0;
  v28.height = 0.0;
  [imageCopy size];
  SKUIIconFrameForIconSize(&v28.width, 0, v13, v14, self->_constraintSize.width, self->_constraintSize.height, 0.0);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIGraphicsBeginImageContextWithOptions(v28, 0, v16);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationLow);
  width = v28.width;
  height = v28.height;
LABEL_14:
  [imageCopy drawInRect:{0.0, 0.0, width, height}];
  [(SKUISizeToFitImageDataConsumer *)self _drawGradientWithContext:CurrentContext imageRect:0.0, 0.0, width, height];
  CGContextRestoreGState(CurrentContext);
  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_15:

  return v22;
}

- (void)_drawGradientWithContext:(CGContext *)context imageRect:(CGRect)rect
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_gradientEndColor)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_215F3F0A0;
    v11 = [(UIColor *)self->_gradientEndColor colorWithAlphaComponent:0.0];
    v15[1] = -[UIColor CGColor](self->_gradientEndColor, "CGColor", [v11 CGColor]);

    v12 = CFArrayCreate(0, v15, 2, MEMORY[0x277CBF128]);
    v13 = CGGradientCreateWithColors(DeviceRGB, v12, locations);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v14 = CGRectGetMaxY(v20) - self->_gradientHeight;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v19.y = CGRectGetMaxY(v21);
    v18.x = 0.0;
    v19.x = 0.0;
    v18.y = v14;
    CGContextDrawLinearGradient(context, v13, v18, v19, 0);
    CGGradientRelease(v13);
    CFRelease(v12);
    CGColorSpaceRelease(DeviceRGB);
  }
}

- (CGSize)constraintSize
{
  width = self->_constraintSize.width;
  height = self->_constraintSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end