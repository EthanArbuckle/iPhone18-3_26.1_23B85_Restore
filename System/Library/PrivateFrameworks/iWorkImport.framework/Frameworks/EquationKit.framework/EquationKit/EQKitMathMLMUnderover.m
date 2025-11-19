@interface EQKitMathMLMUnderover
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)layoutSchemata;
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
  if ((atomic_load_explicit(&qword_280A38700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38700))
  {
    sub_275C8E754(qword_280A386E8, dword_275D0B7D4, &xmmword_275D0B7E0);
    __cxa_guard_release(&qword_280A38700);
  }

  return qword_280A386E8;
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 5;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end