@interface GenerativeStoryFeedbackButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithCoder:(id)coder;
- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation GenerativeStoryFeedbackButton

- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithCoder:(id)coder
{
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GenerativeStoryFeedbackButton();
  v2 = v4.receiver;
  [(GenerativeStoryFeedbackButton *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12PhotosUICore29GenerativeStoryFeedbackButton_button];
  [v2 bounds];
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore29GenerativeStoryFeedbackButton_button) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end