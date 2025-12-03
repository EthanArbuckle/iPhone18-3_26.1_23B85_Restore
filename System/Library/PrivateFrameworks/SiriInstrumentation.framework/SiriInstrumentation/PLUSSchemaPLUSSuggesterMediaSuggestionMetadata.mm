@interface PLUSSchemaPLUSSuggesterMediaSuggestionMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasClientTreatment:(BOOL)treatment;
- (void)setHasServerTreatment:(BOOL)treatment;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggesterMediaSuggestionMetadata

- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PLUSSchemaPLUSSuggesterMediaSuggestionMetadata;
  v5 = [(PLUSSchemaPLUSSuggesterMediaSuggestionMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterMediaSuggestionMetadata setLocality:](v5, "setLocality:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"serverTreatment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterMediaSuggestionMetadata setServerTreatment:](v5, "setServerTreatment:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientTreatment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterMediaSuggestionMetadata setClientTreatment:](v5, "setClientTreatment:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterMediaSuggestionMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggesterMediaSuggestionMetadata *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = [(PLUSSchemaPLUSSuggesterMediaSuggestionMetadata *)self locality]- 1;
    if (v7 > 2)
    {
      v8 = @"PLUSMEDIASUGGESTIONLOCALITY_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E0A18[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"locality"];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v5 = [(PLUSSchemaPLUSSuggesterMediaSuggestionMetadata *)self clientTreatment]- 1;
  if (v5 > 0xD)
  {
    v6 = @"PLUSMEDIASUGGESTIONCLIENTTREATMENT_UNKNOWN";
  }

  else
  {
    v6 = off_1E78E09A8[v5];
  }

  [dictionary setObject:v6 forKeyedSubscript:@"clientTreatment"];
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_13:
    v9 = [(PLUSSchemaPLUSSuggesterMediaSuggestionMetadata *)self serverTreatment]- 1;
    if (v9 > 0xB)
    {
      v10 = @"PLUSMEDIASUGGESTIONSERVERTREATMENT_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E0A30[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"serverTreatment"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_locality;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_serverTreatment;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_clientTreatment;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    locality = self->_locality;
    if (locality != [equalCopy locality])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    serverTreatment = self->_serverTreatment;
    if (serverTreatment == [equalCopy serverTreatment])
    {
      has = self->_has;
      v6 = equalCopy[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    clientTreatment = self->_clientTreatment;
    if (clientTreatment != [equalCopy clientTreatment])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasClientTreatment:(BOOL)treatment
{
  if (treatment)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasServerTreatment:(BOOL)treatment
{
  if (treatment)
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