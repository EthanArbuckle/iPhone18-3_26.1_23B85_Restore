@interface TimingCurveParameter
- (id)copyWithZone:(void *)zone;
- (void)setCubicTimingParameters:(id)parameters;
- (void)setSpringTimingParameters:(id)parameters;
@end

@implementation TimingCurveParameter

- (void)setCubicTimingParameters:(id)parameters
{
  OUTLINED_FUNCTION_14_0();
  cubicTimingParameters = self->cubicTimingParameters;
  self->cubicTimingParameters = parameters;
  parametersCopy = parameters;
}

- (void)setSpringTimingParameters:(id)parameters
{
  OUTLINED_FUNCTION_14_0();
  springTimingParameters = self->springTimingParameters;
  self->springTimingParameters = parameters;
  parametersCopy = parameters;
}

- (id)copyWithZone:(void *)zone
{

  sub_1E3C8C90C(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1E4207994();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

@end