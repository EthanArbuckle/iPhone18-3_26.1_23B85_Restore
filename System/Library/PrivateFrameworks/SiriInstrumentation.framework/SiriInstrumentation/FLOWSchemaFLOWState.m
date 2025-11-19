@interface FLOWSchemaFLOWState
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWState)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWState)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWState

- (FLOWSchemaFLOWState)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FLOWSchemaFLOWState;
  v5 = [(FLOWSchemaFLOWState *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"currentTaskName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWState *)v5 setCurrentTaskName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"currentTaskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWState *)v5 setCurrentTaskType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"flowStateType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWState setFlowStateType:](v5, "setFlowStateType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"flowStateReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[FLOWSchemaFLOWStateReason alloc] initWithDictionary:v11];
      [(FLOWSchemaFLOWState *)v5 setFlowStateReason:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"resolvedSlotName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(FLOWSchemaFLOWState *)v5 setResolvedSlotName:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"flowStateReasonDescription"];
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

- (FLOWSchemaFLOWState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWState *)self dictionaryRepresentation];
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
  if (self->_currentTaskName)
  {
    v4 = [(FLOWSchemaFLOWState *)self currentTaskName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"currentTaskName"];
  }

  if (self->_currentTaskType)
  {
    v6 = [(FLOWSchemaFLOWState *)self currentTaskType];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"currentTaskType"];
  }

  if (self->_flowStateReason)
  {
    v8 = [(FLOWSchemaFLOWState *)self flowStateReason];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"flowStateReason"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"flowStateReason"];
    }
  }

  if (self->_flowStateReasonDescription)
  {
    v11 = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"flowStateReasonDescription"];
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

    [v3 setObject:v14 forKeyedSubscript:@"flowStateType"];
  }

  if (self->_resolvedSlotName)
  {
    v15 = [(FLOWSchemaFLOWState *)self resolvedSlotName];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"resolvedSlotName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(FLOWSchemaFLOWState *)self currentTaskName];
  v6 = [v4 currentTaskName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(FLOWSchemaFLOWState *)self currentTaskName];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWState *)self currentTaskName];
    v10 = [v4 currentTaskName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWState *)self currentTaskType];
  v6 = [v4 currentTaskType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(FLOWSchemaFLOWState *)self currentTaskType];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWState *)self currentTaskType];
    v15 = [v4 currentTaskType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    flowStateType = self->_flowStateType;
    if (flowStateType != [v4 flowStateType])
    {
      goto LABEL_30;
    }
  }

  v5 = [(FLOWSchemaFLOWState *)self flowStateReason];
  v6 = [v4 flowStateReason];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v18 = [(FLOWSchemaFLOWState *)self flowStateReason];
  if (v18)
  {
    v19 = v18;
    v20 = [(FLOWSchemaFLOWState *)self flowStateReason];
    v21 = [v4 flowStateReason];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWState *)self resolvedSlotName];
  v6 = [v4 resolvedSlotName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v23 = [(FLOWSchemaFLOWState *)self resolvedSlotName];
  if (v23)
  {
    v24 = v23;
    v25 = [(FLOWSchemaFLOWState *)self resolvedSlotName];
    v26 = [v4 resolvedSlotName];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
  v6 = [v4 flowStateReasonDescription];
  if ((v5 != 0) != (v6 == 0))
  {
    v28 = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
    if (!v28)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = v28;
    v30 = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];
    v31 = [v4 flowStateReasonDescription];
    v32 = [v30 isEqual:v31];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(FLOWSchemaFLOWState *)self currentTaskName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(FLOWSchemaFLOWState *)self currentTaskType];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(FLOWSchemaFLOWState *)self flowStateReason];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWState *)self flowStateReason];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(FLOWSchemaFLOWState *)self resolvedSlotName];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(FLOWSchemaFLOWState *)self flowStateReasonDescription];

  v10 = v11;
  if (v9)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = FLOWSchemaFLOWState;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWState *)self flowStateReason:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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