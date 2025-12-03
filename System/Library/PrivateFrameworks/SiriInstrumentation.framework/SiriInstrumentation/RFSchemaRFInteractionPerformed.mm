@interface RFSchemaRFInteractionPerformed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFInteractionPerformed)initWithDictionary:(id)dictionary;
- (RFSchemaRFInteractionPerformed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommandType:(BOOL)type;
- (void)setHasVisualComponent:(BOOL)component;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFInteractionPerformed

- (RFSchemaRFInteractionPerformed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = RFSchemaRFInteractionPerformed;
  v5 = [(RFSchemaRFInteractionPerformed *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFInteractionPerformed *)v5 setActionName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userInteraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFInteractionPerformed setUserInteraction:](v5, "setUserInteraction:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"visualComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFInteractionPerformed setVisualComponent:](v5, "setVisualComponent:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"componentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RFSchemaRFInteractionPerformed *)v5 setComponentName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"commandType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFInteractionPerformed setCommandType:](v5, "setCommandType:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"componentIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(RFSchemaRFInteractionPerformed *)v5 setComponentIndex:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (RFSchemaRFInteractionPerformed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFInteractionPerformed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFInteractionPerformed *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_actionName)
  {
    actionName = [(RFSchemaRFInteractionPerformed *)self actionName];
    v5 = [actionName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionName"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = [(RFSchemaRFInteractionPerformed *)self commandType]- 1;
    if (v6 > 8)
    {
      v7 = @"RFCOMMANDTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E1BA0[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"commandType"];
  }

  if (self->_componentIndex)
  {
    componentIndex = [(RFSchemaRFInteractionPerformed *)self componentIndex];
    v9 = [componentIndex copy];
    [dictionary setObject:v9 forKeyedSubscript:@"componentIndex"];
  }

  if (self->_componentName)
  {
    componentName = [(RFSchemaRFInteractionPerformed *)self componentName];
    v11 = [componentName copy];
    [dictionary setObject:v11 forKeyedSubscript:@"componentName"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [(RFSchemaRFInteractionPerformed *)self userInteraction]- 2;
    if (v13 > 5)
    {
      v14 = @"RFINTERACTION_UNKNOWN";
    }

    else
    {
      v14 = off_1E78E1BE8[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"userInteraction"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v15 = [(RFSchemaRFInteractionPerformed *)self visualComponent]- 1;
    if (v15 > 0x45)
    {
      v16 = @"RFCOMPONENT_UNKNOWN";
    }

    else
    {
      v16 = off_1E78E1C18[v15];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"visualComponent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_actionName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_userInteraction;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_visualComponent;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_componentName hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_commandType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_componentIndex hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  actionName = [(RFSchemaRFInteractionPerformed *)self actionName];
  actionName2 = [equalCopy actionName];
  if ((actionName != 0) == (actionName2 == 0))
  {
    goto LABEL_26;
  }

  actionName3 = [(RFSchemaRFInteractionPerformed *)self actionName];
  if (actionName3)
  {
    v8 = actionName3;
    actionName4 = [(RFSchemaRFInteractionPerformed *)self actionName];
    actionName5 = [equalCopy actionName];
    v11 = [actionName4 isEqual:actionName5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[48];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    userInteraction = self->_userInteraction;
    if (userInteraction != [equalCopy userInteraction])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[48];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    visualComponent = self->_visualComponent;
    if (visualComponent != [equalCopy visualComponent])
    {
      goto LABEL_27;
    }
  }

  actionName = [(RFSchemaRFInteractionPerformed *)self componentName];
  actionName2 = [equalCopy componentName];
  if ((actionName != 0) == (actionName2 == 0))
  {
    goto LABEL_26;
  }

  componentName = [(RFSchemaRFInteractionPerformed *)self componentName];
  if (componentName)
  {
    v18 = componentName;
    componentName2 = [(RFSchemaRFInteractionPerformed *)self componentName];
    componentName3 = [equalCopy componentName];
    v21 = [componentName2 isEqual:componentName3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v22 = (*&self->_has >> 2) & 1;
  if (v22 != ((equalCopy[48] >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    commandType = self->_commandType;
    if (commandType != [equalCopy commandType])
    {
      goto LABEL_27;
    }
  }

  actionName = [(RFSchemaRFInteractionPerformed *)self componentIndex];
  actionName2 = [equalCopy componentIndex];
  if ((actionName != 0) == (actionName2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  componentIndex = [(RFSchemaRFInteractionPerformed *)self componentIndex];
  if (!componentIndex)
  {

LABEL_30:
    v29 = 1;
    goto LABEL_28;
  }

  v25 = componentIndex;
  componentIndex2 = [(RFSchemaRFInteractionPerformed *)self componentIndex];
  componentIndex3 = [equalCopy componentIndex];
  v28 = [componentIndex2 isEqual:componentIndex3];

  if (v28)
  {
    goto LABEL_30;
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionName = [(RFSchemaRFInteractionPerformed *)self actionName];

  if (actionName)
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

  componentName = [(RFSchemaRFInteractionPerformed *)self componentName];

  if (componentName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  componentIndex = [(RFSchemaRFInteractionPerformed *)self componentIndex];

  v8 = toCopy;
  if (componentIndex)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setHasCommandType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVisualComponent:(BOOL)component
{
  if (component)
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