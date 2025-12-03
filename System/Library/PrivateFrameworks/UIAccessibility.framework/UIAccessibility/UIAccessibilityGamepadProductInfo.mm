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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v2->_identifier;
    v2->_identifier = uUID;
  }

  return v2;
}

- (NSString)anonymizedIdentifier
{
  identifier = [(UIAccessibilityGamepadProductInfo *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

@end