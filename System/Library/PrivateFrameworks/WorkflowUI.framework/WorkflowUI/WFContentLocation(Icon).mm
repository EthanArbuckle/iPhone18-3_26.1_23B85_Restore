@interface WFContentLocation(Icon)
- (id)icon;
@end

@implementation WFContentLocation(Icon)

- (id)icon
{
  v2 = MEMORY[0x277CFC320];
  v3 = [a1 identifier];
  v4 = [v2 sfSymbolNameForContentLocationWithIdentifier:v3];

  v5 = MEMORY[0x277CFC320];
  v6 = [a1 identifier];
  v7 = [v5 symbolBackgroundColorForContentLocationWithIdentifier:v6];

  v8 = objc_alloc(MEMORY[0x277D7A158]);
  v9 = objc_alloc(MEMORY[0x277D79FB8]);
  v10 = v9;
  if (v4)
  {
    v11 = [v9 initWithColor:v7];
    v12 = [v8 initWithSymbolName:v4 background:v11];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D79E20]) initWithSystemColor:9];
    v13 = [v10 initWithColor:v11];
    v12 = [v8 initWithSymbolName:@"square.and.arrow.up.fill" background:v13];
  }

  return v12;
}

@end