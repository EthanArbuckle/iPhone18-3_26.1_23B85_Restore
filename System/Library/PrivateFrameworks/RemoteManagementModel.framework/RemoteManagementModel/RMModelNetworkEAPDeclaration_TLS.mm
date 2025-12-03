@interface RMModelNetworkEAPDeclaration_TLS
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithRequireClientCertificate:(id)certificate identityAssetReference:(id)reference trustedServerNames:(id)names anchorCertificateAssetReferences:(id)references minimumVersion:(id)version maximumVersion:(id)maximumVersion;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkEAPDeclaration_TLS

+ (NSSet)allowedPayloadKeys
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"RequireClientCertificate";
  v7[1] = @"IdentityAssetReference";
  v7[2] = @"TrustedServerNames";
  v7[3] = @"AnchorCertificateAssetReferences";
  v7[4] = @"MinimumVersion";
  v7[5] = @"MaximumVersion";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithRequireClientCertificate:(id)certificate identityAssetReference:(id)reference trustedServerNames:(id)names anchorCertificateAssetReferences:(id)references minimumVersion:(id)version maximumVersion:(id)maximumVersion
{
  maximumVersionCopy = maximumVersion;
  versionCopy = version;
  referencesCopy = references;
  namesCopy = names;
  referenceCopy = reference;
  certificateCopy = certificate;
  v19 = objc_opt_new();
  v20 = v19;
  if (certificateCopy)
  {
    v21 = certificateCopy;
  }

  else
  {
    v21 = MEMORY[0x277CBEC28];
  }

  [v19 setPayloadRequireClientCertificate:v21];

  [v20 setPayloadIdentityAssetReference:referenceCopy];
  [v20 setPayloadTrustedServerNames:namesCopy];

  [v20 setPayloadAnchorCertificateAssetReferences:referencesCopy];
  if (versionCopy)
  {
    v22 = versionCopy;
  }

  else
  {
    v22 = @"1.0";
  }

  [v20 setPayloadMinimumVersion:v22];

  if (maximumVersionCopy)
  {
    v23 = maximumVersionCopy;
  }

  else
  {
    v23 = @"1.2";
  }

  [v20 setPayloadMaximumVersion:v23];

  return v20;
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

  v11 = +[RMModelNetworkEAPDeclaration_TLS allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"RequireClientCertificate" forKeyPath:@"payloadRequireClientCertificate" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"IdentityAssetReference" forKeyPath:@"payloadIdentityAssetReference" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"TrustedServerNames" forKeyPath:@"payloadTrustedServerNames" validator:&__block_literal_global_499 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"AnchorCertificateAssetReferences" forKeyPath:@"payloadAnchorCertificateAssetReferences" validator:&__block_literal_global_504 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"MinimumVersion" forKeyPath:@"payloadMinimumVersion" isRequired:0 defaultValue:@"1.0" error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"MaximumVersion" forKeyPath:@"payloadMaximumVersion" isRequired:0 defaultValue:@"1.2" error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadRequireClientCertificate = [(RMModelNetworkEAPDeclaration_TLS *)self payloadRequireClientCertificate];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"RequireClientCertificate" value:payloadRequireClientCertificate isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadIdentityAssetReference = [(RMModelNetworkEAPDeclaration_TLS *)self payloadIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IdentityAssetReference" value:payloadIdentityAssetReference isRequired:0 defaultValue:0];

  payloadTrustedServerNames = [(RMModelNetworkEAPDeclaration_TLS *)self payloadTrustedServerNames];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"TrustedServerNames" value:payloadTrustedServerNames itemSerializer:&__block_literal_global_512 isRequired:0 defaultValue:0];

  payloadAnchorCertificateAssetReferences = [(RMModelNetworkEAPDeclaration_TLS *)self payloadAnchorCertificateAssetReferences];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AnchorCertificateAssetReferences" value:payloadAnchorCertificateAssetReferences itemSerializer:&__block_literal_global_514 isRequired:0 defaultValue:0];

  payloadMinimumVersion = [(RMModelNetworkEAPDeclaration_TLS *)self payloadMinimumVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"MinimumVersion" value:payloadMinimumVersion isRequired:0 defaultValue:@"1.0"];

  payloadMaximumVersion = [(RMModelNetworkEAPDeclaration_TLS *)self payloadMaximumVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"MaximumVersion" value:payloadMaximumVersion isRequired:0 defaultValue:@"1.2"];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RMModelNetworkEAPDeclaration_TLS;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:zone];
  v5 = [(NSNumber *)self->_payloadRequireClientCertificate copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadIdentityAssetReference copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadTrustedServerNames copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_payloadAnchorCertificateAssetReferences copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_payloadMinimumVersion copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_payloadMaximumVersion copy];
  v16 = v4[7];
  v4[7] = v15;

  return v4;
}

@end