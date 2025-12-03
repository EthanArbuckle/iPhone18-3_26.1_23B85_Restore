@interface EQKitMathMLMStackLine
- (const)mathMLAttributes;
- (id)layoutSchemata;
@end

@implementation EQKitMathMLMStackLine

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 15;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38AB8))
  {
    sub_275C8E754(qword_280A38AA0, &unk_275D0C178, dword_275D0C180);
    __cxa_guard_release(&qword_280A38AB8);
  }

  return qword_280A38AA0;
}

@end