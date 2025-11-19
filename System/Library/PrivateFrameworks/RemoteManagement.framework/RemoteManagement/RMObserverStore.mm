@interface RMObserverStore
+ (id)storeFromManagementSource:(id)a3;
@end

@implementation RMObserverStore

+ (id)storeFromManagementSource:(id)a3
{
  v3 = a3;
  v4 = [v3 enrollmentType];
  v17 = +[RMStoreHelper storeScope];
  v16 = [RMObserverStore alloc];
  v15 = [v3 identifier];
  v5 = [v3 name];
  v6 = [v3 storeDescription];
  v7 = [v3 bootstrapURI];
  v8 = [v3 accountIdentifier];
  v9 = [RMStoreHelper isInteractiveStoreType:v4];
  v10 = [v3 personaIdentifier];
  v11 = [v3 personaIdentifier];

  BYTE1(v14) = v10 != 0;
  LOBYTE(v14) = v9;
  v12 = [v16 initWithIdentifier:v15 type:v4 scope:v17 name:v5 description:v6 enrollmentURL:v7 accountIdentifier:v8 defaultToInteractive:v14 dataSeparated:v11 personaIdentifier:?];

  return v12;
}

@end