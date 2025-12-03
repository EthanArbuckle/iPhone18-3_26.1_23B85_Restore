@interface EQKitMathMLMSpace
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMSpace

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMSpace;
  return [(EQKitMathMLMSpace *)&v5 init:node];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMSpace mathMLAttributes]::sAttributesSet, -[EQKitMathMLMSpace mathMLAttributes]::sAttributesData, -[EQKitMathMLMPadded mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMSpace mathMLAttributes]::sAttributesSet;
}

@end