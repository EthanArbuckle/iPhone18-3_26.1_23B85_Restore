@interface NCPlatterView
- (BOOL)supportsGlass;
- (BOOL)supportsMitosis;
- (BOOL)unmanagedBackdropContrast;
- (NCPlatterView)initWithFrame:(CGRect)a3;
- (NCPlatterView)initWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4;
- (UIColor)glassTintColor;
- (UIColor)tintColor;
- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration;
- (double)_continuousCornerRadius;
- (double)glassSmoothness;
- (int64_t)materialRecipe;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)addOrRemoveZDepthDebugViewsIfNeeded;
- (void)dealloc;
- (void)glassLuminanceChanged;
- (void)immediatelyEndGlassTransitionAnimators;
- (void)layoutSubviews;
- (void)removeLightEffectsIfNeeded;
- (void)setApparentZDistanceToUser:(int64_t)a3;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setDebugBorderView:(id)a3;
- (void)setDebugLabel:(id)a3;
- (void)setGlassLuminanceValueTraitChangeRegistration:(id)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setGlassSmoothness:(double)a3;
- (void)setGlassTintColor:(id)a3;
- (void)setGlassTransitionAnimator:(id)a3;
- (void)setMaterialRecipe:(int64_t)a3;
- (void)setOpacityTransitionAnimator:(id)a3;
- (void)setRootListScrollVelocity:(double)a3;
- (void)setTintColor:(id)a3;
- (void)updateLightWithFillLightEnabled:(BOOL)a3 edgeLightEnabled:(BOOL)a4 duration:(double)a5 delay:(double)a6;
- (void)updateWithApparentZDistanceToUser:(int64_t)a3;
- (void)updateWithApparentZDistanceToUser:(int64_t)a3 withAnimation:(BOOL)a4;
- (void)updateWithGlassMode:(unint64_t)a3;
- (void)updateZDepthDebugViewsIfNeeded;
@end

@implementation NCPlatterView

- (void)layoutSubviews
{
  v2 = self;
  NCPlatterView.layoutSubviews()();
}

- (void)dealloc
{
  v2 = self;
  sub_21E8BF97C(v2);
  v3.receiver = v2;
  v3.super_class = NCPlatterView;
  [(NCPlatterView *)&v3 dealloc];
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = NCPlatterView;
  [(PLPlatterView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v7.receiver = self;
  v7.super_class = NCPlatterView;
  v4 = self;
  [(PLPlatterView *)&v7 _setContinuousCornerRadius:a3];
  v5 = [(PLPlatterView *)v4 customContentView:v7.receiver];
  if (v5)
  {
    v6 = v5;
    [(NCPlatterView *)v4 _continuousCornerRadius];
    [(UIView *)v6 _setContinuousCornerRadius:?];
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)materialRecipe
{
  v3.receiver = self;
  v3.super_class = NCPlatterView;
  return [(PLPlatterView *)&v3 materialRecipe];
}

- (void)setMaterialRecipe:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NCPlatterView;
  v4 = self;
  [(PLPlatterView *)&v5 setMaterialRecipe:a3];
  sub_21E8BFA34();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = NCPlatterView;
  v2 = [(NCPlatterView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v9.receiver = self;
  v9.super_class = NCPlatterView;
  v4 = self;
  v5 = a3;
  [(NCPlatterView *)&v9 setTintColor:v5];
  v6 = [(PLPlatterView *)v4 customContentView:v9.receiver];
  if (v6)
  {
    v7 = v6;
    v8 = [(NCPlatterView *)v4 tintColor];
    [(UIView *)v7 setTintColor:v8];
  }

  else
  {
    __break(1u);
  }
}

- (void)setBackgroundHidden:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if ([(NCPlatterView *)v4 _isBackgroundHidden]!= v3)
  {
    [(NCPlatterView *)v4 set_isBackgroundHidden:v3];
    sub_21E8BFA34();
  }
}

- (BOOL)supportsGlass
{
  v3 = OBJC_IVAR___NCPlatterView_supportsGlass;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (BOOL)supportsMitosis
{
  v3 = OBJC_IVAR___NCPlatterView_supportsMitosis;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (double)glassSmoothness
{
  v3 = OBJC_IVAR___NCPlatterView_glassSmoothness;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setGlassSmoothness:(double)a3
{
  v5 = OBJC_IVAR___NCPlatterView_glassSmoothness;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = a3;
}

- (UIColor)glassTintColor
{
  v3 = OBJC_IVAR___NCPlatterView_glassTintColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setGlassTintColor:(id)a3
{
  v5 = OBJC_IVAR___NCPlatterView_glassTintColor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_21E8BFA34();
}

- (BOOL)unmanagedBackdropContrast
{
  v3 = OBJC_IVAR___NCPlatterView_unmanagedBackdropContrast;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setApparentZDistanceToUser:(int64_t)a3
{
  v5 = OBJC_IVAR___NCPlatterView_apparentZDistanceToUser;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_apparentZDistanceToUser);
  v7 = self;
  [(NCPlatterView *)v7 setLastApparentZDistanceToUser:v6];
  *(&self->super.super.super.super.isa + v5) = a3;
}

- (void)updateWithApparentZDistanceToUser:(int64_t)a3
{
  v8 = self;
  v4 = [(NCPlatterView *)v8 window];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  if ([v4 isHidden])
  {

LABEL_4:
    v6 = 0;
    goto LABEL_6;
  }

  v7 = [(NCPlatterView *)v8 isHidden];

  v6 = v7 ^ 1;
LABEL_6:
  [(NCPlatterView *)v8 updateWithApparentZDistanceToUser:a3 withAnimation:v6];
}

- (void)updateWithApparentZDistanceToUser:(int64_t)a3 withAnimation:(BOOL)a4
{
  v5 = self;
  if ([(NCPlatterView *)v5 apparentZDistanceToUser]!= a3)
  {
    [(NCPlatterView *)v5 setApparentZDistanceToUser:a3];
    sub_21E8BFA34();
  }
}

- (void)setRootListScrollVelocity:(double)a3
{
  v4 = self;
  sub_21E8BBC34(a3);
}

- (void)setGlassMode:(unint64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassMode) = a3;
  v3 = self;
  sub_21E8BBD38();
}

- (void)updateWithGlassMode:(unint64_t)a3
{
  v4 = self;
  if ([(NCPlatterView *)v4 glassMode]!= a3)
  {
    [(NCPlatterView *)v4 setGlassMode:a3];
  }
}

- (void)updateLightWithFillLightEnabled:(BOOL)a3 edgeLightEnabled:(BOOL)a4 duration:(double)a5 delay:(double)a6
{
  v7 = a4;
  v9 = self;
  sub_21E8BC1EC(a3, v7, a5);
}

- (void)removeLightEffectsIfNeeded
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_breakthroughLightHandle))
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_breakthroughLightHandle) = 0;
    v2 = self;
    sub_21E8BFA34();
  }
}

- (void)setGlassTransitionAnimator:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassTransitionAnimator);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassTransitionAnimator) = a3;
  v3 = a3;
}

- (void)setOpacityTransitionAnimator:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_opacityTransitionAnimator);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_opacityTransitionAnimator) = a3;
  v3 = a3;
}

- (void)immediatelyEndGlassTransitionAnimators
{
  v2 = self;
  sub_21E8BCC84();
}

- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setGlassLuminanceValueTraitChangeRegistration:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassLuminanceValueTraitChangeRegistration) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)glassLuminanceChanged
{
  v2 = self;
  sub_21E8BFA34();
}

- (void)setDebugBorderView:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugBorderView);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugBorderView) = a3;
  v3 = a3;
}

- (void)setDebugLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugLabel) = a3;
  v3 = a3;
}

- (void)addOrRemoveZDepthDebugViewsIfNeeded
{
  v2 = self;
  sub_21E8BE9A4();
}

- (void)updateZDepthDebugViewsIfNeeded
{
  v2 = self;
  sub_21E8BEEA0();
}

- (NCPlatterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NCPlatterView)initWithRecipeNamesByTraitCollection:(id)a3 inBundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end