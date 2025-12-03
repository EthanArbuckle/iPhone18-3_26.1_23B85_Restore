@interface SISchemaTextToSpeechBegin
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTextToSpeechBegin)initWithDictionary:(id)dictionary;
- (SISchemaTextToSpeechBegin)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTextToSpeechBegin

- (SISchemaTextToSpeechBegin)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaTextToSpeechBegin;
  v5 = [(SISchemaTextToSpeechBegin *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaTextToSpeechBegin *)v5 setAceID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioOutputRoute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaTextToSpeechBegin setAudioOutputRoute:](v5, "setAudioOutputRoute:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hardwareInterfaceVendorID"];
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

- (SISchemaTextToSpeechBegin)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTextToSpeechBegin *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTextToSpeechBegin *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    aceID = [(SISchemaTextToSpeechBegin *)self aceID];
    v5 = [aceID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceID"];
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

    [dictionary setObject:v7 forKeyedSubscript:@"audioOutputRoute"];
  }

  if (self->_hardwareInterfaceVendorID)
  {
    hardwareInterfaceVendorID = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  aceID = [(SISchemaTextToSpeechBegin *)self aceID];
  aceID2 = [equalCopy aceID];
  if ((aceID != 0) == (aceID2 == 0))
  {
    goto LABEL_14;
  }

  aceID3 = [(SISchemaTextToSpeechBegin *)self aceID];
  if (aceID3)
  {
    v8 = aceID3;
    aceID4 = [(SISchemaTextToSpeechBegin *)self aceID];
    aceID5 = [equalCopy aceID];
    v11 = [aceID4 isEqual:aceID5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    audioOutputRoute = self->_audioOutputRoute;
    if (audioOutputRoute != [equalCopy audioOutputRoute])
    {
      goto LABEL_15;
    }
  }

  aceID = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
  aceID2 = [equalCopy hardwareInterfaceVendorID];
  if ((aceID != 0) != (aceID2 == 0))
  {
    hardwareInterfaceVendorID = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    if (!hardwareInterfaceVendorID)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = hardwareInterfaceVendorID;
    hardwareInterfaceVendorID2 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    hardwareInterfaceVendorID3 = [equalCopy hardwareInterfaceVendorID];
    v17 = [hardwareInterfaceVendorID2 isEqual:hardwareInterfaceVendorID3];

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
  aceID = [(SISchemaTextToSpeechBegin *)self aceID];

  if (aceID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  hardwareInterfaceVendorID = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];

  v6 = toCopy;
  if (hardwareInterfaceVendorID)
  {
    hardwareInterfaceVendorID2 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaTextToSpeechBegin;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaTextToSpeechBegin *)self hardwareInterfaceVendorID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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