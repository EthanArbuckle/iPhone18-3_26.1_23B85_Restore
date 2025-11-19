@interface MAAIRBAppleIntelligenceAssetDeliveryEvent
- (MAAIRBAppleIntelligenceAssetDeliveryEvent)init;
- (MAAIRBAppleIntelligenceAssetDeliveryEvent)initWithErrors:(id)a3 type:(id)a4;
@end

@implementation MAAIRBAppleIntelligenceAssetDeliveryEvent

- (MAAIRBAppleIntelligenceAssetDeliveryEvent)initWithErrors:(id)a3 type:(id)a4
{
  v5 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518428);
    v5 = sub_303AC8();
  }

  v6 = a4;
  v7 = sub_253D00(v5, v6);

  return v7;
}

- (MAAIRBAppleIntelligenceAssetDeliveryEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end