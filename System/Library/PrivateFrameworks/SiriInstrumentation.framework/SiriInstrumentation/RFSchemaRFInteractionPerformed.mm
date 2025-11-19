@interface RFSchemaRFInteractionPerformed
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFInteractionPerformed)initWithDictionary:(id)a3;
- (RFSchemaRFInteractionPerformed)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCommandType:(BOOL)a3;
- (void)setHasVisualComponent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFInteractionPerformed

- (RFSchemaRFInteractionPerformed)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RFSchemaRFInteractionPerformed;
  v5 = [(RFSchemaRFInteractionPerformed *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFInteractionPerformed *)v5 setActionName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"userInteraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFInteractionPerformed setUserInteraction:](v5, "setUserInteraction:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"visualComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFInteractionPerformed setVisualComponent:](v5, "setVisualComponent:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"componentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RFSchemaRFInteractionPerformed *)v5 setComponentName:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"commandType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFInteractionPerformed setCommandType:](v5, "setCommandType:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"componentIndex"];
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

- (RFSchemaRFInteractionPerformed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFInteractionPerformed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFInteractionPerformed *)self dictionaryRepresentation];
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
  if (self->_actionName)
  {
    v4 = [(RFSchemaRFInteractionPerformed *)self actionName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"actionName"];
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

    [v3 setObject:v7 forKeyedSubscript:@"commandType"];
  }

  if (self->_componentIndex)
  {
    v8 = [(RFSchemaRFInteractionPerformed *)self componentIndex];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"componentIndex"];
  }

  if (self->_componentName)
  {
    v10 = [(RFSchemaRFInteractionPerformed *)self componentName];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"componentName"];
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

    [v3 setObject:v14 forKeyedSubscript:@"userInteraction"];
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

    [v3 setObject:v16 forKeyedSubscript:@"visualComponent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(RFSchemaRFInteractionPerformed *)self actionName];
  v6 = [v4 actionName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(RFSchemaRFInteractionPerformed *)self actionName];
  if (v7)
  {
    v8 = v7;
    v9 = [(RFSchemaRFInteractionPerformed *)self actionName];
    v10 = [v4 actionName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[48];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    userInteraction = self->_userInteraction;
    if (userInteraction != [v4 userInteraction])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[48];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    visualComponent = self->_visualComponent;
    if (visualComponent != [v4 visualComponent])
    {
      goto LABEL_27;
    }
  }

  v5 = [(RFSchemaRFInteractionPerformed *)self componentName];
  v6 = [v4 componentName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(RFSchemaRFInteractionPerformed *)self componentName];
  if (v17)
  {
    v18 = v17;
    v19 = [(RFSchemaRFInteractionPerformed *)self componentName];
    v20 = [v4 componentName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v22 = (*&self->_has >> 2) & 1;
  if (v22 != ((v4[48] >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    commandType = self->_commandType;
    if (commandType != [v4 commandType])
    {
      goto LABEL_27;
    }
  }

  v5 = [(RFSchemaRFInteractionPerformed *)self componentIndex];
  v6 = [v4 componentIndex];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v24 = [(RFSchemaRFInteractionPerformed *)self componentIndex];
  if (!v24)
  {

LABEL_30:
    v29 = 1;
    goto LABEL_28;
  }

  v25 = v24;
  v26 = [(RFSchemaRFInteractionPerformed *)self componentIndex];
  v27 = [v4 componentIndex];
  v28 = [v26 isEqual:v27];

  if (v28)
  {
    goto LABEL_30;
  }

LABEL_27:
  v29 = 0;
LABEL_28:

  return v29;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(RFSchemaRFInteractionPerformed *)self actionName];

  if (v4)
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

  v6 = [(RFSchemaRFInteractionPerformed *)self componentName];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(RFSchemaRFInteractionPerformed *)self componentIndex];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (void)setHasCommandType:(BOOL)a3
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

- (void)setHasVisualComponent:(BOOL)a3
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