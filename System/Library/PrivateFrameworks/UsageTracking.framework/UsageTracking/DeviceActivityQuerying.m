@interface DeviceActivityQuerying
+ (BOOL)isQuickLookVideoNowPlaying;
+ (NSOrderedSet)currentBundleIdentifiers;
+ (NSOrderedSet)currentWebDomains;
+ (id)currentVideoIdentifiers;
- (_TtC18UsageTrackingAgent22DeviceActivityQuerying)init;
- (id)query:(id)a3 error:(id *)a4;
- (void)queryForUncategorizedLocalWebUsageDuringInterval:(NSDateInterval *)a3 completionHandler:(id)a4;
@end

@implementation DeviceActivityQuerying

- (id)query:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_10002E938(v5);

  return v7;
}

- (void)queryForUncategorizedLocalWebUsageDuringInterval:(NSDateInterval *)a3 completionHandler:(id)a4
{
  v7 = sub_100020818(&qword_1000913B8, &qword_10006DC30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10006DC40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10006DC50;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_100032B4C(0, 0, v11, &unk_10006DC60, v16);
}

+ (NSOrderedSet)currentBundleIdentifiers
{
  if (qword_100090CF8 != -1)
  {
    swift_once();
  }

  v2 = (*(*algn_100092E68 + 8))();

  return v2;
}

+ (NSOrderedSet)currentWebDomains
{
  if (qword_100090CF8 != -1)
  {
    swift_once();
  }

  v2 = (*(*algn_100092E68 + 16))();

  return v2;
}

+ (BOOL)isQuickLookVideoNowPlaying
{
  if (qword_100090CF8 != -1)
  {
    swift_once();
  }

  return (*(*algn_100092E68 + 24))() & 1;
}

+ (id)currentVideoIdentifiers
{
  if (qword_100090CF8 != -1)
  {
    swift_once();
  }

  v2 = (*(*algn_100092E68 + 32))();
  v4 = v3;
  v5 = [objc_allocWithZone(BPSTuple) initWithFirst:v2 second:v3];

  return v5;
}

- (_TtC18UsageTrackingAgent22DeviceActivityQuerying)init
{
  v3 = self + OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying____lazy_storage___dataSource;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = (self + OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying__query);
  *v4 = type metadata accessor for DeviceActivityQuery();
  v4[1] = &off_100086DF0;
  v5 = self + OBJC_IVAR____TtC18UsageTrackingAgent22DeviceActivityQuerying____lazy_storage___usageQuerying;
  v6 = type metadata accessor for DeviceActivityQuerying();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(DeviceActivityQuerying *)&v8 init];
}

@end