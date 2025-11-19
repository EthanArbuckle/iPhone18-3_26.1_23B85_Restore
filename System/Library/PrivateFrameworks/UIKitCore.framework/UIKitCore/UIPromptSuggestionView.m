@interface UIPromptSuggestionView
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (_TtC5UIKit22UIPromptSuggestionView)initWithFrame:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation UIPromptSuggestionView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIPromptSuggestionView(0);
  return [(UIControl *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UIPromptSuggestionView(0);
  v4 = v8.receiver;
  [(UIControl *)&v8 setHighlighted:v3];
  v5 = *&v4[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label];
  v6 = [v4 isHighlighted];
  v7 = 0.65;
  if (!v6)
  {
    v7 = 1.0;
  }

  [v5 setAlpha_];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v4 = self;
  if ([(UIControl *)v4 isTouchInside])
  {
    [(UIControl *)v4 performPrimaryAction];
  }
}

- (_TtC5UIKit22UIPromptSuggestionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label);
  v8 = self;
  v9 = [v7 numberOfLines];
  v10 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  if (*(&v8->super.super.super.super.isa + v10))
  {
    v11 = 60.0;
  }

  else
  {
    v11 = 34.0;
  }

  [*(&self->super.super.super.super.isa + v6) textRectForBounds:v9 limitedToNumberOfLines:{0.0, 0.0, width - v11, height}];
  v13 = v12;
  v15 = v14;

  v16 = v15 + 28.0;
  v17 = v11 + v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(UIPromptSuggestionView *)self sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(UIView *)v2 bounds];
  [(UIPromptSuggestionView *)v2 sizeThatFits:v3, v4];
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
  v2 = self;
  UIPromptSuggestionView.layoutSubviews()();
}

@end