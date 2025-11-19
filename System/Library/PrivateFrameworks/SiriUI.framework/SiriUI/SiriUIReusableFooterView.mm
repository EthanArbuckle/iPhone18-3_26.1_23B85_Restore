@interface SiriUIReusableFooterView
+ (id)reuseIdentifier;
- (UIEdgeInsets)edgeInsets;
@end

@implementation SiriUIReusableFooterView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (UIEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 8.0;
  v4 = 0.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end