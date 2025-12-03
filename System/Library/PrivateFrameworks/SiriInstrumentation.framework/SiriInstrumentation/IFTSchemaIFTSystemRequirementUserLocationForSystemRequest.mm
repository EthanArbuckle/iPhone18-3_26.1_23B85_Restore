@interface IFTSchemaIFTSystemRequirementUserLocationForSystemRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTimeoutForLocationFetch:(BOOL)fetch;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemRequirementUserLocationForSystemRequest

- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTSystemRequirementUserLocationForSystemRequest;
  v5 = [(IFTSchemaIFTSystemRequirementUserLocationForSystemRequest *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isPreciseLocationRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirementUserLocationForSystemRequest setIsPreciseLocationRequired:](v5, "setIsPreciseLocationRequired:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timeoutForLocationFetch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemRequirementUserLocationForSystemRequest setTimeoutForLocationFetch:](v5, "setTimeoutForLocationFetch:", [v7 longLongValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemRequirementUserLocationForSystemRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemRequirementUserLocationForSystemRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemRequirementUserLocationForSystemRequest *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemRequirementUserLocationForSystemRequest isPreciseLocationRequired](self, "isPreciseLocationRequired")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isPreciseLocationRequired"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTSystemRequirementUserLocationForSystemRequest timeoutForLocationFetch](self, "timeoutForLocationFetch")}];
    [dictionary setObject:v6 forKeyedSubscript:@"timeoutForLocationFetch"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isPreciseLocationRequired;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_timeoutForLocationFetch;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    isPreciseLocationRequired = self->_isPreciseLocationRequired;
    if (isPreciseLocationRequired != [equalCopy isPreciseLocationRequired])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    timeoutForLocationFetch = self->_timeoutForLocationFetch;
    if (timeoutForLocationFetch != [equalCopy timeoutForLocationFetch])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)setHasTimeoutForLocationFetch:(BOOL)fetch
{
  if (fetch)
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