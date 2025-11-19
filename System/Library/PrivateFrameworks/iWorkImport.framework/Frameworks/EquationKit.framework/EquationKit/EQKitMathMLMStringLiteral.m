@interface EQKitMathMLMStringLiteral
- (const)mathMLAttributes;
@end

@implementation EQKitMathMLMStringLiteral

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38BD8))
  {
    sub_275C8E754(qword_280A38BC0, &unk_275D0C204, dword_275D0C20C);
    __cxa_guard_release(&qword_280A38BD8);
  }

  return qword_280A38BC0;
}

@end