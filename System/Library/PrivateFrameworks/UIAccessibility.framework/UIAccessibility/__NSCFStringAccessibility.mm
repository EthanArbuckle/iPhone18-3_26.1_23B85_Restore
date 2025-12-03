@interface __NSCFStringAccessibility
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)appendString:(id)string;
@end

@implementation __NSCFStringAccessibility

- (void)appendString:(id)string
{
  v9.receiver = self;
  v9.super_class = __NSCFStringAccessibility;
  stringCopy = string;
  [(__NSCFStringAccessibility *)&v9 appendString:stringCopy];
  _accessibilityAttributedLocalizedString = [stringCopy _accessibilityAttributedLocalizedString];

  if (_accessibilityAttributedLocalizedString)
  {
    _accessibilityAttributedLocalizedString2 = [(__NSCFStringAccessibility *)self _accessibilityAttributedLocalizedString];
    v7 = _accessibilityAttributedLocalizedString2;
    if (_accessibilityAttributedLocalizedString2)
    {
      [_accessibilityAttributedLocalizedString2 appendAXAttributedString:_accessibilityAttributedLocalizedString];
    }

    else
    {
      v8 = [_accessibilityAttributedLocalizedString copy];
      [(__NSCFStringAccessibility *)self _setAccessibilityAttributedLocalizedString:v8];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = __NSCFStringAccessibility;
  v5 = [(__NSCFStringAccessibility *)&v10 copyWithZone:?];
  _accessibilityAttributedLocalizedString = [(__NSCFStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v7 = _accessibilityAttributedLocalizedString;
  if (_accessibilityAttributedLocalizedString)
  {
    v8 = [_accessibilityAttributedLocalizedString copyWithZone:zone];
    [v5 _setAccessibilityAttributedLocalizedString:v8];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = __NSCFStringAccessibility;
  v5 = [(__NSCFStringAccessibility *)&v10 mutableCopyWithZone:?];
  _accessibilityAttributedLocalizedString = [(__NSCFStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v7 = _accessibilityAttributedLocalizedString;
  if (_accessibilityAttributedLocalizedString)
  {
    v8 = [_accessibilityAttributedLocalizedString copyWithZone:zone];
    [v5 _setAccessibilityAttributedLocalizedString:v8];
  }

  return v5;
}

@end