@interface SASBookendNextAnimationData
- (SASBookendNextAnimationData)init;
- (SASBookendNextAnimationData)initWithLanguage:(id)language animationDuration:(double)duration delayTillNextAnimation:(double)animation;
@end

@implementation SASBookendNextAnimationData

- (SASBookendNextAnimationData)initWithLanguage:(id)language animationDuration:(double)duration delayTillNextAnimation:(double)animation
{
  v8 = sub_265AA7570();
  v9 = (self + OBJC_IVAR___SASBookendNextAnimationData_language);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___SASBookendNextAnimationData_animationDuration) = duration;
  *(self + OBJC_IVAR___SASBookendNextAnimationData_delayTillNextAnimation) = animation;
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