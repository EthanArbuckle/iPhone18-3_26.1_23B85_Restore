@interface UIView(TelephonyUI)
- (uint64_t)tp_setCHCRPriority:()TelephonyUI;
- (uint64_t)tp_userInterfaceLayoutDirection;
@end

@implementation UIView(TelephonyUI)

- (uint64_t)tp_userInterfaceLayoutDirection
{
  v2 = objc_opt_class();
  semanticContentAttribute = [self semanticContentAttribute];

  return [v2 userInterfaceLayoutDirectionForSemanticContentAttribute:semanticContentAttribute];
}

- (uint64_t)tp_setCHCRPriority:()TelephonyUI
{
  [self setContentCompressionResistancePriority:1 forAxis:?];
  *&v4 = a2;
  [self setContentCompressionResistancePriority:0 forAxis:v4];
  *&v5 = a2;
  [self setContentHuggingPriority:1 forAxis:v5];
  *&v6 = a2;

  return [self setContentHuggingPriority:0 forAxis:v6];
}

@end