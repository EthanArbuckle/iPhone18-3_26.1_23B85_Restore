@interface RMConfigurationPayloadReference
- (id)reportDetails;
@end

@implementation RMConfigurationPayloadReference

- (id)reportDetails
{
  v15[0] = @"activation";
  activation = [(RMConfigurationPayloadReference *)self activation];
  identifier = [activation identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
  }

  else
  {
    v6 = @"(not present)";
  }

  v16[0] = v6;
  v15[1] = @"configuration";
  configuration = [(RMConfigurationPayloadReference *)self configuration];
  identifier2 = [configuration identifier];
  v9 = identifier2;
  if (identifier2)
  {
    v10 = identifier2;
  }

  else
  {
    v10 = @"(not present)";
  }

  v16[1] = v10;
  v15[2] = @"configurationIdentifier";
  configurationIdentifier = [(RMConfigurationPayloadReference *)self configurationIdentifier];
  v16[2] = configurationIdentifier;
  v15[3] = @"required";
  v12 = [NSNumber numberWithBool:[(RMConfigurationPayloadReference *)self required]];
  v16[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v13;
}

@end