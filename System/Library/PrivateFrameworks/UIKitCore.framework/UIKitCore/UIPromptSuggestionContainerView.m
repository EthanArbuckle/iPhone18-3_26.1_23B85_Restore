@interface UIPromptSuggestionContainerView
- (_TtC5UIKit31UIPromptSuggestionContainerView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation UIPromptSuggestionContainerView

- (_TtC5UIKit31UIPromptSuggestionContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_suggestionViews) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC5UIKit31UIPromptSuggestionContainerView_contentView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIView) initWithFrame_];
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_189013418();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_189013738(a4, x, y);

  return v10;
}

@end