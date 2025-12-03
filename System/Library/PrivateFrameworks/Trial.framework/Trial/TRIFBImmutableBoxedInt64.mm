@interface TRIFBImmutableBoxedInt64
- (void)initWithBufRef:(uint64_t)ref cppPointer:;
@end

@implementation TRIFBImmutableBoxedInt64

- (void)initWithBufRef:(uint64_t)ref cppPointer:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = TRIFBImmutableBoxedInt64;
    v7 = objc_msgSendSuper2(&v9, sel_init_);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      self[2] = ref;
    }
  }

  return self;
}

@end