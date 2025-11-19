@interface EQKitMathMLMLongDivision
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMLongDivision

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v13.receiver = self;
  v13.super_class = EQKitMathMLMLongDivision;
  v6 = [(EQKitMathMLMLongDivision *)&v13 init];
  if (v6)
  {
    v7 = [a4 parseChildrenAsArrayFromXMLNode:a3];
    if ([v7 count] < 3)
    {
      [a4 reportError:5 withNode:a3];

      return 0;
    }

    else
    {
      v8 = [v7 objectAtIndex:0];
      v6->mDivisor = v8;
      [(EQKitMathMLNode *)v8 setParent:v6];
      v9 = [v7 mutableCopy];
      [v9 removeObjectAtIndex:0];
      v10 = objc_alloc_init(EQKitMathMLMStackLine);
      [v9 insertObject:v10 atIndex:1];
      v11 = [[EQKitMathMLMStack alloc] initWithChildren:v9];
      v6->mStack = v11;
      [(EQKitMathMLNode *)v11 setParent:v6];
    }
  }

  return v6;
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMLongDivision mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMLongDivision mathMLAttributes]::sAttributesData, &-[EQKitMathMLMStack mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMLongDivision mathMLAttributes]::sAttributesSet;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMLongDivision;
  [(EQKitMathMLMLongDivision *)&v3 dealloc];
}

@end