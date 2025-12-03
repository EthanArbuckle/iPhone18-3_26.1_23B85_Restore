@interface STSchemaAnswerSythesisHydrationMetric
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaAnswerSythesisHydrationMetric)initWithDictionary:(id)dictionary;
- (STSchemaAnswerSythesisHydrationMetric)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAsHydrationPerContentTypeTimeInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation STSchemaAnswerSythesisHydrationMetric

- (STSchemaAnswerSythesisHydrationMetric)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = STSchemaAnswerSythesisHydrationMetric;
  v5 = [(STSchemaAnswerSythesisHydrationMetric *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asHydrationContentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaAnswerSythesisHydrationMetric setAsHydrationContentType:](v5, "setAsHydrationContentType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"asHydrationPerContentTypeTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaAnswerSythesisHydrationMetric setAsHydrationPerContentTypeTimeInMs:](v5, "setAsHydrationPerContentTypeTimeInMs:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (STSchemaAnswerSythesisHydrationMetric)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaAnswerSythesisHydrationMetric *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaAnswerSythesisHydrationMetric *)self dictionaryRepresentation];
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
    v5 = [(STSchemaAnswerSythesisHydrationMetric *)self asHydrationContentType]- 1;
    if (v5 > 0xF)
    {
      v6 = @"STANSWERSYNTHESISHYDRATIONCONTENTTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E7708[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"asHydrationContentType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[STSchemaAnswerSythesisHydrationMetric asHydrationPerContentTypeTimeInMs](self, "asHydrationPerContentTypeTimeInMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"asHydrationPerContentTypeTimeInMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_asHydrationContentType;
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
  v3 = 2654435761 * self->_asHydrationPerContentTypeTimeInMs;
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
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    asHydrationContentType = self->_asHydrationContentType;
    if (asHydrationContentType != [equalCopy asHydrationContentType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    asHydrationPerContentTypeTimeInMs = self->_asHydrationPerContentTypeTimeInMs;
    if (asHydrationPerContentTypeTimeInMs != [equalCopy asHydrationPerContentTypeTimeInMs])
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
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasAsHydrationPerContentTypeTimeInMs:(BOOL)ms
{
  if (ms)
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