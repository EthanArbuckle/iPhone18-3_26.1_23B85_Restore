@interface BatchFeedRequestController
+ (void)fetchOutOfDateShowUUIDsWith:(NSArray *)with completionHandler:(id)handler;
+ (void)fetchOutOfDateShowUUIDsWithIncludeImplicit:(BOOL)implicit completionHandler:(id)handler;
- (_TtC18PodcastsFoundation26BatchFeedRequestController)init;
@end

@implementation BatchFeedRequestController

+ (void)fetchOutOfDateShowUUIDsWith:(NSArray *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1D917886C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D91A6E80;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D91A6E88;
  v15[5] = v14;
  withCopy = with;
  sub_1D901312C(0, 0, v10, &unk_1D91A6E90, v15);
}

+ (void)fetchOutOfDateShowUUIDsWithIncludeImplicit:(BOOL)implicit completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = implicit;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_1D917886C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D91A6E38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1D918B978;
  v15[5] = v14;
  sub_1D901312C(0, 0, v10, &unk_1D918B980, v15);
}

- (_TtC18PodcastsFoundation26BatchFeedRequestController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BatchFeedRequestController();
  return [(BatchFeedRequestController *)&v3 init];
}

@end