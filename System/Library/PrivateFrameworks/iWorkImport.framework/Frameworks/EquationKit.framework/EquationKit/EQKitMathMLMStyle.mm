@interface EQKitMathMLMStyle
- (const)mathMLAttributes;
@end

@implementation EQKitMathMLMStyle

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A386A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A386A0))
  {
    sub_275C8E754(qword_280A38688, dword_275D0B728, &dword_275D0B7BC);
    __cxa_guard_release(&qword_280A386A0);
  }

  return qword_280A38688;
}

@end