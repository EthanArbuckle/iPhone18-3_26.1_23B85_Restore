@interface MHSchemaMHAssistantDaemonAudioRecordingFailed
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingFailed

- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHAssistantDaemonAudioRecordingFailed;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)v5 setAudioInterfaceVendorId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"audioInterfaceProductId"];
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

- (MHSchemaMHAssistantDaemonAudioRecordingFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self dictionaryRepresentation];
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
  if (self->_audioInterfaceProductId)
  {
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"audioInterfaceProductId"];
  }

  if (self->_audioInterfaceVendorId)
  {
    v6 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"audioInterfaceVendorId"];
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

    [v3 setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [v4 reason])
    {
      goto LABEL_15;
    }
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
  v7 = [v4 audioInterfaceVendorId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];
    v11 = [v4 audioInterfaceVendorId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
  v7 = [v4 audioInterfaceProductId];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];
    v16 = [v4 audioInterfaceProductId];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceVendorId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self audioInterfaceProductId];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end