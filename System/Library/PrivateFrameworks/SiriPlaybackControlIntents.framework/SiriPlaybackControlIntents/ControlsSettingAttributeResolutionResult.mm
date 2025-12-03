@interface ControlsSettingAttributeResolutionResult
+ (id)confirmationRequiredWithControlsSettingAttributeToConfirm:(id)confirm;
+ (id)disambiguationWithControlsSettingAttributesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedControlsSettingAttribute:(id)attribute;
@end

@implementation ControlsSettingAttributeResolutionResult

+ (id)successWithResolvedControlsSettingAttribute:(id)attribute
{
  swift_getObjCClassMetadata();
  attributeCopy = attribute;
  v5 = sub_268B33E38(attributeCopy);

  return v5;
}

+ (id)disambiguationWithControlsSettingAttributesToDisambiguate:(id)disambiguate
{
  type metadata accessor for ControlsSettingAttribute();
  v3 = sub_268B37CF4();
  swift_getObjCClassMetadata();
  v4 = sub_268B33EEC(v3);

  return v4;
}

+ (id)confirmationRequiredWithControlsSettingAttributeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_268B34050(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_268B2CDF4();
  sub_268B37CF4();
  sub_268B34154();
}

@end