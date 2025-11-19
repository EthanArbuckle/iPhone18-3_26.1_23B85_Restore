@interface NLXSchemaCDMAssetSetupContext
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMAssetSetupContext)initWithDictionary:(id)a3;
- (NLXSchemaCDMAssetSetupContext)initWithJSON:(id)a3;
- (NLXSchemaCDMAssetSetupEnded)ended;
- (NLXSchemaCDMAssetSetupFailed)failed;
- (NLXSchemaCDMAssetSetupStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)a3;
- (void)setFailed:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMAssetSetupContext

- (NLXSchemaCDMAssetSetupStarted)startedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAssetSetupEnded)ended
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAssetSetupFailed)failed
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLXSchemaCDMAssetSetupContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NLXSchemaCDMAssetSetupContext;
  v5 = [(NLXSchemaCDMAssetSetupContext *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMAssetSetupContext *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaCDMAssetSetupStarted alloc] initWithDictionary:v8];
      [(NLXSchemaCDMAssetSetupContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMAssetSetupEnded alloc] initWithDictionary:v10];
      [(NLXSchemaCDMAssetSetupContext *)v5 setEnded:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaCDMAssetSetupFailed alloc] initWithDictionary:v12];
      [(NLXSchemaCDMAssetSetupContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (NLXSchemaCDMAssetSetupContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMAssetSetupContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMAssetSetupContext *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    v4 = [(NLXSchemaCDMAssetSetupContext *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    v7 = [(NLXSchemaCDMAssetSetupContext *)self ended];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"ended"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    v10 = [(NLXSchemaCDMAssetSetupContext *)self failed];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"failed"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    v13 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(NLXSchemaCDMAssetSetupStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(NLXSchemaCDMAssetSetupEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(NLXSchemaCDMAssetSetupFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_23;
  }

  v6 = [(NLXSchemaCDMAssetSetupContext *)self contextId];
  v7 = [v4 contextId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(NLXSchemaCDMAssetSetupContext *)self contextId];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLXSchemaCDMAssetSetupContext *)self contextId];
    v11 = [v4 contextId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];
    v16 = [v4 startedOrChanged];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMAssetSetupContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(NLXSchemaCDMAssetSetupContext *)self ended];
  if (v18)
  {
    v19 = v18;
    v20 = [(NLXSchemaCDMAssetSetupContext *)self ended];
    v21 = [v4 ended];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(NLXSchemaCDMAssetSetupContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(NLXSchemaCDMAssetSetupContext *)self failed];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(NLXSchemaCDMAssetSetupContext *)self failed];
    v26 = [v4 failed];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(NLXSchemaCDMAssetSetupContext *)self contextId];

  if (v4)
  {
    v5 = [(NLXSchemaCDMAssetSetupContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];

  if (v6)
  {
    v7 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLXSchemaCDMAssetSetupContext *)self ended];

  if (v8)
  {
    v9 = [(NLXSchemaCDMAssetSetupContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NLXSchemaCDMAssetSetupContext *)self failed];

  v11 = v13;
  if (v10)
  {
    v12 = [(NLXSchemaCDMAssetSetupContext *)self failed];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFailed:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 4 * (v4 != 0);
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEnded:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setStartedOrChanged:(id)a3
{
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (v4 != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NLXSchemaCDMAssetSetupContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMAssetSetupContext *)self contextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMAssetSetupContext *)self deleteContextId];
  }

  v9 = [(NLXSchemaCDMAssetSetupContext *)self startedOrChanged];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaCDMAssetSetupContext *)self deleteStartedOrChanged];
  }

  v12 = [(NLXSchemaCDMAssetSetupContext *)self ended];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaCDMAssetSetupContext *)self deleteEnded];
  }

  v15 = [(NLXSchemaCDMAssetSetupContext *)self failed];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLXSchemaCDMAssetSetupContext *)self deleteFailed];
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