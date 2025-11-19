@interface UIAccessibilityGamepadProductInfo
- (NSString)anonymizedIdentifier;
- (UIAccessibilityGamepadProductInfo)init;
@end

@implementation UIAccessibilityGamepadProductInfo

- (UIAccessibilityGamepadProductInfo)init
{
  v6.receiver = self;
  v6.super_class = UIAccessibilityGamepadProductInfo;
  v2 = [(UIAccessibilityGamepadProductInfo *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

- (NSString)anonymizedIdentifier
{
  v2 = [(UIAccessibilityGamepadProductInfo *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

@end