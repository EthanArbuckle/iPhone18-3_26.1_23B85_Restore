@interface EQKitMathMLMUnderover
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMUnderover

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMUnderover;
  return [(EQKitMathMLTernaryNode *)&v5 initFromXMLNode:a3 parser:a4];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMUnderover mathMLAttributes]::sAttributesSet, -[EQKitMathMLMUnderover mathMLAttributes]::sAttributesData, &-[EQKitMathMLMLongDivision mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMUnderover mathMLAttributes]::sAttributesSet;
}

@end