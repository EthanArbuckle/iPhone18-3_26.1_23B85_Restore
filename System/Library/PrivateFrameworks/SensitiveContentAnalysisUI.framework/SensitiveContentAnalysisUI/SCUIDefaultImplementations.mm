@interface SCUIDefaultImplementations
+ (void)didAskForMoreHelpWithPresentingViewController:(id)a3;
+ (void)didMessageSomeoneWithInterventionType:(int64_t)a3;
- (SCUIDefaultImplementations)init;
@end

@implementation SCUIDefaultImplementations

+ (void)didMessageSomeoneWithInterventionType:(int64_t)a3
{
  v4 = objc_opt_self();

  [v4 openChatWithParentsForInterventionType_];
}

+ (void)didAskForMoreHelpWithPresentingViewController:(id)a3
{
  v4 = objc_allocWithZone(SCUIMoreHelpWebViewController);
  v6 = a3;
  v5 = [v4 init];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (SCUIDefaultImplementations)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DefaultImplementations();
  return [(SCUIDefaultImplementations *)&v3 init];
}

@end