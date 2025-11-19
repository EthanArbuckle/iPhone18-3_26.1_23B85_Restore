@interface RMManagedTrustStore
+ (_TtC16RemoteManagement19RMManagedTrustStore)sharedInstance;
- (_TtC16RemoteManagement19RMManagedTrustStore)init;
@end

@implementation RMManagedTrustStore

+ (_TtC16RemoteManagement19RMManagedTrustStore)sharedInstance
{
  if (qword_1ECEA8128 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECEA85D8;

  return v3;
}

- (_TtC16RemoteManagement19RMManagedTrustStore)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RMManagedTrustStore();
  return [(RMManagedTrustStore *)&v3 init];
}

@end