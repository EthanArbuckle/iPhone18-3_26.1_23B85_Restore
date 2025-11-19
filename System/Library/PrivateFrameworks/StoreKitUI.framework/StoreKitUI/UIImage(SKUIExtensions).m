@interface UIImage(SKUIExtensions)
+ (id)resizeImage:()SKUIExtensions toSize:;
+ (id)singlePointImageWithColor:()SKUIExtensions;
@end

@implementation UIImage(SKUIExtensions)

+ (id)singlePointImageWithColor:()SKUIExtensions
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[UIImage(SKUIExtensions) singlePointImageWithColor:];
  }

  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;
  v12.width = 1.0;
  v12.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v12, 0, v6);

  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [v3 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v8);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = 1.0;
  v13.size.height = 1.0;
  CGContextFillRect(CurrentContext, v13);
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

+ (id)resizeImage:()SKUIExtensions toSize:
{
  v7 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[UIImage(SKUIExtensions) resizeImage:toSize:];
  }

  v11.width = a1;
  v11.height = a2;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  [v7 drawInRect:{0.0, 0.0, a1, a2}];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (void)singlePointImageWithColor:()SKUIExtensions .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[UIImage(SKUIExtensions) singlePointImageWithColor:]";
}

+ (void)resizeImage:()SKUIExtensions toSize:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[UIImage(SKUIExtensions) resizeImage:toSize:]";
}

@end