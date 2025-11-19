@interface PasscodeSettingsStatus
+ (id)supportedStatusKeys;
- (_TtC26PasscodeSettingsSubscriber22PasscodeSettingsStatus)init;
- (void)queryForStatusWithKeyPaths:(NSArray *)a3 store:(RMSubscriberStore *)a4 completionHandler:(id)a5;
@end

@implementation PasscodeSettingsStatus

+ (id)supportedStatusKeys
{
  sub_100009BE4();
  v2.super.isa = sub_10000AB6C().super.isa;

  return v2.super.isa;
}

- (void)queryForStatusWithKeyPaths:(NSArray *)a3 store:(RMSubscriberStore *)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000AB5C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000B918;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000B690;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100008414(0, 0, v11, &unk_10000B698, v16);
}

- (_TtC26PasscodeSettingsSubscriber22PasscodeSettingsStatus)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PasscodeSettingsStatus();
  return [(PasscodeSettingsStatus *)&v3 init];
}

@end