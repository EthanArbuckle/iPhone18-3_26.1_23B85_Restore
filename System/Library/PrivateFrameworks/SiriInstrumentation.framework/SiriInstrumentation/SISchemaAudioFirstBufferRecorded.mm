@interface SISchemaAudioFirstBufferRecorded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaAudioFirstBufferRecorded)initWithDictionary:(id)dictionary;
- (SISchemaAudioFirstBufferRecorded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaAudioFirstBufferRecorded

- (SISchemaAudioFirstBufferRecorded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaAudioFirstBufferRecorded;
  v5 = [(SISchemaAudioFirstBufferRecorded *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioInputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAudioFirstBufferRecorded setAudioInputRoute:](v5, "setAudioInputRoute:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hardwareInterfaceVendorID"];
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

- (SISchemaAudioFirstBufferRecorded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaAudioFirstBufferRecorded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaAudioFirstBufferRecorded *)self dictionaryRepresentation];
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
    v4 = [(SISchemaAudioFirstBufferRecorded *)self audioInputRoute]- 1;
    if (v4 > 0xD)
    {
      v5 = @"AUDIOINPUTROUTE_UNKNOWN_AUDIO_INPUT_ROUTE";
    }

    else
    {
      v5 = off_1E78E33F0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioInputRoute"];
  }

  if (self->_hardwareInterfaceVendorID)
  {
    hardwareInterfaceVendorID = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
    dictionaryRepresentation = [hardwareInterfaceVendorID dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"hardwareInterfaceVendorID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"hardwareInterfaceVendorID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (audioInputRoute = self->_audioInputRoute, audioInputRoute == [equalCopy audioInputRoute]))
      {
        hardwareInterfaceVendorID = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
        hardwareInterfaceVendorID2 = [equalCopy hardwareInterfaceVendorID];
        v8 = hardwareInterfaceVendorID2;
        if ((hardwareInterfaceVendorID != 0) != (hardwareInterfaceVendorID2 == 0))
        {
          hardwareInterfaceVendorID3 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
          if (!hardwareInterfaceVendorID3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = hardwareInterfaceVendorID3;
          hardwareInterfaceVendorID4 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
          hardwareInterfaceVendorID5 = [equalCopy hardwareInterfaceVendorID];
          v13 = [hardwareInterfaceVendorID4 isEqual:hardwareInterfaceVendorID5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  hardwareInterfaceVendorID = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];

  v5 = toCopy;
  if (hardwareInterfaceVendorID)
  {
    hardwareInterfaceVendorID2 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaAudioFirstBufferRecorded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaAudioFirstBufferRecorded *)self hardwareInterfaceVendorID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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