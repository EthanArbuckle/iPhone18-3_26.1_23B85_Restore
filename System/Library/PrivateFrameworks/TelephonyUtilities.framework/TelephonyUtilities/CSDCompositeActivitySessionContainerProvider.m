@interface CSDCompositeActivitySessionContainerProvider
- (BOOL)hasActiveActivitySessionContainer;
- (CSDCompositeActivitySessionContainerProvider)initWithConversationManagerDataSourceObservers:(id)a3 conversationManagerDataSource:(id)a4 activityAuthorizer:(id)a5;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)a3;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)a3 options:(unint64_t)a4 containerID:(NSUUID *)a5 completionHandler:(id)a6;
- (void)sendLatestContainersToObservers;
@end

@implementation CSDCompositeActivitySessionContainerProvider

- (CSDCompositeActivitySessionContainerProvider)initWithConversationManagerDataSourceObservers:(id)a3 conversationManagerDataSource:(id)a4 activityAuthorizer:(id)a5
{
  v5 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_10032E98C(v5);
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)a3 options:(unint64_t)a4 containerID:(NSUUID *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a5;

  sub_10044D610(&unk_100580BF0, v11);
}

- (void)sendLatestContainersToObservers
{

  sub_100333F74();
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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