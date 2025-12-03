@interface SKUIStyledImageDataConsumer
+ (BOOL)isImageCompressionEnabled;
+ (id)appIconConsumerWithSize:(CGSize)size;
+ (id)applePackIconConsumer;
+ (id)brickConsumer;
+ (id)brickConsumerWithBrickSize:(CGSize)size;
+ (id)cardIconConsumer;
+ (id)cardProductImageConsumer;
+ (id)categoriesMessagesConsumer;
+ (id)categoryIconConsumer;
+ (id)giftComposeProductImageConsumer;
+ (id)giftResultIconConsumer;
+ (id)giftResultProductImageConsumer;
+ (id)giftThemeIconConsumer;
+ (id)giftThemeProductImageConsumer;
+ (id)gridIconConsumer;
+ (id)listIconConsumer;
+ (id)lockupIconConsumerWithSize:(int64_t)size;
+ (id)lockupProductImageConsumerWithSize:(int64_t)size;
+ (id)manageMessagesConsumer;
+ (id)mixedTopChartsNewsstandConsumer;
+ (id)newsstandRoomNewsstandConsumer;
+ (id)newsstandSwooshNewsstandConsumer;
+ (id)parentBundleIconConsumer;
+ (id)productImageConsumerWithSize:(CGSize)size;
+ (id)productPageProductImageConsumer;
+ (id)purchasedIconConsumer;
+ (id)purchasedMessagesConsumer;
+ (id)purchasedProductImageConsumer;
+ (id)roomIconConsumer;
+ (id)roomProductImageConsumer;
+ (id)safariBannerIconConsumer;
+ (id)safariBannerProductImageConsumer;
+ (id)shareSheetIconConsumer;
+ (id)swooshNewsstandConsumer;
+ (id)topChartsIconConsumer;
+ (id)topChartsNewsstandConsumer;
+ (id)updatesIconConsumer;
+ (id)updatesProductImageConsumer;
+ (id)wishlistIconConsumer;
+ (id)wishlistProductImageConsumer;
- (BOOL)_backgroundIsOpaque;
- (BOOL)isImagePlaceholderAvailable;
- (CGSize)imageSize;
- (CGSize)shadowOffset;
- (SKUIStyledImageDataConsumer)init;
- (SKUIStyledImageDataConsumer)initWithSize:(CGSize)size treatment:(int64_t)treatment;
- (SKUIStyledImageDataConsumer)initWithViewElement:(id)element;
- (UIEdgeInsets)borderMargins;
- (UIEdgeInsets)borderWidths;
- (UIEdgeInsets)imagePadding;
- (id)_arcRoundedImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect cornerRadius:(double)radius drawBlock:(id)block;
- (id)_defaultPlaceholderColor;
- (id)_dynamicUberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block;
- (id)_imageWithSize:(CGSize)size isOpaque:(BOOL)opaque drawBlock:(id)block;
- (id)_leftToRightGradient:(CGRect)gradient contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_outputImageWithInputSize:(CGSize)size outputSize:(CGSize)outputSize drawBlock:(id)block;
- (id)_placeholderCornerPathBlock;
- (id)_radialBlurImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_roundedBorderWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_scaledImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)_uberBannerImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block;
- (id)_uberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size backgroundColor:(id)color drawBlock:(id)block;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
- (id)imagePlaceholderForColor:(id)color;
- (void)_drawBordersWithImageRect:(CGRect)rect bounds:(CGRect)bounds;
@end

@implementation SKUIStyledImageDataConsumer

+ (id)appIconConsumerWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v6 appIconConsumerWithSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [[self alloc] initWithSize:1 treatment:{width, height}];

  return v14;
}

+ (id)applePackIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 applePackIconConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 36.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 47.0;
  }

  v14 = [self appIconConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)brickConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 brickConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v13 = 103.0;
    v14 = 210.0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v17 = v16;

    if (v17 <= 375.0)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 bounds];
      v20 = v19;

      v13 = 100.0;
      if (v20 <= 320.0)
      {
        v13 = 78.0;
      }

      v14 = dbl_215F3F640[v20 > 320.0];
    }

    else
    {
      v13 = 86.0;
      v14 = 175.0;
    }
  }

  v21 = [self brickConsumerWithBrickSize:{v14, v13}];

  return v21;
}

+ (id)brickConsumerWithBrickSize:(CGSize)size
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
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v6 brickConsumerWithBrickSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [[self alloc] initWithSize:2 treatment:{width, height}];

  return v14;
}

+ (id)cardIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 cardIconConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 72.0;
  }

  v14 = [self appIconConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)cardProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 cardProductImageConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 72.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)categoryIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 categoryIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{33.0, 33.0}];

  return v11;
}

+ (id)giftComposeProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 giftComposeProductImageConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 75.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)giftResultIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 giftResultIconConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 72.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 144.0;
  }

  v14 = [self appIconConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)giftResultProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 giftResultProductImageConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 72.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 144.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)giftThemeIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 giftThemeIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{57.0, 57.0}];

  return v11;
}

+ (id)giftThemeProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 giftThemeProductImageConsumer:v4];
      }
    }
  }

  v11 = [self productImageConsumerWithSize:{57.0, 57.0}];

  return v11;
}

+ (id)gridIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 gridIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{75.0, 75.0}];

  return v11;
}

+ (id)listIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 listIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{64.0, 64.0}];

  return v11;
}

+ (id)lockupIconConsumerWithSize:(int64_t)size
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v5 lockupIconConsumerWithSize:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [self appIconConsumerWithSize:{SKUILockupImageSizeForLockupSize(size, 12)}];

  return v13;
}

+ (id)lockupProductImageConsumerWithSize:(int64_t)size
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v5 lockupProductImageConsumerWithSize:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [self productImageConsumerWithSize:{SKUILockupImageSizeForLockupSize(size, 12)}];

  return v13;
}

+ (id)mixedTopChartsNewsstandConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 mixedTopChartsNewsstandConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 67.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)newsstandRoomNewsstandConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 newsstandRoomNewsstandConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v12 = [currentDevice userInterfaceIdiom] == 1;

  v13 = [self productImageConsumerWithSize:{dbl_215F3F650[v12], dbl_215F3F660[v12]}];

  return v13;
}

+ (id)newsstandSwooshNewsstandConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 newsstandSwooshNewsstandConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 107.0;
  if (userInterfaceIdiom != 1)
  {
    v13 = 100.0;
  }

  v14 = [self productImageConsumerWithSize:{dbl_215F3F670[userInterfaceIdiom == 1], v13}];

  return v14;
}

+ (id)parentBundleIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 parentBundleIconConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 72.0;
  }

  v14 = [self appIconConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)productImageConsumerWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v6 productImageConsumerWithSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [[self alloc] initWithSize:5 treatment:{width, height}];

  return v14;
}

+ (id)productPageProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 productPageProductImageConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 100.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 170.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)purchasedIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 purchasedIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{64.0, 64.0}];

  return v11;
}

+ (id)purchasedProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 purchasedProductImageConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 57.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 72.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)roomIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 roomIconConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 75.0;
  }

  v14 = [self appIconConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)roomProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 roomProductImageConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 75.0;
  }

  v14 = [self productImageConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)safariBannerIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 safariBannerIconConsumer:v4];
      }
    }
  }

  roomIconConsumer = [self roomIconConsumer];

  return roomIconConsumer;
}

+ (id)safariBannerProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 safariBannerProductImageConsumer:v4];
      }
    }
  }

  roomProductImageConsumer = [self roomProductImageConsumer];

  return roomProductImageConsumer;
}

+ (id)shareSheetIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 shareSheetIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{100.0, 100.0}];

  return v11;
}

+ (id)swooshNewsstandConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 swooshNewsstandConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 200.0;
  if (userInterfaceIdiom != 1)
  {
    v13 = 107.0;
  }

  v14 = [self productImageConsumerWithSize:{dbl_215F3F680[userInterfaceIdiom == 1], v13}];

  return v14;
}

+ (id)topChartsIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 topChartsIconConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v13 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v13 = 75.0;
  }

  v14 = [self appIconConsumerWithSize:{v13, v13}];

  return v14;
}

+ (id)topChartsNewsstandConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 topChartsNewsstandConsumer:v4];
      }
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v12 = [currentDevice userInterfaceIdiom] == 1;

  v13 = [self productImageConsumerWithSize:{dbl_215F3F650[v12], dbl_215F3F660[v12]}];

  return v13;
}

+ (id)updatesIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 updatesIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{57.0, 57.0}];

  return v11;
}

+ (id)updatesProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 updatesProductImageConsumer:v4];
      }
    }
  }

  v11 = [self productImageConsumerWithSize:{57.0, 57.0}];

  return v11;
}

+ (id)wishlistIconConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 wishlistIconConsumer:v4];
      }
    }
  }

  v11 = [self appIconConsumerWithSize:{64.0, 64.0}];

  return v11;
}

+ (id)wishlistProductImageConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 wishlistProductImageConsumer:v4];
      }
    }
  }

  v11 = [self productImageConsumerWithSize:{64.0, 64.0}];

  return v11;
}

+ (id)manageMessagesConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 manageMessagesConsumer:v4];
      }
    }
  }

  v11 = [[self alloc] initWithSize:15 treatment:{29.0, 22.0}];

  return v11;
}

+ (id)categoriesMessagesConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 categoriesMessagesConsumer:v4];
      }
    }
  }

  v11 = [[self alloc] initWithSize:15 treatment:{35.0, 26.0}];

  return v11;
}

+ (id)purchasedMessagesConsumer
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer(SKUILegacy) *)v3 purchasedMessagesConsumer:v4];
      }
    }
  }

  v11 = [[self alloc] initWithSize:15 treatment:{64.0, 48.0}];

  return v11;
}

+ (BOOL)isImageCompressionEnabled
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIStyledImageDataConsumer *)v2 isImageCompressionEnabled:v3];
      }
    }
  }

  if (isImageCompressionEnabled_onceToken != -1)
  {
    +[SKUIStyledImageDataConsumer isImageCompressionEnabled];
  }

  return isImageCompressionEnabled_isImageCompressionEnabled;
}

uint64_t __56__SKUIStyledImageDataConsumer_isImageCompressionEnabled__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"SKUIImageCompressionEnabled", *MEMORY[0x277D6A708], 0);
  isImageCompressionEnabled_isImageCompressionEnabled = result != 0;
  return result;
}

- (SKUIStyledImageDataConsumer)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIStyledImageDataConsumer *)v3 init:v4];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIStyledImageDataConsumer;
  v11 = [(SKUIStyledImageDataConsumer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_imageContentMode = 0;
    _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
    startingTraitCollection = v12->_startingTraitCollection;
    v12->_startingTraitCollection = _currentTraitCollection;
  }

  return v12;
}

- (SKUIStyledImageDataConsumer)initWithSize:(CGSize)size treatment:(int64_t)treatment
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = SKUIStyledImageDataConsumer;
  v7 = [(SKUIStyledImageDataConsumer *)&v10 init];
  if (v7)
  {
    if (treatment <= 0xF && ((1 << treatment) & 0x8026) != 0)
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SKUIStyledImageDataConsumer *)v7 setBorderColor:v8];

      [(SKUIStyledImageDataConsumer *)v7 setBorderWidths:1.0, 1.0, 1.0, 1.0];
    }

    [(SKUIStyledImageDataConsumer *)v7 setImageSize:width, height];
    [(SKUIStyledImageDataConsumer *)v7 setImageTreatment:treatment];
    [(SKUIStyledImageDataConsumer *)v7 setImageContentMode:0];
  }

  return v7;
}

- (SKUIStyledImageDataConsumer)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStyledImageDataConsumer *)v5 initWithViewElement:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIStyledImageDataConsumer *)self init];
  if (v13)
  {
    style = [elementCopy style];
    v13->_imageContentMode = [style fillImage] == 1;
    [style elementPadding];
    v13->_imagePadding.top = v15;
    v13->_imagePadding.left = v16;
    v13->_imagePadding.bottom = v17;
    v13->_imagePadding.right = v18;
    ikBackgroundColor = [style ikBackgroundColor];
    iKBackgroundColor = v13->_iKBackgroundColor;
    v13->_iKBackgroundColor = ikBackgroundColor;

    ikBackgroundColor2 = [style ikBackgroundColor];
    color = [ikBackgroundColor2 color];
    backgroundColor = v13->_backgroundColor;
    v13->_backgroundColor = color;

    imageTreatment = [style imageTreatment];
    v13->_imageTreatment = SKUIImageTreatmentForString(imageTreatment);

    imageTreatment = v13->_imageTreatment;
    if (imageTreatment > 0x10)
    {
      goto LABEL_18;
    }

    if (((1 << imageTreatment) & 0x10026) != 0)
    {
      p_borderWidths = &v13->_borderWidths;
      __asm { FMOV            V0.2D, #1.0 }

      *&v13->_borderWidths.top = _Q0;
      v13->_borderWidths.bottom = 1.0;
      v32 = 1.0;
      goto LABEL_9;
    }

    if (imageTreatment == 3)
    {
      p_borderWidths = &v13->_borderWidths;
      v13->_borderWidths.top = 0.0;
      v13->_borderWidths.left = 0.0;
      v13->_borderWidths.bottom = 1.0;
      v32 = 0.0;
    }

    else
    {
LABEL_18:
      p_borderWidths = &v13->_borderWidths;
      [style borderWidths];
      v13->_borderWidths.top = v42;
      v13->_borderWidths.left = v43;
      v13->_borderWidths.bottom = v44;
    }

LABEL_9:
    p_borderWidths->right = v32;
    [style borderMargins];
    v13->_borderMargins.top = v33;
    v13->_borderMargins.left = v34;
    v13->_borderMargins.bottom = v35;
    v13->_borderMargins.right = v36;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v13->_borderWidths.top, *MEMORY[0x277D768C8]), vceqq_f64(*&v13->_borderWidths.bottom, *(MEMORY[0x277D768C8] + 16))))))
    {
LABEL_25:
      shadowColor = [elementCopy shadowColor];
      shadowColor = v13->_shadowColor;
      v13->_shadowColor = shadowColor;

      [elementCopy shadowOffset];
      v13->_shadowOffset.width = v57;
      v13->_shadowOffset.height = v58;
      [elementCopy shadowRadius];
      v13->_shadowRadius = v59;

      goto LABEL_26;
    }

    ikBorderColor = [style ikBorderColor];
    color2 = [ikBorderColor color];
    borderColor = v13->_borderColor;
    v13->_borderColor = color2;

    if (!v13->_borderColor)
    {
      v40 = v13->_backgroundColor;
      if (!v40)
      {
        goto LABEL_22;
      }

      v41 = SKUIColorSchemeStyleForColor(v40);
      if (v41 <= 1)
      {
        if (v41)
        {
          if (v41 != 1)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

LABEL_22:
        v45 = MEMORY[0x277D75348];
        v46 = 0.2;
        v47 = 0.0;
        goto LABEL_23;
      }

      if (v41 == 2)
      {
        goto LABEL_22;
      }

      if (v41 == 3)
      {
LABEL_21:
        v45 = MEMORY[0x277D75348];
        v46 = 0.15;
        v47 = 1.0;
LABEL_23:
        v48 = [v45 colorWithWhite:v47 alpha:v46];
        v49 = v13->_borderColor;
        v13->_borderColor = v48;
      }
    }

LABEL_24:
    borderRadius = [style borderRadius];
    [borderRadius edgeInsetsValue];
    v13->_borderRadii.top = v51;
    v13->_borderRadii.left = v52;
    v13->_borderRadii.bottom = v53;
    v13->_borderRadii.right = v54;

    goto LABEL_25;
  }

LABEL_26:

  return v13;
}

- (id)imageForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v8 = colorCopy;
  if (width < 0.00000011920929 || height < 0.00000011920929)
  {
    height = 0;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SKUIStyledImageDataConsumer_imageForColor_size___block_invoke;
    v12[3] = &unk_2781FCE00;
    v13 = colorCopy;
    selfCopy = self;
    height = [(SKUIStyledImageDataConsumer *)self _outputImageWithInputSize:v12 outputSize:width drawBlock:height, width, height];
  }

  return height;
}

void __50__SKUIStyledImageDataConsumer_imageForColor_size___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(a1 + 32))
  {
    [*(a1 + 32) set];
  }

  else
  {
    v9 = [*(a1 + 40) _defaultPlaceholderColor];
    [v9 set];
  }

  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;

  UIRectFill(*&v10);
}

- (id)imageForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v6 = v5;
  v8 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__SKUIStyledImageDataConsumer_imageForImage___block_invoke;
  v14[3] = &unk_2781FCE28;
  v15 = imageCopy;
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  v11 = imageCopy;
  height = [(SKUIStyledImageDataConsumer *)self _outputImageWithInputSize:v14 outputSize:v6 drawBlock:v8, width, height];

  return height;
}

- (BOOL)isImagePlaceholderAvailable
{
  imageTreatment = self->_imageTreatment;
  if (imageTreatment > 0x10)
  {
    return 0;
  }

  if (((1 << imageTreatment) & 0x1CD06) != 0)
  {
    return 1;
  }

  if (((1 << imageTreatment) & 0xA9) == 0)
  {
    return 0;
  }

  top = self->_borderWidths.top;
  left = self->_borderWidths.left;
  bottom = self->_borderWidths.bottom;
  right = self->_borderWidths.right;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIStyledImageDataConsumer *)v8 isImagePlaceholderAvailable:v9];
      }
    }
  }

  v16 = left == right;
  if (top != bottom)
  {
    v16 = 0;
  }

  return left == top && v16;
}

- (id)imagePlaceholderForColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [(SKUIStyledImageDataConsumer *)self _defaultPlaceholderColor];
  }

  v5 = 0;
  imageTreatment = self->_imageTreatment;
  if (imageTreatment <= 4)
  {
    if ((imageTreatment - 1) >= 2)
    {
      if (imageTreatment)
      {
        v7 = imageTreatment == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (imageTreatment <= 0x10)
  {
    if (((1 << imageTreatment) & 0x18C00) != 0)
    {
LABEL_12:
      v8 = [SKUIImagePlaceholder alloc];
      borderColor = self->_borderColor;
      top = self->_borderWidths.top;
      _placeholderCornerPathBlock = [(SKUIStyledImageDataConsumer *)self _placeholderCornerPathBlock];
      v12 = v8;
      v13 = colorCopy;
      v14 = borderColor;
      v15 = top;
LABEL_13:
      v5 = [(SKUIImagePlaceholder *)v12 initWithBackgroundColor:v13 borderColor:v14 borderWidth:_placeholderCornerPathBlock cornerPathBlock:v15];

      goto LABEL_37;
    }

    if (imageTreatment == 8)
    {
      v33 = [SKUIImagePlaceholder alloc];
      v35 = 0.0;
      v36 = colorCopy;
      v34 = 0;
      goto LABEL_36;
    }

    if (imageTreatment == 14)
    {
      v16 = [SKUIImagePlaceholder alloc];
      v17 = self->_borderColor;
      _placeholderCornerPathBlock = [(SKUIStyledImageDataConsumer *)self _placeholderCornerPathBlock];
      v15 = 0.0;
      v12 = v16;
      v13 = v17;
      v14 = 0;
      goto LABEL_13;
    }
  }

  if (imageTreatment != 7 && imageTreatment != 5)
  {
    goto LABEL_37;
  }

LABEL_22:
  v19 = self->_borderWidths.top;
  left = self->_borderWidths.left;
  bottom = self->_borderWidths.bottom;
  right = self->_borderWidths.right;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v23)
      {
        [(SKUIStyledImageDataConsumer *)v23 isImagePlaceholderAvailable:v24];
      }
    }
  }

  if (left != right || v19 != bottom || left != v19)
  {
    v5 = 0;
    goto LABEL_37;
  }

  v33 = [SKUIImagePlaceholder alloc];
  v34 = self->_borderColor;
  v35 = self->_borderWidths.left;
  v36 = colorCopy;
LABEL_36:
  v5 = [(SKUIImagePlaceholder *)v33 initWithBackgroundColor:v36 borderColor:v34 borderWidth:v35 cornerRadius:0.0];
LABEL_37:

  return v5;
}

- (id)_placeholderCornerPathBlock
{
  v5 = 0;
  imageTreatment = self->_imageTreatment;
  if (imageTreatment > 13)
  {
    if (imageTreatment != 14)
    {
      if (imageTreatment == 15)
      {
        v5 = &__block_literal_global_17;
      }

      else if (imageTreatment == 16)
      {
        v5 = &__block_literal_global_19;

        return v5;
      }

LABEL_24:

      return v5;
    }

    aBlock[5] = v2;
    v10 = v3;
    top = self->_borderRadii.top;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SKUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke_4;
    aBlock[3] = &__block_descriptor_40_e53___UIBezierPath_40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    *&aBlock[4] = top;
    v5 = _Block_copy(aBlock);
  }

  else if ((imageTreatment - 10) < 2)
  {
    v5 = &__block_literal_global_15;
  }

  else
  {
    if (imageTreatment != 1)
    {
      if (imageTreatment == 2)
      {
        v5 = &__block_literal_global_13;

        return v5;
      }

      goto LABEL_24;
    }

    v5 = &__block_literal_global_10;
  }

  return v5;
}

id __58__SKUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke(double a1, double a2, double a3, double a4)
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        __58__SKUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  if (a4 >= a3)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  v17 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:a1 cornerRadius:{a2, a3, a4, v16 / 57.0 * 13.5}];

  return v17;
}

uint64_t __58__SKUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke_5(double a1, double a2, double a3, double a4)
{
  v8 = CGRectGetHeight(*&a1) * 0.5;
  v9 = MEMORY[0x277D75208];

  return [v9 _bezierPathWithArcRoundedRect:a1 cornerRadius:{a2, a3, a4, v8}];
}

- (BOOL)_backgroundIsOpaque
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    LOBYTE(backgroundColor) = CGColorGetAlpha([(UIColor *)backgroundColor CGColor]) == 1.0;
  }

  return backgroundColor;
}

- (id)_defaultPlaceholderColor
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    goto LABEL_12;
  }

  v4 = SKUIColorSchemeStyleForColor(backgroundColor);
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v6 = self->_backgroundColor;
    v7 = -0.2;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_9:
    v6 = self->_backgroundColor;
    v7 = 0.15;
LABEL_11:
    v5 = SKUIColorByAdjustingBrightness(v6, v7);
  }

LABEL_12:

  return v5;
}

- (void)_drawBordersWithImageRect:(CGRect)rect bounds:(CGRect)bounds
{
  borderColor = self->_borderColor;
  if (borderColor)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v10 = rect.size.height;
    v11 = rect.size.width;
    v12 = rect.origin.y;
    v13 = rect.origin.x;
    [(UIColor *)borderColor set];
    if (x >= v13)
    {
      v14 = x;
    }

    else
    {
      v14 = v13;
    }

    rect = v14;
    if (y < v12)
    {
      y = v12;
    }

    if (height >= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = height;
    }

    if (width >= v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = width;
    }

    v33 = v16;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v19 = v18;

    left = self->_borderWidths.left;
    v20 = self->_borderWidths.top / v19;
    bottom = self->_borderWidths.bottom;
    v22 = self->_borderWidths.right / v19;
    if (v20 > 0.00000011920929)
    {
      v36.size.width = v33;
      v36.origin.x = rect;
      v36.origin.y = y;
      v36.size.height = self->_borderWidths.top / v19;
      UIRectFillUsingBlendMode(v36, kCGBlendModeNormal);
    }

    v23 = y + v20;
    v24 = v15;
    v25 = v15 - v20;
    v26 = bottom / v19;
    if (v22 > 0.00000011920929)
    {
      v37.origin.x = rect + v33 - v22;
      v37.size.height = v25 - v26;
      v37.origin.y = v23;
      v37.size.width = v22;
      UIRectFillUsingBlendMode(v37, kCGBlendModeNormal);
    }

    v27 = left / v19;
    if (v26 > 0.00000011920929)
    {
      v38.origin.y = y + v24 - v26;
      v38.size.width = v33;
      v38.origin.x = rect;
      v38.size.height = v26;
      UIRectFillUsingBlendMode(v38, kCGBlendModeNormal);
    }

    if (v27 > 0.00000011920929)
    {
      rectCopy = rect;
      v30 = v23;
      v31 = v27;

      v28 = v25 - v26;
      UIRectFillUsingBlendMode(*&rectCopy, kCGBlendModeNormal);
    }
  }
}

- (id)_outputImageWithInputSize:(CGSize)size outputSize:(CGSize)outputSize drawBlock:(id)block
{
  height = outputSize.height;
  width = outputSize.width;
  v7 = size.height;
  v8 = size.width;
  blockCopy = block;
  v11 = objc_autoreleasePoolPush();
  switch(self->_imageTreatment)
  {
    case 0:
    case 3:
    case 5:
    case 7:
      right = self->_imagePadding.right;
      v109 = *&self->_imagePadding.left;
      top = self->_imagePadding.top;
      SKUIImageRectForBoundsAndPadding();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      selfCopy4 = self;
      v21 = width;
      v22 = height;
      goto LABEL_3;
    case 1:
      v116 = self->_imagePadding.right;
      v110 = *&self->_imagePadding.left;
      SKUIImageRectForBoundsAndPadding();
      x = v49;
      y = v50;
      v26 = v51;
      v27 = v52;
      if (os_variant_has_internal_content())
      {
        if (_os_feature_enabled_impl())
        {
          v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
          if (v53)
          {
            __58__SKUIStyledImageDataConsumer__placeholderCornerPathBlock__block_invoke_cold_1(v53, v54, v55, v56, v57, v58, v59, v60);
          }
        }
      }

      if (v27 >= v26)
      {
        v61 = v27;
      }

      else
      {
        v61 = v26;
      }

      v29 = v61 / 57.0 * 13.5;
      goto LABEL_19;
    case 2:
      v117 = self->_imagePadding.right;
      v111 = *&self->_imagePadding.left;
      SKUIImageRectForBoundsAndPadding();
      v31 = v73;
      v33 = v74;
      v35 = v75;
      v37 = v76;
      *&v38 = 10.0;
      goto LABEL_24;
    case 4:
      v120 = self->_imagePadding.right;
      v114 = *&self->_imagePadding.left;
      v107 = self->_imagePadding.top;
      SKUIImageRectForBoundsAndPadding();
      v23 = [(SKUIStyledImageDataConsumer *)self _leftToRightGradient:blockCopy contentRect:0.0 drawBlock:0.0, width, height, v62, v63, v64, v65, *&v107, v114, *&v120];
      goto LABEL_28;
    case 6:
      v119 = self->_imagePadding.right;
      v113 = *&self->_imagePadding.left;
      v106 = self->_imagePadding.top;
      SKUIImageRectForBoundsAndPadding();
      v47 = [(SKUIStyledImageDataConsumer *)self _scaledImageWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, width, height, v43, v44, v45, v46, *&v106, v113, *&v119];
      v48 = [v47 imageWithRenderingMode:2];

      break;
    case 8:
      v23 = [(SKUIStyledImageDataConsumer *)self _dynamicUberImageWithBounds:blockCopy inputSize:0.0 drawBlock:0.0, width, height, v8, v7];
      goto LABEL_28;
    case 9:
      v23 = [(SKUIStyledImageDataConsumer *)self _uberBannerImageWithBounds:blockCopy inputSize:0.0 drawBlock:0.0, width, height, v8, v7];
      goto LABEL_28;
    case 0xALL:
    case 0xBLL:
      v116 = self->_imagePadding.right;
      v110 = *&self->_imagePadding.left;
      SKUIImageRectForBoundsAndPadding();
      x = v124.origin.x;
      y = v124.origin.y;
      v26 = v124.size.width;
      v27 = v124.size.height;
      v28 = CGRectGetWidth(v124) * 0.5;
      v125.origin.x = x;
      v125.origin.y = y;
      v125.size.width = v26;
      v125.size.height = v27;
      v29 = CGRectGetHeight(v125) * 0.5;
      if (v28 >= v29)
      {
        v29 = v28;
      }

LABEL_19:
      [(SKUIStyledImageDataConsumer *)self _arcRoundedImageWithBounds:blockCopy contentRect:0.0 cornerRadius:0.0 drawBlock:width, height, x, y, v26, v27, *&v29, v110, *&v116];
      goto LABEL_27;
    case 0xCLL:
      right = self->_imagePadding.right;
      v109 = *&self->_imagePadding.left;
      top = self->_imagePadding.top;
      SKUIImageRectForBoundsAndPadding();
      v13 = v66;
      v15 = v67;
      v17 = v68;
      v19 = v69;
      selfCopy3 = self;
      v71 = width;
      v72 = height;
      goto LABEL_41;
    case 0xDLL:
      v98 = v8 + self->_imagePadding.left + self->_imagePadding.right;
      v99 = v7 + self->_imagePadding.top + self->_imagePadding.bottom;
      v109 = *&self->_imagePadding.left;
      right = self->_imagePadding.right;
      top = self->_imagePadding.top;
      SKUIImageRectForBoundsAndPadding();
      v13 = v100;
      v15 = v101;
      v17 = v102;
      v19 = v103;
      if (self->_imagePadding.bottom >= 0.00000011920929)
      {
        selfCopy3 = self;
        v71 = v98;
        v72 = v99;
LABEL_41:
        v23 = [(SKUIStyledImageDataConsumer *)selfCopy3 _radialBlurImageWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, v71, v72, v13, v15, v17, v19, *&top, v109, *&right];
      }

      else
      {
        selfCopy4 = self;
        v21 = v98;
        v22 = v99;
LABEL_3:
        v23 = [(SKUIStyledImageDataConsumer *)selfCopy4 _scaledImageWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, v21, v22, v13, v15, v17, v19, *&top, v109, *&right];
      }

      goto LABEL_28;
    case 0xELL:
      v118 = self->_borderWidths.right;
      v112 = *&self->_borderWidths.left;
      v105 = self->_borderWidths.top;
      SKUIImageRectForBoundsAndPadding();
      v23 = [(SKUIStyledImageDataConsumer *)self _roundedBorderWithBounds:blockCopy contentRect:0.0 drawBlock:0.0, width, height, v39, v40, v41, v42, *&v105, v112, *&v118];
      goto LABEL_28;
    case 0xFLL:
      v117 = self->_imagePadding.right;
      v111 = *&self->_imagePadding.left;
      SKUIImageRectForBoundsAndPadding();
      v31 = v77;
      v33 = v78;
      v35 = v79;
      v37 = v80;
      v108 = v80 * 0.5;
      goto LABEL_26;
    case 0x10:
      v117 = self->_imagePadding.right;
      v111 = *&self->_imagePadding.left;
      SKUIImageRectForBoundsAndPadding();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      *&v38 = 6.0;
LABEL_24:
      v108 = *&v38;
LABEL_26:
      [(SKUIStyledImageDataConsumer *)self _arcRoundedImageWithBounds:blockCopy contentRect:0.0 cornerRadius:0.0 drawBlock:width, height, v31, v33, v35, v37, *&v108, v111, *&v117];
      v23 = LABEL_27:;
LABEL_28:
      v48 = v23;
      break;
    default:
      v48 = 0;
      break;
  }

  p_shadowOffset = &self->_shadowOffset;
  if (self->_shadowOffset.width != *MEMORY[0x277CBF3A8] || self->_shadowOffset.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    [v48 size];
    v84 = v83 + (fabs(p_shadowOffset->width) + self->_shadowRadius) * 2.0;
    [v48 size];
    shadowRadius = self->_shadowRadius;
    v86 = fabs(self->_shadowOffset.height) + shadowRadius;
    v88 = v87 + v86 * 2.0;
    v89 = shadowRadius + fabs(p_shadowOffset->width);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v92 = v91;
    v122.width = v84;
    v122.height = v88;
    UIGraphicsBeginImageContextWithOptions(v122, 0, v92);

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeMultiply);
    v94 = self->_shadowRadius;
    cGColor = [(UIColor *)self->_shadowColor CGColor];
    v123.width = p_shadowOffset->width;
    v123.height = self->_shadowOffset.height;
    CGContextSetShadowWithColor(CurrentContext, v123, v94, cGColor);
    [v48 drawAtPoint:{v89, v86}];
    v96 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v48 = v96;
  }

  objc_autoreleasePoolPop(v11);

  return v48;
}

- (id)_imageWithSize:(CGSize)size isOpaque:(BOOL)opaque drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = v10;

  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, opaque, v11);
  if (+[SKUIStyledImageDataConsumer isImageCompressionEnabled])
  {
    HasASTCSupport = SKUIGraphicsDeviceHasASTCSupport();
    blockCopy[2](blockCopy, HasASTCSupport);
    if (HasASTCSupport)
    {
      v13 = SKUIGraphicsGetASTCImageFromCurrentImageContext(v11);
      goto LABEL_6;
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }

  v13 = UIGraphicsGetImageFromCurrentImageContext();
LABEL_6:
  v14 = v13;
  UIGraphicsEndImageContext();

  return v14;
}

- (id)_arcRoundedImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect cornerRadius:(double)radius drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = bounds.size.height;
  v11 = bounds.size.width;
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__SKUIStyledImageDataConsumer__arcRoundedImageWithBounds_contentRect_cornerRadius_drawBlock___block_invoke;
  v18[3] = &unk_2781FCE90;
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  radiusCopy = radius;
  v14 = blockCopy;
  v18[4] = self;
  v19 = v14;
  v15 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:0 isOpaque:v18 drawBlock:v11, v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    [v16 setCornerRadius:radius];
    [v16 setCornerType:1];
    if (self->_borderColor)
    {
      [v16 setBorderColor:?];
      [v16 setBorderWidth:1.0];
    }
  }

  return v15;
}

void __93__SKUIStyledImageDataConsumer__arcRoundedImageWithBounds_contentRect_cornerRadius_drawBlock___block_invoke(uint64_t a1, char a2)
{
  v5 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:*(a1 + 48) cornerRadius:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [v5 setLineWidth:1.0];
  [v5 addClip];
  (*(*(a1 + 40) + 16))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  if ((a2 & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 64);
    if (v4)
    {
      [v4 set];
      [v5 strokeWithBlendMode:0 alpha:1.0];
    }
  }
}

- (id)_scaledImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SKUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__SKUIStyledImageDataConsumer__scaledImageWithBounds_contentRect_drawBlock___block_invoke;
  v19[3] = &unk_2781FCEB8;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v19[4] = self;
  v20 = blockCopy;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v16 = blockCopy;
  v17 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v19 drawBlock:v10, v9];

  return v17;
}

uint64_t __76__SKUIStyledImageDataConsumer__scaledImageWithBounds_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 set];
    UIRectFill(*(a1 + 48));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(a1 + 32);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);

  return [v3 _drawBordersWithImageRect:v4 bounds:{v5, v6, v7, v8, v9, v10, v11}];
}

- (id)_radialBlurImageWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SKUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__SKUIStyledImageDataConsumer__radialBlurImageWithBounds_contentRect_drawBlock___block_invoke;
  v19[3] = &unk_2781FCEB8;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v19[4] = self;
  v20 = blockCopy;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v16 = blockCopy;
  v17 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v19 drawBlock:v10, v9];

  return v17;
}

void __80__SKUIStyledImageDataConsumer__radialBlurImageWithBounds_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 set];
    UIRectFill(*(a1 + 48));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v3 = *(*(a1 + 32) + 56);
  if (v3)
  {
    v36 = 0u;
    memset(v37, 0, 48);
    __asm { FMOV            V0.2D, #1.0 }

    v37[3] = _Q0;
    [v3 getRed:&v36 green:&v36 + 8 blue:v37 alpha:0];
    *(&v37[1] + 8) = v36;
    *(&v37[2] + 1) = *&v37[0];
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    *locations = xmmword_215F3F970;
    v35 = 0x3FF0000000000000;
    *components = v36;
    components[2] = *v37;
    components[3] = 0.0;
    v28 = v36;
    v29 = *&v37[0];
    v30 = 0x3FE3333340000000;
    v31 = v36;
    v32 = *&v37[0];
    v33 = 0x3FF0000000000000;
    CurrentContext = UIGraphicsGetCurrentContext();
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v13 = CGGradientCreateWithColorComponents(DeviceRGB, components, locations, 3uLL);
    v14 = v10 * 0.25;
    v15 = *(a1 + 32);
    v16 = (v15 + 200);
    v17 = (v15 + 168);
    v18 = ceilf(v14);
    v19 = *(MEMORY[0x277D768C8] + 16);
    v20 = v16[1];
    if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v16, *MEMORY[0x277D768C8]), vceqq_f64(v20, v19)), xmmword_215F3F960)) != 15)
    {
      v18 = v20.f64[0] + v18;
    }

    v21 = v17[1];
    v22 = v18 - v21.f64[0];
    if (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v17, *MEMORY[0x277D768C8]), vceqq_f64(v21, v19)), xmmword_215F3F960)) == 15)
    {
      v22 = v18;
    }

    v23 = v10 * 0.5;
    v39.x = floorf(v23);
    v24 = v10 * 1.70000005;
    v25 = ceilf(v24);
    v26 = v10 * 1.89999998;
    v39.y = v9 - v25 - v22;
    CGContextDrawRadialGradient(CurrentContext, v13, v39, v25, v39, ceilf(v26), 2u);
    CGColorSpaceRelease(DeviceRGB);
    CGGradientRelease(v13);
  }
}

- (id)_roundedBorderWithBounds:(CGRect)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SKUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SKUIStyledImageDataConsumer__roundedBorderWithBounds_contentRect_drawBlock___block_invoke;
  v19[3] = &unk_2781FCEB8;
  v21 = v12;
  v22 = v11;
  v23 = v10;
  v24 = v9;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v19[4] = self;
  v20 = blockCopy;
  v16 = blockCopy;
  v17 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v19 drawBlock:v10, v9];

  return v17;
}

void __78__SKUIStyledImageDataConsumer__roundedBorderWithBounds_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*(a1 + 48) cornerRadius:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(*(a1 + 32) + 8)}];
  [*(*(a1 + 32) + 64) setFill];
  [v8 fill];
  Width = CGRectGetWidth(*(a1 + 48));
  v3 = floor((Width - CGRectGetWidth(*(a1 + 80))) * 0.5);
  Height = CGRectGetHeight(*(a1 + 48));
  v5 = floor((Height - CGRectGetHeight(*(a1 + 80))) * 0.5);
  v6 = CGRectGetWidth(*(a1 + 80));
  v7 = CGRectGetHeight(*(a1 + 80));
  (*(*(a1 + 40) + 16))(v3, v5, v6, v7);
}

- (id)_uberBannerImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  v7 = bounds.size.height;
  v8 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  blockCopy = block;
  _backgroundIsOpaque = [(SKUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SKUIStyledImageDataConsumer__uberBannerImageWithBounds_inputSize_drawBlock___block_invoke;
  v17[3] = &unk_2781FCEE0;
  v19 = x;
  v20 = y;
  v21 = v8;
  v22 = v7;
  v23 = width;
  v24 = height;
  v17[4] = self;
  v18 = blockCopy;
  v14 = blockCopy;
  v15 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v17 drawBlock:v8, v7];

  return v15;
}

uint64_t __78__SKUIStyledImageDataConsumer__uberBannerImageWithBounds_inputSize_drawBlock___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 set];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextFillRect(CurrentContext, *(a1 + 48));
    v5 = *(a1 + 80);
    v4 = *(a1 + 88);
    v6 = *(a1 + 72);
    if (*(*(a1 + 32) + 56))
    {
      *locations = xmmword_215F3F0A0;
      memset(v19, 0, sizeof(v19));
      v20 = 0;
      v21 = 0x3FF0000000000000;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v8 = CGGradientCreateWithColorComponents(DeviceRGB, v19, locations, 2uLL);
      CGColorSpaceRelease(DeviceRGB);
      MidX = CGRectGetMidX(*(a1 + 48));
      v10 = MidX + CGRectGetWidth(*(a1 + 48)) * -0.25;
      v11 = CGRectGetMidY(*(a1 + 48)) + 40.0;
      v12 = *(a1 + 64) * 0.9;
      v13 = UIGraphicsGetCurrentContext();
      v24.x = v10;
      v24.y = v11;
      v25.x = v10;
      v25.y = v11;
      CGContextDrawRadialGradient(v13, v8, v24, 0.0, v25, v12, 2u);
      CGGradientRelease(v8);
    }
  }

  else
  {
    v5 = *(a1 + 80);
    v4 = *(a1 + 88);
    v6 = *(a1 + 72);
  }

  v14 = (v6 + -8.0 + -8.0);
  v15 = (v6 - v14) * 0.5;
  v16 = floorf(v15);
  v17 = v5 * (v14 / v4);
  return (*(*(a1 + 40) + 16))(15.0, v16, ceilf(v17));
}

- (id)_dynamicUberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  v7 = bounds.size.height;
  v8 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v35[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceLevel:{-[UITraitCollection userInterfaceLevel](self->_startingTraitCollection, "userInterfaceLevel")}];
  v14 = MEMORY[0x277D75C80];
  v35[0] = v13;
  v15 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v35[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v17 = [v14 traitCollectionWithTraitsFromCollections:v16];

  v18 = MEMORY[0x277D75C80];
  v34[0] = v13;
  v19 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v34[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v21 = [v18 traitCollectionWithTraitsFromCollections:v20];

  v22 = [(UIColor *)self->_backgroundColor resolvedColorWithTraitCollection:v17];
  height = [(SKUIStyledImageDataConsumer *)self _uberImageWithBounds:v22 inputSize:blockCopy backgroundColor:x drawBlock:y, v8, v7, width, height];
  v24 = [(UIColor *)self->_backgroundColor resolvedColorWithTraitCollection:v21];
  if ([v24 isEqual:v22])
  {
    v25 = height;
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277D755B8]);
    height2 = [(SKUIStyledImageDataConsumer *)self _uberImageWithBounds:v24 inputSize:blockCopy backgroundColor:x drawBlock:y, v8, v7, width, height];
    [v25 imageAsset];
    v33 = v17;
    v28 = v27 = blockCopy;
    v29 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    [v28 registerImage:height withTraitCollection:v29];

    imageAsset = [v25 imageAsset];
    v31 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
    [imageAsset registerImage:height2 withTraitCollection:v31];

    blockCopy = v27;
    v17 = v33;
  }

  return v25;
}

- (id)_uberImageWithBounds:(CGRect)bounds inputSize:(CGSize)size backgroundColor:(id)color drawBlock:(id)block
{
  height = size.height;
  width = size.width;
  v9 = bounds.size.height;
  v10 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  colorCopy = color;
  blockCopy = block;
  _backgroundIsOpaque = [(SKUIStyledImageDataConsumer *)self _backgroundIsOpaque];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__SKUIStyledImageDataConsumer__uberImageWithBounds_inputSize_backgroundColor_drawBlock___block_invoke;
  v21[3] = &unk_2781FCEE0;
  v24 = x;
  v25 = y;
  v26 = v10;
  v27 = v9;
  v28 = width;
  v29 = height;
  v22 = colorCopy;
  v23 = blockCopy;
  v17 = blockCopy;
  v18 = colorCopy;
  v19 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v21 drawBlock:v10, v9];

  return v19;
}

void __88__SKUIStyledImageDataConsumer__uberImageWithBounds_inputSize_backgroundColor_drawBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 set];
    UIRectFill(*(a1 + 48));
  }

  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80) * (v4 / *(a1 + 88));
  v6 = ceilf(v5);
  v7 = (*(a1 + 64) - v6) * 0.5;
  v8 = floorf(v7);
  (*(*(a1 + 40) + 16))(v8, v3, v6, v4);
  v9 = *(a1 + 32);
  if (v9)
  {
    v18 = 0u;
    memset(v19, 0, 48);
    __asm { FMOV            V0.2D, #1.0 }

    v19[3] = _Q0;
    [v9 getRed:&v18 green:&v18 + 8 blue:v19 alpha:0];
    *(&v19[1] + 8) = v18;
    *(&v19[2] + 1) = *&v19[0];
    v15 = v4 * 0.48;
    v16 = ceilf(v15);
    v17 = [objc_alloc(MEMORY[0x277D75558]) initVerticalWithValues:&v18];
    v21.origin.x = v8;
    v21.origin.y = v3;
    v21.size.width = v6;
    v21.size.height = v4;
    [v17 fillRect:{v8, CGRectGetMaxY(v21) - v16, v6, v16}];
  }
}

- (id)_leftToRightGradient:(CGRect)gradient contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = gradient.size.height;
  v10 = gradient.size.width;
  v11 = gradient.origin.y;
  v12 = gradient.origin.x;
  blockCopy = block;
  if ([(IKColor *)self->_iKBackgroundColor colorType]== 3)
  {
    _backgroundIsOpaque = [(SKUIStyledImageDataConsumer *)self _backgroundIsOpaque];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SKUIStyledImageDataConsumer__leftToRightGradient_contentRect_drawBlock___block_invoke;
    v18[3] = &unk_2781FCEB8;
    v18[4] = self;
    v20 = v12;
    v21 = v11;
    v22 = v10;
    v23 = v9;
    v19 = blockCopy;
    v24 = x;
    v25 = y;
    v26 = width;
    v27 = height;
    v16 = [(SKUIStyledImageDataConsumer *)self _imageWithSize:_backgroundIsOpaque isOpaque:v18 drawBlock:v10, v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __74__SKUIStyledImageDataConsumer__leftToRightGradient_contentRect_drawBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) color];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 40) color];
    [v3 set];

    UIRectFill(*(a1 + 48));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v30 = _Q0;
  v9 = [*(*(a1 + 32) + 40) gradientColors];
  v10 = [v9 firstObject];

  v11 = [*(*(a1 + 32) + 40) gradientColors];
  v12 = [v11 lastObject];

  [v10 getRed:&v26 green:&v26 + 8 blue:&v27 alpha:&v27 + 8];
  [v12 getRed:&v28 + 8 green:&v29 blue:&v29 + 8 alpha:&v30];
  v13 = *(a1 + 64);
  *locations = xmmword_215F3F988;
  v25 = 0x3FF0000000000000;
  v17[0] = v26;
  v17[1] = v27;
  v18 = *(&v28 + 1);
  v19 = v29;
  v20 = v30;
  v21 = *(&v28 + 1);
  v22 = v29;
  v23 = v30;
  CurrentContext = UIGraphicsGetCurrentContext();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = CGGradientCreateWithColorComponents(DeviceRGB, v17, locations, 3uLL);
  v32.x = 0.0;
  v32.y = 0.5;
  v33.y = 0.5;
  v33.x = v13;
  CGContextDrawLinearGradient(CurrentContext, v16, v32, v33, 0);
  CGColorSpaceRelease(DeviceRGB);
  CGGradientRelease(v16);
}

- (UIEdgeInsets)borderWidths
{
  top = self->_borderWidths.top;
  left = self->_borderWidths.left;
  bottom = self->_borderWidths.bottom;
  right = self->_borderWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)borderMargins
{
  top = self->_borderMargins.top;
  left = self->_borderMargins.left;
  bottom = self->_borderMargins.bottom;
  right = self->_borderMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)imagePadding
{
  top = self->_imagePadding.top;
  left = self->_imagePadding.left;
  bottom = self->_imagePadding.bottom;
  right = self->_imagePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end