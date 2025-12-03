@interface TRIFactorNamespaceRecord
+ (id)factorRecordWithFactorName:(id)name namespaceName:(id)namespaceName;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFactorRecord:(id)record;
- (TRIFactorNamespaceRecord)initWithFactorName:(id)name namespaceName:(id)namespaceName;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementNamespaceName:(id)name;
- (id)description;
@end

@implementation TRIFactorNamespaceRecord

- (TRIFactorNamespaceRecord)initWithFactorName:(id)name namespaceName:(id)namespaceName
{
  nameCopy = name;
  namespaceNameCopy = namespaceName;
  v10 = namespaceNameCopy;
  if (nameCopy)
  {
    if (namespaceNameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4491 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4492 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIFactorNamespaceRecord;
  v11 = [(TRIFactorNamespaceRecord *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_factorName, name);
    objc_storeStrong(&v12->_namespaceName, namespaceName);
  }

  return v12;
}

+ (id)factorRecordWithFactorName:(id)name namespaceName:(id)namespaceName
{
  namespaceNameCopy = namespaceName;
  nameCopy = name;
  v8 = [[self alloc] initWithFactorName:nameCopy namespaceName:namespaceNameCopy];

  return v8;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy namespaceName:self->_namespaceName];

  return v5;
}

- (id)copyWithReplacementNamespaceName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName namespaceName:nameCopy];

  return v5;
}

- (BOOL)isEqualToFactorRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_factorName == 0;
  factorName = [recordCopy factorName];
  v8 = factorName != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    factorName2 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:factorName2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_namespaceName == 0;
  namespaceName = [v5 namespaceName];
  v14 = namespaceName != 0;

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
      namespaceName2 = [v5 namespaceName];
      v17 = [(NSString *)namespaceName isEqual:namespaceName2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorNamespaceRecord *)self isEqualToFactorRecord:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorNamespaceRecord | factorName:%@ namespaceName:%@>", self->_factorName, self->_namespaceName];

  return v2;
}

@end