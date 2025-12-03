@interface LTSchemaLocaleConfidence
- (BOOL)isEqual:(id)equal;
- (LTSchemaLocaleConfidence)initWithDictionary:(id)dictionary;
- (LTSchemaLocaleConfidence)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaLocaleConfidence

- (LTSchemaLocaleConfidence)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = LTSchemaLocaleConfidence;
  v5 = [(LTSchemaLocaleConfidence *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaLocaleConfidence *)v5 setLocale:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaLocaleConfidence setConfidence:](v5, "setConfidence:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (LTSchemaLocaleConfidence)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaLocaleConfidence *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaLocaleConfidence *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaLocaleConfidence confidence](self, "confidence")}];
    [dictionary setObject:v4 forKeyedSubscript:@"confidence"];
  }

  if (self->_locale)
  {
    locale = [(LTSchemaLocaleConfidence *)self locale];
    v6 = [locale copy];
    [dictionary setObject:v6 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_locale hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_confidence;
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

  locale = [(LTSchemaLocaleConfidence *)self locale];
  locale2 = [equalCopy locale];
  v7 = locale2;
  if ((locale != 0) == (locale2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  locale3 = [(LTSchemaLocaleConfidence *)self locale];
  if (locale3)
  {
    v9 = locale3;
    locale4 = [(LTSchemaLocaleConfidence *)self locale];
    locale5 = [equalCopy locale];
    v12 = [locale4 isEqual:locale5];

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
    confidence = self->_confidence;
    if (confidence != [equalCopy confidence])
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
  locale = [(LTSchemaLocaleConfidence *)self locale];

  if (locale)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end