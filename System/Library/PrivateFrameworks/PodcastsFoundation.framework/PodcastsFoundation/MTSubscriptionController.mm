@interface MTSubscriptionController
+ (MTSubscriptionController)sharedInstance;
+ (NSString)subscriptionControllerErrorDomain;
- (MTSubscriptionController)init;
- (void)podcastExistsInStoreWithFeedUrl:(id)url completion:(id)completion;
- (void)subscribeToShowWithPodcastStoreId:(id)id account:(id)account completion:(id)completion;
@end

@implementation MTSubscriptionController

+ (MTSubscriptionController)sharedInstance
{
  if (qword_1ECAB36D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB97A8;

  return v3;
}

+ (NSString)subscriptionControllerErrorDomain
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (void)subscribeToShowWithPodcastStoreId:(id)id account:(id)account completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_1D917820C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  accountCopy = account;
  selfCopy = self;
  sub_1D905C8C4(v8, v10, account, sub_1D8E899BC, v11);
}

- (void)podcastExistsInStoreWithFeedUrl:(id)url completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1D917820C();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1D905EA64(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (MTSubscriptionController)init
{
  v3 = OBJC_IVAR___MTSubscriptionController_requestController;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for SubscriptionController();
  return [(MTSubscriptionController *)&v5 init];
}

@end