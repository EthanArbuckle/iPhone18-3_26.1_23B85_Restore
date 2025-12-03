@interface InStoreTopUpTokenModel
- (_TtC9PassKitUI22InStoreTopUpTokenModel)init;
- (void)dealloc;
- (void)didUpdateInStoreTopUpToken:(id)token forAccountIdentifier:(id)identifier;
@end

@implementation InStoreTopUpTokenModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI22InStoreTopUpTokenModel_accountService);
  if (v3)
  {
    [v3 unregisterObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for InStoreTopUpTokenModel();
  [(InStoreTopUpTokenModel *)&v5 dealloc];
}

- (void)didUpdateInStoreTopUpToken:(id)token forAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  tokenCopy = token;
  selfCopy = self;
  sub_1BD85D060(token, v6, v8);
}

- (_TtC9PassKitUI22InStoreTopUpTokenModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end