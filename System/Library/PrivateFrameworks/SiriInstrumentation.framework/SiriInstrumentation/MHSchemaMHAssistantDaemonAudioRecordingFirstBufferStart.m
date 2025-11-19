@interface MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithDictionary:(id)a3;
- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart

- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart;
  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"firstBufferStartTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart setFirstBufferStartTimeOffsetInNs:](v5, "setFirstBufferStartTimeOffsetInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"audioInterfaceVendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)v5 setAudioInterfaceVendorId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"audioInterfaceProductName"];
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

- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self dictionaryRepresentation];
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
  if (self->_audioInterfaceProductName)
  {
    v4 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"audioInterfaceProductName"];
  }

  if (self->_audioInterfaceVendorId)
  {
    v6 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"audioInterfaceVendorId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart firstBufferStartTimeOffsetInNs](self, "firstBufferStartTimeOffsetInNs")}];
    [v3 setObject:v8 forKeyedSubscript:@"firstBufferStartTimeOffsetInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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
    firstBufferStartTimeOffsetInNs = self->_firstBufferStartTimeOffsetInNs;
    if (firstBufferStartTimeOffsetInNs != [v4 firstBufferStartTimeOffsetInNs])
    {
      goto LABEL_15;
    }
  }

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
  v7 = [v4 audioInterfaceVendorId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];
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

  v6 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
  v7 = [v4 audioInterfaceProductName];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];
    v16 = [v4 audioInterfaceProductName];
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
    PBDataWriterWriteUint64Field();
  }

  v4 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceVendorId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferStart *)self audioInterfaceProductName];

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