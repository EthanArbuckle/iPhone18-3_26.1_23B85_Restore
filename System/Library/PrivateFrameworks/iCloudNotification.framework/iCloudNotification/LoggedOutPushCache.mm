@interface LoggedOutPushCache
+ (NSDate)expirationDate;
+ (void)registeredDeviceWithExpirationDate:(id)date;
+ (void)unregisteredDevice;
- (_TtC3ind18LoggedOutPushCache)init;
@end

@implementation LoggedOutPushCache

- (_TtC3ind18LoggedOutPushCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LoggedOutPushCache();
  return [(LoggedOutPushCache *)&v3 init];
}

+ (NSDate)expirationDate
{
  v2 = sub_100022CF0(&qword_100063530, &unk_10004E300);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  static LoggedOutPushCache.expirationDate.getter(&v12 - v4);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v5, v6);
    v9 = isa;
  }

  return v9;
}

+ (void)registeredDeviceWithExpirationDate:(id)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v8 = qword_100063A58;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v10];

  (*(v4 + 8))(v7, v3);
}

+ (void)unregisteredDevice
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v2 = qword_100063A58;
  v3 = String._bridgeToObjectiveC()();
  [v2 setURL:0 forKey:v3];
}

@end