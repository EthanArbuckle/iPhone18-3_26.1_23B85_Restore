@interface SISchemaDictationAlternativesViewed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDictationAlternativesViewed)initWithDictionary:(id)dictionary;
- (SISchemaDictationAlternativesViewed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCountOfAlternativesAvailable:(BOOL)available;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDictationAlternativesViewed

- (SISchemaDictationAlternativesViewed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaDictationAlternativesViewed;
  v5 = [(SISchemaDictationAlternativesViewed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"countOfWordsUnderlined"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativesViewed setCountOfWordsUnderlined:](v5, "setCountOfWordsUnderlined:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"countOfAlternativesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativesViewed setCountOfAlternativesAvailable:](v5, "setCountOfAlternativesAvailable:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"alternativesLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v8];
      [(SISchemaDictationAlternativesViewed *)v5 setAlternativesLocale:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaDictationAlternativesViewed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDictationAlternativesViewed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDictationAlternativesViewed *)self dictionaryRepresentation];
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
  if (self->_alternativesLocale)
  {
    alternativesLocale = [(SISchemaDictationAlternativesViewed *)self alternativesLocale];
    dictionaryRepresentation = [alternativesLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alternativesLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alternativesLocale"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativesViewed countOfAlternativesAvailable](self, "countOfAlternativesAvailable")}];
    [dictionary setObject:v8 forKeyedSubscript:@"countOfAlternativesAvailable"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativesViewed countOfWordsUnderlined](self, "countOfWordsUnderlined")}];
    [dictionary setObject:v9 forKeyedSubscript:@"countOfWordsUnderlined"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_countOfWordsUnderlined;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaLocaleIdentifier *)self->_alternativesLocale hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_countOfAlternativesAvailable;
  return v7 ^ v6 ^ [(SISchemaLocaleIdentifier *)self->_alternativesLocale hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    countOfWordsUnderlined = self->_countOfWordsUnderlined;
    if (countOfWordsUnderlined != [equalCopy countOfWordsUnderlined])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (countOfAlternativesAvailable = self->_countOfAlternativesAvailable, countOfAlternativesAvailable == [equalCopy countOfAlternativesAvailable]))
    {
      alternativesLocale = [(SISchemaDictationAlternativesViewed *)self alternativesLocale];
      alternativesLocale2 = [equalCopy alternativesLocale];
      v12 = alternativesLocale2;
      if ((alternativesLocale != 0) != (alternativesLocale2 == 0))
      {
        alternativesLocale3 = [(SISchemaDictationAlternativesViewed *)self alternativesLocale];
        if (!alternativesLocale3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = alternativesLocale3;
        alternativesLocale4 = [(SISchemaDictationAlternativesViewed *)self alternativesLocale];
        alternativesLocale5 = [equalCopy alternativesLocale];
        v17 = [alternativesLocale4 isEqual:alternativesLocale5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  alternativesLocale = [(SISchemaDictationAlternativesViewed *)self alternativesLocale];

  v6 = toCopy;
  if (alternativesLocale)
  {
    alternativesLocale2 = [(SISchemaDictationAlternativesViewed *)self alternativesLocale];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasCountOfAlternativesAvailable:(BOOL)available
{
  if (available)
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
  v9.receiver = self;
  v9.super_class = SISchemaDictationAlternativesViewed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaDictationAlternativesViewed *)self alternativesLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaDictationAlternativesViewed *)self deleteAlternativesLocale];
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