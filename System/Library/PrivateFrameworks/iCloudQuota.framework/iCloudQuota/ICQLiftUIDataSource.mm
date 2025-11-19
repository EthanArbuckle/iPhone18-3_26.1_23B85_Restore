@interface ICQLiftUIDataSource
- (_TtC11iCloudQuota19ICQLiftUIDataSource)init;
- (_TtC11iCloudQuota19ICQLiftUIDataSource)initWithAccount:(id)a3;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
@end

@implementation ICQLiftUIDataSource

- (_TtC11iCloudQuota19ICQLiftUIDataSource)initWithAccount:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource____lazy_storage___backupDeviceUUID) = xmmword_2755F4110;
  *(&self->super.isa + OBJC_IVAR____TtC11iCloudQuota19ICQLiftUIDataSource_account) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(ICQLiftUIDataSource *)&v8 init];
}

- (_TtC11iCloudQuota19ICQLiftUIDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = sub_2755EC46C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  sub_2755EC45C();
  _Block_copy(v17);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = self;
  sub_2755E6B04(v16, v21, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

@end