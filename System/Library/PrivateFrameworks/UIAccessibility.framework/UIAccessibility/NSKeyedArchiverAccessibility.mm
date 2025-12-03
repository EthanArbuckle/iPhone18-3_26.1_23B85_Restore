@interface NSKeyedArchiverAccessibility
- (id)decodeObjectForKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation NSKeyedArchiverAccessibility

- (void)encodeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = NSKeyedArchiverAccessibility;
  objectCopy = object;
  [(NSKeyedArchiverAccessibility *)&v10 encodeObject:objectCopy forKey:keyCopy];
  _accessibilityAttributedLocalizedString = [objectCopy _accessibilityAttributedLocalizedString];

  if (_accessibilityAttributedLocalizedString)
  {
    v9 = [keyCopy stringByAppendingString:@"_delocalized"];
    [(NSKeyedArchiverAccessibility *)self encodeObject:_accessibilityAttributedLocalizedString forKey:v9];
  }
}

- (id)decodeObjectForKey:(id)key
{
  v9.receiver = self;
  v9.super_class = NSKeyedArchiverAccessibility;
  keyCopy = key;
  v5 = [(NSKeyedArchiverAccessibility *)&v9 decodeObjectForKey:keyCopy];
  v6 = [keyCopy stringByAppendingString:{@"_delocalized", v9.receiver, v9.super_class}];

  v7 = [(NSKeyedArchiverAccessibility *)self decodeObjectForKey:v6];

  if (v7)
  {
    [v5 _setAccessibilityAttributedLocalizedString:v7];
  }

  return v5;
}

@end