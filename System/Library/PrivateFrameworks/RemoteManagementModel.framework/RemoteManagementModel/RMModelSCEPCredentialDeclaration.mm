@interface RMModelSCEPCredentialDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithURL:(id)a3;
+ (id)buildWithURL:(id)a3 name:(id)a4 subject:(id)a5 challenge:(id)a6 keysize:(id)a7 keyType:(id)a8 keyUsage:(id)a9 caFingerprint:(id)a10 retries:(id)a11 retryDelay:(id)a12 subjectAltName:(id)a13;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMModelSCEPCredentialDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"URL";
  v7[1] = @"Name";
  v7[2] = @"Subject";
  v7[3] = @"Challenge";
  v7[4] = @"Keysize";
  v7[5] = @"Key Type";
  v7[6] = @"Key Usage";
  v7[7] = @"CAFingerprint";
  v7[8] = @"Retries";
  v7[9] = @"RetryDelay";
  v7[10] = @"SubjectAltName";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:11];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithURL:(id)a3 name:(id)a4 subject:(id)a5 challenge:(id)a6 keysize:(id)a7 keyType:(id)a8 keyUsage:(id)a9 caFingerprint:(id)a10 retries:(id)a11 retryDelay:(id)a12 subjectAltName:(id)a13
{
  v36 = a13;
  v35 = a12;
  v18 = a11;
  v34 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = objc_opt_new();
  [v26 setPayloadURL:v25];

  [v26 setPayloadName:v24];
  [v26 setPayloadSubject:v23];

  [v26 setPayloadChallenge:v22];
  if (v21)
  {
    v27 = v21;
  }

  else
  {
    v27 = &unk_28746B870;
  }

  [v26 setPayloadKeysize:{v27, a3}];

  if (v20)
  {
    v28 = v20;
  }

  else
  {
    v28 = @"RSA";
  }

  [v26 setPayloadKeyType:v28];

  if (v19)
  {
    v29 = v19;
  }

  else
  {
    v29 = &unk_28746B888;
  }

  [v26 setPayloadKeyUsage:v29];

  [v26 setPayloadCAFingerprint:v34];
  if (v18)
  {
    v30 = v18;
  }

  else
  {
    v30 = &unk_28746B8A0;
  }

  [v26 setPayloadRetries:v30];

  if (v35)
  {
    v31 = v35;
  }

  else
  {
    v31 = &unk_28746B8B8;
  }

  [v26 setPayloadRetryDelay:v31];

  [v26 setPayloadSubjectAltName:v36];

  return v26;
}

+ (id)buildRequiredOnlyWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadURL:v3];

  return v4;
}

uint64_t __79__RMModelSCEPCredentialDeclaration_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
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

id __54__RMModelSCEPCredentialDeclaration_serializeWithType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = RMModelSCEPCredentialDeclaration;
  v4 = [(RMModelPayloadBase *)&v28 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadURL copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadSubject copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadChallenge copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_payloadKeysize copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_payloadKeyType copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSNumber *)self->_payloadKeyUsage copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSData *)self->_payloadCAFingerprint copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSNumber *)self->_payloadRetries copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(NSNumber *)self->_payloadRetryDelay copy];
  v24 = v4[11];
  v4[11] = v23;

  v25 = [(RMModelSCEPCredentialDeclaration_SubjectAltName *)self->_payloadSubjectAltName copy];
  v26 = v4[12];
  v4[12] = v25;

  return v4;
}

@end