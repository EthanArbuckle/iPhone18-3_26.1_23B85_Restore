@interface __NSCFStringAccessibility
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)appendString:(id)a3;
@end

@implementation __NSCFStringAccessibility

- (void)appendString:(id)a3
{
  v9.receiver = self;
  v9.super_class = __NSCFStringAccessibility;
  v4 = a3;
  [(__NSCFStringAccessibility *)&v9 appendString:v4];
  v5 = [v4 _accessibilityAttributedLocalizedString];

  if (v5)
  {
    v6 = [(__NSCFStringAccessibility *)self _accessibilityAttributedLocalizedString];
    v7 = v6;
    if (v6)
    {
      [v6 appendAXAttributedString:v5];
    }

    else
    {
      v8 = [v5 copy];
      [(__NSCFStringAccessibility *)self _setAccessibilityAttributedLocalizedString:v8];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = __NSCFStringAccessibility;
  v5 = [(__NSCFStringAccessibility *)&v10 copyWithZone:?];
  v6 = [(__NSCFStringAccessibility *)self _accessibilityAttributedLocalizedString];
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
  v10.super_class = __NSCFStringAccessibility;
  v5 = [(__NSCFStringAccessibility *)&v10 mutableCopyWithZone:?];
  v6 = [(__NSCFStringAccessibility *)self _accessibilityAttributedLocalizedString];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copyWithZone:a3];
    [v5 _setAccessibilityAttributedLocalizedString:v8];
  }

  return v5;
}

@end