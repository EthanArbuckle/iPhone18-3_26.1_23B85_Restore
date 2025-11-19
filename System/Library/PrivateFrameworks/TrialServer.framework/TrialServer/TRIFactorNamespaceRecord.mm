@interface TRIFactorNamespaceRecord
+ (id)factorRecordWithFactorName:(id)a3 namespaceName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFactorRecord:(id)a3;
- (TRIFactorNamespaceRecord)initWithFactorName:(id)a3 namespaceName:(id)a4;
- (id)copyWithReplacementFactorName:(id)a3;
- (id)copyWithReplacementNamespaceName:(id)a3;
- (id)description;
@end

@implementation TRIFactorNamespaceRecord

- (TRIFactorNamespaceRecord)initWithFactorName:(id)a3 namespaceName:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4491 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4492 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIFactorNamespaceRecord;
  v11 = [(TRIFactorNamespaceRecord *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_factorName, a3);
    objc_storeStrong(&v12->_namespaceName, a4);
  }

  return v12;
}

+ (id)factorRecordWithFactorName:(id)a3 namespaceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFactorName:v7 namespaceName:v6];

  return v8;
}

- (id)copyWithReplacementFactorName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:v4 namespaceName:self->_namespaceName];

  return v5;
}

- (id)copyWithReplacementNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName namespaceName:v4];

  return v5;
}

- (BOOL)isEqualToFactorRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_factorName == 0;
  v7 = [v4 factorName];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    v10 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_namespaceName == 0;
  v13 = [v5 namespaceName];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    namespaceName = self->_namespaceName;
    if (namespaceName)
    {
      v16 = [v5 namespaceName];
      v17 = [(NSString *)namespaceName isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorNamespaceRecord *)self isEqualToFactorRecord:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorNamespaceRecord | factorName:%@ namespaceName:%@>", self->_factorName, self->_namespaceName];

  return v2;
}

@end