@interface SASBookendAnimationFinishedData
- (SASBookendAnimationFinishedData)init;
- (SASBookendAnimationFinishedData)initWithCurrentLanguage:(id)a3 isLastLanguage:(BOOL)a4 nextAnimationData:(id)a5;
@end

@implementation SASBookendAnimationFinishedData

- (SASBookendAnimationFinishedData)initWithCurrentLanguage:(id)a3 isLastLanguage:(BOOL)a4 nextAnimationData:(id)a5
{
  v8 = sub_265AA7570();
  v9 = (self + OBJC_IVAR___SASBookendAnimationFinishedData_currentLanguage);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___SASBookendAnimationFinishedData_isLastLanguage) = a4;
  *(self + OBJC_IVAR___SASBookendAnimationFinishedData_nextAnimationData) = a5;
  v13.receiver = self;
  v13.super_class = SASBookendAnimationFinishedData;
  v11 = a5;
  return [(SASBookendAnimationFinishedData *)&v13 init];
}

- (SASBookendAnimationFinishedData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end