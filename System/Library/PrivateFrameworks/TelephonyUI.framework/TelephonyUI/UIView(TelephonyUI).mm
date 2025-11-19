@interface UIView(TelephonyUI)
- (uint64_t)tp_setCHCRPriority:()TelephonyUI;
- (uint64_t)tp_userInterfaceLayoutDirection;
@end

@implementation UIView(TelephonyUI)

- (uint64_t)tp_userInterfaceLayoutDirection
{
  v2 = objc_opt_class();
  v3 = [a1 semanticContentAttribute];

  return [v2 userInterfaceLayoutDirectionForSemanticContentAttribute:v3];
}

- (uint64_t)tp_setCHCRPriority:()TelephonyUI
{
  [a1 setContentCompressionResistancePriority:1 forAxis:?];
  *&v4 = a2;
  [a1 setContentCompressionResistancePriority:0 forAxis:v4];
  *&v5 = a2;
  [a1 setContentHuggingPriority:1 forAxis:v5];
  *&v6 = a2;

  return [a1 setContentHuggingPriority:0 forAxis:v6];
}

@end