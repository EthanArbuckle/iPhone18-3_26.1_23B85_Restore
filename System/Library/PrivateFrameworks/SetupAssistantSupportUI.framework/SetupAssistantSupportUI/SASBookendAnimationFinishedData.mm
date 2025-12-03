@interface SASBookendAnimationFinishedData
- (SASBookendAnimationFinishedData)init;
- (SASBookendAnimationFinishedData)initWithCurrentLanguage:(id)language isLastLanguage:(BOOL)lastLanguage nextAnimationData:(id)data;
@end

@implementation SASBookendAnimationFinishedData

- (SASBookendAnimationFinishedData)initWithCurrentLanguage:(id)language isLastLanguage:(BOOL)lastLanguage nextAnimationData:(id)data
{
  v8 = sub_265AA7570();
  v9 = (self + OBJC_IVAR___SASBookendAnimationFinishedData_currentLanguage);
  *v9 = v8;
  v9[1] = v10;
  *(self + OBJC_IVAR___SASBookendAnimationFinishedData_isLastLanguage) = lastLanguage;
  *(self + OBJC_IVAR___SASBookendAnimationFinishedData_nextAnimationData) = data;
  v13.receiver = self;
  v13.super_class = SASBookendAnimationFinishedData;
  dataCopy = data;
  return [(SASBookendAnimationFinishedData *)&v13 init];
}

- (SASBookendAnimationFinishedData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end