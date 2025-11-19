@interface ICSCalendarItem
- (NSData)x_apple_structuredData;
@end

@implementation ICSCalendarItem

- (NSData)x_apple_structuredData
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-APPLE-STRUCTURED-DATA"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

@end