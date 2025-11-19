@interface FAKE
@end

@implementation FAKE

uint64_t __FAKE_NIL_PTR_block_invoke()
{
  FAKE_NIL_PTR___fakeNil = objc_alloc_init(MEMORY[0x277D82BB8]);

  return MEMORY[0x2821F96F8]();
}

@end