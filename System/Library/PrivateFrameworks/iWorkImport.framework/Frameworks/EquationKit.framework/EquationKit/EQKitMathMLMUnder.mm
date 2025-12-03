@interface EQKitMathMLMUnder
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
@end

@implementation EQKitMathMLMUnder

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMUnder;
  return [(EQKitMathMLBinaryNode *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38980))
  {
    sub_275C8E754(qword_280A38968, dword_275D0BEF8, &dword_275D0BEF8[2]);
    __cxa_guard_release(&qword_280A38980);
  }

  return qword_280A38968;
}

@end