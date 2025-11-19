@interface StoryExportActivityItemProvider
- (_TtC15PhotosUIPrivate31StoryExportActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4;
- (id)item;
- (void)cancel;
@end

@implementation StoryExportActivityItemProvider

- (_TtC15PhotosUIPrivate31StoryExportActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  sub_1B373CCDC();
}

- (id)item
{
  v2 = self;
  sub_1B373D054(v5);

  __swift_project_boxed_opaque_existential_0Tm(v5, v5[3]);
  v3 = sub_1B3C9D688();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);

  return v3;
}

- (id)activityViewController:(id)a3 dataTypeIdentifierForActivityType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B373D5B4();

  v9 = sub_1B3C9C5A8();

  return v9;
}

- (void)cancel
{
  v2 = self;
  sub_1B373E978();
}

@end