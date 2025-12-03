@interface SCUIDefaultImplementations
+ (void)didAskForMoreHelpWithPresentingViewController:(id)controller;
+ (void)didMessageSomeoneWithInterventionType:(int64_t)type;
- (SCUIDefaultImplementations)init;
@end

@implementation SCUIDefaultImplementations

+ (void)didMessageSomeoneWithInterventionType:(int64_t)type
{
  v4 = objc_opt_self();

  [v4 openChatWithParentsForInterventionType_];
}

+ (void)didAskForMoreHelpWithPresentingViewController:(id)controller
{
  v4 = objc_allocWithZone(SCUIMoreHelpWebViewController);
  controllerCopy = controller;
  v5 = [v4 init];
  [controllerCopy presentViewController:v5 animated:1 completion:0];
}

- (SCUIDefaultImplementations)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DefaultImplementations();
  return [(SCUIDefaultImplementations *)&v3 init];
}

@end