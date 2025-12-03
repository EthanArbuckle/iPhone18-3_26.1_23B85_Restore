@interface StockShareActivityItemSource
- (_TtC8StocksUI28StockShareActivityItemSource)init;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation StockShareActivityItemSource

- (_TtC8StocksUI28StockShareActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v4 = sub_220884E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v16 - v11;
  selfCopy = self;
  sub_22088678C();

  (*(v5 + 16))(v8, v12, v4);
  v14 = sub_2208928FC();
  (*(v5 + 8))(v12, v4);

  return v14;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_2205F6D0C(type, v17);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x28223BE20](v10, v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_22089289C();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  selfCopy = self;
  sub_22088684C();

  MEMORY[0x223D89680](548913696, 0xA400000000000000);

  v5 = sub_2208867BC();
  v7 = v6;

  MEMORY[0x223D89680](v5, v7);

  v8 = sub_22089132C();

  return v8;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_2205F72B0();

  return v6;
}

@end