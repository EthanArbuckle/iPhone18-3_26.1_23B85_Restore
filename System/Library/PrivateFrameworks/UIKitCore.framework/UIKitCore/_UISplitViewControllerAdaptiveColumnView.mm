@interface _UISplitViewControllerAdaptiveColumnView
- (NSString)description;
- (UIEdgeInsets)scrollPocketInsets;
- (UIView)containerView;
- (UIView)contentView;
- (_UISplitViewControllerAdaptiveColumnInteractionDelegate)interactionDelegate;
- (_UISplitViewControllerAdaptiveColumnView)initWithFrame:(CGRect)a3;
- (_UIViewMaterial)background;
- (id)prepareClippingView;
- (id)prepareDimmingView;
- (id)prepareScrollPocketCollectorInteraction;
- (id)prepareScrollPocketInteractionWithEdge:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setBackground:(id)a3;
- (void)setClippingView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setDimmingLevel:(double)a3;
- (void)setDimmingView:(id)a3;
- (void)setFallbackCornerRadius:(double)a3;
- (void)setLeftScrollPocketInteraction:(id)a3;
- (void)setLevel:(int64_t)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setOwnedContentView:(id)a3;
- (void)setRightScrollPocketInteraction:(id)a3;
- (void)setScrollPocketCollectorInteraction:(id)a3;
- (void)setScrollPocketInsets:(UIEdgeInsets)a3;
- (void)tapGestureDidChange:(id)a3;
- (void)updateCornerConfiguration;
- (void)updateDimmingView;
- (void)updatePlatterIfNeeded;
- (void)updateProperties;
- (void)updateScrollPocketInteractions;
- (void)updateSubviewsForChangeInMaskedCorners;
- (void)updateTraitTransformsForChangeInLevel;
@end

@implementation _UISplitViewControllerAdaptiveColumnView

- (UIView)contentView
{
  v2 = self;
  v3 = sub_188B1B108();

  return v3;
}

- (UIView)containerView
{
  v2 = self;
  if ([(_UISplitViewControllerAdaptiveColumnView *)v2 maskedCorners])
  {
    v3 = [(_UISplitViewControllerAdaptiveColumnView *)v2 prepareClippingView];

    v2 = v3;
  }

  return v2;
}

- (void)setOwnedContentView:(id)a3
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_ownedContentView);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_ownedContentView) = a3;
  v3 = a3;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B1ADC4(a3);
}

- (void)setBackground:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188BB43E4(a3);
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_maskedCorners);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_maskedCorners) = a3;
  if (v3 != a3)
  {
    [(_UISplitViewControllerAdaptiveColumnView *)self updateSubviewsForChangeInMaskedCorners];
  }
}

- (void)setFallbackCornerRadius:(double)a3
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_fallbackCornerRadius);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_fallbackCornerRadius) = a3;
  if (v3 != a3)
  {
    [(UIView *)self setNeedsUpdateProperties];
  }
}

- (void)setScrollPocketInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = self;
  v7.f64[0] = top;
  v8.f64[0] = bottom;
  sub_188BB5660(v7, left, v8, right);
}

- (void)setDimmingLevel:(double)a3
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingLevel);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingLevel) = a3;
  if (v3 != a3)
  {
    [(_UISplitViewControllerAdaptiveColumnView *)self updateDimmingView];
  }
}

- (void)setLevel:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_level);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_level) = a3;
  if (v3 != a3)
  {
    [(_UISplitViewControllerAdaptiveColumnView *)self updateTraitTransformsForChangeInLevel];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188C320FC();
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveColumnView;
  v2 = self;
  [(UIView *)&v3 updateProperties];
  [(UIView *)v2 _setBackground:[(_UISplitViewControllerAdaptiveColumnView *)v2 background:v3.receiver]];
  swift_unknownObjectRelease();
  [(_UISplitViewControllerAdaptiveColumnView *)v2 updateCornerConfiguration];
  [(_UISplitViewControllerAdaptiveColumnView *)v2 updateScrollPocketInteractions];
  [(_UISplitViewControllerAdaptiveColumnView *)v2 updatePlatterIfNeeded];
}

- (_UIViewMaterial)background
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)updateScrollPocketInteractions
{
  v2 = self;
  sub_188C32364();
}

- (UIEdgeInsets)scrollPocketInsets
{
  v2 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets);
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets + 8);
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets + 16);
  v5 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketInsets + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updatePlatterIfNeeded
{
  v3 = self;
  if (![(_UISplitViewControllerAdaptiveColumnView *)v3 splitViewControllerColumn])
  {
    v2 = [(UIView *)v3 traitCollection];
    [(UITraitCollection *)v2 userInterfaceIdiom];
  }
}

- (_UISplitViewControllerAdaptiveColumnInteractionDelegate)interactionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setClippingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_clippingView);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_clippingView) = a3;
  v3 = a3;
}

- (void)setDimmingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingView);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingView) = a3;
  v3 = a3;
}

- (void)setScrollPocketCollectorInteraction:(id)a3
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketCollectorInteraction);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketCollectorInteraction) = a3;
  v3 = a3;
}

- (void)setLeftScrollPocketInteraction:(id)a3
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_leftScrollPocketInteraction);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_leftScrollPocketInteraction) = a3;
  v3 = a3;
}

- (void)setRightScrollPocketInteraction:(id)a3
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_rightScrollPocketInteraction);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_rightScrollPocketInteraction) = a3;
  v3 = a3;
}

- (void)tapGestureDidChange:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([v4 state] == 3)
  {
    v5 = [(_UISplitViewControllerAdaptiveColumnView *)v6 interactionDelegate];
    if (v5)
    {
      [(_UISplitViewControllerAdaptiveColumnInteractionDelegate *)v5 splitViewControllerColumnDidRequestToBecomeVisible:[(_UISplitViewControllerAdaptiveColumnView *)v6 splitViewControllerColumn]];
      swift_unknownObjectRelease();
    }
  }
}

- (void)updateCornerConfiguration
{
  v2 = self;
  sub_188F7EEE0();
}

- (void)updateSubviewsForChangeInMaskedCorners
{
  v2 = self;
  sub_188F7F0E0();
}

- (void)updateTraitTransformsForChangeInLevel
{
  v2 = self;
  sub_188F7F25C();
}

- (void)updateDimmingView
{
  v2 = self;
  sub_188F7F444();
}

- (id)prepareClippingView
{
  v2 = self;
  v3 = [(_UISplitViewControllerAdaptiveColumnView *)v2 clippingView];
  if (!v3)
  {
    [(UIView *)v2 bounds];
    v8 = [objc_allocWithZone(_s12ClippingViewCMa()) initWithFrame_];
    [(UIView *)v2 addSubview:v8];
    v3 = v8;
    [(_UISplitViewControllerAdaptiveColumnView *)v2 setClippingView:v3];
  }

  return v3;
}

- (id)prepareDimmingView
{
  v2 = self;
  v3 = sub_188F7F638();

  return v3;
}

- (id)prepareScrollPocketInteractionWithEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_188F7F890(a3);

  return v5;
}

- (id)prepareScrollPocketCollectorInteraction
{
  v2 = self;
  v3 = [(_UISplitViewControllerAdaptiveColumnView *)v2 scrollPocketCollectorInteraction];
  if (!v3)
  {
    v4 = [objc_allocWithZone(_UIScrollPocketCollectorInteraction) init];
    [(UIView *)v2 addInteraction:v4];
    v3 = v4;
    [(_UISplitViewControllerAdaptiveColumnView *)v2 setScrollPocketCollectorInteraction:v3];
  }

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_188F7FB74();

  v3 = sub_18A4A7258();

  return v3;
}

- (_UISplitViewControllerAdaptiveColumnView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end