@interface INFERENCESchemaINFERENCECRRTrainingSampleCollected
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnonymizedContactIdentifiers:(id)a3;
- (void)addMatches:(id)a3;
- (void)setHasInteractionDurationInSecBucket:(BOOL)a3;
- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)a3;
- (void)setHasIsInteractionExecuted:(BOOL)a3;
- (void)setHasIsInteractionSuccess:(BOOL)a3;
- (void)setHasIsPlusContactSuggesterEnabled:(BOOL)a3;
- (void)setHasResolutionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCECRRTrainingSampleCollected

- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithDictionary:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v64.receiver = self;
  v64.super_class = INFERENCESchemaINFERENCECRRTrainingSampleCollected;
  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)&v64 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"intentTypeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setIntentTypeName:v7];
    }

    v53 = v6;
    v8 = [v4 objectForKeyedSubscript:@"resolverConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEContactResolverConfig alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setResolverConfig:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"trialEnrollment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCETrialEnrollment alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setTrialEnrollment:v11];
    }

    v51 = v10;
    v52 = v8;
    v12 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setModelVersion:v13];
    }

    v50 = v12;
    v14 = [v4 objectForKeyedSubscript:@"matches"];
    objc_opt_class();
    v55 = v14;
    if (objc_opt_isKindOfClass())
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v61;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v61 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v60 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[INFERENCESchemaINFERENCEContactMatch alloc] initWithDictionary:v20];
              [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 addMatches:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v17);
      }
    }

    v22 = [v4 objectForKeyedSubscript:@"resolutionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setResolutionState:](v5, "setResolutionState:", [v22 intValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"resolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setResolutionType:](v5, "setResolutionType:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"forcePrompt"];
    objc_opt_class();
    v54 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[INFERENCESchemaINFERENCEPromptContext alloc] initWithDictionary:v24];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setForcePrompt:v25];
    }

    v48 = v23;
    v49 = v22;
    v26 = [v4 objectForKeyedSubscript:@"anonymizedContactIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v46 = v26;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v57;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v57 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v56 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [v32 copy];
              [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 addAnonymizedContactIdentifiers:v33];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v56 objects:v65 count:16];
        }

        while (v29);
      }

      v26 = v46;
    }

    v34 = [v4 objectForKeyedSubscript:@"isInteractionExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsInteractionExecuted:](v5, "setIsInteractionExecuted:", [v34 BOOLValue]);
    }

    v35 = [v4 objectForKeyedSubscript:@"isInteractionSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsInteractionSuccess:](v5, "setIsInteractionSuccess:", [v35 BOOLValue]);
    }

    v47 = v34;
    v36 = [v4 objectForKeyedSubscript:@"interactionDurationInSecBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setInteractionDurationInSecBucket:](v5, "setInteractionDurationInSecBucket:", [v36 unsignedIntValue]);
    }

    v37 = [v4 objectForKeyedSubscript:@"interactionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext alloc] initWithDictionary:v37];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setInteractionContext:v38];
    }

    v39 = [v4 objectForKeyedSubscript:@"isPlusContactSuggesterEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsPlusContactSuggesterEnabled:](v5, "setIsPlusContactSuggesterEnabled:", [v39 BOOLValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"isEntityCandidateRetrievalEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsEntityCandidateRetrievalEnabled:](v5, "setIsEntityCandidateRetrievalEnabled:", [v40 BOOLValue]);
    }

    v41 = [v4 objectForKeyedSubscript:@"crrCommsAppSelectionJointId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v26;
      v43 = [[SISchemaUUID alloc] initWithDictionary:v41];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setCrrCommsAppSelectionJointId:v43];

      v26 = v42;
    }

    v44 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_anonymizedContactIdentifiers)
  {
    v4 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"anonymizedContactIdentifiers"];
  }

  if (self->_crrCommsAppSelectionJointId)
  {
    v6 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"crrCommsAppSelectionJointId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"crrCommsAppSelectionJointId"];
    }
  }

  if (self->_forcePrompt)
  {
    v9 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"forcePrompt"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"forcePrompt"];
    }
  }

  if (self->_intentTypeName)
  {
    v12 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"intentTypeName"];
  }

  if (self->_interactionContext)
  {
    v14 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"interactionContext"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"interactionContext"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected interactionDurationInSecBucket](self, "interactionDurationInSecBucket")}];
    [v3 setObject:v32 forKeyedSubscript:@"interactionDurationInSecBucket"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_22:
      if ((has & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_45;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_22;
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected isEntityCandidateRetrievalEnabled](self, "isEntityCandidateRetrievalEnabled")}];
  [v3 setObject:v33 forKeyedSubscript:@"isEntityCandidateRetrievalEnabled"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_23:
    if ((has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected isInteractionExecuted](self, "isInteractionExecuted")}];
  [v3 setObject:v34 forKeyedSubscript:@"isInteractionExecuted"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_24:
    if ((has & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_46:
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected isInteractionSuccess](self, "isInteractionSuccess")}];
  [v3 setObject:v35 forKeyedSubscript:@"isInteractionSuccess"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_25:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected isPlusContactSuggesterEnabled](self, "isPlusContactSuggesterEnabled")}];
    [v3 setObject:v18 forKeyedSubscript:@"isPlusContactSuggesterEnabled"];
  }

LABEL_26:
  if ([(NSArray *)self->_matches count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = self->_matches;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          if (v25)
          {
            [v19 addObject:v25];
          }

          else
          {
            v26 = [MEMORY[0x1E695DFB0] null];
            [v19 addObject:v26];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"matches"];
  }

  if (self->_modelVersion)
  {
    v27 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"modelVersion"];
  }

  v29 = self->_has;
  if (v29)
  {
    v30 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolutionState]- 1;
    if (v30 > 3)
    {
      v31 = @"INFERENCERESOLUTIONSTATE_UNKNOWN";
    }

    else
    {
      v31 = off_1E78D89D0[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"resolutionState"];
    v29 = self->_has;
  }

  if ((v29 & 2) != 0)
  {
    v36 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolutionType]- 1;
    if (v36 > 4)
    {
      v37 = @"INFERENCECONTACTRESOLUTIONTYPE_UNKNOWN";
    }

    else
    {
      v37 = off_1E78D89F0[v36];
    }

    [v3 setObject:v37 forKeyedSubscript:@"resolutionType"];
  }

  if (self->_resolverConfig)
  {
    v38 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"resolverConfig"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"resolverConfig"];
    }
  }

  if (self->_trialEnrollment)
  {
    v41 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
    v42 = [v41 dictionaryRepresentation];
    if (v42)
    {
      [v3 setObject:v42 forKeyedSubscript:@"trialEnrollment"];
    }

    else
    {
      v43 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v43 forKeyedSubscript:@"trialEnrollment"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v18 = [(NSString *)self->_intentTypeName hash];
  v17 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self->_resolverConfig hash];
  v16 = [(INFERENCESchemaINFERENCETrialEnrollment *)self->_trialEnrollment hash];
  v15 = [(NSString *)self->_modelVersion hash];
  v14 = [(NSArray *)self->_matches hash];
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_resolutionState;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_resolutionType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(INFERENCESchemaINFERENCEPromptContext *)self->_forcePrompt hash];
  v6 = [(NSArray *)self->_anonymizedContactIdentifiers hash];
  if ((*&self->_has & 4) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = 2654435761 * self->_isInteractionExecuted;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = 2654435761 * self->_isInteractionSuccess;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    v9 = 2654435761 * self->_interactionDurationInSecBucket;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  v10 = [(INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext *)self->_interactionContext hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isPlusContactSuggesterEnabled;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    v12 = 0;
    return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(SISchemaUUID *)self->_crrCommsAppSelectionJointId hash];
  }

  v11 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v12 = 2654435761 * self->_isEntityCandidateRetrievalEnabled;
  return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(SISchemaUUID *)self->_crrCommsAppSelectionJointId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
  v6 = [v4 intentTypeName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v7 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
    v10 = [v4 intentTypeName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
  v6 = [v4 resolverConfig];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v12 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
  if (v12)
  {
    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
    v15 = [v4 resolverConfig];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
  v6 = [v4 trialEnrollment];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v17 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
  if (v17)
  {
    v18 = v17;
    v19 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
    v20 = [v4 trialEnrollment];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v22 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
  if (v22)
  {
    v23 = v22;
    v24 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
    v25 = [v4 modelVersion];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
  v6 = [v4 matches];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v27 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
  if (v27)
  {
    v28 = v27;
    v29 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
    v30 = [v4 matches];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  has = self->_has;
  v33 = v4[104];
  if ((*&has & 1) != (v33 & 1))
  {
    goto LABEL_72;
  }

  if (*&has)
  {
    resolutionState = self->_resolutionState;
    if (resolutionState != [v4 resolutionState])
    {
      goto LABEL_72;
    }

    has = self->_has;
    v33 = v4[104];
  }

  v35 = (*&has >> 1) & 1;
  if (v35 != ((v33 >> 1) & 1))
  {
    goto LABEL_72;
  }

  if (v35)
  {
    resolutionType = self->_resolutionType;
    if (resolutionType != [v4 resolutionType])
    {
      goto LABEL_72;
    }
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
  v6 = [v4 forcePrompt];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v37 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
  if (v37)
  {
    v38 = v37;
    v39 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
    v40 = [v4 forcePrompt];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
  v6 = [v4 anonymizedContactIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v42 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
  if (v42)
  {
    v43 = v42;
    v44 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
    v45 = [v4 anonymizedContactIdentifiers];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v47 = self->_has;
  v48 = (*&v47 >> 2) & 1;
  v49 = v4[104];
  if (v48 != ((v49 >> 2) & 1))
  {
    goto LABEL_72;
  }

  if (v48)
  {
    isInteractionExecuted = self->_isInteractionExecuted;
    if (isInteractionExecuted != [v4 isInteractionExecuted])
    {
      goto LABEL_72;
    }

    v47 = self->_has;
    v49 = v4[104];
  }

  v51 = (*&v47 >> 3) & 1;
  if (v51 != ((v49 >> 3) & 1))
  {
    goto LABEL_72;
  }

  if (v51)
  {
    isInteractionSuccess = self->_isInteractionSuccess;
    if (isInteractionSuccess != [v4 isInteractionSuccess])
    {
      goto LABEL_72;
    }

    v47 = self->_has;
    v49 = v4[104];
  }

  v53 = (*&v47 >> 4) & 1;
  if (v53 != ((v49 >> 4) & 1))
  {
    goto LABEL_72;
  }

  if (v53)
  {
    interactionDurationInSecBucket = self->_interactionDurationInSecBucket;
    if (interactionDurationInSecBucket != [v4 interactionDurationInSecBucket])
    {
      goto LABEL_72;
    }
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
  v6 = [v4 interactionContext];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_71;
  }

  v55 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
  if (v55)
  {
    v56 = v55;
    v57 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
    v58 = [v4 interactionContext];
    v59 = [v57 isEqual:v58];

    if (!v59)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  v60 = self->_has;
  v61 = (*&v60 >> 5) & 1;
  v62 = v4[104];
  if (v61 != ((v62 >> 5) & 1))
  {
    goto LABEL_72;
  }

  if (v61)
  {
    isPlusContactSuggesterEnabled = self->_isPlusContactSuggesterEnabled;
    if (isPlusContactSuggesterEnabled != [v4 isPlusContactSuggesterEnabled])
    {
      goto LABEL_72;
    }

    v60 = self->_has;
    v62 = v4[104];
  }

  v64 = (*&v60 >> 6) & 1;
  if (v64 != ((v62 >> 6) & 1))
  {
    goto LABEL_72;
  }

  if (v64)
  {
    isEntityCandidateRetrievalEnabled = self->_isEntityCandidateRetrievalEnabled;
    if (isEntityCandidateRetrievalEnabled != [v4 isEntityCandidateRetrievalEnabled])
    {
      goto LABEL_72;
    }
  }

  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  v6 = [v4 crrCommsAppSelectionJointId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_71:

    goto LABEL_72;
  }

  v66 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  if (!v66)
  {

LABEL_75:
    v71 = 1;
    goto LABEL_73;
  }

  v67 = v66;
  v68 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  v69 = [v4 crrCommsAppSelectionJointId];
  v70 = [v68 isEqual:v69];

  if (v70)
  {
    goto LABEL_75;
  }

LABEL_72:
  v71 = 0;
LABEL_73:

  return v71;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];

  if (v6)
  {
    v7 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];

  if (v8)
  {
    v9 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_matches;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v17 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];

  if (v17)
  {
    v18 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
    PBDataWriterWriteSubmessage();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = self->_anonymizedContactIdentifiers;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteStringField();
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v24 = self->_has;
  if ((v24 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v24 = self->_has;
    if ((v24 & 8) == 0)
    {
LABEL_31:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_31;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_32:
    PBDataWriterWriteUint32Field();
  }

LABEL_33:
  v25 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];

  if (v25)
  {
    v26 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
    PBDataWriterWriteSubmessage();
  }

  v27 = self->_has;
  if ((v27 & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    v27 = self->_has;
  }

  if ((v27 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v28 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];

  if (v28)
  {
    v29 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsPlusContactSuggesterEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasInteractionDurationInSecBucket:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsInteractionSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsInteractionExecuted:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAnonymizedContactIdentifiers:(id)a3
{
  v4 = a3;
  anonymizedContactIdentifiers = self->_anonymizedContactIdentifiers;
  v8 = v4;
  if (!anonymizedContactIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedContactIdentifiers;
    self->_anonymizedContactIdentifiers = v6;

    v4 = v8;
    anonymizedContactIdentifiers = self->_anonymizedContactIdentifiers;
  }

  [(NSArray *)anonymizedContactIdentifiers addObject:v4];
}

- (void)setHasResolutionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMatches:(id)a3
{
  v4 = a3;
  matches = self->_matches;
  v8 = v4;
  if (!matches)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matches;
    self->_matches = v6;

    v4 = v8;
    matches = self->_matches;
  }

  [(NSArray *)matches addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = INFERENCESchemaINFERENCECRRTrainingSampleCollected;
  v5 = [(SISchemaInstrumentationMessage *)&v24 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteResolverConfig];
  }

  v9 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteTrialEnrollment];
  }

  v12 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self setMatches:v13];

  v14 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
  v15 = [v14 applySensitiveConditionsPolicy:v4];
  v16 = [v15 suppressMessage];

  if (v16)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteForcePrompt];
  }

  v17 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
  v18 = [v17 applySensitiveConditionsPolicy:v4];
  v19 = [v18 suppressMessage];

  if (v19)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteInteractionContext];
  }

  v20 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  v21 = [v20 applySensitiveConditionsPolicy:v4];
  v22 = [v21 suppressMessage];

  if (v22)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteCrrCommsAppSelectionJointId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end