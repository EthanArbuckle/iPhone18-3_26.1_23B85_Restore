@interface EQKitMathMLNone
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)layoutSchemata;
@end

@implementation EQKitMathMLNone

- (void)layoutSchemata
{
  *a1 = &unk_2884CB990;
  *(a1 + 8) = 21;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLNone;
  return [(EQKitMathMLNone *)&v5 init:a3];
}

@end