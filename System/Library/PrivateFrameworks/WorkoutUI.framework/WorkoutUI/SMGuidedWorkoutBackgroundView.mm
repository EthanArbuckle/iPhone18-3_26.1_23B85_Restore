@interface SMGuidedWorkoutBackgroundView
- (SMGuidedWorkoutBackgroundView)initWithCoder:(id)a3;
- (SMGuidedWorkoutBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3 WithMediaType:(id)a4;
- (void)updateWithActiveAppearance:(int64_t)a3;
@end

@implementation SMGuidedWorkoutBackgroundView

- (SMGuidedWorkoutBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v5 = (self + OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds);
  *v5 = 0u;
  v5[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  GuidedWorkoutBackgroundView.layoutSubviews()();
}

- (void)setImage:(id)a3 WithMediaType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.value.super.super.isa = self;
  isa = v12.value.super.super.isa;
  v11.value.super.isa = a3;
  v11.is_nil = a4;
  GuidedWorkoutBackgroundView.update(image:with:)(v11, v12);
}

- (void)updateWithActiveAppearance:(int64_t)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView);
  if (v3)
  {
    v6 = self;
    v5 = v3;
    VignetteView.update(with:)(a3);
  }
}

- (SMGuidedWorkoutBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end