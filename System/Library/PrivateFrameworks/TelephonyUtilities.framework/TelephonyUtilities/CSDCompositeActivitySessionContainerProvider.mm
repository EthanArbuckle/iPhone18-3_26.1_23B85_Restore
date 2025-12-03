@interface CSDCompositeActivitySessionContainerProvider
- (BOOL)hasActiveActivitySessionContainer;
- (CSDCompositeActivitySessionContainerProvider)initWithConversationManagerDataSourceObservers:(id)observers conversationManagerDataSource:(id)source activityAuthorizer:(id)authorizer;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity options:(unint64_t)options containerID:(NSUUID *)d completionHandler:(id)handler;
- (void)sendLatestContainersToObservers;
@end

@implementation CSDCompositeActivitySessionContainerProvider

- (CSDCompositeActivitySessionContainerProvider)initWithConversationManagerDataSourceObservers:(id)observers conversationManagerDataSource:(id)source activityAuthorizer:(id)authorizer
{
  observersCopy = observers;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_10032E98C(observersCopy);
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity options:(unint64_t)options containerID:(NSUUID *)d completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = activity;
  v11[3] = options;
  v11[4] = d;
  v11[5] = v10;
  v11[6] = self;
  activityCopy = activity;
  dCopy = d;

  sub_10044D610(&unk_100580BF0, v11);
}

- (void)sendLatestContainersToObservers
{

  sub_100333F74();
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10044D610(&unk_100580BE0, v5);
}

- (BOOL)hasActiveActivitySessionContainer
{

  v2 = sub_100334430();

  return v2 & 1;
}

@end