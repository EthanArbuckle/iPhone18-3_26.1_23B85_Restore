@interface EQKitMathMLMFraction
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMFraction

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMFraction;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMFraction mathMLAttributes]::sAttributesSet, -[EQKitMathMLMFraction mathMLAttributes]::sAttributesData, -[EQKitMathMLMOperator mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMFraction mathMLAttributes]::sAttributesSet;
}

@end