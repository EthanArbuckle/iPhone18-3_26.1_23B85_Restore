@interface EQKitMathMLMAlignGroup
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)layoutSchemata;
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
  if ((atomic_load_explicit(&qword_280A386C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A386C0))
  {
    sub_275C8E754(qword_280A386A8, &dword_275D0B7BC, dword_275D0B7C0);
    __cxa_guard_release(&qword_280A386C0);
  }

  return qword_280A386A8;
}

- (void)layoutSchemata
{
  *a1 = &unk_2884CB990;
  *(a1 + 8) = 26;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

@end