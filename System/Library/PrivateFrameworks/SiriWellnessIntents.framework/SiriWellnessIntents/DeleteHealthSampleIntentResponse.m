@interface DeleteHealthSampleIntentResponse
- (DeleteHealthSampleIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation DeleteHealthSampleIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  v4 = DeleteHealthSampleIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)setCode:(int64_t)a3
{
  MEMORY[0x277D82BE0](self);
  DeleteHealthSampleIntentResponse.code.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (DeleteHealthSampleIntentResponse)initWithPropertiesByName:(id)a3
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

  return DeleteHealthSampleIntentResponse.init(propertiesByName:)(v5);
}

@end