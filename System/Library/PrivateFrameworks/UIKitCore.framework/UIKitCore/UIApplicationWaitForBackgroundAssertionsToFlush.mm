@interface UIApplicationWaitForBackgroundAssertionsToFlush
@end

@implementation UIApplicationWaitForBackgroundAssertionsToFlush

void ___UIApplicationWaitForBackgroundAssertionsToFlush_block_invoke(uint64_t a1)
{
  v5 = [qword_1ED49E268 allObjects];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end