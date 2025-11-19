@interface MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"avAudioSessionInterruptorName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)v5 setAvAudioSessionInterruptorName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"avAudioSessionInterruptionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)v5 setAvAudioSessionInterruptionType:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self dictionaryRepresentation];
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
  if (self->_avAudioSessionInterruptionType)
  {
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"avAudioSessionInterruptionType"];
  }

  if (self->_avAudioSessionInterruptorName)
  {
    v6 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"avAudioSessionInterruptorName"];
  }

  if (self->_linkId)
  {
    v8 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_avAudioSessionInterruptorName hash]^ v3;
  return v4 ^ [(NSString *)self->_avAudioSessionInterruptionType hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
  v6 = [v4 avAudioSessionInterruptorName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
  if (v12)
  {
    v13 = v12;
    v14 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
    v15 = [v4 avAudioSessionInterruptorName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
  v6 = [v4 avAudioSessionInterruptionType];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
    v20 = [v4 avAudioSessionInterruptionType];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];

  if (v4)
  {
    v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self deleteLinkId];
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