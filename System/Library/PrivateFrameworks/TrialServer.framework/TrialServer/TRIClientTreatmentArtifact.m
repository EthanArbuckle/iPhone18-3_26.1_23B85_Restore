@interface TRIClientTreatmentArtifact
+ (id)artifactWithEncodedTreatmentDefinition:(id)a3 encodedTreatmentDefinitionSignature:(id)a4 publicCertificate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToArtifact:(id)a3;
- (BOOL)isValidWithTreatmentId:(id)a3;
- (TRIClientTreatmentArtifact)initWithEncodedTreatmentDefinition:(id)a3 encodedTreatmentDefinitionSignature:(id)a4 publicCertificate:(id)a5;
- (id)copyWithReplacementEncodedTreatmentDefinition:(id)a3;
- (id)copyWithReplacementEncodedTreatmentDefinitionSignature:(id)a3;
- (id)copyWithReplacementPublicCertificate:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIClientTreatmentArtifact

- (BOOL)isValidWithTreatmentId:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277D73AF0];
  v8 = [(TRIClientTreatmentArtifact *)self encodedTreatmentDefinition];
  v26 = 0;
  v9 = [v7 parseFromData:v8 error:&v26];
  v10 = v26;

  if (v9)
  {
    if ([v9 hasTreatmentId])
    {
      v11 = [v9 treatmentId];
      v12 = [v5 isEqualToString:v11];

      if (v12)
      {
        v13 = [(TRIClientTreatmentArtifact *)self publicCertificate];
        if (!v13)
        {
          v25 = [MEMORY[0x277CCA890] currentHandler];
          [v25 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentArtifact+Util.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"pubCert"}];
        }

        v14 = [TRISignatureKey keyFromData:v13];
        if (v14)
        {
          v15 = [(TRIClientTreatmentArtifact *)self encodedTreatmentDefinitionSignature];
          v16 = [(TRIClientTreatmentArtifact *)self encodedTreatmentDefinition];
          v17 = [v14 validateBase64Signature:v15 data:v16];

          if (v17)
          {
            v18 = 1;
LABEL_18:

            goto LABEL_13;
          }

          v24 = TRILogCategory_Server();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v5;
            _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Invalid treatment record signature with id %@", buf, 0xCu);
          }
        }

        v18 = 0;
        goto LABEL_18;
      }
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "TRIClientTreatment has nil or mismatched treatmentId";
      v20 = v13;
      v21 = 2;
LABEL_20:
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v10;
      v19 = "Unable to parse TRIClientTreatment from encoded definition: %@";
      v20 = v13;
      v21 = 12;
      goto LABEL_20;
    }
  }

  v18 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v6);
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (TRIClientTreatmentArtifact)initWithEncodedTreatmentDefinition:(id)a3 encodedTreatmentDefinitionSignature:(id)a4 publicCertificate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1111 description:{@"Invalid parameter not satisfying: %@", @"encodedTreatmentDefinitionSignature != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1110 description:{@"Invalid parameter not satisfying: %@", @"encodedTreatmentDefinition != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1112 description:{@"Invalid parameter not satisfying: %@", @"publicCertificate != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRIClientTreatmentArtifact;
  v13 = [(TRIClientTreatmentArtifact *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_encodedTreatmentDefinition, a3);
    objc_storeStrong(&v14->_encodedTreatmentDefinitionSignature, a4);
    objc_storeStrong(&v14->_publicCertificate, a5);
  }

  return v14;
}

+ (id)artifactWithEncodedTreatmentDefinition:(id)a3 encodedTreatmentDefinitionSignature:(id)a4 publicCertificate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithEncodedTreatmentDefinition:v10 encodedTreatmentDefinitionSignature:v9 publicCertificate:v8];

  return v11;
}

- (id)copyWithReplacementEncodedTreatmentDefinition:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEncodedTreatmentDefinition:v4 encodedTreatmentDefinitionSignature:self->_encodedTreatmentDefinitionSignature publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementEncodedTreatmentDefinitionSignature:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEncodedTreatmentDefinition:self->_encodedTreatmentDefinition encodedTreatmentDefinitionSignature:v4 publicCertificate:self->_publicCertificate];

  return v5;
}

- (id)copyWithReplacementPublicCertificate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEncodedTreatmentDefinition:self->_encodedTreatmentDefinition encodedTreatmentDefinitionSignature:self->_encodedTreatmentDefinitionSignature publicCertificate:v4];

  return v5;
}

- (BOOL)isEqualToArtifact:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_encodedTreatmentDefinition == 0;
  v7 = [v4 encodedTreatmentDefinition];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  encodedTreatmentDefinition = self->_encodedTreatmentDefinition;
  if (encodedTreatmentDefinition)
  {
    v10 = [v5 encodedTreatmentDefinition];
    v11 = [(NSData *)encodedTreatmentDefinition isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_encodedTreatmentDefinitionSignature == 0;
  v13 = [v5 encodedTreatmentDefinitionSignature];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  encodedTreatmentDefinitionSignature = self->_encodedTreatmentDefinitionSignature;
  if (encodedTreatmentDefinitionSignature)
  {
    v16 = [v5 encodedTreatmentDefinitionSignature];
    v17 = [(NSString *)encodedTreatmentDefinitionSignature isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_publicCertificate == 0;
  v19 = [v5 publicCertificate];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    publicCertificate = self->_publicCertificate;
    if (publicCertificate)
    {
      v22 = [v5 publicCertificate];
      v23 = [(NSData *)publicCertificate isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIClientTreatmentArtifact *)self isEqualToArtifact:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encodedTreatmentDefinition hash];
  v4 = [(NSString *)self->_encodedTreatmentDefinitionSignature hash]- v3 + 32 * v3;
  return [(NSData *)self->_publicCertificate hash]- v4 + 32 * v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIClientTreatmentArtifact | encodedTreatmentDefinition:%@ encodedTreatmentDefinitionSignature:%@ publicCertificate:%@>", self->_encodedTreatmentDefinition, self->_encodedTreatmentDefinitionSignature, self->_publicCertificate];

  return v2;
}

@end