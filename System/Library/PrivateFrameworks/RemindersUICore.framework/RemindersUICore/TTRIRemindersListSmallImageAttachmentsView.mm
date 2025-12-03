@interface TTRIRemindersListSmallImageAttachmentsView
- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithContentView:(id)view;
- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithDocumentView:(id)view;
- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithFrame:(CGRect)frame;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item uncroppedSourceFrame:(CGRect *)frame;
- (void)didTapImage:(id)image;
@end

@implementation TTRIRemindersListSmallImageAttachmentsView

- (void)didTapImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_21D6C0920(imageCopy);
}

- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithDocumentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item uncroppedSourceFrame:(CGRect *)frame
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_21D6C142C(item, &frame->origin.x);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

@end