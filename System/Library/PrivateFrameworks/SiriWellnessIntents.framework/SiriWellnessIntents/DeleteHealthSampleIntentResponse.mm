@interface DeleteHealthSampleIntentResponse
- (DeleteHealthSampleIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation DeleteHealthSampleIntentResponse

- (int64_t)code
{
  MEMORY[0x277D82BE0](self);
  v4 = DeleteHealthSampleIntentResponse.code.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)setCode:(int64_t)code
{
  MEMORY[0x277D82BE0](self);
  DeleteHealthSampleIntentResponse.code.setter(code);
  MEMORY[0x277D82BD8](self);
}

- (DeleteHealthSampleIntentResponse)initWithPropertiesByName:(id)name
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

  return DeleteHealthSampleIntentResponse.init(propertiesByName:)(v5);
}

@end