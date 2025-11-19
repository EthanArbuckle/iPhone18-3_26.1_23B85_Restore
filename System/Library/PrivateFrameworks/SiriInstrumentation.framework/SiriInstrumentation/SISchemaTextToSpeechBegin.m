@interface SISchemaTextToSpeechBegin
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaTextToSpeechBegin)initWithDictionary:(id)a3;
- (SISchemaTextToSpeechBegin)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaTextToSpeechBegin

- (SISchemaTextToSpeechBegin)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaTextToSpeechBegin;
  v5 = [(SISchemaTextToSpeechBegin *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"aceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaTextToSpeechBegin *)v5 setAceID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"audioOutputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaTextToSpeechBegin setAudioOutputRoute:](v5, "setAudioOutputRoute:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hardwareInterfaceVendorID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaHardwareInterfaceIdentifier alloc] initWithDictionary:v9];
      [(SISchemaTextToSpeechBegin *)v5 setHardwareInterfaceVendorID:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaTextToSpeechBegin)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaTextToSpeechBegin *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaTextToSpeechBegin *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    v4 = [(SISchemaTextToSpeechBegin *)self aceID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceID"];
  }

  if (*&self->_has)
  {
    v6 = [(SISchemaTextToSpeechBegin *)self audioOutputRoute]- 1;
    if (v6 > 6)
    {
      v7 = @"AUDIOOUTPUTROUTE_UNKNOWN_AUDIO_OUTPUT_ROUTE";
    }

    else
    {
      v7 = off_1E78E6558[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"audioOutputRoute"];
  }

  if (self->_hardwareInterfaceVendorID)
  {
    v8 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"hardwareInterfaceVendorID"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"hardwareInterfaceVendorID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_aceID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_audioOutputRoute;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaHardwareInterfaceIdentifier *)self->_hardwareInterfaceVendorID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SISchemaTextToSpeechBegin *)self aceID];
  v6 = [v4 aceID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SISchemaTextToSpeechBegin *)self aceID];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaTextToSpeechBegin *)self aceID];
    v10 = [v4 aceID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    audioOutputRoute = self->_audioOutputRoute;
    if (audioOutputRoute != [v4 audioOutputRoute])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
  v6 = [v4 hardwareInterfaceVendorID];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    v16 = [v4 hardwareInterfaceVendorID];
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
  v8 = a3;
  v4 = [(SISchemaTextToSpeechBegin *)self aceID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];

  v6 = v8;
  if (v5)
  {
    v7 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaTextToSpeechBegin;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaTextToSpeechBegin *)self deleteHardwareInterfaceVendorID];
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