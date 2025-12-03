@interface SUGSchemaSUGSuggestionsUIActivity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUGSchemaSUGSuggestionsUIActivity)initWithDictionary:(id)dictionary;
- (SUGSchemaSUGSuggestionsUIActivity)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSuggestionIds:(id)ids;
- (void)addSuggestions:(id)suggestions;
- (void)setHasUiActivity:(BOOL)activity;
- (void)writeTo:(id)to;
@end

@implementation SUGSchemaSUGSuggestionsUIActivity

- (SUGSchemaSUGSuggestionsUIActivity)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = SUGSchemaSUGSuggestionsUIActivity;
  v5 = [(SUGSchemaSUGSuggestionsUIActivity *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionIds"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"deliveryVehicle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestionsUIActivity setDeliveryVehicle:](v5, "setDeliveryVehicle:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"uiActivity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUGSchemaSUGSuggestionsUIActivity setUiActivity:](v5, "setUiActivity:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"suggestions"];
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

    v25 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
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

- (SUGSchemaSUGSuggestionsUIActivity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUGSchemaSUGSuggestionsUIActivity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUGSchemaSUGSuggestionsUIActivity *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKeyedSubscript:@"deliveryVehicle"];
  }

  if (self->_linkId)
  {
    linkId = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_suggestionIds)
  {
    suggestionIds = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
    v10 = [suggestionIds copy];
    [dictionary setObject:v10 forKeyedSubscript:@"suggestionIds"];
  }

  if ([(NSArray *)self->_suggestions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"suggestions"];
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

    [dictionary setObject:v20 forKeyedSubscript:@"uiActivity"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  suggestionIds = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
  suggestionIds2 = [equalCopy suggestionIds];
  if ((suggestionIds != 0) == (suggestionIds2 == 0))
  {
    goto LABEL_23;
  }

  suggestionIds3 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
  if (suggestionIds3)
  {
    v8 = suggestionIds3;
    suggestionIds4 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestionIds];
    suggestionIds5 = [equalCopy suggestionIds];
    v11 = [suggestionIds4 isEqual:suggestionIds5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    deliveryVehicle = self->_deliveryVehicle;
    if (deliveryVehicle != [equalCopy deliveryVehicle])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v15)
  {
    uiActivity = self->_uiActivity;
    if (uiActivity != [equalCopy uiActivity])
    {
      goto LABEL_24;
    }
  }

  suggestionIds = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions];
  suggestionIds2 = [equalCopy suggestions];
  if ((suggestionIds != 0) == (suggestionIds2 == 0))
  {
    goto LABEL_23;
  }

  suggestions = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions];
  if (suggestions)
  {
    v18 = suggestions;
    suggestions2 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions];
    suggestions3 = [equalCopy suggestions];
    v21 = [suggestions2 isEqual:suggestions3];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  suggestionIds = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  suggestionIds2 = [equalCopy linkId];
  if ((suggestionIds != 0) == (suggestionIds2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  linkId = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  if (!linkId)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = linkId;
  linkId2 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  linkId3 = [equalCopy linkId];
  v26 = [linkId2 isEqual:linkId3];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  linkId = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];

  if (linkId)
  {
    linkId2 = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestions = self->_suggestions;
  v8 = suggestionsCopy;
  if (!suggestions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = array;

    suggestionsCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:suggestionsCopy];
}

- (void)setHasUiActivity:(BOOL)activity
{
  if (activity)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSuggestionIds:(id)ids
{
  idsCopy = ids;
  suggestionIds = self->_suggestionIds;
  v8 = idsCopy;
  if (!suggestionIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestionIds;
    self->_suggestionIds = array;

    idsCopy = v8;
    suggestionIds = self->_suggestionIds;
  }

  [(NSArray *)suggestionIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = SUGSchemaSUGSuggestionsUIActivity;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUGSchemaSUGSuggestionsUIActivity *)self suggestions:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(SUGSchemaSUGSuggestionsUIActivity *)self setSuggestions:v7];

  linkId = [(SUGSchemaSUGSuggestionsUIActivity *)self linkId];
  v9 = [linkId applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
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