@interface MediaAPISubscriptionController
- (void)subscribeToFeedUrl:(id)url completion:(id)completion;
- (void)subscribeToStoreId:(id)id completion:(id)completion;
- (void)subscribeToStoreId:(id)id siriContext:(id)context completion:(id)completion;
@end

@implementation MediaAPISubscriptionController

- (void)subscribeToStoreId:(id)id completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  idCopy = id;

  sub_25EA178F8(idCopy, 0, sub_25EA18888, v6);
}

- (void)subscribeToStoreId:(id)id siriContext:(id)context completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  idCopy = id;
  contextCopy = context;

  sub_25EA178F8(idCopy, context, sub_25EA187A4, v8);
}

- (void)subscribeToFeedUrl:(id)url completion:(id)completion
{
  v5 = sub_25EA1E448();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_25EA1E428();
  v10[2](v10, 4);
  _Block_release(v10);
  (*(v6 + 8))(v9, v5);
}

@end