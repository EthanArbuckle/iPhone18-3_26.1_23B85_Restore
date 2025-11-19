@interface SUGSchemaSUGSuggestionsUIActivity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestionsUIActivity)initWithDictionary:(id)a3;
- (SUGSchemaSUGSuggestionsUIActivity)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSuggestionIds:(id)a3;
- (void)addSuggestions:(id)a3;
- (void)setHasUiActivity:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SUGSchemaSUGSuggestionsUIActivity

- (SUGSchemaSUGSuggestionsUIActivity)initWithDictionary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SUGSchemaSUGSuggestionsUIActivity;
  v5 = [(SUGSchemaSUGSuggestionsUIActivity *)&v39 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 copy];
              [(SUGSchemaSUGSuggestionsUIActivity *)v5 addSuggestionIds:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [v4 objectForKeyedSubscript:@"deliveryVehicle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestionsUIActivity setDeliveryVehicle:](v5, "setDeliveryVehicle:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"uiActivity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestionsUIActivity setUiActivity:](v5, "setUiActivity:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"suggestions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v16;
      v30 = v15;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[SUGSchemaSUGSuggestion alloc] initWithDictionary:v23];
              [(SUGSchemaSUGSuggestionsUIActivity *)v5 addSuggestions:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v20);
      }

      v15 = v30;
      v16 = v29;
    }

    v25 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SISchemaUUID alloc] initWithDictionary:v25];
      [(SUGSchemaSUGSuggestionsUIActivity *)v5 setLinkId:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (SUGSchemaSUGSuggestionsUIActivity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestionsUIActivity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUGSchemaSUGSuggestionsUIActivity *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(SUGSchemaSUGSuggestionsUIActivity *)self deliveryVehicle]- 1;
    if (v4 > 9)
    {
      v5 = @"SUGDELIVERYVEHICLE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E7CF8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"deliveryVehicle"];
  }

  if (self->_linkId)
  {
    v6 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
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

  if (self->_suggestionIds)
  {
    v9 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"suggestionIds"];
  }

  if ([(NSArray *)self->_suggestions count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_suggestions;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
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

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"suggestions"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = [(SUGSchemaSUGSuggestionsUIActivity *)self uiActivity]- 1;
    if (v19 > 2)
    {
      v20 = @"SUGUIACTIVITY_UNKNOWN";
    }

    else
    {
      v20 = off_1E78E7D48[v19];
    }

    [v3 setObject:v20 forKeyedSubscript:@"uiActivity"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_suggestionIds hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_deliveryVehicle;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_uiActivity;
LABEL_6:
  v6 = v4 ^ v3 ^ v5 ^ [(NSArray *)self->_suggestions hash];
  return v6 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
  v6 = [v4 suggestionIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v7 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
    v10 = [v4 suggestionIds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    deliveryVehicle = self->_deliveryVehicle;
    if (deliveryVehicle != [v4 deliveryVehicle])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v15)
  {
    uiActivity = self->_uiActivity;
    if (uiActivity != [v4 uiActivity])
    {
      goto LABEL_24;
    }
  }

  v5 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions];
  v6 = [v4 suggestions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v17 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions];
  if (v17)
  {
    v18 = v17;
    v19 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions];
    v20 = [v4 suggestions];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v22 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  if (!v22)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  v25 = [v4 linkId];
  v26 = [v24 isEqual:v25];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_suggestionIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_suggestions;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v16 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];

  if (v16)
  {
    v17 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addSuggestions:(id)a3
{
  v4 = a3;
  suggestions = self->_suggestions;
  v8 = v4;
  if (!suggestions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = v6;

    v4 = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:v4];
}

- (void)setHasUiActivity:(BOOL)a3
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

- (void)addSuggestionIds:(id)a3
{
  v4 = a3;
  suggestionIds = self->_suggestionIds;
  v8 = v4;
  if (!suggestionIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestionIds;
    self->_suggestionIds = v6;

    v4 = v8;
    suggestionIds = self->_suggestionIds;
  }

  [(NSArray *)suggestionIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = SUGSchemaSUGSuggestionsUIActivity;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(SUGSchemaSUGSuggestionsUIActivity *)self setSuggestions:v7];

  v8 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v9 suppressMessage];
  if (v4)
  {
    [(SUGSchemaSUGSuggestionsUIActivity *)self deleteLinkId];
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