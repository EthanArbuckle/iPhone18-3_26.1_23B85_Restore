@interface SASBookendAnimationUpdateUIData
- (SASBookendAnimationUpdateUIData)init;
- (SASBookendAnimationUpdateUIData)initWithLanguage:(id)language remainingDuration:(double)duration isInitialDrawing:(BOOL)drawing;
@end

@implementation SASBookendAnimationUpdateUIData

- (SASBookendAnimationUpdateUIData)initWithLanguage:(id)language remainingDuration:(double)duration isInitialDrawing:(BOOL)drawing
{
  v8 = sub_265AA7570();
  v9 = (self + OBJC_IVAR___SASBookendAnimationUpdateUIData_language);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___SASBookendAnimationUpdateUIData_remainingDuration) = duration;
  *(self + OBJC_IVAR___SASBookendAnimationUpdateUIData_isInitialDrawing) = drawing;
  v12.receiver = self;
  v12.super_class = SASBookendAnimationUpdateUIData;
  return [(SASBookendAnimationUpdateUIData *)&v12 init];
}

- (SASBookendAnimationUpdateUIData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end