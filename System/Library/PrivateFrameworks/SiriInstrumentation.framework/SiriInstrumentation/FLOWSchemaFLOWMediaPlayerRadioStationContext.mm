@interface FLOWSchemaFLOWMediaPlayerRadioStationContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWMediaPlayerRadioStationContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWMediaPlayerRadioStationContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWMediaPlayerRadioStationContext

- (FLOWSchemaFLOWMediaPlayerRadioStationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWMediaPlayerRadioStationContext;
  v5 = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"radioStationSubtype"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerRadioStationContext setRadioStationSubtype:](v5, "setRadioStationSubtype:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerRadioStationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId];
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

  if (*&self->_has)
  {
    v7 = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self radioStationSubtype]- 1;
    if (v7 > 7)
    {
      v8 = @"FLOWMEDIAPLAYERRADIOSTATIONSUBTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D5F00[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"radioStationSubtype"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_radioStationSubtype;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  linkId = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId];
  linkId2 = [equalCopy linkId];
  v7 = linkId2;
  if ((linkId != 0) == (linkId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  linkId3 = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId];
  if (linkId3)
  {
    v9 = linkId3;
    linkId4 = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId];
    linkId5 = [equalCopy linkId];
    v12 = [linkId4 isEqual:linkId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    radioStationSubtype = self->_radioStationSubtype;
    if (radioStationSubtype != [equalCopy radioStationSubtype])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWMediaPlayerRadioStationContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWSchemaFLOWMediaPlayerRadioStationContext *)self deleteLinkId];
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