@interface PEGASUSSchemaPEGASUSCrossIntentRankerResponse
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCrossDomainRankerScoreKeeper:(id)a3;
- (void)addCrossIntentRankerScoreKeeper:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSCrossIntentRankerResponse

- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithDictionary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PEGASUSSchemaPEGASUSCrossIntentRankerResponse;
  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"crossDomainRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v38;
        do
        {
          v11 = 0;
          do
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v37 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 addCrossDomainRankerScoreKeeper:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"crossIntentRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          v19 = 0;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 addCrossIntentRankerScoreKeeper:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v17);
      }
    }

    v22 = [v4 objectForKeyedSubscript:{@"domainCards", v33}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PEGASUSSchemaPEGASUSDomainCards alloc] initWithDictionary:v22];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setDomainCards:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"cirPireneConfidenceDebug"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setCirPireneConfidenceDebug:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"sortedScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PEGASUSSchemaPEGASUSSortedScore alloc] initWithDictionary:v26];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setSortedScore:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"cirAlerts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PEGASUSSchemaPEGASUSCirAlerts alloc] initWithDictionary:v28];
      [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)v5 setCirAlerts:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"cirFallbackTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSCrossIntentRankerResponse setCirFallbackTriggered:](v5, "setCirFallbackTriggered:", [v30 BOOLValue]);
    }

    v31 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSCrossIntentRankerResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self dictionaryRepresentation];
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
  if (self->_cirAlerts)
  {
    v4 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cirAlerts"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cirAlerts"];
    }
  }

  if (*(&self->_cirFallbackTriggered + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSCrossIntentRankerResponse cirFallbackTriggered](self, "cirFallbackTriggered")}];
    [v3 setObject:v7 forKeyedSubscript:@"cirFallbackTriggered"];
  }

  if (self->_cirPireneConfidenceDebug)
  {
    v8 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"cirPireneConfidenceDebug"];
  }

  if (self->_crossDomainRankerScoreKeepers)
  {
    v10 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"crossDomainRankerScoreKeeper"];
  }

  if (self->_crossIntentRankerScoreKeepers)
  {
    v12 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"crossIntentRankerScoreKeeper"];
  }

  if (self->_domainCards)
  {
    v14 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"domainCards"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"domainCards"];
    }
  }

  if (self->_sortedScore)
  {
    v17 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"sortedScore"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"sortedScore"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_crossDomainRankerScoreKeepers hash];
  v4 = [(NSArray *)self->_crossIntentRankerScoreKeepers hash];
  v5 = [(PEGASUSSchemaPEGASUSDomainCards *)self->_domainCards hash];
  v6 = [(NSString *)self->_cirPireneConfidenceDebug hash];
  v7 = [(PEGASUSSchemaPEGASUSSortedScore *)self->_sortedScore hash];
  v8 = [(PEGASUSSchemaPEGASUSCirAlerts *)self->_cirAlerts hash];
  if (*(&self->_cirFallbackTriggered + 1))
  {
    v9 = 2654435761 * self->_cirFallbackTriggered;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  v6 = [v4 crossDomainRankerScoreKeepers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    v10 = [v4 crossDomainRankerScoreKeepers];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
  v6 = [v4 crossIntentRankerScoreKeepers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    v15 = [v4 crossIntentRankerScoreKeepers];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
  v6 = [v4 domainCards];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
    v20 = [v4 domainCards];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
  v6 = [v4 cirPireneConfidenceDebug];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
  if (v22)
  {
    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];
    v25 = [v4 cirPireneConfidenceDebug];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
  v6 = [v4 sortedScore];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
  if (v27)
  {
    v28 = v27;
    v29 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
    v30 = [v4 sortedScore];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
  v6 = [v4 cirAlerts];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v32 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
  if (v32)
  {
    v33 = v32;
    v34 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
    v35 = [v4 cirAlerts];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  if (*(&self->_cirFallbackTriggered + 1) == (v4[57] & 1))
  {
    if (!*(&self->_cirFallbackTriggered + 1) || (cirFallbackTriggered = self->_cirFallbackTriggered, cirFallbackTriggered == [v4 cirFallbackTriggered]))
    {
      v37 = 1;
      goto LABEL_33;
    }
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_crossDomainRankerScoreKeepers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_crossIntentRankerScoreKeepers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v12);
  }

  v15 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];

  if (v15)
  {
    v16 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirPireneConfidenceDebug];

  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];

  if (v18)
  {
    v19 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];

  if (v20)
  {
    v21 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_cirFallbackTriggered + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addCrossIntentRankerScoreKeeper:(id)a3
{
  v4 = a3;
  crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  v8 = v4;
  if (!crossIntentRankerScoreKeepers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossIntentRankerScoreKeepers;
    self->_crossIntentRankerScoreKeepers = v6;

    v4 = v8;
    crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  }

  [(NSArray *)crossIntentRankerScoreKeepers addObject:v4];
}

- (void)addCrossDomainRankerScoreKeeper:(id)a3
{
  v4 = a3;
  crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  v8 = v4;
  if (!crossDomainRankerScoreKeepers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossDomainRankerScoreKeepers;
    self->_crossDomainRankerScoreKeepers = v6;

    v4 = v8;
    crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  }

  [(NSArray *)crossDomainRankerScoreKeepers addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSCrossIntentRankerResponse;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self domainCards];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self deleteDomainCards];
  }

  v9 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self sortedScore];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self deleteSortedScore];
  }

  v12 = [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self cirAlerts];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PEGASUSSchemaPEGASUSCrossIntentRankerResponse *)self deleteCirAlerts];
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