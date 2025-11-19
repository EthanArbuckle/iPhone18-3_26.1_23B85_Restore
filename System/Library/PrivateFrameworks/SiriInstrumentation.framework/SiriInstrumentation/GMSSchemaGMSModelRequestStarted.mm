@interface GMSSchemaGMSModelRequestStarted
- (BOOL)isEqual:(id)a3;
- (GMSSchemaGMSModelRequestStarted)initWithDictionary:(id)a3;
- (GMSSchemaGMSModelRequestStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasExternalPartner:(BOOL)a3;
- (void)setHasGenAIAgentUsed:(BOOL)a3;
- (void)setHasIsUserSignedIn:(BOOL)a3;
- (void)setHasIsWebSearchUsed:(BOOL)a3;
- (void)setHasModelLocation:(BOOL)a3;
- (void)setHasModelParty:(BOOL)a3;
- (void)setHasUseCase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GMSSchemaGMSModelRequestStarted

- (GMSSchemaGMSModelRequestStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = GMSSchemaGMSModelRequestStarted;
  v5 = [(GMSSchemaGMSModelRequestStarted *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"accountType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setAccountType:](v5, "setAccountType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isWebSearchUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setIsWebSearchUsed:](v5, "setIsWebSearchUsed:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isUserSignedIn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setIsUserSignedIn:](v5, "setIsUserSignedIn:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"modelParty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setModelParty:](v5, "setModelParty:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"modelLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setModelLocation:](v5, "setModelLocation:", [v10 intValue]);
    }

    v35 = v8;
    v37 = v6;
    v11 = [v4 objectForKeyedSubscript:@"useCase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setUseCase:](v5, "setUseCase:", [v11 intValue]);
    }

    v32 = v11;
    v12 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setModelVersion:v13];
    }

    v36 = v7;
    v14 = [v4 objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setConfigVersion:v15];
    }

    v16 = [v4 objectForKeyedSubscript:{@"promptVersion", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setPromptVersion:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"modelName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(GMSSchemaGMSModelRequestStarted *)v5 setModelName:v19];
    }

    v33 = v10;
    v34 = v9;
    v20 = [v4 objectForKeyedSubscript:@"externalPartner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setExternalPartner:](v5, "setExternalPartner:", [v20 intValue]);
    }

    v31 = v12;
    v21 = [v4 objectForKeyedSubscript:@"gmsClientRequestIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[SISchemaUUID alloc] initWithDictionary:v21];
      [(GMSSchemaGMSModelRequestStarted *)v5 setGmsClientRequestIdentifier:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"executorTraceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaUUID alloc] initWithDictionary:v23];
      [(GMSSchemaGMSModelRequestStarted *)v5 setExecutorTraceID:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"genAIAgentUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestStarted setGenAIAgentUsed:](v5, "setGenAIAgentUsed:", [v25 intValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"clientTraceId"];
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

- (GMSSchemaGMSModelRequestStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GMSSchemaGMSModelRequestStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GMSSchemaGMSModelRequestStarted *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKeyedSubscript:@"accountType"];
  }

  if (self->_clientTraceId)
  {
    v6 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"clientTraceId"];
    }
  }

  if (self->_configVersion)
  {
    v9 = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"configVersion"];
  }

  if (self->_executorTraceID)
  {
    v11 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"executorTraceID"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"executorTraceID"];
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

    [v3 setObject:v15 forKeyedSubscript:@"externalPartner"];
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

    [v3 setObject:v17 forKeyedSubscript:@"genAIAgentUsed"];
  }

  if (self->_gmsClientRequestIdentifier)
  {
    v18 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"gmsClientRequestIdentifier"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"gmsClientRequestIdentifier"];
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
    [v3 setObject:v37 forKeyedSubscript:@"isWebSearchUsed"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[GMSSchemaGMSModelRequestStarted isUserSignedIn](self, "isUserSignedIn")}];
  [v3 setObject:v36 forKeyedSubscript:@"isUserSignedIn"];

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
  v22 = [(GMSSchemaGMSModelRequestStarted *)self modelLocation];
  v23 = @"GMSMODELLOCATION_UNKNOWN";
  if (v22 == 1)
  {
    v23 = @"GMSMODELLOCATION_CLOUD";
  }

  if (v22 == 2)
  {
    v24 = @"GMSMODELLOCATION_ON_DEVICE";
  }

  else
  {
    v24 = v23;
  }

  [v3 setObject:v24 forKeyedSubscript:@"modelLocation"];
LABEL_42:
  if (self->_modelName)
  {
    v25 = [(GMSSchemaGMSModelRequestStarted *)self modelName];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"modelName"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v27 = [(GMSSchemaGMSModelRequestStarted *)self modelParty];
    v28 = @"GMSMODELPARTY_UNKNOWN";
    if (v27 == 1)
    {
      v28 = @"GMSMODELPARTY_THIRD_PARTY";
    }

    if (v27 == 2)
    {
      v29 = @"GMSMODELPARTY_APPLE_INTERNAL";
    }

    else
    {
      v29 = v28;
    }

    [v3 setObject:v29 forKeyedSubscript:@"modelParty"];
  }

  if (self->_modelVersion)
  {
    v30 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"modelVersion"];
  }

  if (self->_promptVersion)
  {
    v32 = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"promptVersion"];
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

    [v3 setObject:v35 forKeyedSubscript:@"useCase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  has = self->_has;
  v6 = v4[104];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_66;
  }

  if (*&has)
  {
    accountType = self->_accountType;
    if (accountType != [v4 accountType])
    {
      goto LABEL_66;
    }

    has = self->_has;
    v6 = v4[104];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isWebSearchUsed = self->_isWebSearchUsed;
      if (isWebSearchUsed != [v4 isWebSearchUsed])
      {
        goto LABEL_66;
      }

      has = self->_has;
      v6 = v4[104];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        isUserSignedIn = self->_isUserSignedIn;
        if (isUserSignedIn != [v4 isUserSignedIn])
        {
          goto LABEL_66;
        }

        has = self->_has;
        v6 = v4[104];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          modelParty = self->_modelParty;
          if (modelParty != [v4 modelParty])
          {
            goto LABEL_66;
          }

          has = self->_has;
          v6 = v4[104];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            modelLocation = self->_modelLocation;
            if (modelLocation != [v4 modelLocation])
            {
              goto LABEL_66;
            }

            has = self->_has;
            v6 = v4[104];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 != ((v6 >> 5) & 1))
          {
            goto LABEL_66;
          }

          if (v16)
          {
            useCase = self->_useCase;
            if (useCase != [v4 useCase])
            {
              goto LABEL_66;
            }
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
          v19 = [v4 modelVersion];
          if ((v18 != 0) == (v19 == 0))
          {
            goto LABEL_65;
          }

          v20 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
          if (v20)
          {
            v21 = v20;
            v22 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];
            v23 = [v4 modelVersion];
            v24 = [v22 isEqual:v23];

            if (!v24)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
          v19 = [v4 configVersion];
          if ((v18 != 0) == (v19 == 0))
          {
            goto LABEL_65;
          }

          v25 = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
          if (v25)
          {
            v26 = v25;
            v27 = [(GMSSchemaGMSModelRequestStarted *)self configVersion];
            v28 = [v4 configVersion];
            v29 = [v27 isEqual:v28];

            if (!v29)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
          v19 = [v4 promptVersion];
          if ((v18 != 0) == (v19 == 0))
          {
            goto LABEL_65;
          }

          v30 = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
          if (v30)
          {
            v31 = v30;
            v32 = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];
            v33 = [v4 promptVersion];
            v34 = [v32 isEqual:v33];

            if (!v34)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self modelName];
          v19 = [v4 modelName];
          if ((v18 != 0) == (v19 == 0))
          {
            goto LABEL_65;
          }

          v35 = [(GMSSchemaGMSModelRequestStarted *)self modelName];
          if (v35)
          {
            v36 = v35;
            v37 = [(GMSSchemaGMSModelRequestStarted *)self modelName];
            v38 = [v4 modelName];
            v39 = [v37 isEqual:v38];

            if (!v39)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v40 = (*&self->_has >> 6) & 1;
          if (v40 != ((v4[104] >> 6) & 1))
          {
            goto LABEL_66;
          }

          if (v40)
          {
            externalPartner = self->_externalPartner;
            if (externalPartner != [v4 externalPartner])
            {
              goto LABEL_66;
            }
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
          v19 = [v4 gmsClientRequestIdentifier];
          if ((v18 != 0) == (v19 == 0))
          {
            goto LABEL_65;
          }

          v42 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
          if (v42)
          {
            v43 = v42;
            v44 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
            v45 = [v4 gmsClientRequestIdentifier];
            v46 = [v44 isEqual:v45];

            if (!v46)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
          v19 = [v4 executorTraceID];
          if ((v18 != 0) == (v19 == 0))
          {
            goto LABEL_65;
          }

          v47 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
          if (v47)
          {
            v48 = v47;
            v49 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
            v50 = [v4 executorTraceID];
            v51 = [v49 isEqual:v50];

            if (!v51)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          v52 = self->_has;
          if (((v4[104] ^ *&v52) & 0x80) != 0)
          {
            goto LABEL_66;
          }

          if ((*&v52 & 0x80000000) != 0)
          {
            genAIAgentUsed = self->_genAIAgentUsed;
            if (genAIAgentUsed != [v4 genAIAgentUsed])
            {
              goto LABEL_66;
            }
          }

          v18 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
          v19 = [v4 clientTraceId];
          if ((v18 != 0) != (v19 == 0))
          {
            v54 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
            if (!v54)
            {

LABEL_69:
              v59 = 1;
              goto LABEL_67;
            }

            v55 = v54;
            v56 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
            v57 = [v4 clientTraceId];
            v58 = [v56 isEqual:v57];

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

- (void)writeTo:(id)a3
{
  v16 = a3;
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
  v5 = [(GMSSchemaGMSModelRequestStarted *)self modelVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(GMSSchemaGMSModelRequestStarted *)self configVersion];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(GMSSchemaGMSModelRequestStarted *)self promptVersion];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(GMSSchemaGMSModelRequestStarted *)self modelName];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v9 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];

  if (v9)
  {
    v10 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];

  if (v11)
  {
    v12 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];

  v14 = v16;
  if (v13)
  {
    v15 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (void)setHasGenAIAgentUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasExternalPartner:(BOOL)a3
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

- (void)setHasUseCase:(BOOL)a3
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

- (void)setHasModelLocation:(BOOL)a3
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

- (void)setHasModelParty:(BOOL)a3
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

- (void)setHasIsUserSignedIn:(BOOL)a3
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

- (void)setHasIsWebSearchUsed:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GMSSchemaGMSModelRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(GMSSchemaGMSModelRequestStarted *)self gmsClientRequestIdentifier];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(GMSSchemaGMSModelRequestStarted *)self deleteGmsClientRequestIdentifier];
  }

  v9 = [(GMSSchemaGMSModelRequestStarted *)self executorTraceID];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(GMSSchemaGMSModelRequestStarted *)self deleteExecutorTraceID];
  }

  v12 = [(GMSSchemaGMSModelRequestStarted *)self clientTraceId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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