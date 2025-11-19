@interface TTRIRemindersListLargeImageAttachmentsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4 uncroppedSourceFrame:(CGRect *)a5;
- (void)didTapImage:(id)a3;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListLargeImageAttachmentsView

- (void)layoutSubviews
{
  v2 = self;
  TTRIRemindersListLargeImageAttachmentsView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = (self + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth);
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = width;
  }

  v6 = 157.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)didTapImage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D6A8A5C(v4);
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4 uncroppedSourceFrame:(CGRect *)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_21D6A9D20(a4, &a5->origin.x);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

@end