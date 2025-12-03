@interface EQKitMathMLNone
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)layoutSchemata;
@end

@implementation EQKitMathMLNone

- (void)layoutSchemata
{
  *self = &unk_2884CB990;
  *(self + 8) = 21;
  *(self + 16) = 0;
  *(self + 24) = 0;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLNone;
  return [(EQKitMathMLNone *)&v5 init:node];
}

@end