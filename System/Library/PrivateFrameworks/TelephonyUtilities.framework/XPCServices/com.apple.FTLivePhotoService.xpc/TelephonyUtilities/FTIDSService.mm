@interface FTIDSService
- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (NSString)description;
- (NSString)name;
- (OS_dispatch_queue)queue;
- (_TtP18FTLivePhotoService24FTIDSServiceDependencies_)idsService;
- (void)addServiceDelegate:(id)delegate queue:(id)queue;
- (void)setIdsService:(id)service;
- (void)setName:(id)name;
- (void)setQueue:(id)queue;
@end

@implementation FTIDSService

- (NSString)description
{
  selfCopy = self;
  sub_100025C18();

  v3 = sub_10003985C();

  return v3;
}

- (_TtP18FTLivePhotoService24FTIDSServiceDependencies_)idsService
{
  v2 = sub_100023FCC();

  return v2;
}

- (void)setIdsService:(id)service
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100023FDC(service);
}

- (NSString)name
{
  sub_100023FF4();
  v2 = sub_10003985C();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_10003986C();
  v6 = v5;
  selfCopy = self;
  sub_100024030(v4, v6);
}

- (OS_dispatch_queue)queue
{
  v2 = sub_10002404C();

  return v2;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_10002405C(queueCopy);
}

- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  identifierCopy = identifier;
  v22 = sub_1000395CC();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003958C();
  v16 = sub_10003980C();
  v17 = sub_10003995C();
  if (options)
  {
    options = sub_10003980C();
  }

  selfCopy = self;
  sub_100024070(v15, v16, v17, priority, options, identifierCopy);
  (*(v12 + 8))(v15, v22);

  return 1;
}

- (void)addServiceDelegate:(id)delegate queue:(id)queue
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  sub_100027B34(delegate, queueCopy, selfCopy);
  swift_unknownObjectRelease();
}

@end