@interface TTMSchemaTTMOverrideTCUResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTMSchemaTTMOverrideTCUResult)initWithDictionary:(id)dictionary;
- (TTMSchemaTTMOverrideTCUResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOverrideResults:(id)results;
- (void)setHasOverrideType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation TTMSchemaTTMOverrideTCUResult

- (TTMSchemaTTMOverrideTCUResult)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = TTMSchemaTTMOverrideTCUResult;
  v5 = [(TTMSchemaTTMOverrideTCUResult *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMOverrideTCUResult *)v5 setTcuId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"recommendation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMOverrideTCUResult setRecommendation:](v5, "setRecommendation:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"overrideType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMOverrideTCUResult setOverrideType:](v5, "setOverrideType:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"overrideResults"];
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
              v17 = [[TTMSchemaTTMOverrideResult alloc] initWithDictionary:v16];
              [(TTMSchemaTTMOverrideTCUResult *)v5 addOverrideResults:v17];
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

- (TTMSchemaTTMOverrideTCUResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTMSchemaTTMOverrideTCUResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTMSchemaTTMOverrideTCUResult *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_overrideResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_overrideResults;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"overrideResults"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v13 = [(TTMSchemaTTMOverrideTCUResult *)self overrideType]- 1;
    if (v13 > 8)
    {
      v14 = @"TTMOVERRIDETYPE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78E7FE0[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:{@"overrideType", v21}];
    has = self->_has;
  }

  if (has)
  {
    v15 = [(TTMSchemaTTMOverrideTCUResult *)self recommendation]- 1;
    if (v15 > 5)
    {
      v16 = @"TTMTCUMITIGATIONDECISION_UNKNOWN";
    }

    else
    {
      v16 = off_1E78E8028[v15];
    }

    [dictionary setObject:v16 forKeyedSubscript:{@"recommendation", v21}];
  }

  if (self->_tcuId)
  {
    tcuId = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
    dictionaryRepresentation2 = [tcuId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"tcuId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"tcuId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_tcuId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_recommendation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_overrideResults hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_overrideType;
  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_overrideResults hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  tcuId = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
  tcuId2 = [equalCopy tcuId];
  if ((tcuId != 0) == (tcuId2 == 0))
  {
    goto LABEL_18;
  }

  tcuId3 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
  if (tcuId3)
  {
    v8 = tcuId3;
    tcuId4 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
    tcuId5 = [equalCopy tcuId];
    v11 = [tcuId4 isEqual:tcuId5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    recommendation = self->_recommendation;
    if (recommendation != [equalCopy recommendation])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    overrideType = self->_overrideType;
    if (overrideType != [equalCopy overrideType])
    {
      goto LABEL_19;
    }
  }

  tcuId = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  tcuId2 = [equalCopy overrideResults];
  if ((tcuId != 0) == (tcuId2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  overrideResults = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  if (!overrideResults)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = overrideResults;
  overrideResults2 = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  overrideResults3 = [equalCopy overrideResults];
  v21 = [overrideResults2 isEqual:overrideResults3];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  tcuId = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];

  if (tcuId)
  {
    tcuId2 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
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
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_overrideResults;
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

- (void)addOverrideResults:(id)results
{
  resultsCopy = results;
  overrideResults = self->_overrideResults;
  v8 = resultsCopy;
  if (!overrideResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_overrideResults;
    self->_overrideResults = array;

    resultsCopy = v8;
    overrideResults = self->_overrideResults;
  }

  [(NSArray *)overrideResults addObject:resultsCopy];
}

- (void)setHasOverrideType:(BOOL)type
{
  if (type)
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
  v12.super_class = TTMSchemaTTMOverrideTCUResult;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  tcuId = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
  v7 = [tcuId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTMSchemaTTMOverrideTCUResult *)self deleteTcuId];
  }

  overrideResults = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:overrideResults underConditions:policyCopy];
  [(TTMSchemaTTMOverrideTCUResult *)self setOverrideResults:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end