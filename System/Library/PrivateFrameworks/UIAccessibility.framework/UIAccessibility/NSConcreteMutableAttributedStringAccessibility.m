@interface NSConcreteMutableAttributedStringAccessibility
- (NSConcreteMutableAttributedStringAccessibility)initWithAttributedString:(id)a3;
- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)a3;
- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)a3 attributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)string;
@end

@implementation NSConcreteMutableAttributedStringAccessibility

- (NSConcreteMutableAttributedStringAccessibility)initWithAttributedString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NSConcreteMutableAttributedStringAccessibility;
  v5 = [(NSConcreteMutableAttributedStringAccessibility *)&v9 initWithAttributedString:v4];
  if (v5)
  {
    v6 = [v4 _accessibilityAttributedLocalizedString];
    v7 = [v6 copy];

    [(NSConcreteMutableAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NSConcreteMutableAttributedStringAccessibility;
  v5 = [(NSConcreteMutableAttributedStringAccessibility *)&v9 initWithString:v4];
  if (v5)
  {
    v6 = [v4 _accessibilityAttributedLocalizedString];
    v7 = [v6 copy];

    [(NSConcreteMutableAttributedStringAccessibility *)v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

- (NSConcreteMutableAttributedStringAccessibility)initWithString:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NSConcreteMutableAttributedStringAccessibility;
  v7 = [(NSConcreteMutableAttributedStringAccessibility *)&v11 initWithString:v6 attributes:a4];
  if (v7)
  {
    v8 = [v6 _accessibilityAttributedLocalizedString];
    v9 = [v8 copy];

    [(NSConcreteMutableAttributedStringAccessibility *)v7 _setAccessibilityAttributedLocalizedString:v9];
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NSConcreteMutableAttributedStringAccessibility;
  v4 = [(NSConcreteMutableAttributedStringAccessibility *)&v8 mutableCopyWithZone:a3];
  if (v4)
  {
    v5 = [(NSConcreteMutableAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
    v6 = [v5 copy];

    [v4 _setAccessibilityAttributedLocalizedString:v6];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NSConcreteMutableAttributedStringAccessibility;
  v4 = [(NSConcreteMutableAttributedStringAccessibility *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSConcreteMutableAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
    v6 = [v5 copy];

    [v4 _setAccessibilityAttributedLocalizedString:v6];
  }

  return v4;
}

- (id)string
{
  v7.receiver = self;
  v7.super_class = NSConcreteMutableAttributedStringAccessibility;
  v3 = [(NSConcreteMutableAttributedStringAccessibility *)&v7 string];
  v4 = [(NSConcreteMutableAttributedStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v5 = [v4 copy];

  if (v5)
  {
    [v3 _setAccessibilityAttributedLocalizedString:v5];
  }

  return v3;
}

@end