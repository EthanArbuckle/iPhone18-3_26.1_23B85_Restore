@interface MultiChoiceTray.HTMLHeaderElement
- (RUIElement)parent;
- (_TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement)init;
- (_TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement)initWithAttributes:(id)a3 parent:(id)a4;
- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4;
@end

@implementation MultiChoiceTray.HTMLHeaderElement

- (RUIElement)parent
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x60);
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if (a4)
  {
    sub_21BA8643C();
    v10 = sub_21BA864AC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_21BA864AC();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = self;
  sub_21B9EB290(v9);

  sub_21B9ABAAC(v9, &qword_27CD9DBA0);
}

- (_TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement)initWithAttributes:(id)a3 parent:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCV8RemoteUI15MultiChoiceTray17HTMLHeaderElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end