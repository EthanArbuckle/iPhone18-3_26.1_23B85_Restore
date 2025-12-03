@interface SKUIProductImageDataConsumer
+ (SKUIProductImageDataConsumer)consumerWithSize:(CGSize)size;
+ (id)cardConsumer;
+ (id)chartsConsumer;
+ (id)giftComposeConsumer;
+ (id)giftComposeLetterboxConsumer;
+ (id)giftComposePosterConsumer;
+ (id)giftResultConsumer;
+ (id)giftThemeConsumer;
+ (id)giftThemeLetterboxConsumer;
+ (id)giftThemePosterConsumer;
+ (id)gridConsumer;
+ (id)lockupConsumerWithSize:(int64_t)size itemKind:(int64_t)kind;
+ (id)productPageConsumer;
+ (id)purchasedConsumer;
+ (id)smartBannerConsumer;
+ (id)swooshConsumer;
+ (id)updatesConsumer;
+ (id)wishlistConsumer;
- (CGSize)iconSize;
- (CGSize)imageSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForColor:(id)color;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SKUIProductImageDataConsumer

+ (SKUIProductImageDataConsumer)consumerWithSize:(CGSize)size
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
        [(SKUIProductImageDataConsumer *)v6 consumerWithSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  consumer = [self consumer];
  consumer[2] = width;
  consumer[3] = height;

  return consumer;
}

+ (id)gridConsumer
{
  consumer = [self consumer];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 gridConsumer:v4];
      }
    }
  }

  consumer[1] = vdupq_n_s64(0x4052C00000000000uLL);

  return consumer;
}

+ (id)lockupConsumerWithSize:(int64_t)size itemKind:(int64_t)kind
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIProductImageDataConsumer *)v7 lockupConsumerWithSize:v8 itemKind:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  consumer = [self consumer];
  *(consumer + 16) = SKUILockupImageSizeForLockupSize(size, kind);
  *(consumer + 24) = v16;

  return consumer;
}

+ (id)cardConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 cardConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 64.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = 72.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)chartsConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 chartsConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v14 = 67.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)updatesConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 updatesConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 57.0;
  if (userInterfaceIdiom == 1)
  {
    v14 = 72.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)purchasedConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 purchasedConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 57.0;
  if (userInterfaceIdiom == 1)
  {
    v14 = 72.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)productPageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 productPageConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 100.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = 170.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)swooshConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 swooshConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 72.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = 90.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)giftComposeConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftComposeConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = vdupq_n_s64(0x4052C00000000000uLL);

  return consumer;
}

+ (id)giftComposeLetterboxConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftComposeLetterboxConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = xmmword_215F40630;

  return consumer;
}

+ (id)giftComposePosterConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftComposePosterConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = qword_215F40640[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)giftThemeConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftThemeConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = vdupq_n_s64(0x404C800000000000uLL);

  return consumer;
}

+ (id)giftThemeLetterboxConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftThemeLetterboxConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = xmmword_215F40650;

  return consumer;
}

+ (id)giftThemePosterConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftThemePosterConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = vdupq_n_s64(0x404C800000000000uLL);

  return consumer;
}

+ (id)giftResultConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 giftResultConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 72.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = 144.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)smartBannerConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 smartBannerConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v14 = 64.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = 75.0;
  }

  consumer[2] = v14;
  consumer[3] = v14;

  return consumer;
}

+ (id)wishlistConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 wishlistConsumer:v4];
      }
    }
  }

  consumer = [self consumer];
  consumer[1] = vdupq_n_s64(0x4050000000000000uLL);

  return consumer;
}

- (CGSize)imageSize
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIProductImageDataConsumer *)v3 imageSize:v4];
      }
    }
  }

  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)imageForColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductImageDataConsumer *)v5 imageForColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIProductImageDataConsumer *)self imageForColor:colorCopy size:self->_iconSize.width, self->_iconSize.height];

  return v13;
}

- (id)imageForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v39[2] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIProductImageDataConsumer *)v7 imageForColor:v8 size:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = 0;
  if (width > 0.0 && height > 0.0)
  {
    v38 = 0uLL;
    v37 = 0u;
    v36 = 0u;
    SKUIIconFrameForIconSize(&v38, &v36, width, height, self->_iconSize.width, self->_iconSize.height, 0.0);
    colorScheme = self->_colorScheme;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    SKUIIconColorsForColorScheme(colorScheme, &v35, &v34, &v33);
    v17 = v35;
    v18 = v34;
    v19 = v33;
    v39[0] = [v17 CGColor];
    v39[1] = [v18 CGColor];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    layer = [MEMORY[0x277CD9EB0] layer];
    [layer setBounds:{v36, v37}];
    [layer setColors:v20];
    [layer setLocations:&unk_2828D2FD8];
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [preferredFormat setScale:?];

    v24 = objc_alloc(MEMORY[0x277D75560]);
    v25 = [v24 initWithSize:preferredFormat format:v38];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __51__SKUIProductImageDataConsumer_imageForColor_size___block_invoke;
    v28[3] = &unk_278200A00;
    v30 = v38;
    v31 = v36;
    v32 = v37;
    v28[4] = self;
    v29 = layer;
    v26 = layer;
    v15 = [v25 imageWithActions:v28];
  }

  return v15;
}

void __51__SKUIProductImageDataConsumer_imageForColor_size___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 32) + 8);
  if (v5)
  {
    [v5 setFill];
  }

  [v6 clipToRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v6 fillRect:{0.0, 0.0, v3, v4}];
  [*(a1 + 40) renderInContext:{objc_msgSend(v6, "CGContext")}];
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
        [(SKUIProductImageDataConsumer *)v5 imageForImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v26.width = 0.0;
  v26.height = 0.0;
  v24 = 0u;
  v25 = 0u;
  [imageCopy size];
  SKUIIconFrameForIconSize(&v26.width, &v24, v13, v14, self->_iconSize.width, self->_iconSize.height, 0.0);
  colorScheme = self->_colorScheme;
  v23 = 0;
  SKUIIconColorsForColorScheme(colorScheme, 0, 0, &v23);
  v16 = v23;
  v17 = self->_backgroundColor != 0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIGraphicsBeginImageContextWithOptions(v26, v17, v19);

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [(UIColor *)backgroundColor set];
    v28.size.width = v26.width;
    v28.size.height = v26.height;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    UIRectFill(v28);
  }

  [imageCopy drawInRect:{v24, v25}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductImageDataConsumer *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v13 + 8), self->_backgroundColor);
  objc_storeStrong((v13 + 32), self->_colorScheme);
  *(v13 + 16) = self->_iconSize;
  return v13;
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end