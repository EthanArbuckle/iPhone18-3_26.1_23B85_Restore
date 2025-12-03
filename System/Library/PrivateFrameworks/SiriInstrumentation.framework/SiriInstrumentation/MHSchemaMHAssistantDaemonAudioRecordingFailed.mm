@interface MHSchemaMHAssistantDaemonAudioRecordingFailed
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingFailed

- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = MHSchemaMHAssistantDaemonAudioRecordingFailed;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)v5 setAudioInterfaceVendorId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)v5 setAudioInterfaceProductId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self dictionaryRepresentation];
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
  if (self->_audioInterfaceProductId)
  {
    audioInterfaceProductId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
    v5 = [audioInterfaceProductId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
    v7 = [audioInterfaceVendorId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  if (*&self->_has)
  {
    if ([(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self reason]== 1)
    {
      v8 = @"MHSPEECHERRORTYPE_SPEECH_PREPARE_FAILED";
    }

    else
    {
      v8 = @"MHSPEECHERRORTYPE_UNKNOWN";
    }

    [dictionary setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_audioInterfaceVendorId hash]^ v3;
  return v4 ^ [(NSString *)self->_audioInterfaceProductId hash];
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
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_15;
    }
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
  audioInterfaceVendorId2 = [equalCopy audioInterfaceVendorId];
  if ((audioInterfaceVendorId != 0) == (audioInterfaceVendorId2 == 0))
  {
    goto LABEL_14;
  }

  audioInterfaceVendorId3 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
  if (audioInterfaceVendorId3)
  {
    v9 = audioInterfaceVendorId3;
    audioInterfaceVendorId4 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
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

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
  audioInterfaceVendorId2 = [equalCopy audioInterfaceProductId];
  if ((audioInterfaceVendorId != 0) != (audioInterfaceVendorId2 == 0))
  {
    audioInterfaceProductId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
    if (!audioInterfaceProductId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = audioInterfaceProductId;
    audioInterfaceProductId2 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
    audioInterfaceProductId3 = [equalCopy audioInterfaceProductId];
    v17 = [audioInterfaceProductId2 isEqual:audioInterfaceProductId3];

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
    PBDataWriterWriteInt32Field();
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];

  if (audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  audioInterfaceProductId = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];

  v6 = toCopy;
  if (audioInterfaceProductId)
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