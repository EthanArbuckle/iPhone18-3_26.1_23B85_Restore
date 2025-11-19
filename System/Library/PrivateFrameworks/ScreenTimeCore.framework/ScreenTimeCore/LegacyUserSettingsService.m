@interface LegacyUserSettingsService
- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)a3 completionHandler:(id)a4;
- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)a3 for:(_TtC14ScreenTimeCore6UserID *)a4 completionHandler:(id)a5;
- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)a3 for:(_TtC14ScreenTimeCore6UserID *)a4 completionHandler:(id)a5;
- (void)userIdentifiersWithCompletionHandler:(id)a3;
- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)a3 completionHandler:(id)a4;
@end

@implementation LegacyUserSettingsService

- (void)userIdentifiersWithCompletionHandler:(id)a3
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
  v12[4] = &unk_100142810;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100142080;
  v13[5] = v12;

  sub_10010D4C0(0, 0, v8, &unk_100142820, v13);
}

- (void)userSettingsFor:(_TtC14ScreenTimeCore6UserID *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_1001427C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001427D0;
  v15[5] = v14;
  v16 = a3;

  sub_10010D4C0(0, 0, v10, &unk_1001427D8, v15);
}

- (void)insertWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)a3 for:(_TtC14ScreenTimeCore6UserID *)a4 completionHandler:(id)a5
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
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
  v16[4] = &unk_1001427A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1001427A8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_10010D4C0(0, 0, v12, &unk_1001427B0, v17);
}

- (void)updateWithUserSettings:(_TtC14ScreenTimeCore12UserSettings *)a3 for:(_TtC14ScreenTimeCore6UserID *)a4 completionHandler:(id)a5
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
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
  v16[4] = &unk_100142778;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100142780;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_10010D4C0(0, 0, v12, &unk_100142788, v17);
}

- (void)deleteUserSettingsFor:(_TtC14ScreenTimeCore6UserID *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_100142760;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140550;
  v15[5] = v14;
  v16 = a3;

  sub_10010D4C0(0, 0, v10, &unk_100140230, v15);
}

@end