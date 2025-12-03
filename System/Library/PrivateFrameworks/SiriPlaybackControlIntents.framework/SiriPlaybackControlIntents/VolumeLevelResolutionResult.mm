@interface VolumeLevelResolutionResult
+ (id)confirmationRequiredWithVolumeLevelToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithVolumeLevelsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedVolumeLevel:(id)level;
@end

@implementation VolumeLevelResolutionResult

+ (id)successWithResolvedVolumeLevel:(id)level
{
  swift_getObjCClassMetadata();
  levelCopy = level;
  v5 = sub_268B30DF8(levelCopy);

  return v5;
}

+ (id)disambiguationWithVolumeLevelsToDisambiguate:(id)disambiguate
{
  type metadata accessor for VolumeLevel();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B30E5C(v3);

  return v4;
}

+ (id)confirmationRequiredWithVolumeLevelToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B30F54(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B31518();
}

@end