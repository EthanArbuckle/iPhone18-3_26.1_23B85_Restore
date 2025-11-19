@interface MHSchemaMHUserSpeakingContext
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHUserSpeakingContext)initWithDictionary:(id)a3;
- (MHSchemaMHUserSpeakingContext)initWithJSON:(id)a3;
- (MHSchemaMHUserSpeakingEnded)ended;
- (MHSchemaMHUserSpeakingStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHUserSpeakingContext

- (MHSchemaMHUserSpeakingContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MHSchemaMHUserSpeakingContext;
  v5 = [(MHSchemaMHUserSpeakingContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHUserSpeakingStarted alloc] initWithDictionary:v6];
      [(MHSchemaMHUserSpeakingContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHUserSpeakingEnded alloc] initWithDictionary:v8];
      [(MHSchemaMHUserSpeakingContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(MHSchemaMHUserSpeakingContext *)v5 setTrpId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHUserSpeakingContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHUserSpeakingContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHUserSpeakingContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    v4 = [(MHSchemaMHUserSpeakingContext *)self ended];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ended"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_startedOrChanged)
  {
    v7 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  if (self->_trpId)
  {
    v10 = [(MHSchemaMHUserSpeakingContext *)self trpId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(MHSchemaMHUserSpeakingStarted *)self->_startedOrChanged hash];
  v4 = [(MHSchemaMHUserSpeakingEnded *)self->_ended hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_trpId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_18;
  }

  v6 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHUserSpeakingContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(MHSchemaMHUserSpeakingContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(MHSchemaMHUserSpeakingContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHUserSpeakingContext *)self trpId];
  v7 = [v4 trpId];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(MHSchemaMHUserSpeakingContext *)self trpId];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(MHSchemaMHUserSpeakingContext *)self trpId];
    v21 = [v4 trpId];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHUserSpeakingContext *)self ended];

  if (v6)
  {
    v7 = [(MHSchemaMHUserSpeakingContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MHSchemaMHUserSpeakingContext *)self trpId];

  v9 = v11;
  if (v8)
  {
    v10 = [(MHSchemaMHUserSpeakingContext *)self trpId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHUserSpeakingEnded)ended
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnded:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  self->_whichContextevent = 2 * (v4 != 0);
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHUserSpeakingStarted)startedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)a3
{
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = v4 != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MHSchemaMHUserSpeakingContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHUserSpeakingContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHUserSpeakingContext *)self deleteStartedOrChanged];
  }

  v9 = [(MHSchemaMHUserSpeakingContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHUserSpeakingContext *)self deleteEnded];
  }

  v12 = [(MHSchemaMHUserSpeakingContext *)self trpId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MHSchemaMHUserSpeakingContext *)self deleteTrpId];
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