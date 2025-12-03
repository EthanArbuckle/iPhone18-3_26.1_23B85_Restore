@interface WelcomeModule
- (_TtC8StocksUI13WelcomeModule)init;
- (id)createViewController;
@end

@implementation WelcomeModule

- (id)createViewController
{
  v3 = sub_22088A07C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x277D68FC0], v3, v6);
  selfCopy = self;
  sub_22088721C();
  (*(v4 + 8))(v8, v3);
  __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver), *&selfCopy->resolver[OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver + 16]);
  type metadata accessor for WelcomeViewController();

  v10 = sub_2208884AC();

  if (v10)
  {

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC8StocksUI13WelcomeModule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end