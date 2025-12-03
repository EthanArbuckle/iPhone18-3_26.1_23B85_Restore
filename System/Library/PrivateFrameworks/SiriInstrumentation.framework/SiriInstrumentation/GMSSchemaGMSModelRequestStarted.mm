@interface GMSSchemaGMSModelRequestStarted
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSModelRequestStarted)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSModelRequestStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasExternalPartner:(BOOL)partner;
- (void)setHasGenAIAgentUsed:(BOOL)used;
- (void)setHasIsUserSignedIn:(BOOL)in;
- (void)setHasIsWebSearchUsed:(BOOL)used;
- (void)setHasModelLocation:(BOOL)location;
- (void)setHasModelParty:(BOOL)party;
- (void)setHasUseCase:(BOOL)case;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSModelRequestStarted

- (GMSSchemaGMSModelRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = GMSSchemaGMSModelRequestStarted;
  v5 = [(GMSSchemaGMSModelRequestStarted *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"accountType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setAccountType:](v5, "setAccountType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isWebSearchUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setIsWebSearchUsed:](v5, "setIsWebSearchUsed:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isUserSignedIn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setIsUserSignedIn:](v5, "setIsUserSignedIn:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"modelParty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setModelParty:](v5, "setModelParty:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"modelLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setModelLocation:](v5, "setModelLocation:", [v10 intValue]);
    }

    v35 = v8;
    v37 = v6;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"useCase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setUseCase:](v5, "setUseCase:", [v11 intValue]);
    }

    v32 = v11;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setModelVersion:v13];
    }

    v36 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setConfigVersion:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"promptVersion", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setPromptVersion:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setModelName:v19];
    }

    v33 = v10;
    v34 = v9;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"externalPartner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setExternalPartner:](v5, "setExternalPartner:", [v20 intValue]);
    }

    v31 = v12;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"gmsClientRequestIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[SISchemaUUID alloc] initWithDictionary:v21];
      [(GMSSchemaGMSModelRequestStarted *)v5 setGmsClientRequestIdentifier:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"executorTraceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaUUID alloc] initWithDictionary:v23];
      [(GMSSchemaGMSModelRequestStarted *)v5 setExecutorTraceID:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"genAIAgentUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setGenAIAgentUsed:](v5, "setGenAIAgentUsed:", [v25 intValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[SISchemaUUID alloc] initWithDictionary:v26];
      [(GMSSchemaGMSModelRequestStarted *)v5 setClientTraceId:v27];
    }

    v28 = v5;
  }

  return v5;
}

- (GMSSchemaGMSModelRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSModelRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSModelRequestStarted *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(GMSSchemaGMSModelRequestStarted *)self accountType]- 1;
    if (v4 > 2)
    {
      v5 = @"GMSPARTNERACCOUNTTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D75C0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"accountType"];
  }

  if (self->_clientTraceId)
  {
    clientTraceId = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
    dictionaryRepresentation = [clientTraceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (self->_configVersion)
  {
    configVersion = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
    v10 = [configVersion copy];
    [dictionary setObject:v10 forKeyedSubscript:@"configVersion"];
  }

  if (self->_executorTraceID)
  {
    executorTraceID = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
    dictionaryRepresentation2 = [executorTraceID dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"executorTraceID"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"executorTraceID"];
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    if ([(GMSSchemaGMSModelRequestStarted *)self externalPartner]== 1)
    {
      v15 = @"GMSEXTERNALPARTNER_OPENAI";
    }

    else
    {
      v15 = @"GMSEXTERNALPARTNER_UNKNOWN";
    }

    [dictionary setObject:v15 forKeyedSubscript:@"externalPartner"];
    has = self->_has;
  }

  if (has < 0)
  {
    v16 = [(GMSSchemaGMSModelRequestStarted *)self genAIAgentUsed]- 1;
    if (v16 > 4)
    {
      v17 = @"GENAIAGENT_UNKNOWN";
    }

    else
    {
      v17 = off_1E78D75D8[v16];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"genAIAgentUsed"];
  }

  if (self->_gmsClientRequestIdentifier)
  {
    gmsClientRequestIdentifier = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
    dictionaryRepresentation3 = [gmsClientRequestIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"gmsClientRequestIdentifier"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"gmsClientRequestIdentifier"];
    }
  }

  v21 = self->_has;
  if ((v21 & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_35;
    }

LABEL_59:
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[GMSSchemaGMSModelRequestStarted isWebSearchUsed](self, "isWebSearchUsed")}];
    [dictionary setObject:v37 forKeyedSubscript:@"isWebSearchUsed"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[GMSSchemaGMSModelRequestStarted isUserSignedIn](self, "isUserSignedIn")}];
  [dictionary setObject:v36 forKeyedSubscript:@"isUserSignedIn"];

  v21 = self->_has;
  if ((v21 & 2) != 0)
  {
    goto LABEL_59;
  }

LABEL_35:
  if ((v21 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  modelLocation = [(GMSSchemaGMSModelRequestStarted *)self modelLocation];
  v23 = @"GMSMODELLOCATION_UNKNOWN";
  if (modelLocation == 1)
  {
    v23 = @"GMSMODELLOCATION_CLOUD";
  }

  if (modelLocation == 2)
  {
    v24 = @"GMSMODELLOCATION_ON_DEVICE";
  }

  else
  {
    v24 = v23;
  }

  [dictionary setObject:v24 forKeyedSubscript:@"modelLocation"];
LABEL_42:
  if (self->_modelName)
  {
    modelName = [(GMSSchemaGMSModelRequestStarted *)self modelName];
    v26 = [modelName copy];
    [dictionary setObject:v26 forKeyedSubscript:@"modelName"];
  }

  if ((*&self->_has & 8) != 0)
  {
    modelParty = [(GMSSchemaGMSModelRequestStarted *)self modelParty];
    v28 = @"GMSMODELPARTY_UNKNOWN";
    if (modelParty == 1)
    {
      v28 = @"GMSMODELPARTY_THIRD_PARTY";
    }

    if (modelParty == 2)
    {
      v29 = @"GMSMODELPARTY_APPLE_INTERNAL";
    }

    else
    {
      v29 = v28;
    }

    [dictionary setObject:v29 forKeyedSubscript:@"modelParty"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
    v31 = [modelVersion copy];
    [dictionary setObject:v31 forKeyedSubscript:@"modelVersion"];
  }

  if (self->_promptVersion)
  {
    promptVersion = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
    v33 = [promptVersion copy];
    [dictionary setObject:v33 forKeyedSubscript:@"promptVersion"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v34 = [(GMSSchemaGMSModelRequestStarted *)self useCase]- 1;
    if (v34 > 4)
    {
      v35 = @"GMSUSECASE_UNKNOWN";
    }

    else
    {
      v35 = off_1E78D7600[v34];
    }

    [dictionary setObject:v35 forKeyedSubscript:@"useCase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v17 = 2654435761 * self->_accountType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v16 = 2654435761 * self->_isWebSearchUsed;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v15 = 2654435761 * self->_isUserSignedIn;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v15 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v14 = 2654435761 * self->_modelParty;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v14 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v13 = 2654435761 * self->_modelLocation;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v3 = 2654435761 * self->_useCase;
    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
LABEL_14:
  v4 = [(NSString *)self->_modelVersion hash];
  v5 = [(NSString *)self->_configVersion hash];
  v6 = [(NSString *)self->_promptVersion hash];
  v7 = [(NSString *)self->_modelName hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v8 = 2654435761 * self->_externalPartner;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SISchemaUUID *)self->_gmsClientRequestIdentifier hash];
  v10 = [(SISchemaUUID *)self->_executorTraceID hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v11 = 2654435761 * self->_genAIAgentUsed;
  }

  else
  {
    v11 = 0;
  }

  return v16 ^ v17 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(SISchemaUUID *)self->_clientTraceId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  has = self->_has;
  v6 = equalCopy[104];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_66;
  }

  if (*&has)
  {
    accountType = self->_accountType;
    if (accountType != [equalCopy accountType])
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = equalCopy[104];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isWebSearchUsed = self->_isWebSearchUsed;
      if (isWebSearchUsed != [equalCopy isWebSearchUsed])
      {
        goto LABEL_66;
      }

      has = self->_has;
      v6 = equalCopy[104];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        isUserSignedIn = self->_isUserSignedIn;
        if (isUserSignedIn != [equalCopy isUserSignedIn])
        {
          goto LABEL_66;
        }

        has = self->_has;
        v6 = equalCopy[104];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          modelParty = self->_modelParty;
          if (modelParty != [equalCopy modelParty])
          {
            goto LABEL_66;
          }

          has = self->_has;
          v6 = equalCopy[104];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            modelLocation = self->_modelLocation;
            if (modelLocation != [equalCopy modelLocation])
            {
              goto LABEL_66;
            }

            has = self->_has;
            v6 = equalCopy[104];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 != ((v6 >> 5) & 1))
          {
            goto LABEL_66;
          }

          if (v16)
          {
            useCase = self->_useCase;
            if (useCase != [equalCopy useCase])
            {
              goto LABEL_66;
            }
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
          modelVersion2 = [equalCopy modelVersion];
          if ((modelVersion != 0) == (modelVersion2 == 0))
          {
            goto LABEL_65;
          }

          modelVersion3 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
          if (modelVersion3)
          {
            v21 = modelVersion3;
            modelVersion4 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
            modelVersion5 = [equalCopy modelVersion];
            v24 = [modelVersion4 isEqual:modelVersion5];

            if (!v24)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
          modelVersion2 = [equalCopy configVersion];
          if ((modelVersion != 0) == (modelVersion2 == 0))
          {
            goto LABEL_65;
          }

          configVersion = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
          if (configVersion)
          {
            v26 = configVersion;
            configVersion2 = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
            configVersion3 = [equalCopy configVersion];
            v29 = [configVersion2 isEqual:configVersion3];

            if (!v29)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
          modelVersion2 = [equalCopy promptVersion];
          if ((modelVersion != 0) == (modelVersion2 == 0))
          {
            goto LABEL_65;
          }

          promptVersion = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
          if (promptVersion)
          {
            v31 = promptVersion;
            promptVersion2 = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
            promptVersion3 = [equalCopy promptVersion];
            v34 = [promptVersion2 isEqual:promptVersion3];

            if (!v34)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self modelName];
          modelVersion2 = [equalCopy modelName];
          if ((modelVersion != 0) == (modelVersion2 == 0))
          {
            goto LABEL_65;
          }

          modelName = [(GMSSchemaGMSModelRequestStarted *)self modelName];
          if (modelName)
          {
            v36 = modelName;
            modelName2 = [(GMSSchemaGMSModelRequestStarted *)self modelName];
            modelName3 = [equalCopy modelName];
            v39 = [modelName2 isEqual:modelName3];

            if (!v39)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v40 = (*&self->_has >> 6) & 1;
          if (v40 != ((equalCopy[104] >> 6) & 1))
          {
            goto LABEL_66;
          }

          if (v40)
          {
            externalPartner = self->_externalPartner;
            if (externalPartner != [equalCopy externalPartner])
            {
              goto LABEL_66;
            }
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
          modelVersion2 = [equalCopy gmsClientRequestIdentifier];
          if ((modelVersion != 0) == (modelVersion2 == 0))
          {
            goto LABEL_65;
          }

          gmsClientRequestIdentifier = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
          if (gmsClientRequestIdentifier)
          {
            v43 = gmsClientRequestIdentifier;
            gmsClientRequestIdentifier2 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
            gmsClientRequestIdentifier3 = [equalCopy gmsClientRequestIdentifier];
            v46 = [gmsClientRequestIdentifier2 isEqual:gmsClientRequestIdentifier3];

            if (!v46)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
          modelVersion2 = [equalCopy executorTraceID];
          if ((modelVersion != 0) == (modelVersion2 == 0))
          {
            goto LABEL_65;
          }

          executorTraceID = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
          if (executorTraceID)
          {
            v48 = executorTraceID;
            executorTraceID2 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
            executorTraceID3 = [equalCopy executorTraceID];
            v51 = [executorTraceID2 isEqual:executorTraceID3];

            if (!v51)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v52 = self->_has;
          if (((equalCopy[104] ^ *&v52) & 0x80) != 0)
          {
            goto LABEL_66;
          }

          if ((*&v52 & 0x80000000) != 0)
          {
            genAIAgentUsed = self->_genAIAgentUsed;
            if (genAIAgentUsed != [equalCopy genAIAgentUsed])
            {
              goto LABEL_66;
            }
          }

          modelVersion = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
          modelVersion2 = [equalCopy clientTraceId];
          if ((modelVersion != 0) != (modelVersion2 == 0))
          {
            clientTraceId = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
            if (!clientTraceId)
            {

LABEL_69:
              v59 = 1;
              goto LABEL_67;
            }

            v55 = clientTraceId;
            clientTraceId2 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
            clientTraceId3 = [equalCopy clientTraceId];
            v58 = [clientTraceId2 isEqual:clientTraceId3];

            if (v58)
            {
              goto LABEL_69;
            }
          }

          else
          {
LABEL_65:
          }
        }
      }
    }
  }

LABEL_66:
  v59 = 0;
LABEL_67:

  return v59;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_33:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
  modelVersion = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  configVersion = [(GMSSchemaGMSModelRequestStarted *)self configVersion];

  if (configVersion)
  {
    PBDataWriterWriteStringField();
  }

  promptVersion = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];

  if (promptVersion)
  {
    PBDataWriterWriteStringField();
  }

  modelName = [(GMSSchemaGMSModelRequestStarted *)self modelName];

  if (modelName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  gmsClientRequestIdentifier = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];

  if (gmsClientRequestIdentifier)
  {
    gmsClientRequestIdentifier2 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
    PBDataWriterWriteSubmessage();
  }

  executorTraceID = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];

  if (executorTraceID)
  {
    executorTraceID2 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  clientTraceId = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];

  v14 = toCopy;
  if (clientTraceId)
  {
    clientTraceId2 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (void)setHasGenAIAgentUsed:(BOOL)used
{
  if (used)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasExternalPartner:(BOOL)partner
{
  if (partner)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasUseCase:(BOOL)case
{
  if (case)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasModelLocation:(BOOL)location
{
  if (location)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasModelParty:(BOOL)party
{
  if (party)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsUserSignedIn:(BOOL)in
{
  if (in)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsWebSearchUsed:(BOOL)used
{
  if (used)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = GMSSchemaGMSModelRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  gmsClientRequestIdentifier = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
  v7 = [gmsClientRequestIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GMSSchemaGMSModelRequestStarted *)self deleteGmsClientRequestIdentifier];
  }

  executorTraceID = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
  v10 = [executorTraceID applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GMSSchemaGMSModelRequestStarted *)self deleteExecutorTraceID];
  }

  clientTraceId = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
  v13 = [clientTraceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(GMSSchemaGMSModelRequestStarted *)self deleteClientTraceId];
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