@interface SESDesignatedKey
+ (id)fromDictionary:(id)dictionary;
+ (id)withAID:(id)d slotNumber:(int64_t)number keyIdentifier:(id)identifier assetACL:(id)l assetACLAttestation:(id)attestation operationApprovalVersion:(int64_t)version designation:(int64_t)designation;
- (id)asDictionary;
@end

@implementation SESDesignatedKey

+ (id)withAID:(id)d slotNumber:(int64_t)number keyIdentifier:(id)identifier assetACL:(id)l assetACLAttestation:(id)attestation operationApprovalVersion:(int64_t)version designation:(int64_t)designation
{
  dCopy = d;
  identifierCopy = identifier;
  lCopy = l;
  attestationCopy = attestation;
  v18 = objc_opt_new();
  v19 = v18[3];
  v18[3] = dCopy;
  v20 = dCopy;

  v18[4] = number;
  v21 = v18[2];
  v18[2] = identifierCopy;
  v22 = identifierCopy;

  v23 = v18[5];
  v18[5] = lCopy;
  v24 = lCopy;

  v25 = v18[6];
  v18[6] = attestationCopy;

  v18[7] = version;
  v18[1] = designation;

  return v18;
}

+ (id)fromDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"AID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"slotNumber"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = @"slotNumber";
        _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
      }

      v12 = 0;
      goto LABEL_34;
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"keyIdentifier"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = SESDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = @"keyIdentifier";
        _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
      }

      v12 = 0;
      goto LABEL_33;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetACL"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = SESDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = @"assetACL";
        _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
      }

      v12 = 0;
      goto LABEL_32;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"assetACLAttestation"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = @"assetACLAttestation";
        _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
      }

      v12 = 0;
      goto LABEL_31;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"oaVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"designation"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((v4 + 24), v5);
        *(v4 + 32) = [v6 integerValue];
        objc_storeStrong((v4 + 16), v7);
        objc_storeStrong((v4 + 40), v8);
        objc_storeStrong((v4 + 48), v9);
        *(v4 + 56) = [v10 integerValue];
        *(v4 + 8) = [v11 integerValue];
        v12 = v4;
LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:
LABEL_34:

        goto LABEL_35;
      }

      v13 = SESDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = @"designation";
        _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
      }
    }

    else
    {
      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2112;
        v19 = @"oaVersion";
        _os_log_impl(&dword_1C7B9A000, v11, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
      }
    }

    v12 = 0;
    goto LABEL_30;
  }

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v16 = 138412546;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = @"AID";
    _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_FAULT, "Wrong type (%@) for key (%@)", &v16, 0x16u);
  }

  v12 = 0;
LABEL_35:

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)asDictionary
{
  v13[7] = *MEMORY[0x1E69E9840];
  slotNumber = self->_slotNumber;
  v13[0] = self->_aid;
  v12[0] = @"AID";
  v12[1] = @"slotNumber";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:slotNumber];
  keyIdentifier = self->_keyIdentifier;
  v13[1] = v4;
  v13[2] = keyIdentifier;
  v12[2] = @"keyIdentifier";
  v12[3] = @"assetACL";
  assetACLAttestation = self->_assetACLAttestation;
  v13[3] = self->_assetACL;
  v13[4] = assetACLAttestation;
  v12[4] = @"assetACLAttestation";
  v12[5] = @"oaVersion";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_operationApprovalVersion];
  v13[5] = v7;
  v12[6] = @"designation";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_designation];
  v13[6] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end