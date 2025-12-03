@interface NSConcreteMutableAttributedStringAccessibility
- (NSConcreteMutableAttributedStringAccessibility)initWithAttributedString:(id)string;
- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)string;
- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)string attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)string;
@end

@implementation NSConcreteMutableAttributedStringAccessibility

- (NSConcreteMutableAttributedStringAccessibility)initWithAttributedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = NSConcreteMutableAttributedStringAccessibility;
  v5 = [(NSConcreteMutableAttributedStringAccessibility *)&v9 initWithAttributedString:stringCopy];
  if (v5)
  {
    _accessibilityAttributedLocalizedString = [stringCopy _accessibilityAttributedLocalizedString];
    v7 = [_accessibilityAttributedLocalizedString copy];

    [(NSConcreteMutableAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = NSConcreteMutableAttributedStringAccessibility;
  v5 = [(NSConcreteMutableAttributedStringAccessibility *)&v9 initWithString:stringCopy];
  if (v5)
  {
    _accessibilityAttributedLocalizedString = [stringCopy _accessibilityAttributedLocalizedString];
    v7 = [_accessibilityAttributedLocalizedString copy];

    [(NSConcreteMutableAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)string attributes:(id)attributes
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = NSConcreteMutableAttributedStringAccessibility;
  v7 = [(NSConcreteMutableAttributedStringAccessibility *)&v11 initWithString:stringCopy attributes:attributes];
  if (v7)
  {
    _accessibilityAttributedLocalizedString = [stringCopy _accessibilityAttributedLocalizedString];
    v9 = [_accessibilityAttributedLocalizedString copy];

    [(NSConcreteMutableAttributedStringAccessibility *)v7 _setAccessibilityAttributedLocalizedString:v9];
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NSConcreteMutableAttributedStringAccessibility;
  v4 = [(NSConcreteMutableAttributedStringAccessibility *)&v8 mutableCopyWithZone:zone];
  if (v4)
  {
    _accessibilityAttributedLocalizedString = [(NSConcreteMutableAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
    v6 = [_accessibilityAttributedLocalizedString copy];

    [v4 _setAccessibilityAttributedLocalizedString:v6];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NSConcreteMutableAttributedStringAccessibility;
  v4 = [(NSConcreteMutableAttributedStringAccessibility *)&v8 copyWithZone:zone];
  if (v4)
  {
    _accessibilityAttributedLocalizedString = [(NSConcreteMutableAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
    v6 = [_accessibilityAttributedLocalizedString copy];

    [v4 _setAccessibilityAttributedLocalizedString:v6];
  }

  return v4;
}

- (id)string
{
  v7.receiver = self;
  v7.super_class = NSConcreteMutableAttributedStringAccessibility;
  string = [(NSConcreteMutableAttributedStringAccessibility *)&v7 string];
  _accessibilityAttributedLocalizedString = [(NSConcreteMutableAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v5 = [_accessibilityAttributedLocalizedString copy];

  if (v5)
  {
    [string _setAccessibilityAttributedLocalizedString:v5];
  }

  return string;
}

@end