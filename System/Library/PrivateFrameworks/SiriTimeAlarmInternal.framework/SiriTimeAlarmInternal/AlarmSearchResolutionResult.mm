@interface AlarmSearchResolutionResult
+ (id)confirmationRequiredWithAlarmSearchToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithAlarmSearchsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAlarmSearch:(id)search;
+ (id)successWithResolvedObject:(id)object;
- (AlarmSearchResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation AlarmSearchResolutionResult

+ (id)successWithResolvedAlarmSearch:(id)search
{
  swift_getObjCClassMetadata();
  searchCopy = search;
  v5 = sub_2692C6094(searchCopy);

  return v5;
}

+ (id)disambiguationWithAlarmSearchsToDisambiguate:(id)disambiguate
{
  type metadata accessor for AlarmSearch();
  v3 = sub_2692C7930();
  swift_getObjCClassMetadata();
  v4 = sub_2692C6148(v3);

  return v4;
}

+ (id)confirmationRequiredWithAlarmSearchToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_2692C62AC(confirm);

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

- (AlarmSearchResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2692C77E0();
  intentCopy = intent;
  v7 = sub_2692C77D0();

  v10.receiver = self;
  v10.super_class = type metadata accessor for AlarmSearchResolutionResult();
  v8 = [(AlarmSearchResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end