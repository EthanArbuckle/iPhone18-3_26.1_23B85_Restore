@interface RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithDownload:(id)download installOSUpdates:(id)updates installSecurityUpdate:(id)update;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Download";
  v7[1] = @"InstallOSUpdates";
  v7[2] = @"InstallSecurityUpdate";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDownload:(id)download installOSUpdates:(id)updates installSecurityUpdate:(id)update
{
  updateCopy = update;
  updatesCopy = updates;
  downloadCopy = download;
  v10 = objc_opt_new();
  v11 = v10;
  if (downloadCopy)
  {
    v12 = downloadCopy;
  }

  else
  {
    v12 = @"Allowed";
  }

  [v10 setPayloadDownload:v12];

  if (updatesCopy)
  {
    v13 = updatesCopy;
  }

  else
  {
    v13 = @"Allowed";
  }

  [v11 setPayloadInstallOSUpdates:v13];

  if (updateCopy)
  {
    v14 = updateCopy;
  }

  else
  {
    v14 = @"Allowed";
  }

  [v11 setPayloadInstallSecurityUpdate:v14];

  return v11;
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

  v11 = +[RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Download" forKeyPath:@"payloadDownload" isRequired:0 defaultValue:@"Allowed" error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"InstallOSUpdates" forKeyPath:@"payloadInstallOSUpdates" isRequired:0 defaultValue:@"Allowed" error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"InstallSecurityUpdate" forKeyPath:@"payloadInstallSecurityUpdate" isRequired:0 defaultValue:@"Allowed" error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadDownload = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self payloadDownload];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Download" value:payloadDownload isRequired:0 defaultValue:@"Allowed"];

  payloadInstallOSUpdates = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self payloadInstallOSUpdates];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"InstallOSUpdates" value:payloadInstallOSUpdates isRequired:0 defaultValue:@"Allowed"];

  payloadInstallSecurityUpdate = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self payloadInstallSecurityUpdate];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"InstallSecurityUpdate" value:payloadInstallSecurityUpdate isRequired:0 defaultValue:@"Allowed"];

  v8 = [v4 copy];

  return v8;
}

- (void)combineWithOther:(id)other
{
  v20[3] = *MEMORY[0x277D85DE8];
  otherCopy = other;
  payloadDownload = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self payloadDownload];
  payloadDownload2 = [otherCopy payloadDownload];
  v20[0] = @"Allowed";
  v20[1] = @"AlwaysOn";
  v20[2] = @"AlwaysOff";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v8 = [RMModelConfigurationBase combineEnumLast:payloadDownload other:payloadDownload2 enums:v7];
  [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self setPayloadDownload:v8];

  payloadInstallOSUpdates = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self payloadInstallOSUpdates];
  payloadInstallOSUpdates2 = [otherCopy payloadInstallOSUpdates];
  v19[0] = @"Allowed";
  v19[1] = @"AlwaysOn";
  v19[2] = @"AlwaysOff";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v12 = [RMModelConfigurationBase combineEnumLast:payloadInstallOSUpdates other:payloadInstallOSUpdates2 enums:v11];
  [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self setPayloadInstallOSUpdates:v12];

  payloadInstallSecurityUpdate = [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self payloadInstallSecurityUpdate];
  payloadInstallSecurityUpdate2 = [otherCopy payloadInstallSecurityUpdate];

  v18[0] = @"Allowed";
  v18[1] = @"AlwaysOn";
  v18[2] = @"AlwaysOff";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v16 = [RMModelConfigurationBase combineEnumLast:payloadInstallSecurityUpdate other:payloadInstallSecurityUpdate2 enums:v15];
  [(RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions *)self setPayloadInstallSecurityUpdate:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelSoftwareUpdateSettingsDeclaration_AutomaticActions;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadDownload copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadInstallOSUpdates copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadInstallSecurityUpdate copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end