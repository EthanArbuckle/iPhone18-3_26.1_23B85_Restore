@interface TimingCurveParameter
- (id)copyWithZone:(void *)a3;
- (void)setCubicTimingParameters:(id)a3;
- (void)setSpringTimingParameters:(id)a3;
@end

@implementation TimingCurveParameter

- (void)setCubicTimingParameters:(id)a3
{
  OUTLINED_FUNCTION_14_0();
  cubicTimingParameters = self->cubicTimingParameters;
  self->cubicTimingParameters = a3;
  v6 = a3;
}

- (void)setSpringTimingParameters:(id)a3
{
  OUTLINED_FUNCTION_14_0();
  springTimingParameters = self->springTimingParameters;
  self->springTimingParameters = a3;
  v6 = a3;
}

- (id)copyWithZone:(void *)a3
{

  sub_1E3C8C90C(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_1E4207994();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

@end