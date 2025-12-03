@interface STSchemaSTDisambiguationEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (STSchemaSTDisambiguationEnded)initWithDictionary:(id)dictionary;
- (STSchemaSTDisambiguationEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsContentSearch:(BOOL)search;
- (void)setHasIsOpenQuery:(BOOL)query;
- (void)setHasIsQuestionQuery:(BOOL)query;
- (void)setHasNumOfResults:(BOOL)results;
- (void)writeTo:(id)to;
@end

@implementation STSchemaSTDisambiguationEnded

- (STSchemaSTDisambiguationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = STSchemaSTDisambiguationEnded;
  v5 = [(STSchemaSTDisambiguationEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTDisambiguationEnded setDisambiguationDetected:](v5, "setDisambiguationDetected:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isQuestionQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTDisambiguationEnded setIsQuestionQuery:](v5, "setIsQuestionQuery:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isOpenQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTDisambiguationEnded setIsOpenQuery:](v5, "setIsOpenQuery:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numOfResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTDisambiguationEnded setNumOfResults:](v5, "setNumOfResults:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isContentSearch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTDisambiguationEnded setIsContentSearch:](v5, "setIsContentSearch:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (STSchemaSTDisambiguationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STSchemaSTDisambiguationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(STSchemaSTDisambiguationEnded *)self dictionaryRepresentation];
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
  v4 = *(&self->_isContentSearch + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaSTDisambiguationEnded disambiguationDetected](self, "disambiguationDetected")}];
    [dictionary setObject:v7 forKeyedSubscript:@"disambiguationDetected"];

    v4 = *(&self->_isContentSearch + 1);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isContentSearch + 1) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaSTDisambiguationEnded isContentSearch](self, "isContentSearch")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isContentSearch"];

  v4 = *(&self->_isContentSearch + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaSTDisambiguationEnded isOpenQuery](self, "isOpenQuery")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isOpenQuery"];

  v4 = *(&self->_isContentSearch + 1);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaSTDisambiguationEnded isQuestionQuery](self, "isQuestionQuery")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isQuestionQuery"];

  if ((*(&self->_isContentSearch + 1) & 8) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[STSchemaSTDisambiguationEnded numOfResults](self, "numOfResults")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numOfResults"];
  }

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isContentSearch + 1))
  {
    v2 = 2654435761 * self->_disambiguationDetected;
    if ((*(&self->_isContentSearch + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isQuestionQuery;
      if ((*(&self->_isContentSearch + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_isContentSearch + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_isContentSearch + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isOpenQuery;
    if ((*(&self->_isContentSearch + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*(&self->_isContentSearch + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*(&self->_isContentSearch + 1) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_numOfResults;
  if ((*(&self->_isContentSearch + 1) & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_isContentSearch;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(&self->_isContentSearch + 1);
  v6 = equalCopy[17];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (v5)
  {
    disambiguationDetected = self->_disambiguationDetected;
    if (disambiguationDetected != [equalCopy disambiguationDetected])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isContentSearch + 1);
    v6 = equalCopy[17];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isQuestionQuery = self->_isQuestionQuery;
    if (isQuestionQuery != [equalCopy isQuestionQuery])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isContentSearch + 1);
    v6 = equalCopy[17];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    isOpenQuery = self->_isOpenQuery;
    if (isOpenQuery != [equalCopy isOpenQuery])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isContentSearch + 1);
    v6 = equalCopy[17];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    numOfResults = self->_numOfResults;
    if (numOfResults == [equalCopy numOfResults])
    {
      v5 = *(&self->_isContentSearch + 1);
      v6 = equalCopy[17];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    isContentSearch = self->_isContentSearch;
    if (isContentSearch != [equalCopy isContentSearch])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_isContentSearch + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isContentSearch + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isContentSearch + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isContentSearch + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isContentSearch + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteUint32Field();
  if ((*(&self->_isContentSearch + 1) & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)setHasIsContentSearch:(BOOL)search
{
  if (search)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isContentSearch + 1) = *(&self->_isContentSearch + 1) & 0xEF | v3;
}

- (void)setHasNumOfResults:(BOOL)results
{
  if (results)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isContentSearch + 1) = *(&self->_isContentSearch + 1) & 0xF7 | v3;
}

- (void)setHasIsOpenQuery:(BOOL)query
{
  if (query)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isContentSearch + 1) = *(&self->_isContentSearch + 1) & 0xFB | v3;
}

- (void)setHasIsQuestionQuery:(BOOL)query
{
  if (query)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isContentSearch + 1) = *(&self->_isContentSearch + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end