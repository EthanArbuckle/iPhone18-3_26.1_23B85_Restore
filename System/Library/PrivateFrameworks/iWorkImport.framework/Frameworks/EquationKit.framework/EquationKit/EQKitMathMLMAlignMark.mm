@interface EQKitMathMLMAlignMark
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)layoutSchemata;
@end

@implementation EQKitMathMLMAlignMark

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMAlignMark;
  return [(EQKitMathMLMAlignMark *)&v5 init:node];
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
  *self = &unk_2884CB990;
  *(self + 8) = 27;
  *(self + 16) = 0;
  *(self + 24) = 0;
}

@end