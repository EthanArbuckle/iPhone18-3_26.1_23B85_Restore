@interface ConfigurationListResolutionResult
+ (id)confirmationRequiredWithConfigurationListToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithConfigurationListsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedConfigurationList:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
- (ConfigurationListResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation ConfigurationListResolutionResult

+ (id)successWithResolvedConfigurationList:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_23030D998(v4);

  return v5;
}

+ (id)disambiguationWithConfigurationListsToDisambiguate:(id)a3
{
  type metadata accessor for ConfigurationList();
  v3 = sub_23030FCD8();
  swift_getObjCClassMetadata();
  v4 = sub_23030DA4C(v3);

  return v4;
}

+ (id)confirmationRequiredWithConfigurationListToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_23030DBFC(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  result = sub_230310AE8();
  __break(1u);
  return result;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  result = sub_230310AE8();
  __break(1u);
  return result;
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  result = sub_230310AE8();
  __break(1u);
  return result;
}

- (ConfigurationListResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_23030F658();
  v6 = a4;
  v7 = sub_23030F638();

  v10.receiver = self;
  v10.super_class = type metadata accessor for ConfigurationListResolutionResult();
  v8 = [(ConfigurationListResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end