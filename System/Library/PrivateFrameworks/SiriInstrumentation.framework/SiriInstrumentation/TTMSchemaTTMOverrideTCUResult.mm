@interface TTMSchemaTTMOverrideTCUResult
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTMSchemaTTMOverrideTCUResult)initWithDictionary:(id)a3;
- (TTMSchemaTTMOverrideTCUResult)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOverrideResults:(id)a3;
- (void)setHasOverrideType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TTMSchemaTTMOverrideTCUResult

- (TTMSchemaTTMOverrideTCUResult)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TTMSchemaTTMOverrideTCUResult;
  v5 = [(TTMSchemaTTMOverrideTCUResult *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tcuId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTMSchemaTTMOverrideTCUResult *)v5 setTcuId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"recommendation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMOverrideTCUResult setRecommendation:](v5, "setRecommendation:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"overrideType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTMSchemaTTMOverrideTCUResult setOverrideType:](v5, "setOverrideType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"overrideResults"];
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

- (TTMSchemaTTMOverrideTCUResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTMSchemaTTMOverrideTCUResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTMSchemaTTMOverrideTCUResult *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_overrideResults count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"overrideResults"];
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

    [v3 setObject:v14 forKeyedSubscript:{@"overrideType", v21}];
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

    [v3 setObject:v16 forKeyedSubscript:{@"recommendation", v21}];
  }

  if (self->_tcuId)
  {
    v17 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"tcuId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"tcuId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v21];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
  v6 = [v4 tcuId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
  if (v7)
  {
    v8 = v7;
    v9 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
    v10 = [v4 tcuId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    recommendation = self->_recommendation;
    if (recommendation != [v4 recommendation])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    overrideType = self->_overrideType;
    if (overrideType != [v4 overrideType])
    {
      goto LABEL_19;
    }
  }

  v5 = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  v6 = [v4 overrideResults];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  if (!v17)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  v20 = [v4 overrideResults];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];

  if (v5)
  {
    v6 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
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

- (void)addOverrideResults:(id)a3
{
  v4 = a3;
  overrideResults = self->_overrideResults;
  v8 = v4;
  if (!overrideResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_overrideResults;
    self->_overrideResults = v6;

    v4 = v8;
    overrideResults = self->_overrideResults;
  }

  [(NSArray *)overrideResults addObject:v4];
}

- (void)setHasOverrideType:(BOOL)a3
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
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TTMSchemaTTMOverrideTCUResult;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(TTMSchemaTTMOverrideTCUResult *)self tcuId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(TTMSchemaTTMOverrideTCUResult *)self deleteTcuId];
  }

  v9 = [(TTMSchemaTTMOverrideTCUResult *)self overrideResults];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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