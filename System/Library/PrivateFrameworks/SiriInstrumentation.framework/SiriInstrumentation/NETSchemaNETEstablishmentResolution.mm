@interface NETSchemaNETEstablishmentResolution
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETEstablishmentResolution)initWithDictionary:(id)dictionary;
- (NETSchemaNETEstablishmentResolution)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndpointCount:(BOOL)count;
- (void)setHasResolutionSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETEstablishmentResolution

- (NETSchemaNETEstablishmentResolution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = NETSchemaNETEstablishmentResolution;
  v5 = [(NETSchemaNETEstablishmentResolution *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETEstablishmentResolution setDuration:](v5, "setDuration:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"resolutionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETEstablishmentResolution setResolutionSource:](v5, "setResolutionSource:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"successfulEndpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NETSchemaNETEndpoint alloc] initWithDictionary:v8];
      [(NETSchemaNETEstablishmentResolution *)v5 setSuccessfulEndpoint:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"preferredEndpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NETSchemaNETEndpoint alloc] initWithDictionary:v10];
      [(NETSchemaNETEstablishmentResolution *)v5 setPreferredEndpoint:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"endpointCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETEstablishmentResolution setEndpointCount:](v5, "setEndpointCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (NETSchemaNETEstablishmentResolution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETEstablishmentResolution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETEstablishmentResolution *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETEstablishmentResolution duration](self, "duration")}];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETEstablishmentResolution endpointCount](self, "endpointCount")}];
    [dictionary setObject:v6 forKeyedSubscript:@"endpointCount"];
  }

  if (self->_preferredEndpoint)
  {
    preferredEndpoint = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
    dictionaryRepresentation = [preferredEndpoint dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"preferredEndpoint"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"preferredEndpoint"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETEstablishmentResolution resolutionSource](self, "resolutionSource")}];
    [dictionary setObject:v10 forKeyedSubscript:@"resolutionSource"];
  }

  if (self->_successfulEndpoint)
  {
    successfulEndpoint = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
    dictionaryRepresentation2 = [successfulEndpoint dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"successfulEndpoint"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"successfulEndpoint"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_duration;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_resolutionSource;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NETSchemaNETEndpoint *)self->_successfulEndpoint hash];
  v6 = [(NETSchemaNETEndpoint *)self->_preferredEndpoint hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_endpointCount;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[44];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    duration = self->_duration;
    if (duration != [equalCopy duration])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = equalCopy[44];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    resolutionSource = self->_resolutionSource;
    if (resolutionSource != [equalCopy resolutionSource])
    {
      goto LABEL_19;
    }
  }

  successfulEndpoint = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
  successfulEndpoint2 = [equalCopy successfulEndpoint];
  if ((successfulEndpoint != 0) == (successfulEndpoint2 == 0))
  {
    goto LABEL_18;
  }

  successfulEndpoint3 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
  if (successfulEndpoint3)
  {
    v13 = successfulEndpoint3;
    successfulEndpoint4 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
    successfulEndpoint5 = [equalCopy successfulEndpoint];
    v16 = [successfulEndpoint4 isEqual:successfulEndpoint5];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  successfulEndpoint = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
  successfulEndpoint2 = [equalCopy preferredEndpoint];
  if ((successfulEndpoint != 0) == (successfulEndpoint2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  preferredEndpoint = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
  if (preferredEndpoint)
  {
    v18 = preferredEndpoint;
    preferredEndpoint2 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
    preferredEndpoint3 = [equalCopy preferredEndpoint];
    v21 = [preferredEndpoint2 isEqual:preferredEndpoint3];

    if (!v21)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 2) & 1;
  if (v24 == ((equalCopy[44] >> 2) & 1))
  {
    if (!v24 || (endpointCount = self->_endpointCount, endpointCount == [equalCopy endpointCount]))
    {
      v22 = 1;
      goto LABEL_20;
    }
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
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  successfulEndpoint = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];

  if (successfulEndpoint)
  {
    successfulEndpoint2 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
    PBDataWriterWriteSubmessage();
  }

  preferredEndpoint = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];

  if (preferredEndpoint)
  {
    preferredEndpoint2 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasEndpointCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasResolutionSource:(BOOL)source
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NETSchemaNETEstablishmentResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  successfulEndpoint = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
  v7 = [successfulEndpoint applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETEstablishmentResolution *)self deleteSuccessfulEndpoint];
  }

  preferredEndpoint = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
  v10 = [preferredEndpoint applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NETSchemaNETEstablishmentResolution *)self deletePreferredEndpoint];
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