@interface MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"lastAudioRecordBufferStartTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart setLastAudioRecordBufferStartTimeOffsetInNs:](v5, "setLastAudioRecordBufferStartTimeOffsetInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAssistantDaemonAudioRecordingLastBufferStart lastAudioRecordBufferStartTimeOffsetInNs](self, "lastAudioRecordBufferStartTimeOffsetInNs")}];
    [v3 setObject:v4 forKeyedSubscript:@"lastAudioRecordBufferStartTimeOffsetInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_lastAudioRecordBufferStartTimeOffsetInNs;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[16] & 1))
    {
      if ((*&self->_has & 1) == 0 || (lastAudioRecordBufferStartTimeOffsetInNs = self->_lastAudioRecordBufferStartTimeOffsetInNs, lastAudioRecordBufferStartTimeOffsetInNs == [v4 lastAudioRecordBufferStartTimeOffsetInNs]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end