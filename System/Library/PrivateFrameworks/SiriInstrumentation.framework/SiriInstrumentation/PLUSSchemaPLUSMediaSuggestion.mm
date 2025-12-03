@interface PLUSSchemaPLUSMediaSuggestion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestion)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSMediaSuggestion)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addContributingGroundTruth:(id)truth;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSMediaSuggestion

- (PLUSSchemaPLUSMediaSuggestion)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PLUSSchemaPLUSMediaSuggestion;
  v5 = [(PLUSSchemaPLUSMediaSuggestion *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSMediaSuggestionSource alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaSuggestion *)v5 setSource:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contributingGroundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[PLUSSchemaPLUSMediaGroundTruthSummary alloc] initWithDictionary:v14];
              [(PLUSSchemaPLUSMediaSuggestion *)v5 addContributingGroundTruth:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaSuggestion setLocality:](v5, "setLocality:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaSuggestion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaSuggestion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSMediaSuggestion *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contributingGroundTruths count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_contributingGroundTruths;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"contributingGroundTruth"];
  }

  if (*&self->_has)
  {
    v12 = [(PLUSSchemaPLUSMediaSuggestion *)self locality]- 1;
    if (v12 > 2)
    {
      v13 = @"PLUSMEDIASUGGESTIONLOCALITY_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E0870[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:{@"locality", v18}];
  }

  if (self->_source)
  {
    source = [(PLUSSchemaPLUSMediaSuggestion *)self source];
    dictionaryRepresentation2 = [source dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"source"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"source"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSMediaSuggestionSource *)self->_source hash];
  v4 = [(NSArray *)self->_contributingGroundTruths hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_locality;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  source = [(PLUSSchemaPLUSMediaSuggestion *)self source];
  source2 = [equalCopy source];
  if ((source != 0) == (source2 == 0))
  {
    goto LABEL_11;
  }

  source3 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
  if (source3)
  {
    v8 = source3;
    source4 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
    source5 = [equalCopy source];
    v11 = [source4 isEqual:source5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  source = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
  source2 = [equalCopy contributingGroundTruths];
  if ((source != 0) == (source2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  contributingGroundTruths = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
  if (contributingGroundTruths)
  {
    v13 = contributingGroundTruths;
    contributingGroundTruths2 = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
    contributingGroundTruths3 = [equalCopy contributingGroundTruths];
    v16 = [contributingGroundTruths2 isEqual:contributingGroundTruths3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (locality = self->_locality, locality == [equalCopy locality]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  source = [(PLUSSchemaPLUSMediaSuggestion *)self source];

  if (source)
  {
    source2 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_contributingGroundTruths;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addContributingGroundTruth:(id)truth
{
  truthCopy = truth;
  contributingGroundTruths = self->_contributingGroundTruths;
  v8 = truthCopy;
  if (!contributingGroundTruths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contributingGroundTruths;
    self->_contributingGroundTruths = array;

    truthCopy = v8;
    contributingGroundTruths = self->_contributingGroundTruths;
  }

  [(NSArray *)contributingGroundTruths addObject:truthCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSMediaSuggestion;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  source = [(PLUSSchemaPLUSMediaSuggestion *)self source];
  v7 = [source applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSMediaSuggestion *)self deleteSource];
  }

  contributingGroundTruths = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:contributingGroundTruths underConditions:policyCopy];
  [(PLUSSchemaPLUSMediaSuggestion *)self setContributingGroundTruths:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end