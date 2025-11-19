@interface SCWRecordFieldSchema
- (BOOL)isValidRecord:(id)a3;
- (SCWRecordFieldSchema)initWithName:(id)a3 valueClass:(Class)a4 required:(BOOL)a5 encrypted:(BOOL)a6;
@end

@implementation SCWRecordFieldSchema

- (SCWRecordFieldSchema)initWithName:(id)a3 valueClass:(Class)a4 required:(BOOL)a5 encrypted:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SCWRecordFieldSchema;
  v12 = [(SCWRecordFieldSchema *)&v15 init];
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
  v6 = [(SCWRecordFieldSchema *)self name];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v4 encryptedValues];

  v9 = [(SCWRecordFieldSchema *)self name];
  v10 = [v8 objectForKeyedSubscript:v9];

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