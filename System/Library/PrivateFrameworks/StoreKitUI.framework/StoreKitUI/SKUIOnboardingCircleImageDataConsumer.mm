@interface SKUIOnboardingCircleImageDataConsumer
- (CGSize)outputSize;
- (id)_saturationBackgroundImageWithSize:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SKUIOnboardingCircleImageDataConsumer

- (id)imageForImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOnboardingCircleImageDataConsumer imageForImage:];
  }

  if ([(SKUIOnboardingCircleImageDataConsumer *)self usesSaturationFilter])
  {
    v5 = SKUICoreImageFramework();
    v6 = SKUIWeakLinkedClassForString(&cfstr_Cicontext.isa, v5);
    v7 = SKUIWeakLinkedClassForString(&cfstr_Ciimage.isa, v5);
    v8 = SKUIWeakLinkedClassForString(&cfstr_Cifilter.isa, v5);
    v9 = *SKUIWeakLinkedSymbolForString("kCIInputBackgroundImageKey", v5);
    v10 = *SKUIWeakLinkedSymbolForString("kCIInputImageKey", v5);
    v11 = *SKUIWeakLinkedSymbolForString("kCIOutputImageKey", v5);
    v12 = [v8 filterWithName:@"CIColorControls" keysAndValues:{@"inputSaturation", &unk_2828D3020, 0}];
    v13 = [v7 imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
    [v12 setValue:v13 forKey:v10];

    v14 = [v8 filterWithName:@"CIMultiplyBlendMode"];
    v15 = [v12 valueForKey:v11];
    [v14 setValue:v15 forKey:v10];

    [imageCopy size];
    v16 = [(SKUIOnboardingCircleImageDataConsumer *)self _saturationBackgroundImageWithSize:?];
    v17 = [v7 imageWithCGImage:{objc_msgSend(v16, "CGImage")}];
    [v14 setValue:v17 forKey:v9];

    v18 = [v6 contextWithOptions:0];
    v19 = [v14 valueForKey:v11];

    [v19 extent];
    v20 = [v18 createCGImage:v19 fromRect:?];
    v21 = [MEMORY[0x277D755B8] imageWithCGImage:v20];

    CFRelease(v20);
    imageCopy = v21;
  }

  p_outputSize = &self->_outputSize;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIGraphicsBeginImageContextWithOptions(*p_outputSize, 0, v24);

  CurrentContext = UIGraphicsGetCurrentContext();
  width = p_outputSize->width;
  height = p_outputSize->height;
  CGContextBeginPath(CurrentContext);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = width;
  v31.size.height = height;
  CGContextAddEllipseInRect(CurrentContext, v31);
  CGContextClosePath(CurrentContext);
  CGContextClip(CurrentContext);
  [imageCopy drawInRect:{0.0, 0.0, width, height}];
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v28;
}

- (id)_saturationBackgroundImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;
  v13.width = width;
  v13.height = height;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v8);

  tintColor = [(SKUIOnboardingCircleImageDataConsumer *)self tintColor];
  [tintColor set];

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = width;
  v14.size.height = height;
  UIRectFill(v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)imageForImage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOnboardingCircleImageDataConsumer imageForImage:]";
}

@end