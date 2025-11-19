@interface JSStorageObject
- (_TtC26_OnDeviceStorage_JetEngine15JSStorageObject)init;
- (id)createConnectionWithRequestId:(id)a3 :(id)a4;
- (id)createConnectionWithToken:(id)a3 :(id)a4;
@end

@implementation JSStorageObject

- (_TtC26_OnDeviceStorage_JetEngine15JSStorageObject)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC26_OnDeviceStorage_JetEngine15JSStorageObject_connectionFactory);
  *v4 = sub_29EC3FBF4;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(JSStorageObject *)&v6 init];
}

- (id)createConnectionWithToken:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_29EC40510(v6, v7, sub_29EC3FD1C);

  return v9;
}

- (id)createConnectionWithRequestId:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_29EC40510(v6, v7, sub_29EC40694);

  return v9;
}

@end