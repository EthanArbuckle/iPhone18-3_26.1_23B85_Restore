@interface PSGResponseSuggestionsExpConfigDefaults
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfig:(id)a3;
- (PSGResponseSuggestionsExpConfigDefaults)init;
@end

@implementation PSGResponseSuggestionsExpConfigDefaults

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGResponseSuggestionsExpConfigDefaults *)self isEqualToConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_isMLModelEnabled != *(v4 + 8))
  {
    goto LABEL_25;
  }

  v6 = self->_treatmentName;
  v7 = v6;
  if (v6 == v5[2])
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v9 = self->_inferenceModelFilePath;
  v10 = v9;
  if (v9 == v5[5])
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v12 = self->_inferenceModelConfigPath;
  v13 = v12;
  if (v12 == v5[6])
  {
  }

  else
  {
    v14 = [(NSString *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v15 = self->_espressoBinFilePath;
  v16 = v15;
  if (v15 == v5[7])
  {
  }

  else
  {
    v17 = [(NSString *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v18 = self->_vocabFilePath;
  v19 = v18;
  if (v18 == v5[8])
  {
  }

  else
  {
    v20 = [(NSString *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v21 = self->_rolloutIdentifiers;
  v22 = v21;
  if (v21 == v5[3])
  {
  }

  else
  {
    v23 = [(TRIRolloutIdentifiers *)v21 isEqual:?];

    if ((v23 & 1) == 0)
    {
LABEL_25:
      v24 = 0;
      goto LABEL_26;
    }
  }

  v26 = self->_experimentIdentifiers;
  v27 = v26;
  if (v26 == v5[4])
  {
    v24 = 1;
  }

  else
  {
    v24 = [(TRIExperimentIdentifiers *)v26 isEqual:?];
  }

LABEL_26:
  return v24;
}

- (PSGResponseSuggestionsExpConfigDefaults)init
{
  v13.receiver = self;
  v13.super_class = PSGResponseSuggestionsExpConfigDefaults;
  v2 = [(PSGResponseSuggestionsExpConfigDefaults *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_isMLModelEnabled = 0;
    treatmentName = v2->_treatmentName;
    v2->_treatmentName = @"EP_ZKW_NIL_MODEL";

    rolloutIdentifiers = v3->_rolloutIdentifiers;
    v3->_rolloutIdentifiers = 0;

    v6 = [objc_alloc(MEMORY[0x277D736D0]) initWithExperimentId:@"EP_ZKW_NIL_EXP_ID" deploymentId:0xFFFFFFFFLL treatmentId:@"EP_ZKW_NIL_TRT_ID"];
    experimentIdentifiers = v3->_experimentIdentifiers;
    v3->_experimentIdentifiers = v6;

    inferenceModelFilePath = v3->_inferenceModelFilePath;
    v3->_inferenceModelFilePath = 0;

    inferenceModelConfigPath = v3->_inferenceModelConfigPath;
    v3->_inferenceModelConfigPath = 0;

    espressoBinFilePath = v3->_espressoBinFilePath;
    v3->_espressoBinFilePath = 0;

    vocabFilePath = v3->_vocabFilePath;
    v3->_vocabFilePath = 0;
  }

  return v3;
}

@end