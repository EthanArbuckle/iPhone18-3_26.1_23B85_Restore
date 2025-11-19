@interface SCKRecordFieldSchema
- (BOOL)isValidRecord:(id)a3;
- (SCKRecordFieldSchema)initWithName:(id)a3 valueClass:(Class)a4 required:(BOOL)a5 encrypted:(BOOL)a6;
@end

@implementation SCKRecordFieldSchema

- (SCKRecordFieldSchema)initWithName:(id)a3 valueClass:(Class)a4 required:(BOOL)a5 encrypted:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SCKRecordFieldSchema;
  v12 = [(SCKRecordFieldSchema *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_valueClass, a4);
    v13->_required = a5;
    v13->_encrypted = a6;
  }

  return v13;
}

- (BOOL)isValidRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 valuesByKey];
  v6 = [(SCKRecordFieldSchema *)self name];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v4 encryptedValuesByKey];

  v9 = [(SCKRecordFieldSchema *)self name];
  v10 = [v8 objectForKeyedSubscript:v9];

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