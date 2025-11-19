@interface STExpressIntroductionServer
- (_TtC15ScreenTimeAgent27STExpressIntroductionServer)init;
- (void)loadEncodedSettingsForEncodedUser:(NSData *)a3 withEncodedDefaults:(NSData *)a4 completion:(id)a5;
- (void)saveEncodedDefaults:(NSData *)a3 forEncodedUser:(NSData *)a4 completion:(id)a5;
- (void)saveEncodedSettings:(NSData *)a3 forEncodedUser:(NSData *)a4 completion:(id)a5;
- (void)saveSettingsDefaultsObjC:(STExpressIntroductionSettingsDefaultsObjC *)a3 completion:(id)a4;
@end

@implementation STExpressIntroductionServer

- (void)loadEncodedSettingsForEncodedUser:(NSData *)a3 withEncodedDefaults:(NSData *)a4 completion:(id)a5
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v16[4] = &unk_100140280;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100140288;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10010D4C0(0, 0, v12, &unk_100140290, v17);
}

- (void)saveEncodedSettings:(NSData *)a3 forEncodedUser:(NSData *)a4 completion:(id)a5
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v16[4] = &unk_100140260;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100140268;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10010D4C0(0, 0, v12, &unk_100140270, v17);
}

- (void)saveEncodedDefaults:(NSData *)a3 forEncodedUser:(NSData *)a4 completion:(id)a5
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v16[4] = &unk_100140240;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100140248;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10010D4C0(0, 0, v12, &unk_100140250, v17);
}

- (void)saveSettingsDefaultsObjC:(STExpressIntroductionSettingsDefaultsObjC *)a3 completion:(id)a4
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
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
  v14[4] = &unk_100140220;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140550;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10010D4C0(0, 0, v10, &unk_100140230, v15);
}

- (_TtC15ScreenTimeAgent27STExpressIntroductionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end