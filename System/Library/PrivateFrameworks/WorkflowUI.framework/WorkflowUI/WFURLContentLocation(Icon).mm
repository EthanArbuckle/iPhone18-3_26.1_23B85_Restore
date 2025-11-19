@interface WFURLContentLocation(Icon)
- (id)icon;
@end

@implementation WFURLContentLocation(Icon)

- (id)icon
{
  v0 = objc_alloc(MEMORY[0x277D7A158]);
  v1 = objc_alloc(MEMORY[0x277D79FB8]);
  v2 = [objc_alloc(MEMORY[0x277D79E20]) initWithSystemColor:4];
  v3 = [v1 initWithColor:v2];
  v4 = [v0 initWithSymbolName:@"network" background:v3];

  return v4;
}

@end