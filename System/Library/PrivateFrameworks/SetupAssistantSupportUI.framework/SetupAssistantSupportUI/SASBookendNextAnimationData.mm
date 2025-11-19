@interface SASBookendNextAnimationData
- (SASBookendNextAnimationData)init;
- (SASBookendNextAnimationData)initWithLanguage:(id)a3 animationDuration:(double)a4 delayTillNextAnimation:(double)a5;
@end

@implementation SASBookendNextAnimationData

- (SASBookendNextAnimationData)initWithLanguage:(id)a3 animationDuration:(double)a4 delayTillNextAnimation:(double)a5
{
  v8 = sub_265AA7570();
  v9 = (self + OBJC_IVAR___SASBookendNextAnimationData_language);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___SASBookendNextAnimationData_animationDuration) = a4;
  *(self + OBJC_IVAR___SASBookendNextAnimationData_delayTillNextAnimation) = a5;
  v12.receiver = self;
  v12.super_class = SASBookendNextAnimationData;
  return [(SASBookendNextAnimationData *)&v12 init];
}

- (SASBookendNextAnimationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end