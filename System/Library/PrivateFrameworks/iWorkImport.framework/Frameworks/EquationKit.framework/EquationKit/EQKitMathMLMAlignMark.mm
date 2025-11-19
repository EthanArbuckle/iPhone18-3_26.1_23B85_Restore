@interface EQKitMathMLMAlignMark
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)layoutSchemata;
@end

@implementation EQKitMathMLMAlignMark

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignMark;
  return [(EQKitMathMLMAlignMark *)&v5 init:a3];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38A38))
  {
    sub_275C8E754(qword_280A38A20, &dword_275D0C14C, &unk_275D0C150);
    __cxa_guard_release(&qword_280A38A38);
  }

  return qword_280A38A20;
}

- (void)layoutSchemata
{
  *a1 = &unk_2884CB990;
  *(a1 + 8) = 27;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

@end