@interface PaginationSwipeTimingParameters
- (UICubicTimingParameters)cubicTimingParameters;
- (UISpringTimingParameters)springTimingParameters;
- (id)copyWithZone:(void *)zone;
@end

@implementation PaginationSwipeTimingParameters

- (UICubicTimingParameters)cubicTimingParameters
{
  selfCopy = self;
  v3 = sub_1E40A1778();

  return v3;
}

- (UISpringTimingParameters)springTimingParameters
{
  selfCopy = self;
  v3 = sub_1E40A1830();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1E40A19B8(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1E4207994();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

@end