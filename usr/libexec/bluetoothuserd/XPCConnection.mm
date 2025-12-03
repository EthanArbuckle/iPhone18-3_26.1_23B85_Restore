@interface XPCConnection
- (_TtC14bluetoothuserd13XPCConnection)init;
- (void)appleAudioAccessoryLimitedLoggingWithCompletion:(id)completion;
- (void)deleteControllerInfoForDevice:(CBDevice *)device completion:(id)completion;
- (void)diagnosticShow:(NSDictionary *)show completion:(id)completion;
- (void)getCloudPairedDevicesWithCompletionHandler:(id)handler;
- (void)getControllerInfoForDevice:(CBDevice *)device completion:(id)completion;
- (void)getCurrentUserGivenNameWithCompletion:(id)completion;
- (void)getDistributedLoggingStatusWithCompletion:(id)completion;
- (void)readPrefKeys:(NSArray *)keys source:(unsigned int)source completion:(id)completion;
- (void)setAppleAudioAccessoryLimitedLogging:(BOOL)logging completion:(id)completion;
- (void)setDistributedLoggingStatus:(unsigned int)status completion:(id)completion;
- (void)storeControllerInfo:(CBControllerInfo *)info completion:(id)completion;
- (void)userNotificationEvent:(CBUserNotificationRequest *)event completion:(id)completion;
- (void)writePrefKey:(NSString *)key value:(id)value source:(unsigned int)source completion:(id)completion;
@end

@implementation XPCConnection

- (_TtC14bluetoothuserd13XPCConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)diagnosticShow:(NSDictionary *)show completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = show;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F88;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074F90;
  v15[5] = v14;
  showCopy = show;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074F98, v15);
}

- (void)getCloudPairedDevicesWithCompletionHandler:(id)handler
{
  v5 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100074F68;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074F70;
  v13[5] = v12;
  selfCopy = self;
  sub_10005ECCC(0, 0, v8, &unk_100074F78, v13);
}

- (void)deleteControllerInfoForDevice:(CBDevice *)device completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = device;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074F50;
  v15[5] = v14;
  deviceCopy = device;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074F58, v15);
}

- (void)storeControllerInfo:(CBControllerInfo *)info completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = info;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F28;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074F30;
  v15[5] = v14;
  infoCopy = info;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074F38, v15);
}

- (void)getControllerInfoForDevice:(CBDevice *)device completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = device;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074F10;
  v15[5] = v14;
  deviceCopy = device;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074F18, v15);
}

- (void)getDistributedLoggingStatusWithCompletion:(id)completion
{
  v5 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100074EE8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074EF0;
  v13[5] = v12;
  selfCopy = self;
  sub_10005ECCC(0, 0, v8, &unk_100074EF8, v13);
}

- (void)setDistributedLoggingStatus:(unsigned int)status completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = status;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074EC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074ED0;
  v15[5] = v14;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074ED8, v15);
}

- (void)appleAudioAccessoryLimitedLoggingWithCompletion:(id)completion
{
  v5 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100074EA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074EB0;
  v13[5] = v12;
  selfCopy = self;
  sub_10005ECCC(0, 0, v8, &unk_100074EB8, v13);
}

- (void)setAppleAudioAccessoryLimitedLogging:(BOOL)logging completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = logging;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074E88;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074E90;
  v15[5] = v14;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074E98, v15);
}

- (void)getCurrentUserGivenNameWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10005FE50(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)readPrefKeys:(NSArray *)keys source:(unsigned int)source completion:(id)completion
{
  v9 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = keys;
  *(v14 + 24) = source;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100074E68;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100074E70;
  v17[5] = v16;
  keysCopy = keys;
  selfCopy = self;
  sub_10005ECCC(0, 0, v12, &unk_100074E78, v17);
}

- (void)writePrefKey:(NSString *)key value:(id)value source:(unsigned int)source completion:(id)completion
{
  v11 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = key;
  *(v16 + 24) = value;
  *(v16 + 32) = source;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100074E48;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100074E50;
  v19[5] = v18;
  keyCopy = key;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10005ECCC(0, 0, v14, &unk_100074E58, v19);
}

- (void)userNotificationEvent:(CBUserNotificationRequest *)event completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = event;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074E00;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074E10;
  v15[5] = v14;
  eventCopy = event;
  selfCopy = self;
  sub_10005ECCC(0, 0, v10, &unk_100074E20, v15);
}

@end