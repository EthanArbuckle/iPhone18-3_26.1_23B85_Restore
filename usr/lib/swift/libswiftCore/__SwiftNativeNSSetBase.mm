@interface __SwiftNativeNSSetBase
- (__SwiftNativeNSSetBase)initWithCoder:(id)coder;
- (void)_noteAssociatedObjects;
- (void)_setWeaklyReferenced;
@end

@implementation __SwiftNativeNSSetBase

- (__SwiftNativeNSSetBase)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = __SwiftNativeNSSetBase;
  return [(__SwiftNativeNSSetBase *)&v4 init];
}

- (void)_setWeaklyReferenced
{
  isa = self[1].super.isa;
  if ((isa & 0x8000000000000001) == 1)
  {
    v3 = self[1].super.isa;
    atomic_compare_exchange_strong_explicit(&self[1], &v3, isa & 0x7FFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
    if (v3 != isa)
    {
      v4 = v3;
      do
      {
        atomic_compare_exchange_strong_explicit(&self[1], &v4, v3 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5);
    }
  }
}

- (void)_noteAssociatedObjects
{
  isa = self[1].super.isa;
  if ((isa & 0x8000000000000001) == 1)
  {
    v3 = self[1].super.isa;
    atomic_compare_exchange_strong_explicit(&self[1], &v3, isa & 0x7FFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
    if (v3 != isa)
    {
      v4 = v3;
      do
      {
        atomic_compare_exchange_strong_explicit(&self[1], &v4, v3 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed);
        v5 = v4 == v3;
        v3 = v4;
      }

      while (!v5);
    }
  }
}

@end