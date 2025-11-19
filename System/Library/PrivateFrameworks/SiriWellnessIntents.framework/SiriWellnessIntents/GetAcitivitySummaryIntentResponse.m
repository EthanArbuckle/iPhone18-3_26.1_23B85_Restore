@interface GetAcitivitySummaryIntentResponse
- (GetAcitivitySummaryIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation GetAcitivitySummaryIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  AcitivitySummaryIntent = GetAcitivitySummaryIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return AcitivitySummaryIntent;
}

- (void)setCode:(int64_t)a3
{
  MEMORY[0x277D82BE0](self);
  GetAcitivitySummaryIntentResponse.code.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (GetAcitivitySummaryIntentResponse)initWithPropertiesByName:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return GetAcitivitySummaryIntentResponse.init(propertiesByName:)(v5);
}

@end