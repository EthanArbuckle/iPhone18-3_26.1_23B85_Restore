@interface WFWorkflowQuarantine
- (BOOL)isEqual:(id)equal;
- (WFWorkflowQuarantine)initWithSerializedData:(id)data;
- (WFWorkflowQuarantine)initWithSourceAppIdentifier:(id)identifier importDate:(id)date;
- (id)serializedData;
- (id)serializedRepresentation;
@end

@implementation WFWorkflowQuarantine

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sourceAppIdentifier = [(WFWorkflowQuarantine *)self sourceAppIdentifier];
      sourceAppIdentifier2 = [(WFWorkflowQuarantine *)v5 sourceAppIdentifier];
      if ([sourceAppIdentifier isEqualToString:sourceAppIdentifier2])
      {
        importDate = [(WFWorkflowQuarantine *)self importDate];
        importDate2 = [(WFWorkflowQuarantine *)v5 importDate];
        v10 = [importDate isEqualToDate:importDate2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)serializedRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"WFWorkflowQuarantineSourceApp";
  sourceAppIdentifier = [(WFWorkflowQuarantine *)self sourceAppIdentifier];
  v8[1] = @"WFWorkflowQuarantineImportDate";
  v9[0] = sourceAppIdentifier;
  importDate = [(WFWorkflowQuarantine *)self importDate];
  v9[1] = importDate;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)serializedData
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACC8];
  serializedRepresentation = [(WFWorkflowQuarantine *)self serializedRepresentation];
  v9 = 0;
  v4 = [v2 archivedDataWithRootObject:serializedRepresentation requiringSecureCoding:1 error:&v9];
  v5 = v9;

  if (!v4)
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[WFWorkflowQuarantine serializedData]";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to archive quarantine data: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (WFWorkflowQuarantine)initWithSerializedData:(id)data
{
  v4 = MEMORY[0x1E695DFD8];
  dataCopy = data;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v21 = 0;
  v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:dataCopy error:&v21];

  v10 = [v9 objectForKey:@"WFWorkflowQuarantineSourceApp"];
  v11 = objc_opt_class();
  v12 = WFEnforceClass(v10, v11);

  v13 = [v9 objectForKey:@"WFWorkflowQuarantineImportDate"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass(v13, v14);
  v16 = v15;
  if (v15)
  {
    date = v15;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v18 = date;

  if (v12)
  {
    self = [(WFWorkflowQuarantine *)self initWithSourceAppIdentifier:v12 importDate:v18];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFWorkflowQuarantine)initWithSourceAppIdentifier:(id)identifier importDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v9 = dateCopy;
  if (identifierCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowQuarantine.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"sourceAppIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFWorkflowQuarantine.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"importDate"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFWorkflowQuarantine;
  v10 = [(WFWorkflowQuarantine *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    sourceAppIdentifier = v10->_sourceAppIdentifier;
    v10->_sourceAppIdentifier = v11;

    objc_storeStrong(&v10->_importDate, date);
    v13 = v10;
  }

  return v10;
}

@end