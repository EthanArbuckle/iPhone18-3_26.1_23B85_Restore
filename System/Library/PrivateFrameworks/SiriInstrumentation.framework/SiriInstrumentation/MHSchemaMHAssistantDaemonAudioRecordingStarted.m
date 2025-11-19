@interface MHSchemaMHAssistantDaemonAudioRecordingStarted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingStarted

- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MHSchemaMHAssistantDaemonAudioRecordingStarted;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioInputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingStarted setAudioInputRoute:](v5, "setAudioInputRoute:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingStarted setSource:](v5, "setSource:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)v5 setAudioInterfaceVendorId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioInterfaceProductId"];
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

- (MHSchemaMHAssistantDaemonAudioRecordingStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self dictionaryRepresentation];
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
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInputRoute]- 1;
    if (v4 > 0xE)
    {
      v5 = @"AUDIOINPUTROUTE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D9230[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioInputRoute"];
  }

  if (self->_audioInterfaceProductId)
  {
    v6 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    v8 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"audioInterfaceVendorId"];
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

    [v3 setObject:v11 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    audioInputRoute = self->_audioInputRoute;
    if (audioInputRoute != [v4 audioInputRoute])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    source = self->_source;
    if (source != [v4 source])
    {
      goto LABEL_19;
    }
  }

  v10 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
  v11 = [v4 audioInterfaceVendorId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
  if (v12)
  {
    v13 = v12;
    v14 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];
    v15 = [v4 audioInterfaceVendorId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
  v11 = [v4 audioInterfaceProductId];
  if ((v10 != 0) != (v11 == 0))
  {
    v17 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
    if (!v17)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = v17;
    v19 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];
    v20 = [v4 audioInterfaceProductId];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceVendorId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingStarted *)self audioInterfaceProductId];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)setHasSource:(BOOL)a3
{
  if (a3)
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