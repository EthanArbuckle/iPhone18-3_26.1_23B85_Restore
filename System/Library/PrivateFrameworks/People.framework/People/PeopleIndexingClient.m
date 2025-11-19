@interface PeopleIndexingClient
- (_TtC7peopled20PeopleIndexingClient)init;
- (void)reindexAllItemsForBundleID:(NSString *)a3 protectionClass:(NSString *)a4 acknowledgementHandler:(id)a5;
- (void)reindexItemsWithIdentifiers:(NSArray *)a3 bundleID:(NSString *)a4 protectionClass:(NSString *)a5 acknowledgementHandler:(id)a6;
@end

@implementation PeopleIndexingClient

- (void)reindexAllItemsForBundleID:(NSString *)a3 protectionClass:(NSString *)a4 acknowledgementHandler:(id)a5
{
  v9 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10004E3D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10004E3D8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100025510(0, 0, v12, &unk_10004E3E0, v17);
}

- (void)reindexItemsWithIdentifiers:(NSArray *)a3 bundleID:(NSString *)a4 protectionClass:(NSString *)a5 acknowledgementHandler:(id)a6
{
  v11 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10004E388;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10004E398;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_100025510(0, 0, v14, &unk_10004E3A8, v19);
}

- (_TtC7peopled20PeopleIndexingClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end