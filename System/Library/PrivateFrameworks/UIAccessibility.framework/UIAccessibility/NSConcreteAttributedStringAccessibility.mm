@interface NSConcreteAttributedStringAccessibility
- (NSConcreteAttributedStringAccessibility)initWithAttributedString:(id)a3;
- (NSConcreteAttributedStringAccessibility)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)string;
@end

@implementation NSConcreteAttributedStringAccessibility

- (NSConcreteAttributedStringAccessibility)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v9 initWithString:v4];
  if (v5)
  {
    v6 = [v4 _accessibilityAttributedLocalizedString];
    v7 = [v6 copy];

    [(NSConcreteAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (NSConcreteAttributedStringAccessibility)initWithAttributedString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v9 initWithAttributedString:v4];
  if (v5)
  {
    v6 = [v4 _accessibilityAttributedLocalizedString];
    v7 = [v6 copy];

    [(NSConcreteAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v10 copyWithZone:?];
  v6 = [(NSConcreteAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copyWithZone:a3];
    [v5 _setAccessibilityAttributedLocalizedString:v8];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NSConcreteAttributedStringAccessibility;
  v5 = [(NSConcreteAttributedStringAccessibility *)&v10 mutableCopyWithZone:?];
  v6 = [(NSConcreteAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copyWithZone:a3];
    [v5 _setAccessibilityAttributedLocalizedString:v8];
  }

  return v5;
}

- (id)string
{
  v7.receiver = self;
  v7.super_class = NSConcreteAttributedStringAccessibility;
  v3 = [(NSConcreteAttributedStringAccessibility *)&v7 string];
  v4 = [(NSConcreteAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v5 = [v4 copy];

  if (v5)
  {
    [v3 _setAccessibilityAttributedLocalizedString:v5];
  }

  return v3;
}

@end