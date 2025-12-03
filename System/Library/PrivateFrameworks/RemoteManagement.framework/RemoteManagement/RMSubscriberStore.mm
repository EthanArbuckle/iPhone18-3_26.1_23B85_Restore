@interface RMSubscriberStore
+ (id)storeFromManagementSource:(id)source;
@end

@implementation RMSubscriberStore

+ (id)storeFromManagementSource:(id)source
{
  sourceCopy = source;
  enrollmentType = [sourceCopy enrollmentType];
  v17 = +[RMStoreHelper storeScope];
  v16 = [RMSubscriberStore alloc];
  identifier = [sourceCopy identifier];
  name = [sourceCopy name];
  storeDescription = [sourceCopy storeDescription];
  bootstrapURI = [sourceCopy bootstrapURI];
  accountIdentifier = [sourceCopy accountIdentifier];
  v9 = [RMStoreHelper isInteractiveStoreType:enrollmentType];
  personaIdentifier = [sourceCopy personaIdentifier];
  personaIdentifier2 = [sourceCopy personaIdentifier];

  BYTE1(v14) = personaIdentifier != 0;
  LOBYTE(v14) = v9;
  v12 = [v16 initWithIdentifier:identifier type:enrollmentType scope:v17 name:name description:storeDescription enrollmentURL:bootstrapURI accountIdentifier:accountIdentifier defaultToInteractive:v14 dataSeparated:personaIdentifier2 personaIdentifier:?];

  return v12;
}

@end