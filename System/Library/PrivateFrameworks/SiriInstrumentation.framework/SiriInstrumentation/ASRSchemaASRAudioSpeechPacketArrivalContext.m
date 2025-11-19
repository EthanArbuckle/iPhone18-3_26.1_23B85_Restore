@interface ASRSchemaASRAudioSpeechPacketArrivalContext
- (ASRSchemaASRAudioSpeechPacketArrivalContext)initWithDictionary:(id)a3;
- (ASRSchemaASRAudioSpeechPacketArrivalContext)initWithJSON:(id)a3;
- (ASRSchemaASRAudioSpeechPacketArrivalEnded)ended;
- (ASRSchemaASRAudioSpeechPacketArrivalStarted)startedOrChanged;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRAudioSpeechPacketArrivalContext

- (ASRSchemaASRAudioSpeechPacketArrivalContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRAudioSpeechPacketArrivalContext;
  v5 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRAudioSpeechPacketArrivalStarted alloc] initWithDictionary:v6];
      [(ASRSchemaASRAudioSpeechPacketArrivalContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRAudioSpeechPacketArrivalEnded alloc] initWithDictionary:v8];
      [(ASRSchemaASRAudioSpeechPacketArrivalContext *)v5 setEnded:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSchemaASRAudioSpeechPacketArrivalContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self dictionaryRepresentation];
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
    v4 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];
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
    v7 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_13;
  }

  v6 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];
    v11 = [v4 startedOrChanged];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];

  if (v6)
  {
    v7 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAudioSpeechPacketArrivalEnded)ended
{
  if (self->_whichContextevent == 102)
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

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = v4;
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

- (ASRSchemaASRAudioSpeechPacketArrivalStarted)startedOrChanged
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
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRAudioSpeechPacketArrivalContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self deleteStartedOrChanged];
  }

  v9 = [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ASRSchemaASRAudioSpeechPacketArrivalContext *)self deleteEnded];
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