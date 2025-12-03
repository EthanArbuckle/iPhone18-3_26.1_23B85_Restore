@interface OmnibarContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIView)viewForFirstBaselineLayout;
- (UIView)viewForLastBaselineLayout;
- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithCoder:(id)coder;
- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation OmnibarContainerView

- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_pressedAlpha) = 0x3FE6666666666666;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding) = 0;
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  OmnibarContainerView.layoutSubviews()();
}

- (UIView)viewForFirstBaselineLayout
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel);
  if (v2)
  {
    selfCopy = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel);
  }

  else
  {
    selfCopy = self;
    v2 = 0;
  }

  v4 = v2;

  return selfCopy;
}

- (UIView)viewForLastBaselineLayout
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel);
  if (v2)
  {
    selfCopy = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel);
  }

  else
  {
    selfCopy = self;
    v2 = 0;
  }

  v4 = v2;

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v9 = *(&self->super.super.super.isa + v8);
  if (!v9)
  {
    return 0;
  }

  eventCopy = event;
  selfCopy = self;
  v12 = v9;
  [(OmnibarContainerView *)selfCopy convertPoint:v12 toCoordinateSpace:x, y];
  v13 = [v12 pointInside:eventCopy withEvent:?];

  return v13;
}

- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end