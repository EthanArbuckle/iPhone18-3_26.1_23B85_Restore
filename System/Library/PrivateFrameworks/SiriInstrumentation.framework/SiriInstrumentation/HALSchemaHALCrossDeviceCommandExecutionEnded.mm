@interface HALSchemaHALCrossDeviceCommandExecutionEnded
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALCrossDeviceCommandExecutionEnded)initWithDictionary:(id)dictionary;
- (HALSchemaHALCrossDeviceCommandExecutionEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSelected:(id)selected;
- (void)setHasActionResult:(BOOL)result;
- (void)setHasHomeKitTarget:(BOOL)target;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALCrossDeviceCommandExecutionEnded

- (HALSchemaHALCrossDeviceCommandExecutionEnded)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = HALSchemaHALCrossDeviceCommandExecutionEnded;
  v5 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"selected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [HALSchemaHALDevice alloc];
              v14 = [(HALSchemaHALDevice *)v13 initWithDictionary:v12, v20];
              [(HALSchemaHALCrossDeviceCommandExecutionEnded *)v5 addSelected:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"action", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCrossDeviceCommandExecutionEnded setAction:](v5, "setAction:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"actionResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCrossDeviceCommandExecutionEnded setActionResult:](v5, "setActionResult:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"homeKitTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCrossDeviceCommandExecutionEnded setHomeKitTarget:](v5, "setHomeKitTarget:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (HALSchemaHALCrossDeviceCommandExecutionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self action]- 1;
    if (v5 > 0x14)
    {
      v6 = @"HALACTION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D7AB0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"action"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self actionResult]- 1;
  if (v7 > 2)
  {
    v8 = @"HALACTIONRESULT_UNKNOWN";
  }

  else
  {
    v8 = off_1E78D7B58[v7];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"actionResult"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v9 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self homeKitTarget]- 1;
    if (v9 > 6)
    {
      v10 = @"HALHOMEKITTARGET_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D7B70[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"homeKitTarget"];
  }

LABEL_17:
  if ([(NSArray *)self->_selecteds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_selecteds;
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

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"selected"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v20];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_selecteds hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_action;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_actionResult;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_homeKitTarget;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  selecteds = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self selecteds];
  selecteds2 = [equalCopy selecteds];
  v7 = selecteds2;
  if ((selecteds != 0) == (selecteds2 == 0))
  {

    goto LABEL_20;
  }

  selecteds3 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self selecteds];
  if (selecteds3)
  {
    v9 = selecteds3;
    selecteds4 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self selecteds];
    selecteds5 = [equalCopy selecteds];
    v12 = [selecteds4 isEqual:selecteds5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    action = self->_action;
    if (action != [equalCopy action])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = equalCopy[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    actionResult = self->_actionResult;
    if (actionResult == [equalCopy actionResult])
    {
      has = self->_has;
      v14 = equalCopy[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    homeKitTarget = self->_homeKitTarget;
    if (homeKitTarget != [equalCopy homeKitTarget])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_selecteds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
}

- (void)setHasHomeKitTarget:(BOOL)target
{
  if (target)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasActionResult:(BOOL)result
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSelected:(id)selected
{
  selectedCopy = selected;
  selecteds = self->_selecteds;
  v8 = selectedCopy;
  if (!selecteds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_selecteds;
    self->_selecteds = array;

    selectedCopy = v8;
    selecteds = self->_selecteds;
  }

  [(NSArray *)selecteds addObject:selectedCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = HALSchemaHALCrossDeviceCommandExecutionEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self selecteds:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(HALSchemaHALCrossDeviceCommandExecutionEnded *)self setSelecteds:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end