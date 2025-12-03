@interface IDENTITYSchemaIDENTITYVoiceScoreCard
- (BOOL)isEqual:(id)equal;
- (IDENTITYSchemaIDENTITYVoiceScoreCard)initWithDictionary:(id)dictionary;
- (IDENTITYSchemaIDENTITYVoiceScoreCard)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addIdentityScores:(id)scores;
- (void)writeTo:(id)to;
@end

@implementation IDENTITYSchemaIDENTITYVoiceScoreCard

- (IDENTITYSchemaIDENTITYVoiceScoreCard)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = IDENTITYSchemaIDENTITYVoiceScoreCard;
  v5 = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identityScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [IDENTITYSchemaIDENTITYScoreTuple alloc];
              v14 = [(IDENTITYSchemaIDENTITYScoreTuple *)v13 initWithDictionary:v12, v18];
              [(IDENTITYSchemaIDENTITYVoiceScoreCard *)v5 addIdentityScores:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"classification", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYVoiceScoreCard setClassification:](v5, "setClassification:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYVoiceScoreCard)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self classification]- 1;
    if (v4 > 3)
    {
      v5 = @"IDENTITYUSERCLASSIFICATION_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D8138[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"classification"];
  }

  if ([(NSArray *)self->_identityScores count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_identityScores;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"identityScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_identityScores hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_classification;
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

  identityScores = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self identityScores];
  identityScores2 = [equalCopy identityScores];
  v7 = identityScores2;
  if ((identityScores != 0) == (identityScores2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  identityScores3 = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self identityScores];
  if (identityScores3)
  {
    v9 = identityScores3;
    identityScores4 = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self identityScores];
    identityScores5 = [equalCopy identityScores];
    v12 = [identityScores4 isEqual:identityScores5];

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
    classification = self->_classification;
    if (classification != [equalCopy classification])
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
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_identityScores;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addIdentityScores:(id)scores
{
  scoresCopy = scores;
  identityScores = self->_identityScores;
  v8 = scoresCopy;
  if (!identityScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_identityScores;
    self->_identityScores = array;

    scoresCopy = v8;
    identityScores = self->_identityScores;
  }

  [(NSArray *)identityScores addObject:scoresCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYVoiceScoreCard;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self identityScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(IDENTITYSchemaIDENTITYVoiceScoreCard *)self setIdentityScores:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end