@interface ManagedAppsStatus
+ (id)supportedStatusKeys;
- (_TtC21ManagedAppsSubscriber17ManagedAppsStatus)init;
- (void)queryForStatusWithKeyPaths:(NSArray *)a3 store:(RMSubscriberStore *)a4 completionHandler:(id)a5;
@end

@implementation ManagedAppsStatus

+ (id)supportedStatusKeys
{
  v6[2] = &_swiftEmptySetSingleton;
  v2 = sub_100016E20();
  sub_100010EEC(v6, v2, v3);

  v4.super.isa = sub_100016FB0().super.isa;

  return v4.super.isa;
}

- (void)queryForStatusWithKeyPaths:(NSArray *)a3 store:(RMSubscriberStore *)a4 completionHandler:(id)a5
{
  v9 = sub_100001658(&qword_100020CC8, &qword_100017E28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_100016FA0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100018198;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100017E40;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10000FD6C(0, 0, v12, &unk_100017E48, v17);
}

- (_TtC21ManagedAppsSubscriber17ManagedAppsStatus)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ManagedAppsStatus();
  return [(ManagedAppsStatus *)&v3 init];
}

@end