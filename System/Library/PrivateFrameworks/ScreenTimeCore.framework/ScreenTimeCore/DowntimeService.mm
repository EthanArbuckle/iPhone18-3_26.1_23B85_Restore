@interface DowntimeService
- (void)isDowntimeEnabledForUserID:(STUserID *)d completionHandler:(id)handler;
- (void)toggleOnDemandDowntimeForUserID:(STUserID *)d completionHandler:(id)handler;
@end

@implementation DowntimeService

- (void)isDowntimeEnabledForUserID:(STUserID *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
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
  v14[4] = &unk_1001426D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001426E0;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_1001426E8, v15);
}

- (void)toggleOnDemandDowntimeForUserID:(STUserID *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
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
  v14[4] = &unk_1001426C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140550;
  v15[5] = v14;
  dCopy = d;

  sub_10010D4C0(0, 0, v10, &unk_100140230, v15);
}

@end