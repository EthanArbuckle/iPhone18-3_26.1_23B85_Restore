@interface MTSchemaMTLanguageIdentificationConfidence
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTLanguageIdentificationConfidence)initWithDictionary:(id)dictionary;
- (MTSchemaMTLanguageIdentificationConfidence)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConfidenceInThousands:(BOOL)thousands;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTLanguageIdentificationConfidence

- (MTSchemaMTLanguageIdentificationConfidence)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MTSchemaMTLanguageIdentificationConfidence;
  v5 = [(MTSchemaMTLanguageIdentificationConfidence *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTLanguageIdentificationConfidence setLocale:](v5, "setLocale:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"confidenceInThousands"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTLanguageIdentificationConfidence setConfidenceInThousands:](v5, "setConfidenceInThousands:", [v7 unsignedIntValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (MTSchemaMTLanguageIdentificationConfidence)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTLanguageIdentificationConfidence *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTLanguageIdentificationConfidence *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTSchemaMTLanguageIdentificationConfidence confidenceInThousands](self, "confidenceInThousands")}];
    [dictionary setObject:v5 forKeyedSubscript:@"confidenceInThousands"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(MTSchemaMTLanguageIdentificationConfidence *)self locale]- 1;
    if (v6 > 0x3D)
    {
      v7 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v7 = off_1E78DA1C8[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_locale;
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
  v3 = 2654435761 * self->_confidenceInThousands;
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
    locale = self->_locale;
    if (locale != [equalCopy locale])
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
    confidenceInThousands = self->_confidenceInThousands;
    if (confidenceInThousands != [equalCopy confidenceInThousands])
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
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)setHasConfidenceInThousands:(BOOL)thousands
{
  if (thousands)
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