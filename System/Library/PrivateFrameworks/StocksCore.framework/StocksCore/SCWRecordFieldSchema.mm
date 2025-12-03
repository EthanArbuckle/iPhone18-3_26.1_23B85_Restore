@interface SCWRecordFieldSchema
- (BOOL)isValidRecord:(id)record;
- (SCWRecordFieldSchema)initWithName:(id)name valueClass:(Class)class required:(BOOL)required encrypted:(BOOL)encrypted;
@end

@implementation SCWRecordFieldSchema

- (SCWRecordFieldSchema)initWithName:(id)name valueClass:(Class)class required:(BOOL)required encrypted:(BOOL)encrypted
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = SCWRecordFieldSchema;
  v12 = [(SCWRecordFieldSchema *)&v15 init];
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
  name = [(SCWRecordFieldSchema *)self name];
  v7 = [valuesByKey objectForKeyedSubscript:name];

  encryptedValues = [recordCopy encryptedValues];

  name2 = [(SCWRecordFieldSchema *)self name];
  v10 = [encryptedValues objectForKeyedSubscript:name2];

  if (v7 | v10)
  {
    if ((![(SCWRecordFieldSchema *)self isEncrypted]|| v10) && ((v11 = [(SCWRecordFieldSchema *)self isEncrypted], v7) || v11))
    {
      [(SCWRecordFieldSchema *)self valueClass];
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        [(SCWRecordFieldSchema *)self valueClass];
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
    isKindOfClass = ![(SCWRecordFieldSchema *)self isRequired];
  }

  return isKindOfClass & 1;
}

@end