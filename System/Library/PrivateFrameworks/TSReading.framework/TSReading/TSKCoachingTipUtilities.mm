@interface TSKCoachingTipUtilities
+ (void)updateCoachingTipContext;
@end

@implementation TSKCoachingTipUtilities

+ (void)updateCoachingTipContext
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSKCoachingTipContextChangedNotification" object:self];
}

@end