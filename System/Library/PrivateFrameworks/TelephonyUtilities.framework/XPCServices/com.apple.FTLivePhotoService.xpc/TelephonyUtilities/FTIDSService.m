@interface FTIDSService
- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (NSString)description;
- (NSString)name;
- (OS_dispatch_queue)queue;
- (_TtP18FTLivePhotoService24FTIDSServiceDependencies_)idsService;
- (void)addServiceDelegate:(id)a3 queue:(id)a4;
- (void)setIdsService:(id)a3;
- (void)setName:(id)a3;
- (void)setQueue:(id)a3;
@end

@implementation FTIDSService

- (NSString)description
{
  v2 = self;
  sub_100025C18();

  v3 = sub_10003985C();

  return v3;
}

- (_TtP18FTLivePhotoService24FTIDSServiceDependencies_)idsService
{
  v2 = sub_100023FCC();

  return v2;
}

- (void)setIdsService:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100023FDC(a3);
}

- (NSString)name
{
  sub_100023FF4();
  v2 = sub_10003985C();

  return v2;
}

- (void)setName:(id)a3
{
  v4 = sub_10003986C();
  v6 = v5;
  v7 = self;
  sub_100024030(v4, v6);
}

- (OS_dispatch_queue)queue
{
  v2 = sub_10002404C();

  return v2;
}

- (void)setQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002405C(v4);
}

- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v21 = a8;
  v22 = sub_1000395CC();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003958C();
  v16 = sub_10003980C();
  v17 = sub_10003995C();
  if (a7)
  {
    a7 = sub_10003980C();
  }

  v18 = self;
  sub_100024070(v15, v16, v17, a6, a7, v21);
  (*(v12 + 8))(v15, v22);

  return 1;
}

- (void)addServiceDelegate:(id)a3 queue:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_100027B34(a3, v7, v8);
  swift_unknownObjectRelease();
}

@end