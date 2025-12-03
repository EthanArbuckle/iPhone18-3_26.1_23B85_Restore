@interface SISchemaDictationAlternativeSelected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDictationAlternativeSelected)initWithDictionary:(id)dictionary;
- (SISchemaDictationAlternativeSelected)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAlternativeListPosition:(BOOL)position;
- (void)setHasCountOfAlternativesAvailable:(BOOL)available;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDictationAlternativeSelected

- (SISchemaDictationAlternativeSelected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaDictationAlternativeSelected;
  v5 = [(SISchemaDictationAlternativeSelected *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"countOfWordsReplaced"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativeSelected setCountOfWordsReplaced:](v5, "setCountOfWordsReplaced:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"countOfAlternativesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativeSelected setCountOfAlternativesAvailable:](v5, "setCountOfAlternativesAvailable:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"alternativeListPosition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativeSelected setAlternativeListPosition:](v5, "setAlternativeListPosition:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"alternativesLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v9];
      [(SISchemaDictationAlternativeSelected *)v5 setAlternativesLocale:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaDictationAlternativeSelected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDictationAlternativeSelected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDictationAlternativeSelected *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativeSelected alternativeListPosition](self, "alternativeListPosition")}];
    [dictionary setObject:v4 forKeyedSubscript:@"alternativeListPosition"];
  }

  if (self->_alternativesLocale)
  {
    alternativesLocale = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativeSelected countOfAlternativesAvailable](self, "countOfAlternativesAvailable")}];
    [dictionary setObject:v9 forKeyedSubscript:@"countOfAlternativesAvailable"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativeSelected countOfWordsReplaced](self, "countOfWordsReplaced")}];
    [dictionary setObject:v10 forKeyedSubscript:@"countOfWordsReplaced"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(SISchemaLocaleIdentifier *)self->_alternativesLocale hash:v3];
  }

  v6 = 2654435761 * self->_countOfWordsReplaced;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_countOfAlternativesAvailable;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_alternativeListPosition;
  return v7 ^ v6 ^ v8 ^ [(SISchemaLocaleIdentifier *)self->_alternativesLocale hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    countOfWordsReplaced = self->_countOfWordsReplaced;
    if (countOfWordsReplaced != [equalCopy countOfWordsReplaced])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      countOfAlternativesAvailable = self->_countOfAlternativesAvailable;
      if (countOfAlternativesAvailable != [equalCopy countOfAlternativesAvailable])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = equalCopy[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (alternativeListPosition = self->_alternativeListPosition, alternativeListPosition == [equalCopy alternativeListPosition]))
      {
        alternativesLocale = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
        alternativesLocale2 = [equalCopy alternativesLocale];
        v14 = alternativesLocale2;
        if ((alternativesLocale != 0) != (alternativesLocale2 == 0))
        {
          alternativesLocale3 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
          if (!alternativesLocale3)
          {

LABEL_21:
            v20 = 1;
            goto LABEL_19;
          }

          v16 = alternativesLocale3;
          alternativesLocale4 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
          alternativesLocale5 = [equalCopy alternativesLocale];
          v19 = [alternativesLocale4 isEqual:alternativesLocale5];

          if (v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
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
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  alternativesLocale = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];

  v6 = toCopy;
  if (alternativesLocale)
  {
    alternativesLocale2 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasAlternativeListPosition:(BOOL)position
{
  if (position)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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
  v9.super_class = SISchemaDictationAlternativeSelected;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaDictationAlternativeSelected *)self deleteAlternativesLocale];
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