@interface SCKRecordFieldSchema
- (BOOL)isValidRecord:(id)record;
- (SCKRecordFieldSchema)initWithName:(id)name valueClass:(Class)class required:(BOOL)required encrypted:(BOOL)encrypted;
@end

@implementation SCKRecordFieldSchema

- (SCKRecordFieldSchema)initWithName:(id)name valueClass:(Class)class required:(BOOL)required encrypted:(BOOL)encrypted
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = SCKRecordFieldSchema;
  v12 = [(SCKRecordFieldSchema *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_valueClass, class);
    v13->_required = required;
    v13->_encrypted = encrypted;
  }

  return v13;
}

- (BOOL)isValidRecord:(id)record
{
  recordCopy = record;
  valuesByKey = [recordCopy valuesByKey];
  name = [(SCKRecordFieldSchema *)self name];
  v7 = [valuesByKey objectForKeyedSubscript:name];

  encryptedValuesByKey = [recordCopy encryptedValuesByKey];

  name2 = [(SCKRecordFieldSchema *)self name];
  v10 = [encryptedValuesByKey objectForKeyedSubscript:name2];

  if (v7 | v10)
  {
    if ((![(SCKRecordFieldSchema *)self isEncrypted]|| v10) && ((v11 = [(SCKRecordFieldSchema *)self isEncrypted], v7) || v11))
    {
      [(SCKRecordFieldSchema *)self valueClass];
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        [(SCKRecordFieldSchema *)self valueClass];
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = ![(SCKRecordFieldSchema *)self isRequired];
  }

  return isKindOfClass & 1;
}

@end