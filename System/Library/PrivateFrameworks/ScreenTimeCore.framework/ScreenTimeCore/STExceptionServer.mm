@interface STExceptionServer
- (_TtC15ScreenTimeAgent17STExceptionServer)init;
- (void)addExceptionFor:(STExceptionApp *)for completionHandler:(id)handler;
- (void)contextDidSave:(id)save;
- (void)controllerDidChangeContent:(id)content;
- (void)deleteExceptionFor:(STExceptionApp *)for completionHandler:(id)handler;
- (void)fetchAllAppExceptionsForRequesterDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchExceptionsForRequesterDSID:(NSNumber *)d adamID:(unint64_t)iD completionHandler:(id)handler;
- (void)notifyUserOfAppRatingChange:(NSArray *)change completionHandler:(id)handler;
@end

@implementation STExceptionServer

- (void)addExceptionFor:(STExceptionApp *)for completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001408D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001408E0;
  v15[5] = v14;
  forCopy = for;
  selfCopy = self;
  sub_10010D4C0(0, 0, v10, &unk_1001408E8, v15);
}

- (void)deleteExceptionFor:(STExceptionApp *)for completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001408B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001408C0;
  v15[5] = v14;
  forCopy = for;
  selfCopy = self;
  sub_10010D4C0(0, 0, v10, &unk_1001408C8, v15);
}

- (void)fetchExceptionsForRequesterDSID:(NSNumber *)d adamID:(unint64_t)iD completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100140898;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001408A0;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_10010D4C0(0, 0, v12, &unk_1001408A8, v17);
}

- (void)fetchAllAppExceptionsForRequesterDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140878;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140880;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_10010D4C0(0, 0, v10, &unk_1001413C0, v15);
}

- (void)contextDidSave:(id)save
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000AF818(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  _s15ScreenTimeAgent17STExceptionServerC26controllerDidChangeContentyySo26NSFetchedResultsControllerCySo20NSFetchRequestResult_pGF_0();
}

- (void)notifyUserOfAppRatingChange:(NSArray *)change completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = change;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140868;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140550;
  v15[5] = v14;
  changeCopy = change;
  selfCopy = self;
  sub_10010D4C0(0, 0, v10, &unk_100140230, v15);
}

- (_TtC15ScreenTimeAgent17STExceptionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end