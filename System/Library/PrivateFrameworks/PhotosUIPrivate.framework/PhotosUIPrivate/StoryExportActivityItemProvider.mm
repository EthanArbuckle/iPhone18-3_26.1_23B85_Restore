@interface StoryExportActivityItemProvider
- (_TtC15PhotosUIPrivate31StoryExportActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)item;
- (void)cancel;
@end

@implementation StoryExportActivityItemProvider

- (_TtC15PhotosUIPrivate31StoryExportActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  sub_1B373CCDC();
}

- (id)item
{
  selfCopy = self;
  sub_1B373D054(v5);

  __swift_project_boxed_opaque_existential_0Tm(v5, v5[3]);
  v3 = sub_1B3C9D688();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);

  return v3;
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  sub_1B373D5B4();

  v9 = sub_1B3C9C5A8();

  return v9;
}

- (void)cancel
{
  selfCopy = self;
  sub_1B373E978();
}

@end