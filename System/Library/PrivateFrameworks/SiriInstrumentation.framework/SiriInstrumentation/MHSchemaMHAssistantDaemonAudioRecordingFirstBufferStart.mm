@interface MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart

- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"firstBufferStartTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart setFirstBufferStartTimeOffsetInNs:](v5, "setFirstBufferStartTimeOffsetInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)v5 setAudioInterfaceVendorId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)v5 setAudioInterfaceProductName:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self dictionaryRepresentation];
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
  if (self->_audioInterfaceProductName)
  {
    audioInterfaceProductName = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
    v5 = [audioInterfaceProductName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"audioInterfaceProductName"];
  }

  if (self->_audioInterfaceVendorId)
  {
    audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
    v7 = [audioInterfaceVendorId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart firstBufferStartTimeOffsetInNs](self, "firstBufferStartTimeOffsetInNs")}];
    [dictionary setObject:v8 forKeyedSubscript:@"firstBufferStartTimeOffsetInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_firstBufferStartTimeOffsetInNs;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_audioInterfaceVendorId hash]^ v3;
  return v4 ^ [(NSString *)self->_audioInterfaceProductName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    firstBufferStartTimeOffsetInNs = self->_firstBufferStartTimeOffsetInNs;
    if (firstBufferStartTimeOffsetInNs != [equalCopy firstBufferStartTimeOffsetInNs])
    {
      goto LABEL_15;
    }
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
  audioInterfaceVendorId2 = [equalCopy audioInterfaceVendorId];
  if ((audioInterfaceVendorId != 0) == (audioInterfaceVendorId2 == 0))
  {
    goto LABEL_14;
  }

  audioInterfaceVendorId3 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
  if (audioInterfaceVendorId3)
  {
    v9 = audioInterfaceVendorId3;
    audioInterfaceVendorId4 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
    audioInterfaceVendorId5 = [equalCopy audioInterfaceVendorId];
    v12 = [audioInterfaceVendorId4 isEqual:audioInterfaceVendorId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
  audioInterfaceVendorId2 = [equalCopy audioInterfaceProductName];
  if ((audioInterfaceVendorId != 0) != (audioInterfaceVendorId2 == 0))
  {
    audioInterfaceProductName = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
    if (!audioInterfaceProductName)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = audioInterfaceProductName;
    audioInterfaceProductName2 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
    audioInterfaceProductName3 = [equalCopy audioInterfaceProductName];
    v17 = [audioInterfaceProductName2 isEqual:audioInterfaceProductName3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];

  if (audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  audioInterfaceProductName = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];

  v6 = toCopy;
  if (audioInterfaceProductName)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end