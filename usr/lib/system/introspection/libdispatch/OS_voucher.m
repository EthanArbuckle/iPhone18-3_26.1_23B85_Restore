@interface OS_voucher
- (OS_voucher)init;
- (OS_voucher)retain;
- (id)debugDescription;
- (uint64_t)release;
- (void)dealloc;
- (void)release;
@end

@implementation OS_voucher

- (OS_voucher)init
{
  qword_6D1C0 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (OS_voucher)retain
{
  if (atomic_fetch_add_explicit(&self[1].super.super.isa + 1, 1u, memory_order_relaxed) <= 0)
  {
    [OS_voucher retain];
  }

  return self;
}

- (void)release
{
  add_explicit = atomic_fetch_add_explicit(&self[1].super.super.isa + 1, 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit <= 1)
  {
    [(OS_voucher *)add_explicit release];
  }
}

- (void)dealloc
{
  _voucher_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_voucher;
  [(OS_voucher *)&v3 dealloc];
}

- (id)debugDescription
{
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    _voucher_debug(self, __str, 0x800uLL);
    result = [v4 stringWithUTF8String:"<%s: %s>"];
    if (result)
    {
      return [v4 stringWithFormat:result, object_getClassName(self), __str];
    }
  }

  return result;
}

- (uint64_t)release
{
  if (result == 1)
  {
    return _voucher_xref_dispose(a2);
  }

  qword_6D1C0 = "API MISUSE: Voucher over-release";
  __break(1u);
  return result;
}

@end