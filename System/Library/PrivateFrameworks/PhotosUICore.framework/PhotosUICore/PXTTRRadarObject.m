@interface PXTTRRadarObject
- (id)copyWithZone:(void *)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
@end

@implementation PXTTRRadarObject

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1A49D9978(a3);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  TTRRadarObject.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1A524EA94();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end