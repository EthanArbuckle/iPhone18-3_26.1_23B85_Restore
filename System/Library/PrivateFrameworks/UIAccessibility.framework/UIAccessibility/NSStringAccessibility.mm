@interface NSStringAccessibility
- (NSStringAccessibility)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lowercaseStringWithLocale:(id)locale;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)stringByReplacingOccurrencesOfString:(id)string withString:(id)withString options:(unint64_t)options range:(_NSRange)range;
- (id)uppercaseStringWithLocale:(id)locale;
@end

@implementation NSStringAccessibility

- (NSStringAccessibility)initWithString:(id)string
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  stringCopy = string;
  v4 = [(NSStringAccessibility *)&v6 initWithString:stringCopy];
  AXApplyAttributedLocalizedStringToCopy(stringCopy, v4);

  return v4;
}

- (id)lowercaseStringWithLocale:(id)locale
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 lowercaseStringWithLocale:locale];
  AXApplyAttributedLocalizedStringToCopy(self, v4);

  return v4;
}

- (id)stringByReplacingOccurrencesOfString:(id)string withString:(id)withString options:(unint64_t)options range:(_NSRange)range
{
  v9.receiver = self;
  v9.super_class = NSStringAccessibility;
  v7 = [(NSStringAccessibility *)&v9 stringByReplacingOccurrencesOfString:string withString:withString options:options range:range.location, range.length];
  AXApplyAttributedLocalizedStringToCopy(self, v7);

  return v7;
}

- (id)uppercaseStringWithLocale:(id)locale
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 uppercaseStringWithLocale:locale];
  AXApplyAttributedLocalizedStringToCopy(self, v4);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 copyWithZone:zone];
  AXApplyAttributedLocalizedStringToCopy(self, v4);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSStringAccessibility;
  v4 = [(NSStringAccessibility *)&v6 mutableCopyWithZone:zone];
  AXApplyAttributedLocalizedStringToCopy(self, v4);
  return v4;
}

@end