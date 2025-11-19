@interface EQKitMathMLMAlignGroup
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMAlignGroup

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignGroup;
  return [(EQKitMathMLMAlignGroup *)&v5 init:a3];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMAlignGroup mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMAlignGroup mathMLAttributes]::sAttributesData, &-[EQKitMathMLMAlignMark mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMAlignGroup mathMLAttributes]::sAttributesSet;
}

@end