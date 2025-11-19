@interface MediaRemoteSubscriptionController
- (_TtC11PodcastsKit33MediaRemoteSubscriptionController)init;
- (void)subscribeToFeedUrl:(id)a3 completion:(id)a4;
- (void)subscribeToStoreId:(id)a3 completion:(id)a4;
- (void)subscribeToStoreId:(id)a3 siriContext:(id)a4 completion:(id)a5;
@end

@implementation MediaRemoteSubscriptionController

- (_TtC11PodcastsKit33MediaRemoteSubscriptionController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaRemoteSubscriptionController();
  return [(MediaRemoteSubscriptionController *)&v3 init];
}

- (void)subscribeToStoreId:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_25EA14164(v8, 0, sub_25EA14908, v7);
}

- (void)subscribeToStoreId:(id)a3 siriContext:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_25EA14164(v10, a4, sub_25EA14908, v9);
}

- (void)subscribeToFeedUrl:(id)a3 completion:(id)a4
{
  v6 = sub_25EA1E448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_25EA1E428();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_25EA144C0(v10, sub_25EA13F7C, v12);

  (*(v7 + 8))(v10, v6);
}

@end