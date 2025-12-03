@interface RMModelAppManagedDeclaration_InstallBehavior
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithInstall:(id)install license:(id)license version:(id)version allowDownloadsOverCellular:(id)cellular;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithInstall:(id)install license:(id)license version:(id)version allowDownloadsOverCellular:(id)cellular
{
  cellularCopy = cellular;
  versionCopy = version;
  licenseCopy = license;
  installCopy = install;
  v13 = objc_opt_new();
  v14 = v13;
  if (installCopy)
  {
    v15 = installCopy;
  }

  else
  {
    v15 = @"Optional";
  }

  [v13 setPayloadInstall:v15];

  [v14 setPayloadLicense:licenseCopy];
  [v14 setPayloadVersion:versionCopy];

  if (cellularCopy)
  {
    v16 = cellularCopy;
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

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelAppManagedDeclaration_InstallBehavior allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Install" forKeyPath:@"payloadInstall" isRequired:0 defaultValue:@"Optional" error:error]&& (LOWORD(v16) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"License" forKeyPath:@"payloadLicense" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error]) && [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Version" forKeyPath:@"payloadVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AllowDownloadsOverCellular" forKeyPath:@"payloadAllowDownloadsOverCellular" isRequired:0 defaultValue:@"StoreSettings" error:error];
  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadInstall = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadInstall];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Install" value:payloadInstall isRequired:0 defaultValue:@"Optional"];

  payloadLicense = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadLicense];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__RMModelAppManagedDeclaration_InstallBehavior_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"License" value:payloadLicense dictSerializer:v12 isRequired:0 defaultValue:0];

  payloadVersion = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadVersion];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Version" value:payloadVersion isRequired:0 defaultValue:0];

  payloadAllowDownloadsOverCellular = [(RMModelAppManagedDeclaration_InstallBehavior *)self payloadAllowDownloadsOverCellular];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"AllowDownloadsOverCellular" value:payloadAllowDownloadsOverCellular isRequired:0 defaultValue:@"StoreSettings"];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelAppManagedDeclaration_InstallBehavior;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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