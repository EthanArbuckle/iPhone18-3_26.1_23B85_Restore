@interface SUGSchemaSUGAutoCompleteQuery
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGAutoCompleteQuery)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGAutoCompleteQuery)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumWordsInQuery:(BOOL)query;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGAutoCompleteQuery

- (SUGSchemaSUGAutoCompleteQuery)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SUGSchemaSUGAutoCompleteQuery;
  v5 = [(SUGSchemaSUGAutoCompleteQuery *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numCharactersInQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGAutoCompleteQuery setNumCharactersInQuery:](v5, "setNumCharactersInQuery:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numWordsInQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGAutoCompleteQuery setNumWordsInQuery:](v5, "setNumWordsInQuery:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (SUGSchemaSUGAutoCompleteQuery)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGAutoCompleteQuery *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGAutoCompleteQuery *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[SUGSchemaSUGAutoCompleteQuery numCharactersInQuery](self, "numCharactersInQuery")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numCharactersInQuery"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[SUGSchemaSUGAutoCompleteQuery numWordsInQuery](self, "numWordsInQuery")}];
    [dictionary setObject:v6 forKeyedSubscript:@"numWordsInQuery"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_numCharactersInQuery;
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
  v3 = 2654435761 * self->_numWordsInQuery;
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
    numCharactersInQuery = self->_numCharactersInQuery;
    if (numCharactersInQuery != [equalCopy numCharactersInQuery])
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
    numWordsInQuery = self->_numWordsInQuery;
    if (numWordsInQuery != [equalCopy numWordsInQuery])
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

- (void)setHasNumWordsInQuery:(BOOL)query
{
  if (query)
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