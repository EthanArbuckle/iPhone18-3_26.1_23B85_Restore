@interface RMModelPackageDeclaration_InstallBehavior
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithInstall:(id)install installScript:(id)script;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelPackageDeclaration_InstallBehavior

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Install";
  v7[1] = @"InstallScript";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithInstall:(id)install installScript:(id)script
{
  scriptCopy = script;
  installCopy = install;
  v7 = objc_opt_new();
  v8 = v7;
  if (installCopy)
  {
    v9 = installCopy;
  }

  else
  {
    v9 = @"Optional";
  }

  [v7 setPayloadInstall:v9];

  [v8 setPayloadInstallScript:scriptCopy];

  return v8;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelPackageDeclaration_InstallBehavior allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = 0;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Install" forKeyPath:@"payloadInstall" isRequired:0 defaultValue:@"Optional" error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"InstallScript" forKeyPath:@"payloadInstallScript" isRequired:0 defaultValue:0 error:error];
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadInstall = [(RMModelPackageDeclaration_InstallBehavior *)self payloadInstall];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Install" value:payloadInstall isRequired:0 defaultValue:@"Optional"];

  payloadInstallScript = [(RMModelPackageDeclaration_InstallBehavior *)self payloadInstallScript];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"InstallScript" value:payloadInstallScript isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelPackageDeclaration_InstallBehavior;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadInstall copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadInstallScript copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end