@interface CAARSchemaCAARModelExecuted
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARModelExecuted)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARModelExecuted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARModelExecuted

- (CAARSchemaCAARModelExecuted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = CAARSchemaCAARModelExecuted;
  v5 = [(CAARSchemaCAARModelExecuted *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaAsset alloc] initWithDictionary:v6];
      [(CAARSchemaCAARModelExecuted *)v5 setAsset:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isShadowLog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARModelExecuted setIsShadowLog:](v5, "setIsShadowLog:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"modelOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[CAARSchemaCAARModelOutput alloc] initWithDictionary:v9];
      [(CAARSchemaCAARModelExecuted *)v5 setModelOutput:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"trialEnrollment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[CAARSchemaCAARTrialEnrollment alloc] initWithDictionary:v11];
      [(CAARSchemaCAARModelExecuted *)v5 setTrialEnrollment:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (CAARSchemaCAARModelExecuted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARModelExecuted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARModelExecuted *)self dictionaryRepresentation];
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
  if (self->_asset)
  {
    asset = [(CAARSchemaCAARModelExecuted *)self asset];
    dictionaryRepresentation = [asset dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asset"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asset"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARModelExecuted isShadowLog](self, "isShadowLog")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isShadowLog"];
  }

  if (self->_modelOutput)
  {
    modelOutput = [(CAARSchemaCAARModelExecuted *)self modelOutput];
    dictionaryRepresentation2 = [modelOutput dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"modelOutput"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"modelOutput"];
    }
  }

  if (self->_trialEnrollment)
  {
    trialEnrollment = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];
    dictionaryRepresentation3 = [trialEnrollment dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"trialEnrollment"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"trialEnrollment"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaAsset *)self->_asset hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isShadowLog;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(CAARSchemaCAARModelOutput *)self->_modelOutput hash];
  return v5 ^ v6 ^ [(CAARSchemaCAARTrialEnrollment *)self->_trialEnrollment hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  asset = [(CAARSchemaCAARModelExecuted *)self asset];
  asset2 = [equalCopy asset];
  if ((asset != 0) == (asset2 == 0))
  {
    goto LABEL_19;
  }

  asset3 = [(CAARSchemaCAARModelExecuted *)self asset];
  if (asset3)
  {
    v8 = asset3;
    asset4 = [(CAARSchemaCAARModelExecuted *)self asset];
    asset5 = [equalCopy asset];
    v11 = [asset4 isEqual:asset5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isShadowLog = self->_isShadowLog;
    if (isShadowLog != [equalCopy isShadowLog])
    {
      goto LABEL_20;
    }
  }

  asset = [(CAARSchemaCAARModelExecuted *)self modelOutput];
  asset2 = [equalCopy modelOutput];
  if ((asset != 0) == (asset2 == 0))
  {
    goto LABEL_19;
  }

  modelOutput = [(CAARSchemaCAARModelExecuted *)self modelOutput];
  if (modelOutput)
  {
    v14 = modelOutput;
    modelOutput2 = [(CAARSchemaCAARModelExecuted *)self modelOutput];
    modelOutput3 = [equalCopy modelOutput];
    v17 = [modelOutput2 isEqual:modelOutput3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  asset = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];
  asset2 = [equalCopy trialEnrollment];
  if ((asset != 0) != (asset2 == 0))
  {
    trialEnrollment = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];
    if (!trialEnrollment)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = trialEnrollment;
    trialEnrollment2 = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];
    trialEnrollment3 = [equalCopy trialEnrollment];
    v22 = [trialEnrollment2 isEqual:trialEnrollment3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  asset = [(CAARSchemaCAARModelExecuted *)self asset];

  if (asset)
  {
    asset2 = [(CAARSchemaCAARModelExecuted *)self asset];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  modelOutput = [(CAARSchemaCAARModelExecuted *)self modelOutput];

  if (modelOutput)
  {
    modelOutput2 = [(CAARSchemaCAARModelExecuted *)self modelOutput];
    PBDataWriterWriteSubmessage();
  }

  trialEnrollment = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];

  v9 = toCopy;
  if (trialEnrollment)
  {
    trialEnrollment2 = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = CAARSchemaCAARModelExecuted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  asset = [(CAARSchemaCAARModelExecuted *)self asset];
  v7 = [asset applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAARSchemaCAARModelExecuted *)self deleteAsset];
  }

  modelOutput = [(CAARSchemaCAARModelExecuted *)self modelOutput];
  v10 = [modelOutput applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAARSchemaCAARModelExecuted *)self deleteModelOutput];
  }

  trialEnrollment = [(CAARSchemaCAARModelExecuted *)self trialEnrollment];
  v13 = [trialEnrollment applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAARSchemaCAARModelExecuted *)self deleteTrialEnrollment];
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