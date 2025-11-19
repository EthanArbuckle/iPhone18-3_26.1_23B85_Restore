@interface EQKitMathMLMEnclose
- (const)mathMLAttributes;
- (id)layoutSchemata;
@end

@implementation EQKitMathMLMEnclose

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38A78))
  {
    sub_275C8E754(qword_280A38A60, dword_275D0C158, &dword_275D0C158[1]);
    __cxa_guard_release(&qword_280A38A78);
  }

  return qword_280A38A60;
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 28;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end