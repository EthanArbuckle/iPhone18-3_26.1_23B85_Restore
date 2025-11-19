@interface VolumeLevelResolutionResult
+ (id)confirmationRequiredWithVolumeLevelToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithVolumeLevelsToDisambiguate:(id)a3;
+ (id)successWithResolvedVolumeLevel:(id)a3;
@end

@implementation VolumeLevelResolutionResult

+ (id)successWithResolvedVolumeLevel:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B30DF8(v4);

  return v5;
}

+ (id)disambiguationWithVolumeLevelsToDisambiguate:(id)a3
{
  type metadata accessor for VolumeLevel();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B30E5C(v3);

  return v4;
}

+ (id)confirmationRequiredWithVolumeLevelToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B30F54(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B31518();
}

@end