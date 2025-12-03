@interface SISchemaDictationAlternativesPresent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDictationAlternativesPresent)initWithDictionary:(id)dictionary;
- (SISchemaDictationAlternativesPresent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCountOfWordsUnderlined:(BOOL)underlined;
- (void)setHasMultilingualIsLowConfidence:(BOOL)confidence;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDictationAlternativesPresent

- (SISchemaDictationAlternativesPresent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaDictationAlternativesPresent;
  v5 = [(SISchemaDictationAlternativesPresent *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numberOfUnderlines"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativesPresent setNumberOfUnderlines:](v5, "setNumberOfUnderlines:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"countOfWordsUnderlined"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativesPresent setCountOfWordsUnderlined:](v5, "setCountOfWordsUnderlined:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"alternativesLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v8];
      [(SISchemaDictationAlternativesPresent *)v5 setAlternativesLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"multilingualIsLowConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationAlternativesPresent setMultilingualIsLowConfidence:](v5, "setMultilingualIsLowConfidence:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaDictationAlternativesPresent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDictationAlternativesPresent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDictationAlternativesPresent *)self dictionaryRepresentation];
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
    alternativesLocale = [(SISchemaDictationAlternativesPresent *)self alternativesLocale];
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

  v7 = *(&self->_multilingualIsLowConfidence + 1);
  if ((v7 & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativesPresent countOfWordsUnderlined](self, "countOfWordsUnderlined")}];
    [dictionary setObject:v10 forKeyedSubscript:@"countOfWordsUnderlined"];

    v7 = *(&self->_multilingualIsLowConfidence + 1);
    if ((v7 & 4) == 0)
    {
LABEL_8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_multilingualIsLowConfidence + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaDictationAlternativesPresent multilingualIsLowConfidence](self, "multilingualIsLowConfidence")}];
  [dictionary setObject:v11 forKeyedSubscript:@"multilingualIsLowConfidence"];

  if (*(&self->_multilingualIsLowConfidence + 1))
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaDictationAlternativesPresent numberOfUnderlines](self, "numberOfUnderlines")}];
    [dictionary setObject:v8 forKeyedSubscript:@"numberOfUnderlines"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_multilingualIsLowConfidence + 1))
  {
    v3 = 2654435761 * self->_numberOfUnderlines;
    if ((*(&self->_multilingualIsLowConfidence + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(&self->_multilingualIsLowConfidence + 1) & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_countOfWordsUnderlined;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(SISchemaLocaleIdentifier *)self->_alternativesLocale hash];
  if ((*(&self->_multilingualIsLowConfidence + 1) & 4) != 0)
  {
    v6 = 2654435761 * self->_multilingualIsLowConfidence;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(&self->_multilingualIsLowConfidence + 1);
  v6 = equalCopy[25];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (v5)
  {
    numberOfUnderlines = self->_numberOfUnderlines;
    if (numberOfUnderlines != [equalCopy numberOfUnderlines])
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    v5 = *(&self->_multilingualIsLowConfidence + 1);
    v6 = equalCopy[25];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    countOfWordsUnderlined = self->_countOfWordsUnderlined;
    if (countOfWordsUnderlined != [equalCopy countOfWordsUnderlined])
    {
      goto LABEL_19;
    }
  }

  alternativesLocale = [(SISchemaDictationAlternativesPresent *)self alternativesLocale];
  alternativesLocale2 = [equalCopy alternativesLocale];
  v12 = alternativesLocale2;
  if ((alternativesLocale != 0) == (alternativesLocale2 == 0))
  {

    goto LABEL_19;
  }

  alternativesLocale3 = [(SISchemaDictationAlternativesPresent *)self alternativesLocale];
  if (alternativesLocale3)
  {
    v14 = alternativesLocale3;
    alternativesLocale4 = [(SISchemaDictationAlternativesPresent *)self alternativesLocale];
    alternativesLocale5 = [equalCopy alternativesLocale];
    v17 = [alternativesLocale4 isEqual:alternativesLocale5];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v18 = (*(&self->_multilingualIsLowConfidence + 1) >> 2) & 1;
  if (v18 != ((equalCopy[25] >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v18)
  {
    multilingualIsLowConfidence = self->_multilingualIsLowConfidence;
    if (multilingualIsLowConfidence != [equalCopy multilingualIsLowConfidence])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_multilingualIsLowConfidence + 1);
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v4 = *(&self->_multilingualIsLowConfidence + 1);
  }

  if ((v4 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  alternativesLocale = [(SISchemaDictationAlternativesPresent *)self alternativesLocale];

  if (alternativesLocale)
  {
    alternativesLocale2 = [(SISchemaDictationAlternativesPresent *)self alternativesLocale];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_multilingualIsLowConfidence + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasMultilingualIsLowConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_multilingualIsLowConfidence + 1) = *(&self->_multilingualIsLowConfidence + 1) & 0xFB | v3;
}

- (void)setHasCountOfWordsUnderlined:(BOOL)underlined
{
  if (underlined)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_multilingualIsLowConfidence + 1) = *(&self->_multilingualIsLowConfidence + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaDictationAlternativesPresent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaDictationAlternativesPresent *)self alternativesLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaDictationAlternativesPresent *)self deleteAlternativesLocale];
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