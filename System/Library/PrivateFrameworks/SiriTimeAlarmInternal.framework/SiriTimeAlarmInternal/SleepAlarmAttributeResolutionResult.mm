@interface SleepAlarmAttributeResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSleepAlarmAttributeToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSleepAlarmAttributesToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSleepAlarmAttribute:(id)attribute;
- (SleepAlarmAttributeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation SleepAlarmAttributeResolutionResult

+ (id)successWithResolvedSleepAlarmAttribute:(id)attribute
{
  swift_getObjCClassMetadata();
  attributeCopy = attribute;
  v5 = sub_2692C5504(attributeCopy);

  return v5;
}

+ (id)disambiguationWithSleepAlarmAttributesToDisambiguate:(id)disambiguate
{
  type metadata accessor for SleepAlarmAttribute();
  v3 = sub_2692C7930();
  swift_getObjCClassMetadata();
  v4 = sub_2692C55B8(v3);

  return v4;
}

+ (id)confirmationRequiredWithSleepAlarmAttributeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2692C571C(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_2692C7C40();
  __break(1u);
  return result;
}

- (SleepAlarmAttributeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for SleepAlarmAttributeResolutionResult();
  v8 = [(SleepAlarmAttributeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end