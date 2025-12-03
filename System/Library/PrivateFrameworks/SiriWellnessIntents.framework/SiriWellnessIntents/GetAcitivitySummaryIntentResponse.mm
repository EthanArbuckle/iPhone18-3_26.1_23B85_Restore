@interface GetAcitivitySummaryIntentResponse
- (GetAcitivitySummaryIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetAcitivitySummaryIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  AcitivitySummaryIntent = GetAcitivitySummaryIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return AcitivitySummaryIntent;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  GetAcitivitySummaryIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (GetAcitivitySummaryIntentResponse)initWithPropertiesByName:(id)name
{
  MEMORY[0x277D82BE0](name);
  if (name)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](name);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return GetAcitivitySummaryIntentResponse.init(propertiesByName:)(v5);
}

@end