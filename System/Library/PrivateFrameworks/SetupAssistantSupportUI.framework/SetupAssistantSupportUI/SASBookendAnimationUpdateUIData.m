@interface SASBookendAnimationUpdateUIData
- (SASBookendAnimationUpdateUIData)init;
- (SASBookendAnimationUpdateUIData)initWithLanguage:(id)a3 remainingDuration:(double)a4 isInitialDrawing:(BOOL)a5;
@end

@implementation SASBookendAnimationUpdateUIData

- (SASBookendAnimationUpdateUIData)initWithLanguage:(id)a3 remainingDuration:(double)a4 isInitialDrawing:(BOOL)a5
{
  v8 = sub_265AA7570();
  v9 = (self + OBJC_IVAR___SASBookendAnimationUpdateUIData_language);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___SASBookendAnimationUpdateUIData_remainingDuration) = a4;
  *(self + OBJC_IVAR___SASBookendAnimationUpdateUIData_isInitialDrawing) = a5;
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