@interface JRSchemaJRInferenceContext
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRInferenceContext)initWithDictionary:(id)a3;
- (JRSchemaJRInferenceContext)initWithJSON:(id)a3;
- (JRSchemaJRInferenceEnded)ended;
- (JRSchemaJRInferenceFailed)failed;
- (JRSchemaJRInferenceStarted)started;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStarted;
- (void)setEnded:(id)a3;
- (void)setFailed:(id)a3;
- (void)setStarted:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRInferenceContext

- (JRSchemaJRInferenceContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = JRSchemaJRInferenceContext;
  v5 = [(JRSchemaJRInferenceContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRInferenceStarted alloc] initWithDictionary:v6];
      [(JRSchemaJRInferenceContext *)v5 setStarted:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRInferenceFailed alloc] initWithDictionary:v8];
      [(JRSchemaJRInferenceContext *)v5 setFailed:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[JRSchemaJRInferenceEnded alloc] initWithDictionary:v10];
      [(JRSchemaJRInferenceContext *)v5 setEnded:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (JRSchemaJRInferenceContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRInferenceContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRInferenceContext *)self dictionaryRepresentation];
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
    v4 = [(JRSchemaJRInferenceContext *)self ended];
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

  if (self->_failed)
  {
    v7 = [(JRSchemaJRInferenceContext *)self failed];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"failed"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_started)
  {
    v10 = [(JRSchemaJRInferenceContext *)self started];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"started"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"started"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(JRSchemaJRInferenceStarted *)self->_started hash];
  v4 = [(JRSchemaJRInferenceFailed *)self->_failed hash]^ v3;
  return v4 ^ [(JRSchemaJRInferenceEnded *)self->_ended hash];
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

  v6 = [(JRSchemaJRInferenceContext *)self started];
  v7 = [v4 started];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(JRSchemaJRInferenceContext *)self started];
  if (v8)
  {
    v9 = v8;
    v10 = [(JRSchemaJRInferenceContext *)self started];
    v11 = [v4 started];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(JRSchemaJRInferenceContext *)self failed];
  v7 = [v4 failed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(JRSchemaJRInferenceContext *)self failed];
  if (v13)
  {
    v14 = v13;
    v15 = [(JRSchemaJRInferenceContext *)self failed];
    v16 = [v4 failed];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(JRSchemaJRInferenceContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(JRSchemaJRInferenceContext *)self ended];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(JRSchemaJRInferenceContext *)self ended];
    v21 = [v4 ended];
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
  v4 = [(JRSchemaJRInferenceContext *)self started];

  if (v4)
  {
    v5 = [(JRSchemaJRInferenceContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(JRSchemaJRInferenceContext *)self failed];

  if (v6)
  {
    v7 = [(JRSchemaJRInferenceContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(JRSchemaJRInferenceContext *)self ended];

  v9 = v11;
  if (v8)
  {
    v10 = [(JRSchemaJRInferenceContext *)self ended];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceEnded)ended
{
  if (self->_whichContextevent == 103)
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
  started = self->_started;
  self->_started = 0;

  failed = self->_failed;
  self->_failed = 0;

  v7 = 103;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = v4;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceFailed)failed
{
  if (self->_whichContextevent == 102)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)a3
{
  v4 = a3;
  started = self->_started;
  self->_started = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 102;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = v4;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_started = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceStarted)started
{
  if (self->_whichContextevent == 101)
  {
    v3 = self->_started;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStarted:(id)a3
{
  v4 = a3;
  failed = self->_failed;
  self->_failed = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 101;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  started = self->_started;
  self->_started = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = JRSchemaJRInferenceContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaJRInferenceContext *)self started];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaJRInferenceContext *)self deleteStarted];
  }

  v9 = [(JRSchemaJRInferenceContext *)self failed];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(JRSchemaJRInferenceContext *)self deleteFailed];
  }

  v12 = [(JRSchemaJRInferenceContext *)self ended];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(JRSchemaJRInferenceContext *)self deleteEnded];
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