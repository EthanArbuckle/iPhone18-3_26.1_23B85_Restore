@interface EQKitMathMLMPadded
- (const)mathMLAttributes;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMPadded

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A386E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A386E0))
  {
    sub_275C8E754(qword_280A386C8, dword_275D0B7C0, dword_275D0B7D4);
    __cxa_guard_release(&qword_280A386E0);
  }

  return qword_280A386C8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EQKitMathMLMPadded;
  [(EQKitMathMLUnaryNode *)&v2 dealloc];
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 23;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end