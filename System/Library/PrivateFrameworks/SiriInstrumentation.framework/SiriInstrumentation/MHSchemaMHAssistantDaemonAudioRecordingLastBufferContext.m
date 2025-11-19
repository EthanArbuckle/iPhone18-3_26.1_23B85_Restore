@interface MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext)initWithJSON:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferReceipt)ended;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart)startedOrChanged;
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

@implementation MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart alloc] initWithDictionary:v6];
      [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHAssistantDaemonAudioRecordingLastBufferReceipt alloc] initWithDictionary:v8];
      [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)v5 setEnded:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self dictionaryRepresentation];
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
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];
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
    v7 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];
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

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];
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

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];
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
  v4 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];

  if (v4)
  {
    v5 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];

  if (v6)
  {
    v7 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];
    PBDataWriterWriteSubmessage();
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

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferReceipt)ended
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

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart)startedOrChanged
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
  v13.receiver = self;
  v13.super_class = MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self startedOrChanged];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self deleteStartedOrChanged];
  }

  v9 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self ended];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self deleteEnded];
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