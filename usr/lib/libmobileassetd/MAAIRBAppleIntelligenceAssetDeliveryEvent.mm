@interface MAAIRBAppleIntelligenceAssetDeliveryEvent
- (MAAIRBAppleIntelligenceAssetDeliveryEvent)init;
- (MAAIRBAppleIntelligenceAssetDeliveryEvent)initWithErrors:(id)errors type:(id)type;
@end

@implementation MAAIRBAppleIntelligenceAssetDeliveryEvent

- (MAAIRBAppleIntelligenceAssetDeliveryEvent)initWithErrors:(id)errors type:(id)type
{
  errorsCopy = errors;
  if (errors)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
    errorsCopy = sub_303AC8();
  }

  typeCopy = type;
  v7 = sub_253D00(errorsCopy, typeCopy);

  return v7;
}

- (MAAIRBAppleIntelligenceAssetDeliveryEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end