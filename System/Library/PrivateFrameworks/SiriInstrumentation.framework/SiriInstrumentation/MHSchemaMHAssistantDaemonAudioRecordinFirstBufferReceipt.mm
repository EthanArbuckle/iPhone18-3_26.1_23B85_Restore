@interface MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt

- (MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"firstBufferReceiptTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt setFirstBufferReceiptTimeOffsetInNs:](v5, "setFirstBufferReceiptTimeOffsetInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAssistantDaemonAudioRecordinFirstBufferReceipt firstBufferReceiptTimeOffsetInNs](self, "firstBufferReceiptTimeOffsetInNs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"firstBufferReceiptTimeOffsetInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761u * self->_firstBufferReceiptTimeOffsetInNs;
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
      if ((*&self->_has & 1) == 0 || (firstBufferReceiptTimeOffsetInNs = self->_firstBufferReceiptTimeOffsetInNs, firstBufferReceiptTimeOffsetInNs == [equalCopy firstBufferReceiptTimeOffsetInNs]))
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