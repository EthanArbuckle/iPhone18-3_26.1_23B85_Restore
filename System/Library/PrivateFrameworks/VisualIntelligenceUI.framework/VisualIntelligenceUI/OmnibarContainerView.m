@interface OmnibarContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIView)viewForFirstBaselineLayout;
- (UIView)viewForLastBaselineLayout;
- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithCoder:(id)a3;
- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation OmnibarContainerView

- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithCoder:(id)a3
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
  v2 = self;
  OmnibarContainerView.layoutSubviews()();
}

- (UIView)viewForFirstBaselineLayout
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_askLabel);
  }

  else
  {
    v3 = self;
    v2 = 0;
  }

  v4 = v2;

  return v3;
}

- (UIView)viewForLastBaselineLayout
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_searchLabel);
  }

  else
  {
    v3 = self;
    v2 = 0;
  }

  v4 = v2;

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v9 = *(&self->super.super.super.isa + v8);
  if (!v9)
  {
    return 0;
  }

  v10 = a4;
  v11 = self;
  v12 = v9;
  [(OmnibarContainerView *)v11 convertPoint:v12 toCoordinateSpace:x, y];
  v13 = [v12 pointInside:v10 withEvent:?];

  return v13;
}

- (_TtC20VisualIntelligenceUI20OmnibarContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end