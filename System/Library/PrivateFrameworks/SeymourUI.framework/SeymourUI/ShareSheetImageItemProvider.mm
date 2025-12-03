@interface ShareSheetImageItemProvider
- (_TtC9SeymourUI27ShareSheetImageItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)item;
@end

@implementation ShareSheetImageItemProvider

- (id)item
{
  selfCopy = self;
  sub_20C13A294();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_20C13DFD4();
  __swift_destroy_boxed_opaque_existential_1(v5);

  return v3;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_20C0BB690(selfCopy, type, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x28223BE20](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_20C13DFD4();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (_TtC9SeymourUI27ShareSheetImageItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_20C13DA64();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end