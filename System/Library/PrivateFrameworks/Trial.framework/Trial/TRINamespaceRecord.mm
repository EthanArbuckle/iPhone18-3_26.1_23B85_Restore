@interface TRINamespaceRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRINamespaceRecord)initWithCoder:(id)a3;
- (TRINamespaceRecord)initWithName:(id)a3 compatibilityVersion:(unsigned int)a4 treatmentURL:(id)a5;
- (id)copyWithReplacementName:(id)a3;
- (id)copyWithReplacementTreatmentURL:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRINamespaceRecord

- (TRINamespaceRecord)initWithName:(id)a3 compatibilityVersion:(unsigned int)a4 treatmentURL:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v16.receiver = self;
  v16.super_class = TRINamespaceRecord;
  v12 = [(TRINamespaceRecord *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    v13->_compatibilityVersion = a4;
    objc_storeStrong(&v13->_treatmentURL, a5);
  }

  return v13;
}

- (id)copyWithReplacementName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithName:v4 compatibilityVersion:self->_compatibilityVersion treatmentURL:self->_treatmentURL];

  return v5;
}

- (id)copyWithReplacementTreatmentURL:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithName:self->_name compatibilityVersion:self->_compatibilityVersion treatmentURL:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = self->_name == 0;
  v7 = [v4 name];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  name = self->_name;
  if (name)
  {
    v10 = [v5 name];
    v11 = [(NSString *)name isEqual:v10];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  compatibilityVersion = self->_compatibilityVersion;
  if (compatibilityVersion != [v5 compatibilityVersion] || (v13 = self->_treatmentURL == 0, objc_msgSend(v5, "treatmentURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15))
  {
LABEL_9:
    v18 = 0;
  }

  else
  {
    treatmentURL = self->_treatmentURL;
    if (treatmentURL)
    {
      v17 = [v5 treatmentURL];
      v18 = [(NSURL *)treatmentURL isEqual:v17];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRINamespaceRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = self->_compatibilityVersion - v3 + 32 * v3;
  return [(NSURL *)self->_treatmentURL hash]- v4 + 32 * v4;
}

- (TRINamespaceRecord)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (!v5)
  {
    v9 = [v4 error];

    if (!v9)
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"Retrieved nil serialized value for nonnull TRINamespaceRecord.name";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = 2;
LABEL_10:
      v14 = [v11 initWithDomain:@"TRINamespaceRecordOCNTErrorDomain" code:v12 userInfo:v10];
      [v4 failWithError:v14];
    }

LABEL_11:
    v8 = 0;
    goto LABEL_15;
  }

  v6 = [v4 decodeInt64ForKey:@"compatibilityVersion"];
  if (v6)
  {
    goto LABEL_3;
  }

  v13 = [v4 error];

  if (v13)
  {
    goto LABEL_11;
  }

  if (([v4 containsValueForKey:@"compatibilityVersion"] & 1) == 0)
  {
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Missing serialized value for TRINamespaceRecord.compatibilityVersion";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = 1;
    goto LABEL_10;
  }

LABEL_3:
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentURL"];
  if (v7 || ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    self = [(TRINamespaceRecord *)self initWithName:v5 compatibilityVersion:v6 treatmentURL:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  name = self->_name;
  if (name)
  {
    [v6 encodeObject:name forKey:@"name"];
  }

  [v6 encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  treatmentURL = self->_treatmentURL;
  if (treatmentURL)
  {
    [v6 encodeObject:treatmentURL forKey:@"treatmentURL"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = self->_name;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_compatibilityVersion];
  v6 = [v3 initWithFormat:@"<TRINamespaceRecord | name:%@ compatibilityVersion:%@ treatmentURL:%@>", name, v5, self->_treatmentURL];

  return v6;
}

@end