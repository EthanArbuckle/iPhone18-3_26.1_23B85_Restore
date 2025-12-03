@interface NCPlatterView
- (BOOL)supportsGlass;
- (BOOL)supportsMitosis;
- (BOOL)unmanagedBackdropContrast;
- (NCPlatterView)initWithFrame:(CGRect)frame;
- (NCPlatterView)initWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle;
- (UIColor)glassTintColor;
- (UIColor)tintColor;
- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration;
- (double)_continuousCornerRadius;
- (double)glassSmoothness;
- (int64_t)materialRecipe;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)addOrRemoveZDepthDebugViewsIfNeeded;
- (void)dealloc;
- (void)glassLuminanceChanged;
- (void)immediatelyEndGlassTransitionAnimators;
- (void)layoutSubviews;
- (void)removeLightEffectsIfNeeded;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setDebugBorderView:(id)view;
- (void)setDebugLabel:(id)label;
- (void)setGlassLuminanceValueTraitChangeRegistration:(id)registration;
- (void)setGlassMode:(unint64_t)mode;
- (void)setGlassSmoothness:(double)smoothness;
- (void)setGlassTintColor:(id)color;
- (void)setGlassTransitionAnimator:(id)animator;
- (void)setMaterialRecipe:(int64_t)recipe;
- (void)setOpacityTransitionAnimator:(id)animator;
- (void)setRootListScrollVelocity:(double)velocity;
- (void)setTintColor:(id)color;
- (void)updateLightWithFillLightEnabled:(BOOL)enabled edgeLightEnabled:(BOOL)lightEnabled duration:(double)duration delay:(double)delay;
- (void)updateWithApparentZDistanceToUser:(int64_t)user;
- (void)updateWithApparentZDistanceToUser:(int64_t)user withAnimation:(BOOL)animation;
- (void)updateWithGlassMode:(unint64_t)mode;
- (void)updateZDepthDebugViewsIfNeeded;
@end

@implementation NCPlatterView

- (void)layoutSubviews
{
  selfCopy = self;
  NCPlatterView.layoutSubviews()();
}

- (void)dealloc
{
  selfCopy = self;
  sub_21E8BF97C(selfCopy);
  v3.receiver = selfCopy;
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

- (void)_setContinuousCornerRadius:(double)radius
{
  v7.receiver = self;
  v7.super_class = NCPlatterView;
  selfCopy = self;
  [(PLPlatterView *)&v7 _setContinuousCornerRadius:radius];
  v5 = [(PLPlatterView *)selfCopy customContentView:v7.receiver];
  if (v5)
  {
    v6 = v5;
    [(NCPlatterView *)selfCopy _continuousCornerRadius];
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

- (void)setMaterialRecipe:(int64_t)recipe
{
  v5.receiver = self;
  v5.super_class = NCPlatterView;
  selfCopy = self;
  [(PLPlatterView *)&v5 setMaterialRecipe:recipe];
  sub_21E8BFA34();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = NCPlatterView;
  tintColor = [(NCPlatterView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v9.receiver = self;
  v9.super_class = NCPlatterView;
  selfCopy = self;
  colorCopy = color;
  [(NCPlatterView *)&v9 setTintColor:colorCopy];
  v6 = [(PLPlatterView *)selfCopy customContentView:v9.receiver];
  if (v6)
  {
    v7 = v6;
    tintColor = [(NCPlatterView *)selfCopy tintColor];
    [(UIView *)v7 setTintColor:tintColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  selfCopy = self;
  if ([(NCPlatterView *)selfCopy _isBackgroundHidden]!= hiddenCopy)
  {
    [(NCPlatterView *)selfCopy set_isBackgroundHidden:hiddenCopy];
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

- (void)setGlassSmoothness:(double)smoothness
{
  v5 = OBJC_IVAR___NCPlatterView_glassSmoothness;
  swift_beginAccess();
  *(&self->super.super.super.super.isa + v5) = smoothness;
}

- (UIColor)glassTintColor
{
  v3 = OBJC_IVAR___NCPlatterView_glassTintColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setGlassTintColor:(id)color
{
  v5 = OBJC_IVAR___NCPlatterView_glassTintColor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = color;
  colorCopy = color;
  selfCopy = self;

  sub_21E8BFA34();
}

- (BOOL)unmanagedBackdropContrast
{
  v3 = OBJC_IVAR___NCPlatterView_unmanagedBackdropContrast;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  v5 = OBJC_IVAR___NCPlatterView_apparentZDistanceToUser;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_apparentZDistanceToUser);
  selfCopy = self;
  [(NCPlatterView *)selfCopy setLastApparentZDistanceToUser:v6];
  *(&self->super.super.super.super.isa + v5) = user;
}

- (void)updateWithApparentZDistanceToUser:(int64_t)user
{
  selfCopy = self;
  window = [(NCPlatterView *)selfCopy window];
  if (!window)
  {
    goto LABEL_4;
  }

  v5 = window;
  if ([window isHidden])
  {

LABEL_4:
    v6 = 0;
    goto LABEL_6;
  }

  isHidden = [(NCPlatterView *)selfCopy isHidden];

  v6 = isHidden ^ 1;
LABEL_6:
  [(NCPlatterView *)selfCopy updateWithApparentZDistanceToUser:user withAnimation:v6];
}

- (void)updateWithApparentZDistanceToUser:(int64_t)user withAnimation:(BOOL)animation
{
  selfCopy = self;
  if ([(NCPlatterView *)selfCopy apparentZDistanceToUser]!= user)
  {
    [(NCPlatterView *)selfCopy setApparentZDistanceToUser:user];
    sub_21E8BFA34();
  }
}

- (void)setRootListScrollVelocity:(double)velocity
{
  selfCopy = self;
  sub_21E8BBC34(velocity);
}

- (void)setGlassMode:(unint64_t)mode
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassMode) = mode;
  selfCopy = self;
  sub_21E8BBD38();
}

- (void)updateWithGlassMode:(unint64_t)mode
{
  selfCopy = self;
  if ([(NCPlatterView *)selfCopy glassMode]!= mode)
  {
    [(NCPlatterView *)selfCopy setGlassMode:mode];
  }
}

- (void)updateLightWithFillLightEnabled:(BOOL)enabled edgeLightEnabled:(BOOL)lightEnabled duration:(double)duration delay:(double)delay
{
  lightEnabledCopy = lightEnabled;
  selfCopy = self;
  sub_21E8BC1EC(enabled, lightEnabledCopy, duration);
}

- (void)removeLightEffectsIfNeeded
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_breakthroughLightHandle))
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_breakthroughLightHandle) = 0;
    selfCopy = self;
    sub_21E8BFA34();
  }
}

- (void)setGlassTransitionAnimator:(id)animator
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassTransitionAnimator);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassTransitionAnimator) = animator;
  animatorCopy = animator;
}

- (void)setOpacityTransitionAnimator:(id)animator
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_opacityTransitionAnimator);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_opacityTransitionAnimator) = animator;
  animatorCopy = animator;
}

- (void)immediatelyEndGlassTransitionAnimators
{
  selfCopy = self;
  sub_21E8BCC84();
}

- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setGlassLuminanceValueTraitChangeRegistration:(id)registration
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_glassLuminanceValueTraitChangeRegistration) = registration;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)glassLuminanceChanged
{
  selfCopy = self;
  sub_21E8BFA34();
}

- (void)setDebugBorderView:(id)view
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugBorderView);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugBorderView) = view;
  viewCopy = view;
}

- (void)setDebugLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR___NCPlatterView_debugLabel) = label;
  labelCopy = label;
}

- (void)addOrRemoveZDepthDebugViewsIfNeeded
{
  selfCopy = self;
  sub_21E8BE9A4();
}

- (void)updateZDepthDebugViewsIfNeeded
{
  selfCopy = self;
  sub_21E8BEEA0();
}

- (NCPlatterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NCPlatterView)initWithRecipeNamesByTraitCollection:(id)collection inBundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end