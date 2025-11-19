@interface EQKitMathMLMOver
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
@end

@implementation EQKitMathMLMOver

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOver;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:a3 parser:a4];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38AF8))
  {
    sub_275C8E754(qword_280A38AE0, &unk_275D0C18C, &unk_275D0C194);
    __cxa_guard_release(&qword_280A38AF8);
  }

  return qword_280A38AE0;
}

@end