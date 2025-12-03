@interface PSGWordBoundarySuggestionsExpConfigDefaults
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfig:(id)config;
- (PSGWordBoundarySuggestionsExpConfigDefaults)init;
@end

@implementation PSGWordBoundarySuggestionsExpConfigDefaults

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGWordBoundarySuggestionsExpConfigDefaults *)self isEqualToConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy || self->_isMLModelEnabled != *(configCopy + 8))
  {
    goto LABEL_13;
  }

  v6 = self->_rolloutIdentifiers;
  v7 = v6;
  if (v6 == v5[3])
  {
  }

  else
  {
    v8 = [(TRIRolloutIdentifiers *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = self->_experimentIdentifiers;
  v10 = v9;
  if (v9 == v5[4])
  {
  }

  else
  {
    v11 = [(TRIExperimentIdentifiers *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = self->_inferenceModelConfigPath;
  v13 = v12;
  if (v12 == v5[5])
  {
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }
  }

  v17 = self->_espressoBinFilePath;
  v18 = v17;
  if (v17 == v5[6])
  {
    v15 = 1;
  }

  else
  {
    v15 = [(NSString *)v17 isEqual:?];
  }

LABEL_14:
  return v15;
}

- (PSGWordBoundarySuggestionsExpConfigDefaults)init
{
  v11.receiver = self;
  v11.super_class = PSGWordBoundarySuggestionsExpConfigDefaults;
  v2 = [(PSGWordBoundarySuggestionsExpConfigDefaults *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_isMLModelEnabled = 0;
    treatmentName = v2->_treatmentName;
    v2->_treatmentName = @"EP_WORD_BOUNDARY_NIL_MODEL";

    rolloutIdentifiers = v3->_rolloutIdentifiers;
    v3->_rolloutIdentifiers = 0;

    v6 = [objc_alloc(MEMORY[0x277D736D0]) initWithExperimentId:@"EP_WORD_BOUNDARY_NIL_EXP_ID" deploymentId:0xFFFFFFFFLL treatmentId:@"EP_WORD_BOUNDARY_NIL_TRT_ID"];
    experimentIdentifiers = v3->_experimentIdentifiers;
    v3->_experimentIdentifiers = v6;

    inferenceModelConfigPath = v3->_inferenceModelConfigPath;
    v3->_inferenceModelConfigPath = 0;

    espressoBinFilePath = v3->_espressoBinFilePath;
    v3->_espressoBinFilePath = 0;
  }

  return v3;
}

@end