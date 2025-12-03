@interface StickerIndexingClient.Provider
- (_TtCV9stickersd21StickerIndexingClient8Provider)init;
- (void)reindexAllItemsForBundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(NSArray *)identifiers bundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler;
@end

@implementation StickerIndexingClient.Provider

- (void)reindexAllItemsForBundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler
{
  v9 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = class;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100016310;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100016318;
  v17[5] = v16;
  dCopy = d;
  classCopy = class;
  selfCopy = self;
  sub_1000113B4(0, 0, v12, &unk_100016320, v17);
}

- (void)reindexItemsWithIdentifiers:(NSArray *)identifiers bundleID:(NSString *)d protectionClass:(NSString *)class acknowledgementHandler:(id)handler
{
  v11 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = identifiers;
  v16[3] = d;
  v16[4] = class;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000162C8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1000162D8;
  v19[5] = v18;
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  selfCopy = self;
  sub_1000113B4(0, 0, v14, &unk_1000162E8, v19);
}

- (_TtCV9stickersd21StickerIndexingClient8Provider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end