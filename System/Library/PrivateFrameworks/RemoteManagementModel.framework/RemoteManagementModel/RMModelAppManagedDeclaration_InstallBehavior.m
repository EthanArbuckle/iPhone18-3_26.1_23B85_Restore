@interface RMModelAppManagedDeclaration_InstallBehavior
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithInstall:(id)a3 license:(id)a4 version:(id)a5 allowDownloadsOverCellular:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAppManagedDeclaration_InstallBehavior

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Install";
  v7[1] = @"License";
  v7[2] = @"Version";
  v7[3] = @"AllowDownloadsOverCellular";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithInstall:(id)a3 license:(id)a4 version:(id)a5 allowDownloadsOverCellular:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = v13;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = @"Optional";
  }

  [v13 setPayloadInstall:v15];

  [v14 setPayloadLicense:v11];
  [v14 setPayloadVersion:v10];

  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = @"StoreSettings";
  }

  [v14 setPayloadAllowDownloadsOverCellular:v16];

  return v14;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelAppManagedDeclaration_InstallBehavior allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Install" forKeyPath:@"payloadInstall" isRequired:0 defaultValue:@"Optional" error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"License" forKeyPath:@"payloadLicense" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"Version" forKeyPath:@"payloadVersion" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"AllowDownloadsOverCellular" forKeyPath:@"payloadAllowDownloadsOverCellular" isRequired:0 defaultValue:@"StoreSettings" error:a5];
  return v14;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadInstall];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Install" value:v6 isRequired:0 defaultValue:@"Optional"];

  v7 = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadLicense];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__RMModelAppManagedDeclaration_InstallBehavior_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"License" value:v7 dictSerializer:v12 isRequired:0 defaultValue:0];

  v8 = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadVersion];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Version" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadAllowDownloadsOverCellular];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AllowDownloadsOverCellular" value:v9 isRequired:0 defaultValue:@"StoreSettings"];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelAppManagedDeclaration_InstallBehavior;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadInstall copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelAppManagedDeclaration_InstallBehaviorLicense *)self->_payloadLicense copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadVersion copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadAllowDownloadsOverCellular copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end