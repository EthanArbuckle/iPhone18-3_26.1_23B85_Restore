@interface AmbientPhotoFramePlayergroundViewController.PlaygroundPosterRenderingEnvironment
- ($A7FE26C25444B3FF39E196F68C4B7864)deviceAttitude;
- (CGRect)px_backdropInspectorOcclusionRect;
- (CGRect)px_backdropPrimaryOcclusionRect;
- (CGRect)px_callServicesOcclusionRect;
- (CGRect)px_floatingObscurableBounds;
- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)a3;
- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)a3;
- (CGRect)px_salientContentRectangle;
- (CGRect)px_titleBoundsForLayout:(unint64_t)a3;
- (NSURL)px_assetDirectory;
- (UITraitCollection)px_traitCollection;
- (void)setPx_traitCollection:(id)a3;
@end

@implementation AmbientPhotoFramePlayergroundViewController.PlaygroundPosterRenderingEnvironment

- (NSURL)px_assetDirectory
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  sub_1B3897DE4(&v8 - v3);
  v5 = sub_1B3C98068();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_1B3C98018();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

- (CGRect)px_floatingObscurableBounds
{
  v2 = sub_1B3897EBC();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_titleBoundsForLayout:(unint64_t)a3
{
  v3 = sub_1B3897EBC();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- ($A7FE26C25444B3FF39E196F68C4B7864)deviceAttitude
{
  v3 = v2;
  v4 = sub_1B3897FD0();
  *v3 = v5;
  *(v3 + 16) = v6;
  *(v3 + 32) = v4;
  return v4;
}

- (UITraitCollection)px_traitCollection
{
  v2 = sub_1B389806C();

  return v2;
}

- (void)setPx_traitCollection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B38980F8(a3);
}

- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)a3
{
  v3 = sub_1B3897EBC();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)a3
{
  v3 = sub_1B3897EBC();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_salientContentRectangle
{
  v2 = sub_1B3898180();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_backdropPrimaryOcclusionRect
{
  v2 = sub_1B38981F8();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_backdropInspectorOcclusionRect
{
  v2 = sub_1B3898270();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)px_callServicesOcclusionRect
{
  v2 = sub_1B38982E8();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end