@interface PLTimeBlockExecutionSyncOnQueue
@end

@implementation PLTimeBlockExecutionSyncOnQueue

__uint64_t __PLTimeBlockExecutionSyncOnQueue_block_invoke(uint64_t a1)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  (*(*(a1 + 32) + 16))();
  result = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *(*(*(a1 + 40) + 8) + 24) = result - v2;
  return result;
}

@end