@interface UIPromptSuggestionContainerView
- (_TtC5UIKit31UIPromptSuggestionContainerView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation UIPromptSuggestionContainerView

- (_TtC5UIKit31UIPromptSuggestionContainerView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_189013418();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_189013738(event, x, y);

  return v10;
}

@end