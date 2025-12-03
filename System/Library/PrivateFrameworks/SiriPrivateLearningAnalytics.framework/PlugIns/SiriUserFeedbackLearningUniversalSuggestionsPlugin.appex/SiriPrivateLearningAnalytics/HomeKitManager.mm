@interface HomeKitManager
- (_TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager)init;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeKitManager

- (_TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager)init
{
  *&self->homeManager[OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManagerDelegate] = 0;
  swift_unknownObjectWeakInit();
  v3 = [objc_allocWithZone(HMHomeManagerConfiguration) initWithOptions:34397 cachePolicy:0];
  v4 = [objc_allocWithZone(HMHomeManager) initWithConfiguration:v3];

  *(&self->super.isa + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManager) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HomeKitManager();
  return [(HomeKitManager *)&v6 init];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_10002791C();
}

@end