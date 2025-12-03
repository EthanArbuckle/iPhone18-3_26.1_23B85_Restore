@interface TRINamespaceRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRINamespaceRecord)initWithCoder:(id)coder;
- (TRINamespaceRecord)initWithName:(id)name compatibilityVersion:(unsigned int)version treatmentURL:(id)l;
- (id)copyWithReplacementName:(id)name;
- (id)copyWithReplacementTreatmentURL:(id)l;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRINamespaceRecord

- (TRINamespaceRecord)initWithName:(id)name compatibilityVersion:(unsigned int)version treatmentURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:503 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v16.receiver = self;
  v16.super_class = TRINamespaceRecord;
  v12 = [(TRINamespaceRecord *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    v13->_compatibilityVersion = version;
    objc_storeStrong(&v13->_treatmentURL, l);
  }

  return v13;
}

- (id)copyWithReplacementName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithName:nameCopy compatibilityVersion:self->_compatibilityVersion treatmentURL:self->_treatmentURL];

  return v5;
}

- (id)copyWithReplacementTreatmentURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(objc_opt_class()) initWithName:self->_name compatibilityVersion:self->_compatibilityVersion treatmentURL:lCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_9;
  }

  v6 = self->_name == 0;
  name = [recordCopy name];
  v8 = name != 0;

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  name = self->_name;
  if (name)
  {
    name2 = [v5 name];
    v11 = [(NSString *)name isEqual:name2];

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
      treatmentURL = [v5 treatmentURL];
      v18 = [(NSURL *)treatmentURL isEqual:treatmentURL];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRINamespaceRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = self->_compatibilityVersion - v3 + 32 * v3;
  return [(NSURL *)self->_treatmentURL hash]- v4 + 32 * v4;
}

- (TRINamespaceRecord)initWithCoder:(id)coder
{
  v21[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (!v5)
  {
    error = [coderCopy error];

    if (!error)
    {
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"Retrieved nil serialized value for nonnull TRINamespaceRecord.name";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = 2;
LABEL_10:
      v14 = [v11 initWithDomain:@"TRINamespaceRecordOCNTErrorDomain" code:v12 userInfo:v10];
      [coderCopy failWithError:v14];
    }

LABEL_11:
    selfCopy = 0;
    goto LABEL_15;
  }

  v6 = [coderCopy decodeInt64ForKey:@"compatibilityVersion"];
  if (v6)
  {
    goto LABEL_3;
  }

  error2 = [coderCopy error];

  if (error2)
  {
    goto LABEL_11;
  }

  if (([coderCopy containsValueForKey:@"compatibilityVersion"] & 1) == 0)
  {
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Missing serialized value for TRINamespaceRecord.compatibilityVersion";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = 1;
    goto LABEL_10;
  }

LABEL_3:
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatmentURL"];
  if (v7 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    self = [(TRINamespaceRecord *)self initWithName:v5 compatibilityVersion:v6 treatmentURL:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
  }

  [coderCopy encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  treatmentURL = self->_treatmentURL;
  if (treatmentURL)
  {
    [coderCopy encodeObject:treatmentURL forKey:@"treatmentURL"];
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