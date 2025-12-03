@interface TRIActiveEnvVarExperiment
+ (id)envVarExperimentWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToenvVarExperiment:(id)experiment;
- (TRIActiveEnvVarExperiment)initWithCoder:(id)coder;
- (TRIActiveEnvVarExperiment)initWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings;
- (id)copyWithReplacementFactorLevelStrings:(id)strings;
- (id)copyWithReplacementTargetedBundleIds:(id)ids;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIActiveEnvVarExperiment

- (TRIActiveEnvVarExperiment)initWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings
{
  idsCopy = ids;
  stringsCopy = strings;
  v10 = stringsCopy;
  if (idsCopy)
  {
    if (stringsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4700 description:{@"Invalid parameter not satisfying: %@", @"targetedBundleIds != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4701 description:{@"Invalid parameter not satisfying: %@", @"factorLevelStrings != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIActiveEnvVarExperiment;
  v11 = [(TRIActiveEnvVarExperiment *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_targetedBundleIds, ids);
    objc_storeStrong(&v12->_factorLevelStrings, strings);
  }

  return v12;
}

+ (id)envVarExperimentWithTargetedBundleIds:(id)ids factorLevelStrings:(id)strings
{
  stringsCopy = strings;
  idsCopy = ids;
  v8 = [[self alloc] initWithTargetedBundleIds:idsCopy factorLevelStrings:stringsCopy];

  return v8;
}

- (id)copyWithReplacementTargetedBundleIds:(id)ids
{
  idsCopy = ids;
  v5 = [objc_alloc(objc_opt_class()) initWithTargetedBundleIds:idsCopy factorLevelStrings:self->_factorLevelStrings];

  return v5;
}

- (id)copyWithReplacementFactorLevelStrings:(id)strings
{
  stringsCopy = strings;
  v5 = [objc_alloc(objc_opt_class()) initWithTargetedBundleIds:self->_targetedBundleIds factorLevelStrings:stringsCopy];

  return v5;
}

- (BOOL)isEqualToenvVarExperiment:(id)experiment
{
  experimentCopy = experiment;
  v5 = experimentCopy;
  if (!experimentCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_targetedBundleIds == 0;
  targetedBundleIds = [experimentCopy targetedBundleIds];
  v8 = targetedBundleIds != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  targetedBundleIds = self->_targetedBundleIds;
  if (targetedBundleIds)
  {
    targetedBundleIds2 = [v5 targetedBundleIds];
    v11 = [(NSArray *)targetedBundleIds isEqual:targetedBundleIds2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_factorLevelStrings == 0;
  factorLevelStrings = [v5 factorLevelStrings];
  v14 = factorLevelStrings != 0;

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
      factorLevelStrings2 = [v5 factorLevelStrings];
      v17 = [(NSArray *)factorLevelStrings isEqual:factorLevelStrings2];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIActiveEnvVarExperiment *)self isEqualToenvVarExperiment:v5];
  }

  return v6;
}

- (TRIActiveEnvVarExperiment)initWithCoder:(id)coder
{
  v36[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"targetedBundleIds"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_alloc(MEMORY[0x277CBEB98]);
      v10 = objc_opt_class();
      v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"factorLevelStrings"];

      if (!v12)
      {
        error = [coderCopy error];

        if (!error)
        {
          v31 = *MEMORY[0x277CCA450];
          v32 = @"Retrieved nil serialized value for nonnull TRIActiveEnvVarExperiment.factorLevelStrings";
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:2 userInfo:v22];
          [coderCopy failWithError:v23];
        }

        v12 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = [(TRIActiveEnvVarExperiment *)self initWithTargetedBundleIds:v8 factorLevelStrings:v12];
        selfCopy = self;
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
      [coderCopy failWithError:v26];
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
      [coderCopy failWithError:v20];
    }

LABEL_15:
LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Retrieved nil serialized value for nonnull TRIActiveEnvVarExperiment.targetedBundleIds";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIActiveEnvVarExperimentOCNTErrorDomain" code:2 userInfo:v12];
    [coderCopy failWithError:v17];
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  targetedBundleIds = self->_targetedBundleIds;
  v7 = coderCopy;
  if (targetedBundleIds)
  {
    [coderCopy encodeObject:targetedBundleIds forKey:@"targetedBundleIds"];
    coderCopy = v7;
  }

  factorLevelStrings = self->_factorLevelStrings;
  if (factorLevelStrings)
  {
    [v7 encodeObject:factorLevelStrings forKey:@"factorLevelStrings"];
    coderCopy = v7;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIActiveEnvVarExperiment | targetedBundleIds:%@ factorLevelStrings:%@>", self->_targetedBundleIds, self->_factorLevelStrings];

  return v2;
}

@end