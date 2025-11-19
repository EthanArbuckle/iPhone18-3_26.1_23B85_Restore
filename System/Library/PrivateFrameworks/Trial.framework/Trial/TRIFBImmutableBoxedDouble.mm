@interface TRIFBImmutableBoxedDouble
- (void)initWithBufRef:(uint64_t)a3 cppPointer:;
@end

@implementation TRIFBImmutableBoxedDouble

- (void)initWithBufRef:(uint64_t)a3 cppPointer:
{
  v6 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = TRIFBImmutableBoxedDouble;
    v7 = objc_msgSendSuper2(&v9, sel_init_);
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      a1[2] = a3;
    }
  }

  return a1;
}

@end