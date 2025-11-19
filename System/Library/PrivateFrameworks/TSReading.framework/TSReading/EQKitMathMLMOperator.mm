@interface EQKitMathMLMOperator
- (EQKitMathMLMOperator)initWithString:(id)a3 environment:(id)a4;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMOperator

- (EQKitMathMLMOperator)initWithString:(id)a3 environment:(id)a4
{
  v14.receiver = self;
  v14.super_class = EQKitMathMLMOperator;
  v6 = [EQKitMathMLMToken initWithString:sel_initWithString_environment_ environment:?];
  if (v6)
  {
    v7 = [a4 operatorDictionary];
    v8 = [a3 UTF8String];
    v9 = strlen(v8);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__dst, v8, v9);
    }

    *(&__dst + v10) = 0;
    v6->mOperatorId = EQKit::Config::Operator::Dictionary::operatorId(v7, &__dst);
    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOperator;
  return [(EQKitMathMLMToken *)&v5 initFromXMLNode:a3 parser:a4];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMOperator mathMLAttributes]::sAttributesSet, -[EQKitMathMLMOperator mathMLAttributes]::sAttributesData, &-[EQKitMathMLMToken mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMOperator mathMLAttributes]::sAttributesSet;
}

@end