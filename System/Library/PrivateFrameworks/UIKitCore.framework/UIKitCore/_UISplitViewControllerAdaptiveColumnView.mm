@interface _UISplitViewControllerAdaptiveColumnView
- (NSString)description;
- (UIEdgeInsets)scrollPocketInsets;
- (UIView)containerView;
- (UIView)contentView;
- (_UISplitViewControllerAdaptiveColumnInteractionDelegate)interactionDelegate;
- (_UISplitViewControllerAdaptiveColumnView)initWithFrame:(CGRect)frame;
- (_UIViewMaterial)background;
- (id)prepareClippingView;
- (id)prepareDimmingView;
- (id)prepareScrollPocketCollectorInteraction;
- (id)prepareScrollPocketInteractionWithEdge:(unint64_t)edge;
- (void)layoutSubviews;
- (void)setBackground:(id)background;
- (void)setClippingView:(id)view;
- (void)setContentView:(id)view;
- (void)setDimmingLevel:(double)level;
- (void)setDimmingView:(id)view;
- (void)setFallbackCornerRadius:(double)radius;
- (void)setLeftScrollPocketInteraction:(id)interaction;
- (void)setLevel:(int64_t)level;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setOwnedContentView:(id)view;
- (void)setRightScrollPocketInteraction:(id)interaction;
- (void)setScrollPocketCollectorInteraction:(id)interaction;
- (void)setScrollPocketInsets:(UIEdgeInsets)insets;
- (void)tapGestureDidChange:(id)change;
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
  selfCopy = self;
  v3 = sub_188B1B108();

  return v3;
}

- (UIView)containerView
{
  selfCopy = self;
  if ([(_UISplitViewControllerAdaptiveColumnView *)selfCopy maskedCorners])
  {
    prepareClippingView = [(_UISplitViewControllerAdaptiveColumnView *)selfCopy prepareClippingView];

    selfCopy = prepareClippingView;
  }

  return selfCopy;
}

- (void)setOwnedContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_ownedContentView);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_ownedContentView) = view;
  viewCopy = view;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188B1ADC4(view);
}

- (void)setBackground:(id)background
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188BB43E4(background);
}

- (void)setMaskedCorners:(unint64_t)corners
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_maskedCorners);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_maskedCorners) = corners;
  if (v3 != corners)
  {
    [(_UISplitViewControllerAdaptiveColumnView *)self updateSubviewsForChangeInMaskedCorners];
  }
}

- (void)setFallbackCornerRadius:(double)radius
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_fallbackCornerRadius);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_fallbackCornerRadius) = radius;
  if (v3 != radius)
  {
    [(UIView *)self setNeedsUpdateProperties];
  }
}

- (void)setScrollPocketInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  v7.f64[0] = top;
  v8.f64[0] = bottom;
  sub_188BB5660(v7, left, v8, right);
}

- (void)setDimmingLevel:(double)level
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingLevel);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingLevel) = level;
  if (v3 != level)
  {
    [(_UISplitViewControllerAdaptiveColumnView *)self updateDimmingView];
  }
}

- (void)setLevel:(int64_t)level
{
  v3 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_level);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_level) = level;
  if (v3 != level)
  {
    [(_UISplitViewControllerAdaptiveColumnView *)self updateTraitTransformsForChangeInLevel];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188C320FC();
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = _UISplitViewControllerAdaptiveColumnView;
  selfCopy = self;
  [(UIView *)&v3 updateProperties];
  [(UIView *)selfCopy _setBackground:[(_UISplitViewControllerAdaptiveColumnView *)selfCopy background:v3.receiver]];
  swift_unknownObjectRelease();
  [(_UISplitViewControllerAdaptiveColumnView *)selfCopy updateCornerConfiguration];
  [(_UISplitViewControllerAdaptiveColumnView *)selfCopy updateScrollPocketInteractions];
  [(_UISplitViewControllerAdaptiveColumnView *)selfCopy updatePlatterIfNeeded];
}

- (_UIViewMaterial)background
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)updateScrollPocketInteractions
{
  selfCopy = self;
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
  selfCopy = self;
  if (![(_UISplitViewControllerAdaptiveColumnView *)selfCopy splitViewControllerColumn])
  {
    traitCollection = [(UIView *)selfCopy traitCollection];
    [(UITraitCollection *)traitCollection userInterfaceIdiom];
  }
}

- (_UISplitViewControllerAdaptiveColumnInteractionDelegate)interactionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setClippingView:(id)view
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_clippingView);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_clippingView) = view;
  viewCopy = view;
}

- (void)setDimmingView:(id)view
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingView);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_dimmingView) = view;
  viewCopy = view;
}

- (void)setScrollPocketCollectorInteraction:(id)interaction
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketCollectorInteraction);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_scrollPocketCollectorInteraction) = interaction;
  interactionCopy = interaction;
}

- (void)setLeftScrollPocketInteraction:(id)interaction
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_leftScrollPocketInteraction);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_leftScrollPocketInteraction) = interaction;
  interactionCopy = interaction;
}

- (void)setRightScrollPocketInteraction:(id)interaction
{
  v4 = *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_rightScrollPocketInteraction);
  *(self + OBJC_IVAR____UISplitViewControllerAdaptiveColumnView_rightScrollPocketInteraction) = interaction;
  interactionCopy = interaction;
}

- (void)tapGestureDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  if ([changeCopy state] == 3)
  {
    interactionDelegate = [(_UISplitViewControllerAdaptiveColumnView *)selfCopy interactionDelegate];
    if (interactionDelegate)
    {
      [(_UISplitViewControllerAdaptiveColumnInteractionDelegate *)interactionDelegate splitViewControllerColumnDidRequestToBecomeVisible:[(_UISplitViewControllerAdaptiveColumnView *)selfCopy splitViewControllerColumn]];
      swift_unknownObjectRelease();
    }
  }
}

- (void)updateCornerConfiguration
{
  selfCopy = self;
  sub_188F7EEE0();
}

- (void)updateSubviewsForChangeInMaskedCorners
{
  selfCopy = self;
  sub_188F7F0E0();
}

- (void)updateTraitTransformsForChangeInLevel
{
  selfCopy = self;
  sub_188F7F25C();
}

- (void)updateDimmingView
{
  selfCopy = self;
  sub_188F7F444();
}

- (id)prepareClippingView
{
  selfCopy = self;
  clippingView = [(_UISplitViewControllerAdaptiveColumnView *)selfCopy clippingView];
  if (!clippingView)
  {
    [(UIView *)selfCopy bounds];
    initWithFrame_ = [objc_allocWithZone(_s12ClippingViewCMa()) initWithFrame_];
    [(UIView *)selfCopy addSubview:initWithFrame_];
    clippingView = initWithFrame_;
    [(_UISplitViewControllerAdaptiveColumnView *)selfCopy setClippingView:clippingView];
  }

  return clippingView;
}

- (id)prepareDimmingView
{
  selfCopy = self;
  v3 = sub_188F7F638();

  return v3;
}

- (id)prepareScrollPocketInteractionWithEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_188F7F890(edge);

  return v5;
}

- (id)prepareScrollPocketCollectorInteraction
{
  selfCopy = self;
  scrollPocketCollectorInteraction = [(_UISplitViewControllerAdaptiveColumnView *)selfCopy scrollPocketCollectorInteraction];
  if (!scrollPocketCollectorInteraction)
  {
    v4 = [objc_allocWithZone(_UIScrollPocketCollectorInteraction) init];
    [(UIView *)selfCopy addInteraction:v4];
    scrollPocketCollectorInteraction = v4;
    [(_UISplitViewControllerAdaptiveColumnView *)selfCopy setScrollPocketCollectorInteraction:scrollPocketCollectorInteraction];
  }

  return scrollPocketCollectorInteraction;
}

- (NSString)description
{
  selfCopy = self;
  sub_188F7FB74();

  v3 = sub_18A4A7258();

  return v3;
}

- (_UISplitViewControllerAdaptiveColumnView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end