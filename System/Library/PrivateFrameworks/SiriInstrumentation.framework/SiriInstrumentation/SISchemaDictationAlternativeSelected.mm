@interface SISchemaDictationAlternativeSelected
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaDictationAlternativeSelected)initWithDictionary:(id)a3;
- (SISchemaDictationAlternativeSelected)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAlternativeListPosition:(BOOL)a3;
- (void)setHasCountOfAlternativesAvailable:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaDictationAlternativeSelected

- (SISchemaDictationAlternativeSelected)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaDictationAlternativeSelected;
  v5 = [(SISchemaDictationAlternativeSelected *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"countOfWordsReplaced"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativeSelected setCountOfWordsReplaced:](v5, "setCountOfWordsReplaced:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"countOfAlternativesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativeSelected setCountOfAlternativesAvailable:](v5, "setCountOfAlternativesAvailable:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"alternativeListPosition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativeSelected setAlternativeListPosition:](v5, "setAlternativeListPosition:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"alternativesLocale"];
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

- (SISchemaDictationAlternativeSelected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaDictationAlternativeSelected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaDictationAlternativeSelected *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativeSelected alternativeListPosition](self, "alternativeListPosition")}];
    [v3 setObject:v4 forKeyedSubscript:@"alternativeListPosition"];
  }

  if (self->_alternativesLocale)
  {
    v5 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"alternativesLocale"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"alternativesLocale"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativeSelected countOfAlternativesAvailable](self, "countOfAlternativesAvailable")}];
    [v3 setObject:v9 forKeyedSubscript:@"countOfAlternativesAvailable"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativeSelected countOfWordsReplaced](self, "countOfWordsReplaced")}];
    [v3 setObject:v10 forKeyedSubscript:@"countOfWordsReplaced"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    countOfWordsReplaced = self->_countOfWordsReplaced;
    if (countOfWordsReplaced != [v4 countOfWordsReplaced])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      countOfAlternativesAvailable = self->_countOfAlternativesAvailable;
      if (countOfAlternativesAvailable != [v4 countOfAlternativesAvailable])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (alternativeListPosition = self->_alternativeListPosition, alternativeListPosition == [v4 alternativeListPosition]))
      {
        v12 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
        v13 = [v4 alternativesLocale];
        v14 = v13;
        if ((v12 != 0) != (v13 == 0))
        {
          v15 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
          if (!v15)
          {

LABEL_21:
            v20 = 1;
            goto LABEL_19;
          }

          v16 = v15;
          v17 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
          v18 = [v4 alternativesLocale];
          v19 = [v17 isEqual:v18];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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
  v5 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];

  v6 = v8;
  if (v5)
  {
    v7 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasAlternativeListPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCountOfAlternativesAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaDictationAlternativeSelected;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaDictationAlternativeSelected *)self alternativesLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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