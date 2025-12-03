@interface EQKitMathMLMOver
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMOver

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOver;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMOver mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMOver mathMLAttributes]::sAttributesData, &-[EQKitMathMLMUnder mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMOver mathMLAttributes]::sAttributesSet;
}

@end