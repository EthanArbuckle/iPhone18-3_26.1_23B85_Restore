@interface EQKitMathMLMAlignGroup
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)layoutSchemata;
@end

@implementation EQKitMathMLMAlignGroup

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignGroup;
  return [(EQKitMathMLMAlignGroup *)&v5 init:node];
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
  *self = &unk_2884CB990;
  *(self + 8) = 26;
  *(self + 16) = 0;
  *(self + 24) = 0;
}

@end