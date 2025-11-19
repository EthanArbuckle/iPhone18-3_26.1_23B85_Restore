@interface PSBackgroundProcessingTask
@end

@implementation PSBackgroundProcessingTask

uint64_t __51___PSBackgroundProcessingTask_handleRepeatingTask___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) saveBookmark];
  *(*(*(a1 + 40) + 8) + 40) = 1;
  return result;
}

@end