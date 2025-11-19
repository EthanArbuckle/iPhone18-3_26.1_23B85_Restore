@interface SyncCoordinator
+ (BOOL)deleteLocalDataAndReturnError:(id *)a3;
+ (NSString)privateEngineDidIdleNotificationName;
+ (void)deleteExpiredDataWithZoneNames:(id)a3;
+ (void)downloadWithCompletionHandler:(id)a3;
+ (void)resetSharingPermissions;
+ (void)startSyncing;
+ (void)uploadLocalDataWithCompletionHandler:(id)a3;
- (_TtC18UsageTrackingAgent15SyncCoordinator)init;
@end

@implementation SyncCoordinator

+ (NSString)privateEngineDidIdleNotificationName
{
  if (qword_100090D40 != -1)
  {
    swift_once();
  }

  v3 = qword_100092F00;

  return v3;
}

+ (void)startSyncing
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }
}

+ (void)resetSharingPermissions
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  sub_1000366AC(0, 0);
}

+ (void)uploadLocalDataWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
  type metadata accessor for DeviceActivityAuthorization();
  _Block_copy(v3);
  if (static DeviceActivityAuthorization.sharingEnabled.getter())
  {
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v4 = qword_100092EF8;
    _Block_copy(v3);
    v5._rawValue = v3;
    sub_10005071C(v4, v5);
    _Block_release(v3);
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }

  _Block_release(v3);

  _Block_release(v3);
}

+ (BOOL)deleteLocalDataAndReturnError:(id *)a3
{
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v3 = static _SegmentInterval.allCases.getter();
  sub_1000379FC(v3);

  return 1;
}

+ (void)deleteExpiredDataWithZoneNames:(id)a3
{
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100092EF8 + *(*qword_100092EF8 + 224));
  CKSyncEngine.state.getter();
  v5 = sub_10003F194(v3);

  CKSyncEngine.State.add(pendingDatabaseChanges:)(v5);
}

+ (void)downloadWithCompletionHandler:(id)a3
{
  v4 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  if (qword_100090D38 != -1)
  {
    swift_once();
  }

  v11 = qword_100092EF8;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = sub_10004E7CC;
  v13[6] = v10;

  sub_100035B98(0, 0, v8, &unk_10006E0A8, v13);
}

- (_TtC18UsageTrackingAgent15SyncCoordinator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SyncCoordinator *)&v3 init];
}

@end