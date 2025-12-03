@interface MHSchemaMHAssistantDaemonAudioRecordingStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingStarted

- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MHSchemaMHAssistantDaemonAudioRecordingStarted;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioInputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingStarted setAudioInputRoute:](v5, "setAudioInputRoute:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingStarted setSource:](v5, "setSource:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)v5 setAudioInterfaceVendorId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioInterfaceProductId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)v5 setAudioInterfaceProductId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self dictionaryRepresentation];
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
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInputRoute]- 1;
    if (v4 > 0xE)
    {
      v5 = @"AUDIOINPUTROUTE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D9230[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioInputRoute"];
  }

  if (self->_audioInterfaceProductId)
  {
    audioInterfaceProductId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
    v7 = [audioInterfaceProductId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
    v9 = [audioInterfaceVendorId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self source]- 1;
    if (v10 > 7)
    {
      v11 = @"MHASSISTANTDAEMONAUDIOSOURCE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D92A8[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_audioInputRoute;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_source;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_audioInterfaceVendorId hash];
  return v5 ^ [(NSString *)self->_audioInterfaceProductId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    audioInputRoute = self->_audioInputRoute;
    if (audioInputRoute != [equalCopy audioInputRoute])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_19;
    }
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
  audioInterfaceVendorId2 = [equalCopy audioInterfaceVendorId];
  if ((audioInterfaceVendorId != 0) == (audioInterfaceVendorId2 == 0))
  {
    goto LABEL_18;
  }

  audioInterfaceVendorId3 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
  if (audioInterfaceVendorId3)
  {
    v13 = audioInterfaceVendorId3;
    audioInterfaceVendorId4 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
    audioInterfaceVendorId5 = [equalCopy audioInterfaceVendorId];
    v16 = [audioInterfaceVendorId4 isEqual:audioInterfaceVendorId5];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
  audioInterfaceVendorId2 = [equalCopy audioInterfaceProductId];
  if ((audioInterfaceVendorId != 0) != (audioInterfaceVendorId2 == 0))
  {
    audioInterfaceProductId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
    if (!audioInterfaceProductId)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = audioInterfaceProductId;
    audioInterfaceProductId2 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
    audioInterfaceProductId3 = [equalCopy audioInterfaceProductId];
    v21 = [audioInterfaceProductId2 isEqual:audioInterfaceProductId3];

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  audioInterfaceVendorId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];

  if (audioInterfaceVendorId)
  {
    PBDataWriterWriteStringField();
  }

  audioInterfaceProductId = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];

  v7 = toCopy;
  if (audioInterfaceProductId)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end