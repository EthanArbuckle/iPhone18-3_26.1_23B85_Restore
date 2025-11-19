@interface RMModelManagementOrganizationInformationDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 name:(id)a4;
+ (id)buildWithIdentifier:(id)a3 name:(id)a4 email:(id)a5 URL:(id)a6 proof:(id)a7;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelManagementOrganizationInformationDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Name";
  v7[1] = @"Email";
  v7[2] = @"URL";
  v7[3] = @"Proof";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 name:(id)a4 email:(id)a5 URL:(id)a6 proof:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_opt_new();
  [v16 setDeclarationType:@"com.apple.management.organization-info"];
  if (v11)
  {
    [v16 setDeclarationIdentifier:v11];
  }

  else
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];
    [v16 setDeclarationIdentifier:v18];
  }

  [v16 setPayloadName:v15];

  [v16 setPayloadEmail:v14];
  [v16 setPayloadURL:v13];

  [v16 setPayloadProof:v12];
  [v16 updateServerToken];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 name:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.management.organization-info"];
  if (v5)
  {
    [v7 setDeclarationIdentifier:v5];
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    [v7 setDeclarationIdentifier:v9];
  }

  [v7 setPayloadName:v6];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746B330;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466E48];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466E60];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746B348;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466E78];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466E90];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746B360;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466EA8];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466EC0];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746B378;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466ED8];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466EF0];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746B390;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F08];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F20];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746B3A8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F38];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466F50];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelManagementOrganizationInformationDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Name" forKeyPath:@"payloadName" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Email" forKeyPath:@"payloadEmail" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"URL" forKeyPath:@"payloadURL" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Proof" forKeyPath:@"payloadProof" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelManagementOrganizationInformationDeclaration *)self payloadName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Name" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelManagementOrganizationInformationDeclaration *)self payloadEmail];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Email" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelManagementOrganizationInformationDeclaration *)self payloadURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"URL" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelManagementOrganizationInformationDeclaration *)self payloadProof];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__RMModelManagementOrganizationInformationDeclaration_serializePayloadWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Proof" value:v9 dictSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelManagementOrganizationInformationDeclaration;
  v4 = [(RMModelDeclarationBase *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadName copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_payloadEmail copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_payloadURL copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(RMModelManagementOrganizationInformationDeclaration_Proof *)self->_payloadProof copy];
  v12 = v4[9];
  v4[9] = v11;

  return v4;
}

@end