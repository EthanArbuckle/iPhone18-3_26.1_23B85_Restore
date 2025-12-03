@interface PXTTRRadarObject
- (id)copyWithZone:(void *)zone;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
@end

@implementation PXTTRRadarObject

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A49D9978(container);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  TTRRadarObject.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1A524EA94();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end