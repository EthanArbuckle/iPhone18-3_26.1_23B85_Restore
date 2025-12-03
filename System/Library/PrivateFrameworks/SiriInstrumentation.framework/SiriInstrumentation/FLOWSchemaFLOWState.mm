@interface FLOWSchemaFLOWState
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWState)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWState)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWState

- (FLOWSchemaFLOWState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = FLOWSchemaFLOWState;
  v5 = [(FLOWSchemaFLOWState *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"currentTaskName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWState *)v5 setCurrentTaskName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"currentTaskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWState *)v5 setCurrentTaskType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"flowStateType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWState setFlowStateType:](v5, "setFlowStateType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"flowStateReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[FLOWSchemaFLOWStateReason alloc] initWithDictionary:v11];
      [(FLOWSchemaFLOWState *)v5 setFlowStateReason:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"resolvedSlotName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(FLOWSchemaFLOWState *)v5 setResolvedSlotName:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"flowStateReasonDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(FLOWSchemaFLOWState *)v5 setFlowStateReasonDescription:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWState *)self dictionaryRepresentation];
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
  if (self->_currentTaskName)
  {
    currentTaskName = [(FLOWSchemaFLOWState *)self currentTaskName];
    v5 = [currentTaskName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"currentTaskName"];
  }

  if (self->_currentTaskType)
  {
    currentTaskType = [(FLOWSchemaFLOWState *)self currentTaskType];
    v7 = [currentTaskType copy];
    [dictionary setObject:v7 forKeyedSubscript:@"currentTaskType"];
  }

  if (self->_flowStateReason)
  {
    flowStateReason = [(FLOWSchemaFLOWState *)self flowStateReason];
    dictionaryRepresentation = [flowStateReason dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"flowStateReason"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"flowStateReason"];
    }
  }

  if (self->_flowStateReasonDescription)
  {
    flowStateReasonDescription = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
    v12 = [flowStateReasonDescription copy];
    [dictionary setObject:v12 forKeyedSubscript:@"flowStateReasonDescription"];
  }

  if (*&self->_has)
  {
    v13 = [(FLOWSchemaFLOWState *)self flowStateType]- 1;
    if (v13 > 0xCF)
    {
      v14 = @"FLOWSTATETYPE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78D6330[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"flowStateType"];
  }

  if (self->_resolvedSlotName)
  {
    resolvedSlotName = [(FLOWSchemaFLOWState *)self resolvedSlotName];
    v16 = [resolvedSlotName copy];
    [dictionary setObject:v16 forKeyedSubscript:@"resolvedSlotName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_currentTaskName hash];
  v4 = [(NSString *)self->_currentTaskType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_flowStateType;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(FLOWSchemaFLOWStateReason *)self->_flowStateReason hash];
  v7 = [(NSString *)self->_resolvedSlotName hash];
  return v6 ^ v7 ^ [(NSString *)self->_flowStateReasonDescription hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  currentTaskName = [(FLOWSchemaFLOWState *)self currentTaskName];
  currentTaskName2 = [equalCopy currentTaskName];
  if ((currentTaskName != 0) == (currentTaskName2 == 0))
  {
    goto LABEL_29;
  }

  currentTaskName3 = [(FLOWSchemaFLOWState *)self currentTaskName];
  if (currentTaskName3)
  {
    v8 = currentTaskName3;
    currentTaskName4 = [(FLOWSchemaFLOWState *)self currentTaskName];
    currentTaskName5 = [equalCopy currentTaskName];
    v11 = [currentTaskName4 isEqual:currentTaskName5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  currentTaskName = [(FLOWSchemaFLOWState *)self currentTaskType];
  currentTaskName2 = [equalCopy currentTaskType];
  if ((currentTaskName != 0) == (currentTaskName2 == 0))
  {
    goto LABEL_29;
  }

  currentTaskType = [(FLOWSchemaFLOWState *)self currentTaskType];
  if (currentTaskType)
  {
    v13 = currentTaskType;
    currentTaskType2 = [(FLOWSchemaFLOWState *)self currentTaskType];
    currentTaskType3 = [equalCopy currentTaskType];
    v16 = [currentTaskType2 isEqual:currentTaskType3];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    flowStateType = self->_flowStateType;
    if (flowStateType != [equalCopy flowStateType])
    {
      goto LABEL_30;
    }
  }

  currentTaskName = [(FLOWSchemaFLOWState *)self flowStateReason];
  currentTaskName2 = [equalCopy flowStateReason];
  if ((currentTaskName != 0) == (currentTaskName2 == 0))
  {
    goto LABEL_29;
  }

  flowStateReason = [(FLOWSchemaFLOWState *)self flowStateReason];
  if (flowStateReason)
  {
    v19 = flowStateReason;
    flowStateReason2 = [(FLOWSchemaFLOWState *)self flowStateReason];
    flowStateReason3 = [equalCopy flowStateReason];
    v22 = [flowStateReason2 isEqual:flowStateReason3];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  currentTaskName = [(FLOWSchemaFLOWState *)self resolvedSlotName];
  currentTaskName2 = [equalCopy resolvedSlotName];
  if ((currentTaskName != 0) == (currentTaskName2 == 0))
  {
    goto LABEL_29;
  }

  resolvedSlotName = [(FLOWSchemaFLOWState *)self resolvedSlotName];
  if (resolvedSlotName)
  {
    v24 = resolvedSlotName;
    resolvedSlotName2 = [(FLOWSchemaFLOWState *)self resolvedSlotName];
    resolvedSlotName3 = [equalCopy resolvedSlotName];
    v27 = [resolvedSlotName2 isEqual:resolvedSlotName3];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  currentTaskName = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
  currentTaskName2 = [equalCopy flowStateReasonDescription];
  if ((currentTaskName != 0) != (currentTaskName2 == 0))
  {
    flowStateReasonDescription = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
    if (!flowStateReasonDescription)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = flowStateReasonDescription;
    flowStateReasonDescription2 = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
    flowStateReasonDescription3 = [equalCopy flowStateReasonDescription];
    v32 = [flowStateReasonDescription2 isEqual:flowStateReasonDescription3];

    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_29:
  }

LABEL_30:
  v33 = 0;
LABEL_31:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  currentTaskName = [(FLOWSchemaFLOWState *)self currentTaskName];

  if (currentTaskName)
  {
    PBDataWriterWriteStringField();
  }

  currentTaskType = [(FLOWSchemaFLOWState *)self currentTaskType];

  if (currentTaskType)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  flowStateReason = [(FLOWSchemaFLOWState *)self flowStateReason];

  if (flowStateReason)
  {
    flowStateReason2 = [(FLOWSchemaFLOWState *)self flowStateReason];
    PBDataWriterWriteSubmessage();
  }

  resolvedSlotName = [(FLOWSchemaFLOWState *)self resolvedSlotName];

  if (resolvedSlotName)
  {
    PBDataWriterWriteStringField();
  }

  flowStateReasonDescription = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];

  v10 = toCopy;
  if (flowStateReasonDescription)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWState;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWSchemaFLOWState *)self flowStateReason:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWSchemaFLOWState *)self deleteFlowStateReason];
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