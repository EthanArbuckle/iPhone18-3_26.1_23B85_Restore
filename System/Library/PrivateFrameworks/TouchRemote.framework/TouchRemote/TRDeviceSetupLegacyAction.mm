@interface TRDeviceSetupLegacyAction
- (id)propertyListRepresentation;
@end

@implementation TRDeviceSetupLegacyAction

- (id)propertyListRepresentation
{
  actionType = [(TRDeviceSetupAction *)self actionType];
  v4 = actionType;
  v5 = &stru_287F58968;
  if (actionType)
  {
    v5 = actionType;
  }

  v6 = v5;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v6 forKey:@"a"];

  parameters = [(TRDeviceSetupAction *)self parameters];

  if (parameters)
  {
    parameters2 = [(TRDeviceSetupAction *)self parameters];
    [dictionary setObject:parameters2 forKey:@"p"];
  }

  v10 = [dictionary copy];

  return v10;
}

@end