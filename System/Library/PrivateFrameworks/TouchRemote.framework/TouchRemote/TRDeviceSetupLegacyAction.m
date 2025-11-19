@interface TRDeviceSetupLegacyAction
- (id)propertyListRepresentation;
@end

@implementation TRDeviceSetupLegacyAction

- (id)propertyListRepresentation
{
  v3 = [(TRDeviceSetupAction *)self actionType];
  v4 = v3;
  v5 = &stru_287F58968;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:v6 forKey:@"a"];

  v8 = [(TRDeviceSetupAction *)self parameters];

  if (v8)
  {
    v9 = [(TRDeviceSetupAction *)self parameters];
    [v7 setObject:v9 forKey:@"p"];
  }

  v10 = [v7 copy];

  return v10;
}

@end