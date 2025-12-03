@interface FLOWLINKSchemaFLOWLINKAction
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKAction)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKAction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addParameters:(id)parameters;
- (void)setHasPresentationStyle:(BOOL)style;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKAction

- (FLOWLINKSchemaFLOWLINKAction)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = FLOWLINKSchemaFLOWLINKAction;
  v5 = [(FLOWLINKSchemaFLOWLINKAction *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKAction *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"actionIdentifierName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWLINKSchemaFLOWLINKAction *)v5 setActionIdentifierName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"systemProtocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKAction setSystemProtocol:](v5, "setSystemProtocol:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"presentationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLINKAction setPresentationStyle:](v5, "setPresentationStyle:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
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

- (FLOWLINKSchemaFLOWLINKAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKAction *)self dictionaryRepresentation];
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
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_actionIdentifierName)
  {
    actionIdentifierName = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
    v5 = [actionIdentifierName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionIdentifierName"];
  }

  if (self->_linkId)
  {
    linkId = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
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

  if ([(NSArray *)self->_parameters count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
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

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"parameters"];
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

    [dictionary setObject:v19 forKeyedSubscript:{@"presentationStyle", v23}];
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

    [dictionary setObject:v21 forKeyedSubscript:{@"systemProtocol", v23}];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v23];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  linkId = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_23;
  }

  linkId3 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  linkId = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
  linkId2 = [equalCopy actionIdentifierName];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_23;
  }

  actionIdentifierName = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
  if (actionIdentifierName)
  {
    v13 = actionIdentifierName;
    actionIdentifierName2 = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];
    actionIdentifierName3 = [equalCopy actionIdentifierName];
    v16 = [actionIdentifierName2 isEqual:actionIdentifierName3];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    systemProtocol = self->_systemProtocol;
    if (systemProtocol != [equalCopy systemProtocol])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    presentationStyle = self->_presentationStyle;
    if (presentationStyle != [equalCopy presentationStyle])
    {
      goto LABEL_24;
    }
  }

  linkId = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  linkId2 = [equalCopy parameters];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  parameters = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  if (!parameters)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = parameters;
  parameters2 = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  parameters3 = [equalCopy parameters];
  v26 = [parameters2 isEqual:parameters3];

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
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  actionIdentifierName = [(FLOWLINKSchemaFLOWLINKAction *)self actionIdentifierName];

  if (actionIdentifierName)
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

- (void)addParameters:(id)parameters
{
  parametersCopy = parameters;
  parameters = self->_parameters;
  v8 = parametersCopy;
  if (!parameters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_parameters;
    self->_parameters = array;

    parametersCopy = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:parametersCopy];
}

- (void)setHasPresentationStyle:(BOOL)style
{
  if (style)
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
  v12.super_class = FLOWLINKSchemaFLOWLINKAction;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(FLOWLINKSchemaFLOWLINKAction *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWLINKSchemaFLOWLINKAction *)self deleteLinkId];
  }

  parameters = [(FLOWLINKSchemaFLOWLINKAction *)self parameters];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:parameters underConditions:policyCopy];
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