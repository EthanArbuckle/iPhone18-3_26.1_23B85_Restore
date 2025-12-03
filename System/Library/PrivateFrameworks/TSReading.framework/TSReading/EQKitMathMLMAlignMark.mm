@interface EQKitMathMLMAlignMark
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMAlignMark

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignMark;
  return [(EQKitMathMLMAlignMark *)&v5 init:node];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMAlignMark mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMAlignMark mathMLAttributes]::sAttributesData, &dword_26CA63BDC);
  }

  return [EQKitMathMLMAlignMark mathMLAttributes]::sAttributesSet;
}

@end