@interface SASBookendCurrentAnimationData
- (SASBookendCurrentAnimationData)init;
- (SASBookendCurrentAnimationData)initWithLanguage:(id)language animationDuration:(double)duration;
@end

@implementation SASBookendCurrentAnimationData

- (SASBookendCurrentAnimationData)initWithLanguage:(id)language animationDuration:(double)duration
{
  v6 = sub_265AA7570();
  v7 = (self + OBJC_IVAR___SASBookendCurrentAnimationData_language);
  *v7 = v6;
  v7[1] = v8;
  *(self + OBJC_IVAR___SASBookendCurrentAnimationData_animationDuration) = duration;
  v10.receiver = self;
  v10.super_class = SASBookendCurrentAnimationData;
  return [(SASBookendCurrentAnimationData *)&v10 init];
}

- (SASBookendCurrentAnimationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end