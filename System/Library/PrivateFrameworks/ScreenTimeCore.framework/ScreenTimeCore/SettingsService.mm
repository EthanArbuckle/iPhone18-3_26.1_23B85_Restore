@interface SettingsService
- (void)isCloudSyncEnabled:(id)a3;
- (void)isRestrictAdultContentEnabled:(id)a3;
- (void)processSettingsChangesSinceHistoryToken:(NSPersistentHistoryToken *)a3 completionHandler:(id)a4;
- (void)requestLegacyUsageForUser:(NSNumber *)a3 withCompletionHandler:(id)a4;
- (void)setCloudSync:(BOOL)a3 withCompletion:(id)a4;
- (void)startCoreDataServerWithCompletionHandler:(id)a3;
- (void)updateLegacyUsageWithCompletionHandler:(id)a3;
@end

@implementation SettingsService

- (void)startCoreDataServerWithCompletionHandler:(id)a3
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140E48;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100140E50;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100140E58, v13);
}

- (void)processSettingsChangesSinceHistoryToken:(NSPersistentHistoryToken *)a3 completionHandler:(id)a4
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140E28;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140E30;
  v15[5] = v14;
  v16 = a3;

  sub_10010D4C0(0, 0, v10, &unk_100140E38, v15);
}

- (void)updateLegacyUsageWithCompletionHandler:(id)a3
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140E10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100140E18;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100141400, v13);
}

- (void)requestLegacyUsageForUser:(NSNumber *)a3 withCompletionHandler:(id)a4
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140DF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140E00;
  v15[5] = v14;
  v16 = a3;

  sub_10010D4C0(0, 0, v10, &unk_1001413E0, v15);
}

- (void)setCloudSync:(BOOL)a3 withCompletion:(id)a4
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140DD8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140DE0;
  v15[5] = v14;

  sub_10010D4C0(0, 0, v10, &unk_100140DE8, v15);
}

- (void)isCloudSyncEnabled:(id)a3
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140DB8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100140DC0;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100140DC8, v13);
}

- (void)isRestrictAdultContentEnabled:(id)a3
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140DA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100140550;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100140230, v13);
}

@end