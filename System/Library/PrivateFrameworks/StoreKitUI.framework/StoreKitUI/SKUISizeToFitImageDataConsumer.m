@interface SKUISizeToFitImageDataConsumer
+ (id)consumerWithConstraintSize2:(CGSize)a3;
+ (id)consumerWithConstraintSize:(CGSize)a3;
- (CGSize)constraintSize;
- (id)imageForImage:(id)a3;
- (void)_drawGradientWithContext:(CGContext *)a3 imageRect:(CGRect)a4;
@end

@implementation SKUISizeToFitImageDataConsumer

+ (id)consumerWithConstraintSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v14 = [a1 consumer];
  v14[1] = width;
  v14[2] = height;

  return v14;
}

+ (id)consumerWithConstraintSize2:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v14 = [a1 consumer];
  *(v14 + 8) = width;
  *(v14 + 16) = height;
  *(v14 + 24) = 1;

  return v14;
}

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
        [(SKUISizeToFitImageDataConsumer *)v5 imageForImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (!self->_custom)
  {
    [v4 size];
    width = self->_constraintSize.width;
    height = self->_constraintSize.height;
    if (height == 0.0)
    {
      if (width == 0.0)
      {
        v22 = v4;
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
    [v4 scale];
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
  [v4 size];
  SKUIIconFrameForIconSize(&v28.width, 0, v13, v14, self->_constraintSize.width, self->_constraintSize.height, 0.0);
  v15 = [MEMORY[0x277D759A0] mainScreen];
  [v15 scale];
  UIGraphicsBeginImageContextWithOptions(v28, 0, v16);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationLow);
  width = v28.width;
  height = v28.height;
LABEL_14:
  [v4 drawInRect:{0.0, 0.0, width, height}];
  [(SKUISizeToFitImageDataConsumer *)self _drawGradientWithContext:CurrentContext imageRect:0.0, 0.0, width, height];
  CGContextRestoreGState(CurrentContext);
  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_15:

  return v22;
}

- (void)_drawGradientWithContext:(CGContext *)a3 imageRect:(CGRect)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_gradientEndColor)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
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
    CGContextDrawLinearGradient(a3, v13, v18, v19, 0);
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