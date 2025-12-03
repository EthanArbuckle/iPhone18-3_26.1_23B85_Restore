@interface ICSCalendarItem
- (NSData)x_apple_structuredData;
@end

@implementation ICSCalendarItem

- (NSData)x_apple_structuredData
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-STRUCTURED-DATA"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

@end