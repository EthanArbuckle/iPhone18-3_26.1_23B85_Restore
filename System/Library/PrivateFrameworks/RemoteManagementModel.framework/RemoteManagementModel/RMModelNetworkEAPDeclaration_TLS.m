@interface RMModelNetworkEAPDeclaration_TLS
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithRequireClientCertificate:(id)a3 identityAssetReference:(id)a4 trustedServerNames:(id)a5 anchorCertificateAssetReferences:(id)a6 minimumVersion:(id)a7 maximumVersion:(id)a8;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithRequireClientCertificate:(id)a3 identityAssetReference:(id)a4 trustedServerNames:(id)a5 anchorCertificateAssetReferences:(id)a6 minimumVersion:(id)a7 maximumVersion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_new();
  v20 = v19;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = MEMORY[0x277CBEC28];
  }

  [v19 setPayloadRequireClientCertificate:v21];

  [v20 setPayloadIdentityAssetReference:v17];
  [v20 setPayloadTrustedServerNames:v16];

  [v20 setPayloadAnchorCertificateAssetReferences:v15];
  if (v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = @"1.0";
  }

  [v20 setPayloadMinimumVersion:v22];

  if (v13)
  {
    v23 = v13;
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

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelNetworkEAPDeclaration_TLS allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"RequireClientCertificate" forKeyPath:@"payloadRequireClientCertificate" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"IdentityAssetReference" forKeyPath:@"payloadIdentityAssetReference" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"TrustedServerNames" forKeyPath:@"payloadTrustedServerNames" validator:&__block_literal_global_499 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v7 usingKey:@"AnchorCertificateAssetReferences" forKeyPath:@"payloadAnchorCertificateAssetReferences" validator:&__block_literal_global_504 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"MinimumVersion" forKeyPath:@"payloadMinimumVersion" isRequired:0 defaultValue:@"1.0" error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"MaximumVersion" forKeyPath:@"payloadMaximumVersion" isRequired:0 defaultValue:@"1.2" error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelNetworkEAPDeclaration_TLS *)self payloadRequireClientCertificate];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"RequireClientCertificate" value:v5 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v6 = [(RMModelNetworkEAPDeclaration_TLS *)self payloadIdentityAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IdentityAssetReference" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelNetworkEAPDeclaration_TLS *)self payloadTrustedServerNames];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"TrustedServerNames" value:v7 itemSerializer:&__block_literal_global_512 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkEAPDeclaration_TLS *)self payloadAnchorCertificateAssetReferences];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"AnchorCertificateAssetReferences" value:v8 itemSerializer:&__block_literal_global_514 isRequired:0 defaultValue:0];

  v9 = [(RMModelNetworkEAPDeclaration_TLS *)self payloadMinimumVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"MinimumVersion" value:v9 isRequired:0 defaultValue:@"1.0"];

  v10 = [(RMModelNetworkEAPDeclaration_TLS *)self payloadMaximumVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"MaximumVersion" value:v10 isRequired:0 defaultValue:@"1.2"];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = RMModelNetworkEAPDeclaration_TLS;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:a3];
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