@interface PLUSSchemaPLUSContactSuggestion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestion)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggestion)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addContributingGroundTruth:(id)truth;
- (void)setHasConfidence:(BOOL)confidence;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggestion

- (PLUSSchemaPLUSContactSuggestion)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PLUSSchemaPLUSContactSuggestion;
  v5 = [(PLUSSchemaPLUSContactSuggestion *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestion *)v5 setSuggestionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestion setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(PLUSSchemaPLUSContactSuggestion *)v5 setConfidence:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contributingGroundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v9;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[PLUSSchemaPLUSContactGroundTruthSourceSummary alloc] initWithDictionary:v16];
              [(PLUSSchemaPLUSContactSuggestion *)v5 addContributingGroundTruth:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v6 = v21;
      v9 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggestion *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(PLUSSchemaPLUSContactSuggestion *)self confidence];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if ([(NSArray *)self->_contributingGroundTruths count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_contributingGroundTruths;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"contributingGroundTruth"];
  }

  if (*&self->_has)
  {
    if ([(PLUSSchemaPLUSContactSuggestion *)self source]== 1)
    {
      v14 = @"PLUSCONTACTSUGGESTIONSOURCE_PLUS_INFERRED_CONTACT_SUGGESTER";
    }

    else
    {
      v14 = @"PLUSCONTACTSUGGESTIONSOURCE_UNKNOWN";
    }

    [dictionary setObject:v14 forKeyedSubscript:@"source"];
  }

  if (self->_suggestionId)
  {
    suggestionId = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];
    dictionaryRepresentation2 = [suggestionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_suggestionId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_source;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10 ^ [(NSArray *)self->_contributingGroundTruths hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v4.i64 = floor(confidence + 0.5);
  v8 = (confidence - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10 ^ [(NSArray *)self->_contributingGroundTruths hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];
  suggestionId2 = [equalCopy suggestionId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_18;
  }

  suggestionId3 = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];
  if (suggestionId3)
  {
    v8 = suggestionId3;
    suggestionId4 = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];
    suggestionId5 = [equalCopy suggestionId];
    v11 = [suggestionId4 isEqual:suggestionId5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    confidence = self->_confidence;
    [equalCopy confidence];
    if (confidence != v17)
    {
      goto LABEL_19;
    }
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggestion *)self contributingGroundTruths];
  suggestionId2 = [equalCopy contributingGroundTruths];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  contributingGroundTruths = [(PLUSSchemaPLUSContactSuggestion *)self contributingGroundTruths];
  if (!contributingGroundTruths)
  {

LABEL_22:
    v23 = 1;
    goto LABEL_20;
  }

  v19 = contributingGroundTruths;
  contributingGroundTruths2 = [(PLUSSchemaPLUSContactSuggestion *)self contributingGroundTruths];
  contributingGroundTruths3 = [equalCopy contributingGroundTruths];
  v22 = [contributingGroundTruths2 isEqual:contributingGroundTruths3];

  if (v22)
  {
    goto LABEL_22;
  }

LABEL_19:
  v23 = 0;
LABEL_20:

  return v23;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  suggestionId = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];

  if (suggestionId)
  {
    suggestionId2 = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_contributingGroundTruths;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
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

- (void)setHasConfidence:(BOOL)confidence
{
  if (confidence)
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
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSContactSuggestion;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  suggestionId = [(PLUSSchemaPLUSContactSuggestion *)self suggestionId];
  v7 = [suggestionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSContactSuggestion *)self deleteSuggestionId];
  }

  contributingGroundTruths = [(PLUSSchemaPLUSContactSuggestion *)self contributingGroundTruths];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:contributingGroundTruths underConditions:policyCopy];
  [(PLUSSchemaPLUSContactSuggestion *)self setContributingGroundTruths:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end