@interface SMGuidedWorkoutBackgroundView
- (SMGuidedWorkoutBackgroundView)initWithCoder:(id)coder;
- (SMGuidedWorkoutBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImage:(id)image WithMediaType:(id)type;
- (void)updateWithActiveAppearance:(int64_t)appearance;
@end

@implementation SMGuidedWorkoutBackgroundView

- (SMGuidedWorkoutBackgroundView)initWithCoder:(id)coder
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
  selfCopy = self;
  GuidedWorkoutBackgroundView.layoutSubviews()();
}

- (void)setImage:(id)image WithMediaType:(id)type
{
  imageCopy = image;
  typeCopy = type;
  v12.value.super.super.isa = self;
  isa = v12.value.super.super.isa;
  v11.value.super.isa = image;
  v11.is_nil = type;
  GuidedWorkoutBackgroundView.update(image:with:)(v11, v12);
}

- (void)updateWithActiveAppearance:(int64_t)appearance
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
    VignetteView.update(with:)(appearance);
  }
}

- (SMGuidedWorkoutBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end