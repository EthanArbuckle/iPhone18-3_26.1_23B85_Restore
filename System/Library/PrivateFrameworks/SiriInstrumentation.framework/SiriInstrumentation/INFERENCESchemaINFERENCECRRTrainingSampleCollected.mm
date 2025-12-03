@interface INFERENCESchemaINFERENCECRRTrainingSampleCollected
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnonymizedContactIdentifiers:(id)identifiers;
- (void)addMatches:(id)matches;
- (void)setHasInteractionDurationInSecBucket:(BOOL)bucket;
- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)enabled;
- (void)setHasIsInteractionExecuted:(BOOL)executed;
- (void)setHasIsInteractionSuccess:(BOOL)success;
- (void)setHasIsPlusContactSuggesterEnabled:(BOOL)enabled;
- (void)setHasResolutionType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCECRRTrainingSampleCollected

- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithDictionary:(id)dictionary
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = INFERENCESchemaINFERENCECRRTrainingSampleCollected;
  v5 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)&v64 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"intentTypeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setIntentTypeName:v7];
    }

    v53 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"resolverConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEContactResolverConfig alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setResolverConfig:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trialEnrollment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCETrialEnrollment alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setTrialEnrollment:v11];
    }

    v51 = v10;
    v52 = v8;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setModelVersion:v13];
    }

    v50 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"matches"];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:@"resolutionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setResolutionState:](v5, "setResolutionState:", [v22 intValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"resolutionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setResolutionType:](v5, "setResolutionType:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"forcePrompt"];
    objc_opt_class();
    v54 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[INFERENCESchemaINFERENCEPromptContext alloc] initWithDictionary:v24];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setForcePrompt:v25];
    }

    v48 = v23;
    v49 = v22;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedContactIdentifiers"];
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

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isInteractionExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsInteractionExecuted:](v5, "setIsInteractionExecuted:", [v34 BOOLValue]);
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"isInteractionSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsInteractionSuccess:](v5, "setIsInteractionSuccess:", [v35 BOOLValue]);
    }

    v47 = v34;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"interactionDurationInSecBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setInteractionDurationInSecBucket:](v5, "setInteractionDurationInSecBucket:", [v36 unsignedIntValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"interactionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[INFERENCESchemaINFERENCEPotentialRetryContactInteractionContext alloc] initWithDictionary:v37];
      [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)v5 setInteractionContext:v38];
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"isPlusContactSuggesterEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsPlusContactSuggesterEnabled:](v5, "setIsPlusContactSuggesterEnabled:", [v39 BOOLValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"isEntityCandidateRetrievalEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCECRRTrainingSampleCollected setIsEntityCandidateRetrievalEnabled:](v5, "setIsEntityCandidateRetrievalEnabled:", [v40 BOOLValue]);
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"crrCommsAppSelectionJointId"];
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

- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_anonymizedContactIdentifiers)
  {
    anonymizedContactIdentifiers = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
    v5 = [anonymizedContactIdentifiers copy];
    [dictionary setObject:v5 forKeyedSubscript:@"anonymizedContactIdentifiers"];
  }

  if (self->_crrCommsAppSelectionJointId)
  {
    crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
    dictionaryRepresentation = [crrCommsAppSelectionJointId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"crrCommsAppSelectionJointId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"crrCommsAppSelectionJointId"];
    }
  }

  if (self->_forcePrompt)
  {
    forcePrompt = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
    dictionaryRepresentation2 = [forcePrompt dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"forcePrompt"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"forcePrompt"];
    }
  }

  if (self->_intentTypeName)
  {
    intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
    v13 = [intentTypeName copy];
    [dictionary setObject:v13 forKeyedSubscript:@"intentTypeName"];
  }

  if (self->_interactionContext)
  {
    interactionContext = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
    dictionaryRepresentation3 = [interactionContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"interactionContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"interactionContext"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected interactionDurationInSecBucket](self, "interactionDurationInSecBucket")}];
    [dictionary setObject:v32 forKeyedSubscript:@"interactionDurationInSecBucket"];

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
  [dictionary setObject:v33 forKeyedSubscript:@"isEntityCandidateRetrievalEnabled"];

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
  [dictionary setObject:v34 forKeyedSubscript:@"isInteractionExecuted"];

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
  [dictionary setObject:v35 forKeyedSubscript:@"isInteractionSuccess"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_25:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCECRRTrainingSampleCollected isPlusContactSuggesterEnabled](self, "isPlusContactSuggesterEnabled")}];
    [dictionary setObject:v18 forKeyedSubscript:@"isPlusContactSuggesterEnabled"];
  }

LABEL_26:
  if ([(NSArray *)self->_matches count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v45 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array forKeyedSubscript:@"matches"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
    v28 = [modelVersion copy];
    [dictionary setObject:v28 forKeyedSubscript:@"modelVersion"];
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

    [dictionary setObject:v31 forKeyedSubscript:@"resolutionState"];
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

    [dictionary setObject:v37 forKeyedSubscript:@"resolutionType"];
  }

  if (self->_resolverConfig)
  {
    resolverConfig = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
    dictionaryRepresentation5 = [resolverConfig dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"resolverConfig"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"resolverConfig"];
    }
  }

  if (self->_trialEnrollment)
  {
    trialEnrollment = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
    dictionaryRepresentation6 = [trialEnrollment dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"trialEnrollment"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"trialEnrollment"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
  intentTypeName2 = [equalCopy intentTypeName];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  intentTypeName3 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
  if (intentTypeName3)
  {
    v8 = intentTypeName3;
    intentTypeName4 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];
    intentTypeName5 = [equalCopy intentTypeName];
    v11 = [intentTypeName4 isEqual:intentTypeName5];

    if (!v11)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
  intentTypeName2 = [equalCopy resolverConfig];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  resolverConfig = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
  if (resolverConfig)
  {
    v13 = resolverConfig;
    resolverConfig2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
    resolverConfig3 = [equalCopy resolverConfig];
    v16 = [resolverConfig2 isEqual:resolverConfig3];

    if (!v16)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
  intentTypeName2 = [equalCopy trialEnrollment];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  trialEnrollment = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
  if (trialEnrollment)
  {
    v18 = trialEnrollment;
    trialEnrollment2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
    trialEnrollment3 = [equalCopy trialEnrollment];
    v21 = [trialEnrollment2 isEqual:trialEnrollment3];

    if (!v21)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
  intentTypeName2 = [equalCopy modelVersion];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  modelVersion = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
  if (modelVersion)
  {
    v23 = modelVersion;
    modelVersion2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];
    modelVersion3 = [equalCopy modelVersion];
    v26 = [modelVersion2 isEqual:modelVersion3];

    if (!v26)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
  intentTypeName2 = [equalCopy matches];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  matches = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
  if (matches)
  {
    v28 = matches;
    matches2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
    matches3 = [equalCopy matches];
    v31 = [matches2 isEqual:matches3];

    if (!v31)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  has = self->_has;
  v33 = equalCopy[104];
  if ((*&has & 1) != (v33 & 1))
  {
    goto LABEL_72;
  }

  if (*&has)
  {
    resolutionState = self->_resolutionState;
    if (resolutionState != [equalCopy resolutionState])
    {
      goto LABEL_72;
    }

    has = self->_has;
    v33 = equalCopy[104];
  }

  v35 = (*&has >> 1) & 1;
  if (v35 != ((v33 >> 1) & 1))
  {
    goto LABEL_72;
  }

  if (v35)
  {
    resolutionType = self->_resolutionType;
    if (resolutionType != [equalCopy resolutionType])
    {
      goto LABEL_72;
    }
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
  intentTypeName2 = [equalCopy forcePrompt];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  forcePrompt = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
  if (forcePrompt)
  {
    v38 = forcePrompt;
    forcePrompt2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
    forcePrompt3 = [equalCopy forcePrompt];
    v41 = [forcePrompt2 isEqual:forcePrompt3];

    if (!v41)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
  intentTypeName2 = [equalCopy anonymizedContactIdentifiers];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  anonymizedContactIdentifiers = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
  if (anonymizedContactIdentifiers)
  {
    v43 = anonymizedContactIdentifiers;
    anonymizedContactIdentifiers2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self anonymizedContactIdentifiers];
    anonymizedContactIdentifiers3 = [equalCopy anonymizedContactIdentifiers];
    v46 = [anonymizedContactIdentifiers2 isEqual:anonymizedContactIdentifiers3];

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
  v49 = equalCopy[104];
  if (v48 != ((v49 >> 2) & 1))
  {
    goto LABEL_72;
  }

  if (v48)
  {
    isInteractionExecuted = self->_isInteractionExecuted;
    if (isInteractionExecuted != [equalCopy isInteractionExecuted])
    {
      goto LABEL_72;
    }

    v47 = self->_has;
    v49 = equalCopy[104];
  }

  v51 = (*&v47 >> 3) & 1;
  if (v51 != ((v49 >> 3) & 1))
  {
    goto LABEL_72;
  }

  if (v51)
  {
    isInteractionSuccess = self->_isInteractionSuccess;
    if (isInteractionSuccess != [equalCopy isInteractionSuccess])
    {
      goto LABEL_72;
    }

    v47 = self->_has;
    v49 = equalCopy[104];
  }

  v53 = (*&v47 >> 4) & 1;
  if (v53 != ((v49 >> 4) & 1))
  {
    goto LABEL_72;
  }

  if (v53)
  {
    interactionDurationInSecBucket = self->_interactionDurationInSecBucket;
    if (interactionDurationInSecBucket != [equalCopy interactionDurationInSecBucket])
    {
      goto LABEL_72;
    }
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
  intentTypeName2 = [equalCopy interactionContext];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
    goto LABEL_71;
  }

  interactionContext = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
  if (interactionContext)
  {
    v56 = interactionContext;
    interactionContext2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
    interactionContext3 = [equalCopy interactionContext];
    v59 = [interactionContext2 isEqual:interactionContext3];

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
  v62 = equalCopy[104];
  if (v61 != ((v62 >> 5) & 1))
  {
    goto LABEL_72;
  }

  if (v61)
  {
    isPlusContactSuggesterEnabled = self->_isPlusContactSuggesterEnabled;
    if (isPlusContactSuggesterEnabled != [equalCopy isPlusContactSuggesterEnabled])
    {
      goto LABEL_72;
    }

    v60 = self->_has;
    v62 = equalCopy[104];
  }

  v64 = (*&v60 >> 6) & 1;
  if (v64 != ((v62 >> 6) & 1))
  {
    goto LABEL_72;
  }

  if (v64)
  {
    isEntityCandidateRetrievalEnabled = self->_isEntityCandidateRetrievalEnabled;
    if (isEntityCandidateRetrievalEnabled != [equalCopy isEntityCandidateRetrievalEnabled])
    {
      goto LABEL_72;
    }
  }

  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  intentTypeName2 = [equalCopy crrCommsAppSelectionJointId];
  if ((intentTypeName != 0) == (intentTypeName2 == 0))
  {
LABEL_71:

    goto LABEL_72;
  }

  crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  if (!crrCommsAppSelectionJointId)
  {

LABEL_75:
    v71 = 1;
    goto LABEL_73;
  }

  v67 = crrCommsAppSelectionJointId;
  crrCommsAppSelectionJointId2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  crrCommsAppSelectionJointId3 = [equalCopy crrCommsAppSelectionJointId];
  v70 = [crrCommsAppSelectionJointId2 isEqual:crrCommsAppSelectionJointId3];

  if (v70)
  {
    goto LABEL_75;
  }

LABEL_72:
  v71 = 0;
LABEL_73:

  return v71;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentTypeName = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self intentTypeName];

  if (intentTypeName)
  {
    PBDataWriterWriteStringField();
  }

  resolverConfig = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];

  if (resolverConfig)
  {
    resolverConfig2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
    PBDataWriterWriteSubmessage();
  }

  trialEnrollment = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];

  if (trialEnrollment)
  {
    trialEnrollment2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
    PBDataWriterWriteSubmessage();
  }

  modelVersion = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self modelVersion];

  if (modelVersion)
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

  forcePrompt = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];

  if (forcePrompt)
  {
    forcePrompt2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
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
  interactionContext = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];

  if (interactionContext)
  {
    interactionContext2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
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

  crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];

  if (crrCommsAppSelectionJointId)
  {
    crrCommsAppSelectionJointId2 = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasIsEntityCandidateRetrievalEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsPlusContactSuggesterEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasInteractionDurationInSecBucket:(BOOL)bucket
{
  if (bucket)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsInteractionSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsInteractionExecuted:(BOOL)executed
{
  if (executed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAnonymizedContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  anonymizedContactIdentifiers = self->_anonymizedContactIdentifiers;
  v8 = identifiersCopy;
  if (!anonymizedContactIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_anonymizedContactIdentifiers;
    self->_anonymizedContactIdentifiers = array;

    identifiersCopy = v8;
    anonymizedContactIdentifiers = self->_anonymizedContactIdentifiers;
  }

  [(NSArray *)anonymizedContactIdentifiers addObject:identifiersCopy];
}

- (void)setHasResolutionType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMatches:(id)matches
{
  matchesCopy = matches;
  matches = self->_matches;
  v8 = matchesCopy;
  if (!matches)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matches;
    self->_matches = array;

    matchesCopy = v8;
    matches = self->_matches;
  }

  [(NSArray *)matches addObject:matchesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v24.receiver = self;
  v24.super_class = INFERENCESchemaINFERENCECRRTrainingSampleCollected;
  v5 = [(SISchemaInstrumentationMessage *)&v24 applySensitiveConditionsPolicy:policyCopy];
  resolverConfig = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self resolverConfig];
  v7 = [resolverConfig applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteResolverConfig];
  }

  trialEnrollment = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self trialEnrollment];
  v10 = [trialEnrollment applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteTrialEnrollment];
  }

  matches = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self matches];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:matches underConditions:policyCopy];
  [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self setMatches:v13];

  forcePrompt = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self forcePrompt];
  v15 = [forcePrompt applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v15 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteForcePrompt];
  }

  interactionContext = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self interactionContext];
  v18 = [interactionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v18 suppressMessage];

  if (suppressMessage4)
  {
    [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self deleteInteractionContext];
  }

  crrCommsAppSelectionJointId = [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self crrCommsAppSelectionJointId];
  v21 = [crrCommsAppSelectionJointId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v21 suppressMessage];

  if (suppressMessage5)
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