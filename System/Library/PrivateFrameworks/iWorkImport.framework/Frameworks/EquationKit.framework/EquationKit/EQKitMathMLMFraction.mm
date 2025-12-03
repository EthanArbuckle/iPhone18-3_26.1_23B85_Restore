@interface EQKitMathMLMFraction
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
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
  if ((atomic_load_explicit(&qword_280A388E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A388E0))
  {
    sub_275C8E754(qword_280A388C8, dword_275D0BEA4, &dword_275D0BEA4[3]);
    __cxa_guard_release(&qword_280A388E0);
  }

  return qword_280A388C8;
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 7;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end