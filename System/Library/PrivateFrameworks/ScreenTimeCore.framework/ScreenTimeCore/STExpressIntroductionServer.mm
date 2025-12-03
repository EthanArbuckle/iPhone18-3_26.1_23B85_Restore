@interface STExpressIntroductionServer
- (_TtC15ScreenTimeAgent27STExpressIntroductionServer)init;
- (void)loadEncodedSettingsForEncodedUser:(NSData *)user withEncodedDefaults:(NSData *)defaults completion:(id)completion;
- (void)saveEncodedDefaults:(NSData *)defaults forEncodedUser:(NSData *)user completion:(id)completion;
- (void)saveEncodedSettings:(NSData *)settings forEncodedUser:(NSData *)user completion:(id)completion;
- (void)saveSettingsDefaultsObjC:(STExpressIntroductionSettingsDefaultsObjC *)c completion:(id)completion;
@end

@implementation STExpressIntroductionServer

- (void)loadEncodedSettingsForEncodedUser:(NSData *)user withEncodedDefaults:(NSData *)defaults completion:(id)completion
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = user;
  v14[3] = defaults;
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
  userCopy = user;
  defaultsCopy = defaults;
  selfCopy = self;
  sub_10010D4C0(0, 0, v12, &unk_100140290, v17);
}

- (void)saveEncodedSettings:(NSData *)settings forEncodedUser:(NSData *)user completion:(id)completion
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = settings;
  v14[3] = user;
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
  settingsCopy = settings;
  userCopy = user;
  selfCopy = self;
  sub_10010D4C0(0, 0, v12, &unk_100140270, v17);
}

- (void)saveEncodedDefaults:(NSData *)defaults forEncodedUser:(NSData *)user completion:(id)completion
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = defaults;
  v14[3] = user;
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
  defaultsCopy = defaults;
  userCopy = user;
  selfCopy = self;
  sub_10010D4C0(0, 0, v12, &unk_100140250, v17);
}

- (void)saveSettingsDefaultsObjC:(STExpressIntroductionSettingsDefaultsObjC *)c completion:(id)completion
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = c;
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
  cCopy = c;
  selfCopy = self;
  sub_10010D4C0(0, 0, v10, &unk_100140230, v15);
}

- (_TtC15ScreenTimeAgent27STExpressIntroductionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end