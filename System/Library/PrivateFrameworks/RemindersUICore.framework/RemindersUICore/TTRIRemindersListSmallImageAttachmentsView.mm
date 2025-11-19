@interface TTRIRemindersListSmallImageAttachmentsView
- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithContentView:(id)a3;
- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithDocumentView:(id)a3;
- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithFrame:(CGRect)a3;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4 uncroppedSourceFrame:(CGRect *)a5;
- (void)didTapImage:(id)a3;
@end

@implementation TTRIRemindersListSmallImageAttachmentsView

- (void)didTapImage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D6C0920(v4);
}

- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithDocumentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4 uncroppedSourceFrame:(CGRect *)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_21D6C142C(a4, &a5->origin.x);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

@end