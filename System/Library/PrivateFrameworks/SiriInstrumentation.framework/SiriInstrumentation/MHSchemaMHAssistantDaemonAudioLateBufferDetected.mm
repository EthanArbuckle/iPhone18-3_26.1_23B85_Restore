@interface MHSchemaMHAssistantDaemonAudioLateBufferDetected
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioLateBufferDetected)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioLateBufferDetected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioLateBufferDetected

- (MHSchemaMHAssistantDaemonAudioLateBufferDetected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioLateBufferDetected;
  v5 = [(MHSchemaMHAssistantDaemonAudioLateBufferDetected *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bufferReceiptTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioLateBufferDetected setBufferReceiptTimeOffsetInNs:](v5, "setBufferReceiptTimeOffsetInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioLateBufferDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioLateBufferDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioLateBufferDetected *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAssistantDaemonAudioLateBufferDetected bufferReceiptTimeOffsetInNs](self, "bufferReceiptTimeOffsetInNs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"bufferReceiptTimeOffsetInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_bufferReceiptTimeOffsetInNs;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[16] & 1))
    {
      if ((*&self->_has & 1) == 0 || (bufferReceiptTimeOffsetInNs = self->_bufferReceiptTimeOffsetInNs, bufferReceiptTimeOffsetInNs == [equalCopy bufferReceiptTimeOffsetInNs]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
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