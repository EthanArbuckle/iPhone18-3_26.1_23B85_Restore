@interface ControlsSettingAttributeResolutionResult
+ (id)confirmationRequiredWithControlsSettingAttributeToConfirm:(id)a3;
+ (id)disambiguationWithControlsSettingAttributesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedControlsSettingAttribute:(id)a3;
@end

@implementation ControlsSettingAttributeResolutionResult

+ (id)successWithResolvedControlsSettingAttribute:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B33E38(v4);

  return v5;
}

+ (id)disambiguationWithControlsSettingAttributesToDisambiguate:(id)a3
{
  type metadata accessor for ControlsSettingAttribute();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B33EEC(v3);

  return v4;
}

+ (id)confirmationRequiredWithControlsSettingAttributeToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_268B34050(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B34154();
}

@end