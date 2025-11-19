@interface NSDictionary(WiFiKit)
- (id)plistString;
@end

@implementation NSDictionary(WiFiKit)

- (id)plistString
{
  v1 = [MEMORY[0x277CCAC58] dataWithPropertyList:a1 format:100 options:0 error:0];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v1 encoding:4];

  return v2;
}

@end