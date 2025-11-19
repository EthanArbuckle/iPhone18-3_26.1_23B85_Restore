@interface iCloudMailAccountProviderSwift
- (iCloudMailAccountProviderSwift)init;
- (iCloudMailAccountProviderSwift)initWithPresenter:(id)a3 appleAccount:(id)a4 accountStore:(id)a5;
- (void)presentWith:(BOOL)a3 completion:(id)a4;
- (void)presentWith:(id)a3;
@end

@implementation iCloudMailAccountProviderSwift

- (iCloudMailAccountProviderSwift)initWithPresenter:(id)a3 appleAccount:(id)a4 accountStore:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator) = 0;
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter) = a3;
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount) = a4;
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore) = a5;
  v12.receiver = self;
  v12.super_class = type metadata accessor for iCloudMailAccountProviderSwift();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return [(iCloudMailAccountProviderSwift *)&v12 init];
}

- (void)presentWith:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_2755400C0(v4, sub_275541878, v7);
}

- (void)presentWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_2755409DC(sub_275541860, v5);
}

- (iCloudMailAccountProviderSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end