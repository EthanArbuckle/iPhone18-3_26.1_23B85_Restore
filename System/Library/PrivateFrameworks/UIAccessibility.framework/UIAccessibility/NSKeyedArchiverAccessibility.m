@interface NSKeyedArchiverAccessibility
- (id)decodeObjectForKey:(id)a3;
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation NSKeyedArchiverAccessibility

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = NSKeyedArchiverAccessibility;
  v7 = a3;
  [(NSKeyedArchiverAccessibility *)&v10 encodeObject:v7 forKey:v6];
  v8 = [v7 _accessibilityAttributedLocalizedString];

  if (v8)
  {
    v9 = [v6 stringByAppendingString:@"_delocalized"];
    [(NSKeyedArchiverAccessibility *)self encodeObject:v8 forKey:v9];
  }
}

- (id)decodeObjectForKey:(id)a3
{
  v9.receiver = self;
  v9.super_class = NSKeyedArchiverAccessibility;
  v4 = a3;
  v5 = [(NSKeyedArchiverAccessibility *)&v9 decodeObjectForKey:v4];
  v6 = [v4 stringByAppendingString:{@"_delocalized", v9.receiver, v9.super_class}];

  v7 = [(NSKeyedArchiverAccessibility *)self decodeObjectForKey:v6];

  if (v7)
  {
    [v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

@end