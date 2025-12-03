@interface MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"avAudioSessionInterruptorName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)v5 setAvAudioSessionInterruptorName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"avAudioSessionInterruptionType"];
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

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self dictionaryRepresentation];
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
  if (self->_avAudioSessionInterruptionType)
  {
    avAudioSessionInterruptionType = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
    v5 = [avAudioSessionInterruptionType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"avAudioSessionInterruptionType"];
  }

  if (self->_avAudioSessionInterruptorName)
  {
    avAudioSessionInterruptorName = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
    v7 = [avAudioSessionInterruptorName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"avAudioSessionInterruptorName"];
  }

  if (self->_linkId)
  {
    linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_avAudioSessionInterruptorName hash]^ v3;
  return v4 ^ [(NSString *)self->_avAudioSessionInterruptionType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
  linkId2 = [equalCopy avAudioSessionInterruptorName];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  avAudioSessionInterruptorName = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
  if (avAudioSessionInterruptorName)
  {
    v13 = avAudioSessionInterruptorName;
    avAudioSessionInterruptorName2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];
    avAudioSessionInterruptorName3 = [equalCopy avAudioSessionInterruptorName];
    v16 = [avAudioSessionInterruptorName2 isEqual:avAudioSessionInterruptorName3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
  linkId2 = [equalCopy avAudioSessionInterruptionType];
  if ((linkId != 0) != (linkId2 == 0))
  {
    avAudioSessionInterruptionType = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
    if (!avAudioSessionInterruptionType)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = avAudioSessionInterruptionType;
    avAudioSessionInterruptionType2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];
    avAudioSessionInterruptionType3 = [equalCopy avAudioSessionInterruptionType];
    v21 = [avAudioSessionInterruptionType2 isEqual:avAudioSessionInterruptionType3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];

  if (linkId)
  {
    linkId2 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  avAudioSessionInterruptorName = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptorName];

  if (avAudioSessionInterruptorName)
  {
    PBDataWriterWriteStringField();
  }

  avAudioSessionInterruptionType = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self avAudioSessionInterruptionType];

  v8 = toCopy;
  if (avAudioSessionInterruptionType)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStarted *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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