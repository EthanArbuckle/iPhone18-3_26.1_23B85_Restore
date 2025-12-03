@interface ConfigurationListResolutionResult
+ (id)confirmationRequiredWithConfigurationListToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithConfigurationListsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedConfigurationList:(id)list;
+ (id)successWithResolvedObject:(id)object;
- (ConfigurationListResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation ConfigurationListResolutionResult

+ (id)successWithResolvedConfigurationList:(id)list
{
  swift_getObjCClassMetadata();
  listCopy = list;
  v5 = sub_23030D998(listCopy);

  return v5;
}

+ (id)disambiguationWithConfigurationListsToDisambiguate:(id)disambiguate
{
  type metadata accessor for ConfigurationList();
  v3 = sub_23030FCD8();
  swift_getObjCClassMetadata();
  v4 = sub_23030DA4C(v3);

  return v4;
}

+ (id)confirmationRequiredWithConfigurationListToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = sub_23030DBFC(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  result = sub_230310AE8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  result = sub_230310AE8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  result = sub_230310AE8();
  __break(1u);
  return result;
}

- (ConfigurationListResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_23030F658();
  intentCopy = intent;
  v7 = sub_23030F638();

  v10.receiver = self;
  v10.super_class = type metadata accessor for ConfigurationListResolutionResult();
  v8 = [(ConfigurationListResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end