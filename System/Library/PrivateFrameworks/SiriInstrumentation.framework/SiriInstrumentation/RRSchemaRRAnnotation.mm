@interface RRSchemaRRAnnotation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRRAnnotation)initWithDictionary:(id)dictionary;
- (RRSchemaRRAnnotation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAnnotationAddedTimestampInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRRAnnotation

- (RRSchemaRRAnnotation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RRSchemaRRAnnotation;
  v5 = [(RRSchemaRRAnnotation *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRAnnotation setName:](v5, "setName:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"annotationAddedTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRAnnotation setAnnotationAddedTimestampInSeconds:](v5, "setAnnotationAddedTimestampInSeconds:", [v7 unsignedLongLongValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaRRAnnotation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRRAnnotation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRRAnnotation *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RRSchemaRRAnnotation annotationAddedTimestampInSeconds](self, "annotationAddedTimestampInSeconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"annotationAddedTimestampInSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(RRSchemaRRAnnotation *)self name]- 1;
    if (v6 > 4)
    {
      v7 = @"RRANNOTATIONNAME_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E2038[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_name;
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
  v3 = 2654435761u * self->_annotationAddedTimestampInSeconds;
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
    name = self->_name;
    if (name != [equalCopy name])
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
    annotationAddedTimestampInSeconds = self->_annotationAddedTimestampInSeconds;
    if (annotationAddedTimestampInSeconds != [equalCopy annotationAddedTimestampInSeconds])
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
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (void)setHasAnnotationAddedTimestampInSeconds:(BOOL)seconds
{
  if (seconds)
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