@interface MediaAPISubscriptionController
- (void)subscribeToFeedUrl:(id)a3 completion:(id)a4;
- (void)subscribeToStoreId:(id)a3 completion:(id)a4;
- (void)subscribeToStoreId:(id)a3 siriContext:(id)a4 completion:(id)a5;
@end

@implementation MediaAPISubscriptionController

- (void)subscribeToStoreId:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;

  sub_25EA178F8(v7, 0, sub_25EA18888, v6);
}

- (void)subscribeToStoreId:(id)a3 siriContext:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = a4;

  sub_25EA178F8(v9, a4, sub_25EA187A4, v8);
}

- (void)subscribeToFeedUrl:(id)a3 completion:(id)a4
{
  v5 = sub_25EA1E448();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  sub_25EA1E428();
  v10[2](v10, 4);
  _Block_release(v10);
  (*(v6 + 8))(v9, v5);
}

@end