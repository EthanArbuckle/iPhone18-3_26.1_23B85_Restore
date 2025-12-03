@interface EQKitMathMLNone
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLNone

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLNone;
  return [(EQKitMathMLNone *)&v5 init:node];
}

@end