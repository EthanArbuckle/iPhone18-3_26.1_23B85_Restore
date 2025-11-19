@interface SISchemaAudioFirstBufferRecorded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaAudioFirstBufferRecorded)initWithDictionary:(id)a3;
- (SISchemaAudioFirstBufferRecorded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaAudioFirstBufferRecorded

- (SISchemaAudioFirstBufferRecorded)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaAudioFirstBufferRecorded;
  v5 = [(SISchemaAudioFirstBufferRecorded *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioInputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAudioFirstBufferRecorded setAudioInputRoute:](v5, "setAudioInputRoute:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"hardwareInterfaceVendorID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaHardwareInterfaceIdentifier alloc] initWithDictionary:v7];
      [(SISchemaAudioFirstBufferRecorded *)v5 setHardwareInterfaceVendorID:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaAudioFirstBufferRecorded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaAudioFirstBufferRecorded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaAudioFirstBufferRecorded *)self dictionaryRepresentation];
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
    v4 = [(SISchemaAudioFirstBufferRecorded *)self audioInputRoute]- 1;
    if (v4 > 0xD)
    {
      v5 = @"AUDIOINPUTROUTE_UNKNOWN_AUDIO_INPUT_ROUTE";
    }

    else
    {
      v5 = off_1E78E33F0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioInputRoute"];
  }

  if (self->_hardwareInterfaceVendorID)
  {
    v6 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"hardwareInterfaceVendorID"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"hardwareInterfaceVendorID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_audioInputRoute;
  }

  else
  {
    v2 = 0;
  }

  return [(SISchemaHardwareInterfaceIdentifier *)self->_hardwareInterfaceVendorID hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (audioInputRoute = self->_audioInputRoute, audioInputRoute == [v4 audioInputRoute]))
      {
        v6 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
        v7 = [v4 hardwareInterfaceVendorID];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
          v12 = [v4 hardwareInterfaceVendorID];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];

  v5 = v7;
  if (v4)
  {
    v6 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaAudioFirstBufferRecorded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaAudioFirstBufferRecorded *)self deleteHardwareInterfaceVendorID];
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