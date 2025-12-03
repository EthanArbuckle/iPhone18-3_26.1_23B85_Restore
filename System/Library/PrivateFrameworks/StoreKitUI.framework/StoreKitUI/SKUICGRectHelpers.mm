@interface SKUICGRectHelpers
+ (CGRect)rect:(CGRect)rect withFlippedOriginXRelativeTo:(CGRect)to;
@end

@implementation SKUICGRectHelpers

+ (CGRect)rect:(CGRect)rect withFlippedOriginXRelativeTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  rect = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUICGRectHelpers rect:withFlippedOriginXRelativeTo:];
  }

  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, -1.0, 1.0);
  memset(&v15, 0, sizeof(v15));
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxX = CGRectGetMaxX(v18);
  v14 = v16;
  CGAffineTransformTranslate(&v15, &v14, -(MinX + MaxX), 0.0);
  v14 = v15;
  v19.origin.x = v10;
  v19.origin.y = v9;
  v19.size.width = v8;
  v19.size.height = rect;
  return CGRectApplyAffineTransform(v19, &v14);
}

+ (void)rect:withFlippedOriginXRelativeTo:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUICGRectHelpers rect:withFlippedOriginXRelativeTo:]";
}

@end