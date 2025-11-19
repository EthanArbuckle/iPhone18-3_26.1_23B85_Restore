@interface RPSetLogLevel
@end

@implementation RPSetLogLevel

NSObject *___RPSetLogLevel_block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = dispatch_semaphore_signal(result);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

@end