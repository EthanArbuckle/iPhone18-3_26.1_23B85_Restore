@interface EQKitMathMLMath
- (NSString)description;
- (Schemata)layoutSchemata;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)newLayout;
- (void)dealloc;
@end

@implementation EQKitMathMLMath

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  if (!node || !parser)
  {
    [EQKitMathMLMath initFromXMLNode:a2 parser:self];
  }

  v14.receiver = self;
  v14.super_class = EQKitMathMLMath;
  v7 = [(EQKitMathMLMath *)&v14 init];
  if (v7)
  {
    v8 = operator new(0x230uLL, MEMORY[0x277D826F0]);
    if (v8)
    {
      v9 = v8;
      v10 = EQKit::AttributeCollection::AttributeCollection(v8);
      v7->mAttributeCollection = v11;
      [parser setAttributeCollection:{v9, v10}];
      v12 = [parser parseChildrenAsNodeFromXMLNode:node];
      v7->mExpression = v12;
      [(EQKitMathMLNode *)v12 setParent:v7];
    }

    else
    {
      v7->mAttributeCollection = 0;
    }

    if (v7->mExpression)
    {
      v7->mEnvironment = [parser environment];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMath mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMath mathMLAttributes]::sAttributesData, -[EQKitMathMLMFenced mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMath mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  mAttributeCollection = self->mAttributeCollection;
  if (mAttributeCollection)
  {
    (*(*mAttributeCollection + 8))(mAttributeCollection, a2);
  }

  v4.receiver = self;
  v4.super_class = EQKitMathMLMath;
  [(EQKitMathMLMath *)&v4 dealloc];
}

- (id)newLayout
{
  v3 = [EQKitLayout alloc];
  mEnvironment = self->mEnvironment;

  return [(EQKitLayout *)v3 initWithRoot:self environment:mEnvironment];
}

- (Schemata)layoutSchemata
{
  if (self->mExpression)
  {
    array = [MEMORY[0x277CBEA60] arrayWithObject:?];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return EQKit::Layout::Schemata::row(array, retstr);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p expr=%@>", NSStringFromClass(v4), self, self->mExpression];
}

- (uint64_t)initFromXMLNode:(uint64_t)a1 parser:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"EQKitMathMLMath.mm" lineNumber:53 description:@"invalid arguments"];
}

@end