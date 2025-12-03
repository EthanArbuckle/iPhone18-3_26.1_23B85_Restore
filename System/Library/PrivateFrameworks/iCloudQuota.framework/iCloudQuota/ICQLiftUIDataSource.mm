@interface ICQLiftUIDataSource
- (_TtC11iCloudQuota19ICQLiftUIDataSource)init;
- (_TtC11iCloudQuota19ICQLiftUIDataSource)initWithAccount:(id)account;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
@end

@implementation ICQLiftUIDataSource

- (_TtC11iCloudQuota19ICQLiftUIDataSource)initWithAccount:(id)account
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID) = xmmword_2755F4110;
  *(&self->super.isa + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account) = account;
  v8.receiver = self;
  v8.super_class = ObjectType;
  accountCopy = account;
  return [(ICQLiftUIDataSource *)&v8 init];
}

- (_TtC11iCloudQuota19ICQLiftUIDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v12 = sub_2755EC46C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  sub_2755EC45C();
  _Block_copy(v17);
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  selfCopy = self;
  sub_2755E6B04(v16, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

@end