@interface EQKitMathMLMSpace
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (id)layoutSchemata;
@end

@implementation EQKitMathMLMSpace

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 24;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMSpace;
  return [(EQKitMathMLMSpace *)&v5 init:a3];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38B78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38B78))
  {
    sub_275C8E754(qword_280A38B60, dword_275D0C1A0, dword_275D0C1AC);
    __cxa_guard_release(&qword_280A38B78);
  }

  return qword_280A38B60;
}

@end