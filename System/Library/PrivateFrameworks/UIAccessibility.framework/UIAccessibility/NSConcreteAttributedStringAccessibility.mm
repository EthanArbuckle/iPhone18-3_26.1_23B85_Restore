@interface NSConcreteAttributedStringAccessibility
- (NSConcreteAttributedStringAccessibility)initWithAttributedString:(id)string;
- (NSConcreteAttributedStringAccessibility)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)string;
@end

@implementation NSConcreteAttributedStringAccessibility

- (NSConcreteAttributedStringAccessibility)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v9 initWithString:stringCopy];
  if (v5)
  {
    _accessibilityAttributedLocalizedString = [stringCopy _accessibilityAttributedLocalizedString];
    v7 = [_accessibilityAttributedLocalizedString copy];

    [(NSConcreteAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (NSConcreteAttributedStringAccessibility)initWithAttributedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v9 initWithAttributedString:stringCopy];
  if (v5)
  {
    _accessibilityAttributedLocalizedString = [stringCopy _accessibilityAttributedLocalizedString];
    v7 = [_accessibilityAttributedLocalizedString copy];

    [(NSConcreteAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v10 copyWithZone:?];
  _accessibilityAttributedLocalizedString = [(NSConcreteAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
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
  v10.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v10 mutableCopyWithZone:?];
  _accessibilityAttributedLocalizedString = [(NSConcreteAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v7 = _accessibilityAttributedLocalizedString;
  if (_accessibilityAttributedLocalizedString)
  {
    v8 = [_accessibilityAttributedLocalizedString copyWithZone:zone];
    [v5 _setAccessibilityAttributedLocalizedString:v8];
  }

  return v5;
}

- (id)string
{
  v7.receiver = self;
  v7.super_class = NSConcreteAttributedStringAccessibility;
  string = [(NSConcreteAttributedStringAccessibility *)&v7 string];
  _accessibilityAttributedLocalizedString = [(NSConcreteAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v5 = [_accessibilityAttributedLocalizedString copy];

  if (v5)
  {
    [string _setAccessibilityAttributedLocalizedString:v5];
  }

  return string;
}

@end