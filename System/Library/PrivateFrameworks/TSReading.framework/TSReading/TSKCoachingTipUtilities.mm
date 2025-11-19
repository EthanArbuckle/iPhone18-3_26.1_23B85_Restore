@interface TSKCoachingTipUtilities
+ (void)updateCoachingTipContext;
@end

@implementation TSKCoachingTipUtilities

+ (void)updateCoachingTipContext
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];

  [v3 postNotificationName:@"TSKCoachingTipContextChangedNotification" object:a1];
}

@end