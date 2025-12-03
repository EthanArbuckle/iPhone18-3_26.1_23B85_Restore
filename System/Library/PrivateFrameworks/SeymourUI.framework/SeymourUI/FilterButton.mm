@interface FilterButton
- (BOOL)isHighlighted;
- (_TtC9SeymourUI12FilterButton)initWithCoder:(id)coder;
- (void)handleTouchDown:(id)down;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation FilterButton

- (_TtC9SeymourUI12FilterButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI12FilterButton_highlightTimer) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI12FilterButton_shouldShowHighlight) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FilterButton();
  return [(FilterButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_20B881704(highlighted);
}

- (void)handleTouchDown:(id)down
{
  v4 = objc_opt_self();
  selfCopy = self;
  v6 = [v4 scheduledTimerWithTimeInterval:selfCopy target:sel_handleTimer_ selector:0 userInfo:0 repeats:0.12];
  v7 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI12FilterButton_highlightTimer);
  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI12FilterButton_highlightTimer) = v6;
}

@end