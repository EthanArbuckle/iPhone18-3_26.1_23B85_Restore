@interface TRIActiveEnvVarExperiment
+ (id)envVarExperimentWithTargetedBundleIds:(id)a3 factorLevelStrings:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToenvVarExperiment:(id)a3;
- (TRIActiveEnvVarExperiment)initWithCoder:(id)a3;
- (TRIActiveEnvVarExperiment)initWithTargetedBundleIds:(id)a3 factorLevelStrings:(id)a4;
- (id)copyWithReplacementFactorLevelStrings:(id)a3;
- (id)copyWithReplacementTargetedBundleIds:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIActiveEnvVarExperiment

- (TRIActiveEnvVarExperiment)initWithTargetedBundleIds:(id)a3 factorLevelStrings:(id)a4
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
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4700 description:{@"Invalid parameter not satisfying: %@", @"targetedBundleIds != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4701 description:{@"Invalid parameter not satisfying: %@", @"factorLevelStrings != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIActiveEnvVarExperiment;
  v11 = [(TRIActiveEnvVarExperiment *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_targetedBundleIds, a3);
    objc_storeStrong(&v12->_factorLevelStrings, a4);
  }

  return v12;
}

+ (id)envVarExperimentWithTargetedBundleIds:(id)a3 factorLevelStrings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTargetedBundleIds:v7 factorLevelStrings:v6];

  return v8;
}

- (id)copyWithReplacementTargetedBundleIds:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTargetedBundleIds:v4 factorLevelStrings:self->_factorLevelStrings];

  return v5;
}

- (id)copyWithReplacementFactorLevelStrings:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTargetedBundleIds:self->_targetedBundleIds factorLevelStrings:v4];

  return v5;
}

- (BOOL)isEqualToenvVarExperiment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_targetedBundleIds == 0;
  v7 = [v4 targetedBundleIds];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  targetedBundleIds = self->_targetedBundleIds;
  if (targetedBundleIds)
  {
    v10 = [v5 targetedBundleIds];
    v11 = [(NSArray *)targetedBundleIds isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_factorLevelStrings == 0;
  v13 = [v5 factorLevelStrings];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    factorLevelStrings = self->_factorLevelStrings;
    if (factorLevelStrings)
    {
      v16 = [v5 factorLevelStrings];
      v17 = [(NSArray *)factorLevelStrings isEqual:v16];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIActiveEnvVarExperiment *)self isEqualToenvVarExperiment:v5];
  }

  return v6;
}

- (TRIActiveEnvVarExperiment)initWithCoder:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"targetedBundleIds"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc(MEMORY[0x277CBEB98]);
      v10 = objc_opt_class();
      v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"factorLevelStrings"];

      if (!v12)
      {
        v21 = [v4 error];

        if (!v21)
        {
          v31 = *MEMORY[0x277CCA450];
          v32 = @"Retrieved nil serialized value for nonnull TRIActiveEnvVarExperiment.factorLevelStrings";
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:2 userInfo:v22];
          [v4 failWithError:v23];
        }

        v12 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = [(TRIActiveEnvVarExperiment *)self initWithTargetedBundleIds:v8 factorLevelStrings:v12];
        v13 = self;
LABEL_17:

        goto LABEL_18;
      }

      v24 = objc_opt_class();
      v17 = NSStringFromClass(v24);
      v25 = objc_opt_class();
      v18 = NSStringFromClass(v25);
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIActiveEnvVarExperiment key factorLevelStrings (expected %@, decoded %@)", v17, v18, 0];
      v29 = *MEMORY[0x277CCA450];
      v30 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:3 userInfo:v20];
      [v4 failWithError:v26];
    }

    else
    {
      v15 = objc_opt_class();
      v12 = NSStringFromClass(v15);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIActiveEnvVarExperiment key targetedBundleIds (expected %@, decoded %@)", v12, v17, 0];
      v33 = *MEMORY[0x277CCA450];
      v34 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:3 userInfo:v19];
      [v4 failWithError:v20];
    }

LABEL_15:
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v14 = [v4 error];

  if (!v14)
  {
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Retrieved nil serialized value for nonnull TRIActiveEnvVarExperiment.targetedBundleIds";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:2 userInfo:v12];
    [v4 failWithError:v17];
    goto LABEL_15;
  }

  v13 = 0;
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  targetedBundleIds = self->_targetedBundleIds;
  v7 = v4;
  if (targetedBundleIds)
  {
    [v4 encodeObject:targetedBundleIds forKey:@"targetedBundleIds"];
    v4 = v7;
  }

  factorLevelStrings = self->_factorLevelStrings;
  if (factorLevelStrings)
  {
    [v7 encodeObject:factorLevelStrings forKey:@"factorLevelStrings"];
    v4 = v7;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIActiveEnvVarExperiment | targetedBundleIds:%@ factorLevelStrings:%@>", self->_targetedBundleIds, self->_factorLevelStrings];

  return v2;
}

@end