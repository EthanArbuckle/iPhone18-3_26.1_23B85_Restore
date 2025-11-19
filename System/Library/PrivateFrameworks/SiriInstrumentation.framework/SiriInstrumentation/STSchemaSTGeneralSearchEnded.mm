@interface STSchemaSTGeneralSearchEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTGeneralSearchEnded)initWithDictionary:(id)a3;
- (STSchemaSTGeneralSearchEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResult:(id)a3;
- (void)setHasDialogFallbackReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTGeneralSearchEnded

- (STSchemaSTGeneralSearchEnded)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = STSchemaSTGeneralSearchEnded;
  v5 = [(STSchemaSTGeneralSearchEnded *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          v11 = 0;
          do
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [STSchemaSTGeneralSearchResult alloc];
              v14 = [(STSchemaSTGeneralSearchResult *)v13 initWithDictionary:v12, v21];
              [(STSchemaSTGeneralSearchEnded *)v5 addResult:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"responseDialogSource", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTGeneralSearchEnded setResponseDialogSource:](v5, "setResponseDialogSource:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"dialogFallbackReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTGeneralSearchEnded setDialogFallbackReason:](v5, "setDialogFallbackReason:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[SISchemaUUID alloc] initWithDictionary:v17];
      [(STSchemaSTGeneralSearchEnded *)v5 setLinkId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (STSchemaSTGeneralSearchEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTGeneralSearchEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTGeneralSearchEnded *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(STSchemaSTGeneralSearchEnded *)self dialogFallbackReason]- 1;
    if (v4 > 4)
    {
      v5 = @"STGENERALSEARCHRESPONSEDIALOGFALLBACKREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E7838[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"dialogFallbackReason"];
  }

  if (self->_linkId)
  {
    v6 = [(STSchemaSTGeneralSearchEnded *)self linkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }
  }

  if (*&self->_has)
  {
    v9 = [(STSchemaSTGeneralSearchEnded *)self responseDialogSource]- 1;
    if (v9 > 4)
    {
      v10 = @"STGENERALSEARCHRESPONSEDIALOGSOURCE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E7860[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"responseDialogSource"];
  }

  if ([(NSArray *)self->_results count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_results;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"result"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v20];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_results hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_responseDialogSource;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_linkId hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_dialogFallbackReason;
  return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(STSchemaSTGeneralSearchEnded *)self results];
  v6 = [v4 results];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(STSchemaSTGeneralSearchEnded *)self results];
  if (v7)
  {
    v8 = v7;
    v9 = [(STSchemaSTGeneralSearchEnded *)self results];
    v10 = [v4 results];
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
    responseDialogSource = self->_responseDialogSource;
    if (responseDialogSource != [v4 responseDialogSource])
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
    dialogFallbackReason = self->_dialogFallbackReason;
    if (dialogFallbackReason != [v4 dialogFallbackReason])
    {
      goto LABEL_19;
    }
  }

  v5 = [(STSchemaSTGeneralSearchEnded *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(STSchemaSTGeneralSearchEnded *)self linkId];
  if (!v17)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(STSchemaSTGeneralSearchEnded *)self linkId];
  v20 = [v4 linkId];
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
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
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

  v11 = [(STSchemaSTGeneralSearchEnded *)self linkId];

  if (v11)
  {
    v12 = [(STSchemaSTGeneralSearchEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasDialogFallbackReason:(BOOL)a3
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

- (void)addResult:(id)a3
{
  v4 = a3;
  results = self->_results;
  v8 = v4;
  if (!results)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = v6;

    v4 = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = STSchemaSTGeneralSearchEnded;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(STSchemaSTGeneralSearchEnded *)self results:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(STSchemaSTGeneralSearchEnded *)self setResults:v7];

  v8 = [(STSchemaSTGeneralSearchEnded *)self linkId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(STSchemaSTGeneralSearchEnded *)self deleteLinkId];
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