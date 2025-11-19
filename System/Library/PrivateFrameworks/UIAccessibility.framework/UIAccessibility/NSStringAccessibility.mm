@interface NSStringAccessibility
- (NSStringAccessibility)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)lowercaseStringWithLocale:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)stringByReplacingOccurrencesOfString:(id)a3 withString:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6;
- (id)uppercaseStringWithLocale:(id)a3;
@end

@implementation NSStringAccessibility

- (NSStringAccessibility)initWithString:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v3 = a3;
  v4 = [(NSStringAccessibility *)&v6 initWithString:v3];
  AXApplyAttributedLocalizedStringToCopy(v3, v4);

  return v4;
}

- (id)lowercaseStringWithLocale:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 lowercaseStringWithLocale:a3];
  AXApplyAttributedLocalizedStringToCopy(self, v4);

  return v4;
}

- (id)stringByReplacingOccurrencesOfString:(id)a3 withString:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6
{
  v9.receiver = self;
  v9.super_class = NSStringAccessibility;
  v7 = [(NSStringAccessibility *)&v9 stringByReplacingOccurrencesOfString:a3 withString:a4 options:a5 range:a6.location, a6.length];
  AXApplyAttributedLocalizedStringToCopy(self, v7);

  return v7;
}

- (id)uppercaseStringWithLocale:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 uppercaseStringWithLocale:a3];
  AXApplyAttributedLocalizedStringToCopy(self, v4);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 copyWithZone:a3];
  AXApplyAttributedLocalizedStringToCopy(self, v4);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 mutableCopyWithZone:a3];
  AXApplyAttributedLocalizedStringToCopy(self, v4);
  return v4;
}

@end