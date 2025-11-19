@interface TRIFullMAAssetId
+ (id)identWithType:(id)a3 specifier:(id)a4 version:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdent:(id)a3;
- (TRIFullMAAssetId)initWithCoder:(id)a3;
- (TRIFullMAAssetId)initWithType:(id)a3 specifier:(id)a4 version:(id)a5;
- (id)copyWithReplacementSpecifier:(id)a3;
- (id)copyWithReplacementType:(id)a3;
- (id)copyWithReplacementVersion:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIFullMAAssetId

- (TRIFullMAAssetId)initWithType:(id)a3 specifier:(id)a4 version:(id)a5
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
    [v17 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2594 description:{@"Invalid parameter not satisfying: %@", @"specifier != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2593 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];

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
  [v18 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2595 description:{@"Invalid parameter not satisfying: %@", @"version != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRIFullMAAssetId;
  v13 = [(TRIFullMAAssetId *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_type, a3);
    objc_storeStrong(&v14->_specifier, a4);
    objc_storeStrong(&v14->_version, a5);
  }

  return v14;
}

+ (id)identWithType:(id)a3 specifier:(id)a4 version:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithType:v10 specifier:v9 version:v8];

  return v11;
}

- (id)copyWithReplacementType:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:v4 specifier:self->_specifier version:self->_version];

  return v5;
}

- (id)copyWithReplacementSpecifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type specifier:v4 version:self->_version];

  return v5;
}

- (id)copyWithReplacementVersion:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type specifier:self->_specifier version:v4];

  return v5;
}

- (BOOL)isEqualToIdent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_type == 0;
  v7 = [v4 type];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  type = self->_type;
  if (type)
  {
    v10 = [v5 type];
    v11 = [(NSString *)type isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_specifier == 0;
  v13 = [v5 specifier];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  specifier = self->_specifier;
  if (specifier)
  {
    v16 = [v5 specifier];
    v17 = [(NSString *)specifier isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_version == 0;
  v19 = [v5 version];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    version = self->_version;
    if (version)
    {
      v22 = [v5 version];
      v23 = [(NSString *)version isEqual:v22];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFullMAAssetId *)self isEqualToIdent:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_type hash];
  v4 = [(NSString *)self->_specifier hash]- v3 + 32 * v3;
  return [(NSString *)self->_version hash]- v4 + 32 * v4;
}

- (TRIFullMAAssetId)initWithCoder:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = objc_opt_class();
    if (isKindOfClass)
    {
      v8 = [v4 decodeObjectOfClass:v7 forKey:@"specifier"];
      if (!v8)
      {
        v20 = [v4 error];

        if (v20)
        {
          v9 = 0;
          v14 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v38 = *MEMORY[0x277CCA450];
        v39 = @"Retrieved nil serialized value for nonnull TRIFullMAAssetId.specifier";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFullMAAssetIdOCNTErrorDomain" code:2 userInfo:v13];
        [v4 failWithError:v23];

        v9 = 0;
        goto LABEL_22;
      }

      v9 = v8;
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();
      v11 = objc_opt_class();
      if (v10)
      {
        v12 = [v4 decodeObjectOfClass:v11 forKey:@"version"];
        if (!v12)
        {
          v24 = [v4 error];

          if (!v24)
          {
            v34 = *MEMORY[0x277CCA450];
            v35 = @"Retrieved nil serialized value for nonnull TRIFullMAAssetId.version";
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFullMAAssetIdOCNTErrorDomain" code:2 userInfo:v25];
            [v4 failWithError:v26];
          }

          v13 = 0;
          goto LABEL_22;
        }

        v13 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self = [(TRIFullMAAssetId *)self initWithType:v5 specifier:v9 version:v13];
          v14 = self;
LABEL_23:

          goto LABEL_24;
        }

        v27 = objc_opt_class();
        v17 = NSStringFromClass(v27);
        v28 = objc_opt_class();
        v18 = NSStringFromClass(v28);
        v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIFullMAAssetId key version (expected %@, decoded %@)", v17, v18, 0];
        v32 = *MEMORY[0x277CCA450];
        v33 = v19;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFullMAAssetIdOCNTErrorDomain" code:3 userInfo:v22];
        [v4 failWithError:v29];
      }

      else
      {
        v13 = NSStringFromClass(v11);
        v21 = objc_opt_class();
        v17 = NSStringFromClass(v21);
        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIFullMAAssetId key specifier (expected %@, decoded %@)", v13, v17, 0];
        v36 = *MEMORY[0x277CCA450];
        v37 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFullMAAssetIdOCNTErrorDomain" code:3 userInfo:v19];
        [v4 failWithError:v22];
      }
    }

    else
    {
      v9 = NSStringFromClass(v7);
      v16 = objc_opt_class();
      v13 = NSStringFromClass(v16);
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIFullMAAssetId key type (expected %@, decoded %@)", v9, v13, 0];
      v40 = *MEMORY[0x277CCA450];
      v41 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFullMAAssetIdOCNTErrorDomain" code:3 userInfo:v18];
      [v4 failWithError:v19];
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v15 = [v4 error];

  if (!v15)
  {
    v42 = *MEMORY[0x277CCA450];
    v43[0] = @"Retrieved nil serialized value for nonnull TRIFullMAAssetId.type";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFullMAAssetIdOCNTErrorDomain" code:2 userInfo:v9];
    [v4 failWithError:v13];
    goto LABEL_22;
  }

  v14 = 0;
LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  type = self->_type;
  v8 = v4;
  if (type)
  {
    [v4 encodeObject:type forKey:@"type"];
    v4 = v8;
  }

  specifier = self->_specifier;
  if (specifier)
  {
    [v8 encodeObject:specifier forKey:@"specifier"];
    v4 = v8;
  }

  version = self->_version;
  if (version)
  {
    [v8 encodeObject:version forKey:@"version"];
    v4 = v8;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFullMAAssetId | type:%@ specifier:%@ version:%@>", self->_type, self->_specifier, self->_version];

  return v2;
}

@end