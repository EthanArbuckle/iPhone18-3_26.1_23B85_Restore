@interface EQKitMathMLMOperator
- (EQKitMathMLMOperator)initWithString:(id)string environment:(id)environment;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (id)stretchyLayoutSchemata;
@end

@implementation EQKitMathMLMOperator

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 10;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)stretchyLayoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 11;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (EQKitMathMLMOperator)initWithString:(id)string environment:(id)environment
{
  v20.receiver = self;
  v20.super_class = EQKitMathMLMOperator;
  v9 = [EQKitMathMLMToken initWithString:sel_initWithString_environment_ environment:?];
  if (v9)
  {
    v10 = objc_msgSend_operatorDictionary(environment, v6, v7, v8);
    v14 = objc_msgSend_UTF8String(string, v11, v12, v13);
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_275C8EE7C();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    v19 = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    *(&__dst + v16) = 0;
    v9->mOperatorId = sub_275CC8278(v10, &__dst);
    if (v19 < 0)
    {
      operator delete(__dst);
    }
  }

  return v9;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOperator;
  return [(EQKitMathMLMToken *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38B98))
  {
    sub_275C8E754(qword_280A38B80, dword_275D0C1AC, &qword_275D0C1D8);
    __cxa_guard_release(&qword_280A38B98);
  }

  return qword_280A38B80;
}

@end