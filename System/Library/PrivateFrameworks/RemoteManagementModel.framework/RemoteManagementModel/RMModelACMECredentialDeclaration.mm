@interface RMModelACMECredentialDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(id)a5 keyType:(id)a6 hardwareBound:(id)a7 subject:(id)a8;
+ (id)buildWithDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(id)a5 keyType:(id)a6 hardwareBound:(id)a7 subject:(id)a8 subjectAltName:(id)a9 usageFlags:(id)a10 extendedKeyUsage:(id)a11 attest:(id)a12;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelACMECredentialDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[10] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"DirectoryURL";
  v7[1] = @"ClientIdentifier";
  v7[2] = @"KeySize";
  v7[3] = @"KeyType";
  v7[4] = @"HardwareBound";
  v7[5] = @"Subject";
  v7[6] = @"SubjectAltName";
  v7[7] = @"UsageFlags";
  v7[8] = @"ExtendedKeyUsage";
  v7[9] = @"Attest";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:10];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(id)a5 keyType:(id)a6 hardwareBound:(id)a7 subject:(id)a8 subjectAltName:(id)a9 usageFlags:(id)a10 extendedKeyUsage:(id)a11 attest:(id)a12
{
  v30 = a12;
  v18 = a11;
  v29 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = objc_opt_new();
  [v26 setPayloadDirectoryURL:v25];

  [v26 setPayloadClientIdentifier:v24];
  [v26 setPayloadKeySize:v23];

  [v26 setPayloadKeyType:v22];
  [v26 setPayloadHardwareBound:v21];

  [v26 setPayloadSubject:v20];
  [v26 setPayloadSubjectAltName:v19];

  [v26 setPayloadUsageFlags:v29];
  [v26 setPayloadExtendedKeyUsage:v18];

  if (v30)
  {
    v27 = v30;
  }

  else
  {
    v27 = MEMORY[0x277CBEC28];
  }

  [v26 setPayloadAttest:{v27, v29}];

  return v26;
}

+ (id)buildRequiredOnlyWithDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(id)a5 keyType:(id)a6 hardwareBound:(id)a7 subject:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_new();
  [v19 setPayloadDirectoryURL:v18];

  [v19 setPayloadClientIdentifier:v17];
  [v19 setPayloadKeySize:v16];

  [v19 setPayloadKeyType:v15];
  [v19 setPayloadHardwareBound:v14];

  [v19 setPayloadSubject:v13];

  return v19;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelACMECredentialDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"DirectoryURL" forKeyPath:@"payloadDirectoryURL" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ClientIdentifier" forKeyPath:@"payloadClientIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"KeySize" forKeyPath:@"payloadKeySize" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"KeyType" forKeyPath:@"payloadKeyType" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"HardwareBound" forKeyPath:@"payloadHardwareBound" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Subject" forKeyPath:@"payloadSubject" validator:&__block_literal_global_6 isRequired:1 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"SubjectAltName" forKeyPath:@"payloadSubjectAltName" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]) && [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"UsageFlags" forKeyPath:@"payloadUsageFlags" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"ExtendedKeyUsage" forKeyPath:@"payloadExtendedKeyUsage" validator:&__block_literal_global_69 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"Attest" forKeyPath:@"payloadAttest" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];
  return v14;
}

uint64_t __79__RMModelACMECredentialDeclaration_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_19:
          v14 = 0;
          goto LABEL_21;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v18 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v17;
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v14 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_21:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __79__RMModelACMECredentialDeclaration_loadFromDictionary_serializationType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelACMECredentialDeclaration *)self payloadDirectoryURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DirectoryURL" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelACMECredentialDeclaration *)self payloadClientIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ClientIdentifier" value:v7 isRequired:1 defaultValue:0];

  v8 = [(RMModelACMECredentialDeclaration *)self payloadKeySize];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"KeySize" value:v8 isRequired:1 defaultValue:0];

  v9 = [(RMModelACMECredentialDeclaration *)self payloadKeyType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"KeyType" value:v9 isRequired:1 defaultValue:0];

  v10 = [(RMModelACMECredentialDeclaration *)self payloadHardwareBound];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"HardwareBound" value:v10 isRequired:1 defaultValue:0];

  v11 = [(RMModelACMECredentialDeclaration *)self payloadSubject];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Subject" value:v11 itemSerializer:&__block_literal_global_76 isRequired:1 defaultValue:0];

  v12 = [(RMModelACMECredentialDeclaration *)self payloadSubjectAltName];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__RMModelACMECredentialDeclaration_serializeWithType___block_invoke_2;
  v18[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v19 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SubjectAltName" value:v12 dictSerializer:v18 isRequired:0 defaultValue:0];

  v13 = [(RMModelACMECredentialDeclaration *)self payloadUsageFlags];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"UsageFlags" value:v13 isRequired:0 defaultValue:0];

  v14 = [(RMModelACMECredentialDeclaration *)self payloadExtendedKeyUsage];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"ExtendedKeyUsage" value:v14 itemSerializer:&__block_literal_global_80 isRequired:0 defaultValue:0];

  v15 = [(RMModelACMECredentialDeclaration *)self payloadAttest];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"Attest" value:v15 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v16 = [v5 copy];

  return v16;
}

id __54__RMModelACMECredentialDeclaration_serializeWithType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26.receiver = self;
  v26.super_class = RMModelACMECredentialDeclaration;
  v4 = [(RMModelPayloadBase *)&v26 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadDirectoryURL copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadClientIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadKeySize copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadKeyType copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_payloadHardwareBound copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSArray *)self->_payloadSubject copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(RMModelACMECredentialDeclaration_SubjectAltName *)self->_payloadSubjectAltName copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSNumber *)self->_payloadUsageFlags copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSArray *)self->_payloadExtendedKeyUsage copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(NSNumber *)self->_payloadAttest copy];
  v24 = v4[11];
  v4[11] = v23;

  return v4;
}

@end