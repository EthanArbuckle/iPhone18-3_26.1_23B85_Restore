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
- (id)_morphPreviewFromCurrentState:(BOOL)a3 fallbackBackgroundColor:(id)a4 contentScale:(double)a5;
- (int64_t)collapsedShadowStyle;
- (int64_t)expandedShadowStyle;
- (unint64_t)preferredMorphingAxis;
- (void)_updateBackgroundCaptureFor:(id)a3;
- (void)_updateCollapsedPortalView;
- (void)_updateCornerRadii;
- (void)_updateGlassAppearanceIfNeeded;
- (void)_updateShadowPath;
- (void)didMoveToWindow;
- (void)didTearOffForDrag;
- (void)freezeExpandedPreview;
- (void)layoutSubviews;
- (void)setCollapsedPortalView:(id)a3;
- (void)setCollapsedPreviewBackgroundSuppression:(id)a3;
- (void)setCollapsedShadowIntensity:(double)a3;
- (void)setCollapsedShadowStyle:(int64_t)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setExpandedShadowIntensity:(double)a3;
- (void)setExpandedShadowStyle:(int64_t)a3;
- (void)setHidesCollapsedSourceView:(BOOL)a3;
- (void)setPreferredMorphingAxis:(unint64_t)a3;
- (void)setWantsEdgeAntialiasing:(BOOL)a3;
- (void)set_shadowProperties:(id)a3;
- (void)updateContentSize;
@end

@implementation _UIContentPlatterView

- (void)setPreferredMorphingAxis:(unint64_t)a3
{
  v4 = [(_UIContentPlatterView *)self morphView];
  *(&v4->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis) = a3;
  *(&v4->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_currentMorphingAxis) = a3;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188D60F6C();
}

- (unint64_t)preferredMorphingAxis
{
  v2 = [(_UIContentPlatterView *)self morphView];
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis);

  return v3;
}

- (void)_updateCornerRadii
{
  v2 = self;
  sub_188D61574();
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _UIContentPlatterView;
  v4 = self;
  v5 = [(_UIMorphPlatterViewBase *)&v7 expanded];
  v6.receiver = v4;
  v6.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v6 setExpanded:v3];
  if (v5 != [(_UIContentPlatterView *)v4 expanded])
  {
    sub_188D62314();
  }
}

- (UITargetedPreview)_destinationPreview
{
  v2 = self;
  if ([(_UIContentPlatterView *)v2 expanded]&& ![(_UIMorphPlatterViewBase *)v2 alwaysCompact])
  {
    v3 = &selRef_expandedPreview;
  }

  else
  {
    v3 = &selRef_collapsedPreview;
  }

  v4 = [v2 *v3];

  return v4;
}

- (UITargetedPreview)collapsedPreview
{
  v4.receiver = self;
  v4.super_class = _UIContentPlatterView;
  v2 = [(_UIMorphPlatterViewBase *)&v4 collapsedPreview];

  return v2;
}

- (double)expandedShadowIntensity
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v3 expandedShadowIntensity];
  return result;
}

- (void)setWantsEdgeAntialiasing:(BOOL)a3
{
  v4 = self;
  sub_188D78198(a3);
}

- (void)_updateGlassAppearanceIfNeeded
{
  v2 = self;
  v3 = [(_UIContentPlatterView *)v2 _destinationPreview];
  if (v3)
  {
    v4 = v3;
    v5 = [(UITargetedPreview *)v3 view];
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
  v2 = self;
  sub_188D696DC();
}

- (void)set_shadowProperties:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView__shadowProperties);
  *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView__shadowProperties) = a3;
  v5 = a3;
  v6 = self;

  sub_188D81DB4();
}

- (id)_morphPreviewFromCurrentState:(BOOL)a3 fallbackBackgroundColor:(id)a4 contentScale:(double)a5
{
  v8 = a4;
  v9 = self;
  v10 = sub_188D743E4(a3, a4);

  return v10;
}

- (UITargetedPreview)expandedPreview
{
  v4.receiver = self;
  v4.super_class = _UIContentPlatterView;
  v2 = [(_UIMorphPlatterViewBase *)&v4 expandedPreview];

  return v2;
}

- (BOOL)expanded
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 expanded];
}

- (void)_updateBackgroundCaptureFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188D70A44(v4);
}

- (BOOL)wantsEdgeAntialiasing
{
  v2 = [(_UIContentPlatterView *)self morphView];
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing);

  return v3;
}

- (int64_t)collapsedShadowStyle
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 collapsedShadowStyle];
}

- (void)setCollapsedShadowStyle:(int64_t)a3
{
  v4 = self;
  sub_188F12FDC(a3);
}

- (int64_t)expandedShadowStyle
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  return [(_UIMorphPlatterViewBase *)&v3 expandedShadowStyle];
}

- (void)setExpandedShadowStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIContentPlatterView;
  v4 = self;
  v5 = [(_UIMorphPlatterViewBase *)&v7 expandedShadowStyle];
  v6.receiver = v4;
  v6.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v6 setExpandedShadowStyle:a3];
  if ([(_UIContentPlatterView *)v4 expandedShadowStyle]!= v5)
  {
    sub_188D81DB4();
    [(_UIContentPlatterView *)v4 _updateShadowPath];
  }
}

- (double)collapsedShadowIntensity
{
  v3.receiver = self;
  v3.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v3 collapsedShadowIntensity];
  return result;
}

- (void)setCollapsedShadowIntensity:(double)a3
{
  v9.receiver = self;
  v9.super_class = _UIContentPlatterView;
  v4 = self;
  [(_UIMorphPlatterViewBase *)&v9 collapsedShadowIntensity];
  v6 = v5;
  v8.receiver = v4;
  v8.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v8 setCollapsedShadowIntensity:a3];
  if (![(_UIContentPlatterView *)v4 expanded])
  {
    [(_UIContentPlatterView *)v4 collapsedShadowIntensity];
    if (v7 != v6)
    {
      sub_188D81DB4();
    }
  }
}

- (void)setExpandedShadowIntensity:(double)a3
{
  v9.receiver = self;
  v9.super_class = _UIContentPlatterView;
  v4 = self;
  [(_UIMorphPlatterViewBase *)&v9 expandedShadowIntensity];
  v6 = v5;
  v8.receiver = v4;
  v8.super_class = _UIContentPlatterView;
  [(_UIMorphPlatterViewBase *)&v8 setExpandedShadowIntensity:a3];
  if ([(_UIContentPlatterView *)v4 expanded])
  {
    [(_UIContentPlatterView *)v4 expandedShadowIntensity];
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

- (void)setHidesCollapsedSourceView:(BOOL)a3
{
  v4 = self;
  sub_188F133B4(a3);
}

- (void)didTearOffForDrag
{
  v2 = self;
  sub_188F13650();
}

- (void)freezeExpandedPreview
{
  v2 = self;
  sub_188F13760();
}

- (void)updateContentSize
{
  v2 = self;
  sub_188F13960();
}

- (void)setCollapsedPortalView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView_collapsedPortalView);
  *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView_collapsedPortalView) = a3;
  v3 = a3;
}

- (_UIAssertion)collapsedPreviewBackgroundSuppression
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setCollapsedPreviewBackgroundSuppression:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____UIContentPlatterView_collapsedPreviewBackgroundSuppression) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)_updateShadowPath
{
  v2 = self;
  sub_188F13C20();
}

- (void)_updateCollapsedPortalView
{
  v2 = self;
  sub_188F13DD0();
}

@end