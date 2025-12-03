@interface iCloudMailAccountProviderSwift
- (iCloudMailAccountProviderSwift)init;
- (iCloudMailAccountProviderSwift)initWithPresenter:(id)presenter appleAccount:(id)account accountStore:(id)store;
- (void)presentWith:(BOOL)with completion:(id)completion;
- (void)presentWith:(id)with;
@end

@implementation iCloudMailAccountProviderSwift

- (iCloudMailAccountProviderSwift)initWithPresenter:(id)presenter appleAccount:(id)account accountStore:(id)store
{
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift____lazy_storage___legacyMailCreator) = 0;
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift_presenter) = presenter;
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift_appleAccount) = account;
  *(&self->super.isa + OBJC_IVAR___iCloudMailAccountProviderSwift_accountStore) = store;
  v12.receiver = self;
  v12.super_class = type metadata accessor for iCloudMailAccountProviderSwift();
  presenterCopy = presenter;
  accountCopy = account;
  storeCopy = store;
  return [(iCloudMailAccountProviderSwift *)&v12 init];
}

- (void)presentWith:(BOOL)with completion:(id)completion
{
  withCopy = with;
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_2755400C0(withCopy, sub_275541878, v7);
}

- (void)presentWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2755409DC(sub_275541860, v5);
}

- (iCloudMailAccountProviderSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end