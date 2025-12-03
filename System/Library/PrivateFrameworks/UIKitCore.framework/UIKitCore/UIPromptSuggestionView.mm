@interface UIPromptSuggestionView
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (_TtC5UIKit22UIPromptSuggestionView)initWithFrame:(CGRect)frame;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation UIPromptSuggestionView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIPromptSuggestionView(0);
  return [(UIControl *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UIPromptSuggestionView(0);
  v4 = v8.receiver;
  [(UIControl *)&v8 setHighlighted:highlightedCopy];
  v5 = *&v4[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label];
  isHighlighted = [v4 isHighlighted];
  v7 = 0.65;
  if (!isHighlighted)
  {
    v7 = 1.0;
  }

  [v5 setAlpha_];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  if ([(UIControl *)selfCopy isTouchInside])
  {
    [(UIControl *)selfCopy performPrimaryAction];
  }
}

- (_TtC5UIKit22UIPromptSuggestionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label);
  selfCopy = self;
  numberOfLines = [v7 numberOfLines];
  v10 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  if (*(&selfCopy->super.super.super.super.isa + v10))
  {
    v11 = 60.0;
  }

  else
  {
    v11 = 34.0;
  }

  [*(&self->super.super.super.super.isa + v6) textRectForBounds:numberOfLines limitedToNumberOfLines:{0.0, 0.0, width - v11, height}];
  v13 = v12;
  v15 = v14;

  v16 = v15 + 28.0;
  v17 = v11 + v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(UIPromptSuggestionView *)self sizeThatFits:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(UIView *)selfCopy bounds];
  [(UIPromptSuggestionView *)selfCopy sizeThatFits:v3, v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  UIPromptSuggestionView.layoutSubviews()();
}

@end