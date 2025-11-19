@interface NSReadAttributedStringFromURLOrDataSync
@end

@implementation NSReadAttributedStringFromURLOrDataSync

void ___NSReadAttributedStringFromURLOrDataSync_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 mutableCopy];
  *(*(*(a1 + 40) + 8) + 40) = [a3 copy];
  *(*(*(a1 + 48) + 8) + 40) = [a4 copy];
  Weak = objc_loadWeak((a1 + 56));
  dispatch_semaphore_signal(Weak);
  v8 = objc_loadWeak((a1 + 56));

  dispatch_release(v8);
}

@end