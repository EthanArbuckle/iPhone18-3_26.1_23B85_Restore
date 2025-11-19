@interface ASRSchemaASREmbeddedSpeechProcessContext
- (ASRSchemaASREmbeddedSpeechProcessContext)initWithDictionary:(id)a3;
- (ASRSchemaASREmbeddedSpeechProcessContext)initWithJSON:(id)a3;
- (ASRSchemaASREmbeddedSpeechProcessStarted)startedOrChanged;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteStartedOrChanged;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASREmbeddedSpeechProcessContext

- (ASRSchemaASREmbeddedSpeechProcessContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASRSchemaASREmbeddedSpeechProcessContext;
  v5 = [(ASRSchemaASREmbeddedSpeechProcessContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASREmbeddedSpeechProcessStarted alloc] initWithDictionary:v6];
      [(ASRSchemaASREmbeddedSpeechProcessContext *)v5 setStartedOrChanged:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASRSchemaASREmbeddedSpeechProcessContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASREmbeddedSpeechProcessContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self dictionaryRepresentation];
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
  if (self->_startedOrChanged)
  {
    v4 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichContextevent = self->_whichContextevent;
    if (whichContextevent == [v4 whichContextevent])
    {
      v6 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
      v7 = [v4 startedOrChanged];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
        v12 = [v4 startedOrChanged];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASREmbeddedSpeechProcessStarted)startedOrChanged
{
  if (self->_whichContextevent == 101)
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
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichContextevent = v3;
  objc_storeStrong(&self->_startedOrChanged, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASREmbeddedSpeechProcessContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ASRSchemaASREmbeddedSpeechProcessContext *)self deleteStartedOrChanged];
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