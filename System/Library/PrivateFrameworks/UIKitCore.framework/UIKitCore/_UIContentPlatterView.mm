@interface _UIContentPlatterView
- (BOOL)expanded;
- (BOOL)hidesCollapsedSourceView;
- (BOOL)wantsEdgeAntialiasing;
- (UITargetedPreview)_destinationPreview;
- (UITargetedPreview)collapsedPreview;
- (UITargetedPreview)expandedPreview;
- (_UIAssertion)collapsedPreviewBackgroundSuppression;
- (double)collapsedShadowIntensity;
- (double)expandedShadowIntensity;
- (id)_morphPreviewFromCurrentState:(BOOL)state fallbackBackgroundColor:(id)color contentScale:(double)scale;
- (int64_t)collapsedShadowStyle;
- (int64_t)expandedShadowStyle;
- (unint64_t)preferredMorphingAxis;
- (void)_updateBackgroundCaptureFor:(id)for;
- (void)_updateCollapsedPortalView;
- (void)_updateCornerRadii;
- (void)_updateGlassAppearanceIfNeeded;
- (void)_updateShadowPath;
- (void)didMoveToWindow;
- (void)didTearOffForDrag;
- (void)freezeExpandedPreview;
- (void)layoutSubviews;
- (void)setCollapsedPortalView:(id)view;
- (void)setCollapsedPreviewBackgroundSuppression:(id)suppression;
- (void)setCollapsedShadowIntensity:(double)intensity;
- (void)setCollapsedShadowStyle:(int64_t)style;
- (void)setExpanded:(BOOL)expanded;
- (void)setExpandedShadowIntensity:(double)intensity;
- (void)setExpandedShadowStyle:(int64_t)style;
- (void)setHidesCollapsedSourceView:(BOOL)view;
- (void)setPreferredMorphingAxis:(unint64_t)axis;
- (void)setWantsEdgeAntialiasing:(BOOL)antialiasing;
- (void)set_shadowProperties:(id)properties;
- (void)updateContentSize;
@end

@implementation _UIContentPlatterView

- (void)setPreferredMorphingAxis:(unint64_t)axis
{
  morphView = [(_UIContentPlatterView *)self morphView];
  *(&morphView->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis) = axis;
  *(&morphView->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_currentMorphingAxis) = axis;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188D60F6C();
}

- (unint64_t)preferredMorphingAxis
{
  morphView = [(_UIContentPlatterView *)self morphView];
  v3 = *(&morphView->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis);

  return v3;
}

- (void)_updateCornerRadii
{
  selfCopy = self;
  sub_188D61574();
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v7.receiver = self;
  v7.super_class = _UIContentPlatterView;
  selfCopy = self;
  expanded = [(_UIMorphPlatterViewBase *)&v7 expanded];
  v6.receiver = selfCopy;
  v6.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v6 setExpanded:expandedCopy];
  if (expanded != [(_UIContentPlatterView *)selfCopy expanded])
  {
    sub_188D62314();
  }
}

- (UITargetedPreview)_destinationPreview
{
  selfCopy = self;
  if ([(_UIContentPlatterView *)selfCopy expanded]&& ![(_UIMorphPlatterViewBase *)selfCopy alwaysCompact])
  {
    v3 = &selRef_expandedPreview;
  }

  else
  {
    v3 = &selRef_collapsedPreview;
  }

  v4 = [selfCopy *v3];

  return v4;
}

- (UITargetedPreview)collapsedPreview
{
  v4.receiver = self;
  v4.super_class = _UIContentPlatterView;
  collapsedPreview = [(_UIMorphPlatterViewBase *)&v4 collapsedPreview];

  return collapsedPreview;
}

- (double)expandedShadowIntensity
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v3 expandedShadowIntensity];
  return result;
}

- (void)setWantsEdgeAntialiasing:(BOOL)antialiasing
{
  selfCopy = self;
  sub_188D78198(antialiasing);
}

- (void)_updateGlassAppearanceIfNeeded
{
  selfCopy = self;
  _destinationPreview = [(_UIContentPlatterView *)selfCopy _destinationPreview];
  if (_destinationPreview)
  {
    v4 = _destinationPreview;
    view = [(UITargetedPreview *)_destinationPreview view];
    UIView._background.getter(v6);

    UIView._background.setter(v6);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    UIView._background.setter(v6);
  }
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_188D696DC();
}

- (void)set_shadowProperties:(id)properties
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView__shadowProperties);
  *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView__shadowProperties) = properties;
  propertiesCopy = properties;
  selfCopy = self;

  sub_188D81DB4();
}

- (id)_morphPreviewFromCurrentState:(BOOL)state fallbackBackgroundColor:(id)color contentScale:(double)scale
{
  colorCopy = color;
  selfCopy = self;
  v10 = sub_188D743E4(state, color);

  return v10;
}

- (UITargetedPreview)expandedPreview
{
  v4.receiver = self;
  v4.super_class = _UIContentPlatterView;
  expandedPreview = [(_UIMorphPlatterViewBase *)&v4 expandedPreview];

  return expandedPreview;
}

- (BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 expanded];
}

- (void)_updateBackgroundCaptureFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_188D70A44(forCopy);
}

- (BOOL)wantsEdgeAntialiasing
{
  morphView = [(_UIContentPlatterView *)self morphView];
  v3 = *(&morphView->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing);

  return v3;
}

- (int64_t)collapsedShadowStyle
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 collapsedShadowStyle];
}

- (void)setCollapsedShadowStyle:(int64_t)style
{
  selfCopy = self;
  sub_188F12FDC(style);
}

- (int64_t)expandedShadowStyle
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 expandedShadowStyle];
}

- (void)setExpandedShadowStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = _UIContentPlatterView;
  selfCopy = self;
  expandedShadowStyle = [(_UIMorphPlatterViewBase *)&v7 expandedShadowStyle];
  v6.receiver = selfCopy;
  v6.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v6 setExpandedShadowStyle:style];
  if ([(_UIContentPlatterView *)selfCopy expandedShadowStyle]!= expandedShadowStyle)
  {
    sub_188D81DB4();
    [(_UIContentPlatterView *)selfCopy _updateShadowPath];
  }
}

- (double)collapsedShadowIntensity
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v3 collapsedShadowIntensity];
  return result;
}

- (void)setCollapsedShadowIntensity:(double)intensity
{
  v9.receiver = self;
  v9.super_class = _UIContentPlatterView;
  selfCopy = self;
  [(_UIMorphPlatterViewBase *)&v9 collapsedShadowIntensity];
  v6 = v5;
  v8.receiver = selfCopy;
  v8.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v8 setCollapsedShadowIntensity:intensity];
  if (![(_UIContentPlatterView *)selfCopy expanded])
  {
    [(_UIContentPlatterView *)selfCopy collapsedShadowIntensity];
    if (v7 != v6)
    {
      sub_188D81DB4();
    }
  }
}

- (void)setExpandedShadowIntensity:(double)intensity
{
  v9.receiver = self;
  v9.super_class = _UIContentPlatterView;
  selfCopy = self;
  [(_UIMorphPlatterViewBase *)&v9 expandedShadowIntensity];
  v6 = v5;
  v8.receiver = selfCopy;
  v8.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v8 setExpandedShadowIntensity:intensity];
  if ([(_UIContentPlatterView *)selfCopy expanded])
  {
    [(_UIContentPlatterView *)selfCopy expandedShadowIntensity];
    if (v7 != v6)
    {
      sub_188D81DB4();
    }
  }
}

- (BOOL)hidesCollapsedSourceView
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 hidesCollapsedSourceView];
}

- (void)setHidesCollapsedSourceView:(BOOL)view
{
  selfCopy = self;
  sub_188F133B4(view);
}

- (void)didTearOffForDrag
{
  selfCopy = self;
  sub_188F13650();
}

- (void)freezeExpandedPreview
{
  selfCopy = self;
  sub_188F13760();
}

- (void)updateContentSize
{
  selfCopy = self;
  sub_188F13960();
}

- (void)setCollapsedPortalView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView_collapsedPortalView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView_collapsedPortalView) = view;
  viewCopy = view;
}

- (_UIAssertion)collapsedPreviewBackgroundSuppression
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setCollapsedPreviewBackgroundSuppression:(id)suppression
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView_collapsedPreviewBackgroundSuppression) = suppression;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)_updateShadowPath
{
  selfCopy = self;
  sub_188F13C20();
}

- (void)_updateCollapsedPortalView
{
  selfCopy = self;
  sub_188F13DD0();
}

@end