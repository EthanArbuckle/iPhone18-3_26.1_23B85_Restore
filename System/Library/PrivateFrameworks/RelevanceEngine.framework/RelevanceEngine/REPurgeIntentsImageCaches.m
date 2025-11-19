@interface REPurgeIntentsImageCaches
@end

@implementation REPurgeIntentsImageCaches

void ___REPurgeIntentsImageCaches__49165157_block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"UIApplicationDidEnterBackgroundNotification" object:0];
}

@end