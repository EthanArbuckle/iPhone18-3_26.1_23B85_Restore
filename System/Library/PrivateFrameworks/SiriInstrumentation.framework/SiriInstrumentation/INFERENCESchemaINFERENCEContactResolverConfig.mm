@interface INFERENCESchemaINFERENCEContactResolverConfig
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEContactResolverConfig)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEContactResolverConfig)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAppBundleIds:(id)a3;
- (void)setHasActionType:(BOOL)a3;
- (void)setHasContactSearchSuggestedType:(BOOL)a3;
- (void)setHasDomainsToSearchForHistory:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEContactResolverConfig

- (INFERENCESchemaINFERENCEContactResolverConfig)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = INFERENCESchemaINFERENCEContactResolverConfig;
  v5 = [(INFERENCESchemaINFERENCEContactResolverConfig *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isSearchingFirstPartyContacts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactResolverConfig setIsSearchingFirstPartyContacts:](v5, "setIsSearchingFirstPartyContacts:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"contactSearchSuggestedType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactResolverConfig setContactSearchSuggestedType:](v5, "setContactSearchSuggestedType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"domainsToSearchForHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactResolverConfig setDomainsToSearchForHistory:](v5, "setDomainsToSearchForHistory:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactResolverConfig setActionType:](v5, "setActionType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appBundleIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
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
              v17 = [v16 copy];
              [(INFERENCESchemaINFERENCEContactResolverConfig *)v5 addAppBundleIds:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v6 = v21;
      v8 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactResolverConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactResolverConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self actionType]- 1;
    if (v4 > 4)
    {
      v5 = @"INFERENCECONTACTACTIONTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D8978[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"actionType"];
  }

  if (self->_appBundleIds)
  {
    v6 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self appBundleIds];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"appBundleIds"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self contactSearchSuggestedType]- 1;
    if (v11 > 2)
    {
      v12 = @"INFERENCECONTACTSEARCHSUGGESTEDTYPE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78D89A0[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"contactSearchSuggestedType"];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

  v13 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self domainsToSearchForHistory]- 1;
  if (v13 > 2)
  {
    v14 = @"INFERENCECONTACTRESOLUTIONDOMAIN_UNKNOWN";
  }

  else
  {
    v14 = off_1E78D89B8[v13];
  }

  [v3 setObject:v14 forKeyedSubscript:@"domainsToSearchForHistory"];
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactResolverConfig isSearchingFirstPartyContacts](self, "isSearchingFirstPartyContacts")}];
  [v3 setObject:v9 forKeyedSubscript:@"isSearchingFirstPartyContacts"];

LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isSearchingFirstPartyContacts;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_contactSearchSuggestedType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSArray *)self->_appBundleIds hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_domainsToSearchForHistory;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_actionType;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSArray *)self->_appBundleIds hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    isSearchingFirstPartyContacts = self->_isSearchingFirstPartyContacts;
    if (isSearchingFirstPartyContacts != [v4 isSearchingFirstPartyContacts])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      contactSearchSuggestedType = self->_contactSearchSuggestedType;
      if (contactSearchSuggestedType != [v4 contactSearchSuggestedType])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        domainsToSearchForHistory = self->_domainsToSearchForHistory;
        if (domainsToSearchForHistory != [v4 domainsToSearchForHistory])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v6 = v4[32];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (!v12 || (actionType = self->_actionType, actionType == [v4 actionType]))
        {
          v14 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self appBundleIds];
          v15 = [v4 appBundleIds];
          v16 = v15;
          if ((v14 != 0) != (v15 == 0))
          {
            v17 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self appBundleIds];
            if (!v17)
            {

LABEL_25:
              v22 = 1;
              goto LABEL_23;
            }

            v18 = v17;
            v19 = [(INFERENCESchemaINFERENCEContactResolverConfig *)self appBundleIds];
            v20 = [v4 appBundleIds];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }
        }
      }
    }
  }

LABEL_22:
  v22 = 0;
LABEL_23:

  return v22;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_appBundleIds;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addAppBundleIds:(id)a3
{
  v4 = a3;
  appBundleIds = self->_appBundleIds;
  v8 = v4;
  if (!appBundleIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_appBundleIds;
    self->_appBundleIds = v6;

    v4 = v8;
    appBundleIds = self->_appBundleIds;
  }

  [(NSArray *)appBundleIds addObject:v4];
}

- (void)setHasActionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDomainsToSearchForHistory:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasContactSearchSuggestedType:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end