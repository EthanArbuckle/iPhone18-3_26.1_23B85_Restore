@interface TTRIRemindersListLargeImageAttachmentsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item uncroppedSourceFrame:(CGRect *)frame;
- (void)didTapImage:(id)image;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListLargeImageAttachmentsView

- (void)layoutSubviews
{
  selfCopy = self;
  TTRIRemindersListLargeImageAttachmentsView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
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

- (void)didTapImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_21D6A8A5C(imageCopy);
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item uncroppedSourceFrame:(CGRect *)frame
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_21D6A9D20(item, &frame->origin.x);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v9;
}

@end