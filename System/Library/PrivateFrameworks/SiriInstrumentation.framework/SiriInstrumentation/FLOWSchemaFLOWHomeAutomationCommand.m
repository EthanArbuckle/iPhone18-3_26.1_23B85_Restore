@interface FLOWSchemaFLOWHomeAutomationCommand
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWHomeAutomationCommand)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWHomeAutomationCommand)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeAutomationRequests:(id)a3;
- (void)setHasCommandDuration:(BOOL)a3;
- (void)setHasCommandErrorReason:(BOOL)a3;
- (void)setHasCommandOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWHomeAutomationCommand

- (FLOWSchemaFLOWHomeAutomationCommand)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = FLOWSchemaFLOWHomeAutomationCommand;
  v5 = [(FLOWSchemaFLOWHomeAutomationCommand *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWHomeAutomationCommand *)v5 setCommandId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"commandType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandType:](v5, "setCommandType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"commandOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandOutcome:](v5, "setCommandOutcome:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"commandErrorReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandErrorReason:](v5, "setCommandErrorReason:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"commandDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandDuration:](v5, "setCommandDuration:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"homeAutomationRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v11;
      v23 = v10;
      v24 = v9;
      v25 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[FLOWSchemaFLOWHomeAutomationRequest alloc] initWithDictionary:v18];
              [(FLOWSchemaFLOWHomeAutomationCommand *)v5 addHomeAutomationRequests:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v15);
      }

      v6 = v25;
      v10 = v23;
      v9 = v24;
      v11 = v22;
    }

    v20 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeAutomationCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWHomeAutomationCommand *)self dictionaryRepresentation];
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
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeAutomationCommand commandDuration](self, "commandDuration")}];
    [v3 setObject:v5 forKeyedSubscript:@"commandDuration"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandErrorReason]- 1;
    if (v6 > 9)
    {
      v7 = @"FLOWHOMEAUTOMATIONCOMMANDERRORREASON_UNKOWN";
    }

    else
    {
      v7 = off_1E78D50F8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"commandErrorReason"];
  }

  if (self->_commandId)
  {
    v8 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"commandId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"commandId"];
    }
  }

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    v12 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandOutcome]- 1;
    if (v12 > 2)
    {
      v13 = @"FLOWHOMEAUTOMATIONOUTCOME_UNKOWN";
    }

    else
    {
      v13 = off_1E78D5148[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"commandOutcome"];
    v11 = self->_has;
  }

  if (v11)
  {
    v14 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandType]- 1;
    if (v14 > 3)
    {
      v15 = @"FLOWHOMEAUTOMATIONCOMMANDTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78D5160[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"commandType"];
  }

  if ([(NSArray *)self->_homeAutomationRequests count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_homeAutomationRequests;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"homeAutomationRequests"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v25];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_commandId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_commandType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_commandOutcome;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSArray *)self->_homeAutomationRequests hash];
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_commandErrorReason;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_commandDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSArray *)self->_homeAutomationRequests hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
  v6 = [v4 commandId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
    v10 = [v4 commandId];
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
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    commandType = self->_commandType;
    if (commandType != [v4 commandType])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    commandOutcome = self->_commandOutcome;
    if (commandOutcome != [v4 commandOutcome])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    commandErrorReason = self->_commandErrorReason;
    if (commandErrorReason != [v4 commandErrorReason])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    commandDuration = self->_commandDuration;
    if (commandDuration != [v4 commandDuration])
    {
      goto LABEL_27;
    }
  }

  v5 = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  v6 = [v4 homeAutomationRequests];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v21 = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  if (!v21)
  {

LABEL_30:
    v26 = 1;
    goto LABEL_28;
  }

  v22 = v21;
  v23 = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  v24 = [v4 homeAutomationRequests];
  v25 = [v23 isEqual:v24];

  if (v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];

  if (v5)
  {
    v6 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_homeAutomationRequests;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addHomeAutomationRequests:(id)a3
{
  v4 = a3;
  homeAutomationRequests = self->_homeAutomationRequests;
  v8 = v4;
  if (!homeAutomationRequests)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeAutomationRequests;
    self->_homeAutomationRequests = v6;

    v4 = v8;
    homeAutomationRequests = self->_homeAutomationRequests;
  }

  [(NSArray *)homeAutomationRequests addObject:v4];
}

- (void)setHasCommandDuration:(BOOL)a3
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

- (void)setHasCommandErrorReason:(BOOL)a3
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

- (void)setHasCommandOutcome:(BOOL)a3
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
  v12.super_class = FLOWSchemaFLOWHomeAutomationCommand;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWHomeAutomationCommand *)self deleteCommandId];
  }

  v9 = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(FLOWSchemaFLOWHomeAutomationCommand *)self setHomeAutomationRequests:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end