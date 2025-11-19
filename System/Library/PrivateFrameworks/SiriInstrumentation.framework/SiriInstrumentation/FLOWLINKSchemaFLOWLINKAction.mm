@interface FLOWLINKSchemaFLOWLINKAction
- (BOOL)isEqual:(id)a3;
- (FLOWLINKSchemaFLOWLINKAction)initWithDictionary:(id)a3;
- (FLOWLINKSchemaFLOWLINKAction)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)a3;
- (void)setHasPresentationStyle:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWLINKSchemaFLOWLINKAction

- (FLOWLINKSchemaFLOWLINKAction)initWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = FLOWLINKSchemaFLOWLINKAction;
  v5 = [(FLOWLINKSchemaFLOWLINKAction *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKAction *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"actionIdentifierName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWLINKSchemaFLOWLINKAction *)v5 setActionIdentifierName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"systemProtocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKAction setSystemProtocol:](v5, "setSystemProtocol:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"presentationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKAction setPresentationStyle:](v5, "setPresentationStyle:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v11;
      v23 = v8;
      v24 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[FLOWLINKSchemaFLOWLINKActionParameter alloc] initWithDictionary:v18];
              [(FLOWLINKSchemaFLOWLINKAction *)v5 addParameters:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v15);
      }

      v8 = v23;
      v6 = v24;
      v11 = v22;
    }

    v20 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWLINKSchemaFLOWLINKAction *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_actionIdentifierName)
  {
    v4 = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"actionIdentifierName"];
  }

  if (self->_linkId)
  {
    v6 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
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

  if ([(NSArray *)self->_parameters count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = self->_parameters;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"parameters"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v18 = [(FLOWLINKSchemaFLOWLINKAction *)self presentationStyle]- 1;
    if (v18 > 2)
    {
      v19 = @"FLOWLINKACTIONPRESENTATIONSTYLE_UNKNOWN";
    }

    else
    {
      v19 = off_1E78D4C40[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:{@"presentationStyle", v23}];
    has = self->_has;
  }

  if (has)
  {
    v20 = [(FLOWLINKSchemaFLOWLINKAction *)self systemProtocol]- 1;
    if (v20 > 0x19)
    {
      v21 = @"LINKSYSTEMACTIONPROTOCOL_UNKNOWN";
    }

    else
    {
      v21 = off_1E78D4C58[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:{@"systemProtocol", v23}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v23];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_actionIdentifierName hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_systemProtocol;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_parameters hash];
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_presentationStyle;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_parameters hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v7 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
  v6 = [v4 actionIdentifierName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v12 = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
    v15 = [v4 actionIdentifierName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    systemProtocol = self->_systemProtocol;
    if (systemProtocol != [v4 systemProtocol])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    presentationStyle = self->_presentationStyle;
    if (presentationStyle != [v4 presentationStyle])
    {
      goto LABEL_24;
    }
  }

  v5 = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  v6 = [v4 parameters];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v22 = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  if (!v22)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  v25 = [v4 parameters];
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
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];

  if (v5)
  {
    v6 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];

  if (v7)
  {
    PBDataWriterWriteStringField();
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

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_parameters;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)addParameters:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:v4];
}

- (void)setHasPresentationStyle:(BOOL)a3
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
  v12.super_class = FLOWLINKSchemaFLOWLINKAction;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWLINKSchemaFLOWLINKAction *)self deleteLinkId];
  }

  v9 = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(FLOWLINKSchemaFLOWLINKAction *)self setParameters:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end