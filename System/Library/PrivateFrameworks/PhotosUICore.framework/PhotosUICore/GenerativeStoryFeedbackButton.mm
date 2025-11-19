@interface GenerativeStoryFeedbackButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithCoder:(id)a3;
- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation GenerativeStoryFeedbackButton

- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithCoder:(id)a3
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore29GenerativeStoryFeedbackButton_button) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC12PhotosUICore29GenerativeStoryFeedbackButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end