@interface FLOWSchemaFLOWHomeAutomationCommand
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWHomeAutomationCommand)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWHomeAutomationCommand)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHomeAutomationRequests:(id)requests;
- (void)setHasCommandDuration:(BOOL)duration;
- (void)setHasCommandErrorReason:(BOOL)reason;
- (void)setHasCommandOutcome:(BOOL)outcome;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWHomeAutomationCommand

- (FLOWSchemaFLOWHomeAutomationCommand)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = FLOWSchemaFLOWHomeAutomationCommand;
  v5 = [(FLOWSchemaFLOWHomeAutomationCommand *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWHomeAutomationCommand *)v5 setCommandId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"commandType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandType:](v5, "setCommandType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"commandOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandOutcome:](v5, "setCommandOutcome:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"commandErrorReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandErrorReason:](v5, "setCommandErrorReason:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"commandDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeAutomationCommand setCommandDuration:](v5, "setCommandDuration:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"homeAutomationRequests"];
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

- (FLOWSchemaFLOWHomeAutomationCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeAutomationCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWHomeAutomationCommand *)self dictionaryRepresentation];
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
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWHomeAutomationCommand commandDuration](self, "commandDuration")}];
    [dictionary setObject:v5 forKeyedSubscript:@"commandDuration"];

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

    [dictionary setObject:v7 forKeyedSubscript:@"commandErrorReason"];
  }

  if (self->_commandId)
  {
    commandId = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
    dictionaryRepresentation = [commandId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commandId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commandId"];
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

    [dictionary setObject:v13 forKeyedSubscript:@"commandOutcome"];
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

    [dictionary setObject:v15 forKeyedSubscript:@"commandType"];
  }

  if ([(NSArray *)self->_homeAutomationRequests count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
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

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"homeAutomationRequests"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v25];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  commandId = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
  commandId2 = [equalCopy commandId];
  if ((commandId != 0) == (commandId2 == 0))
  {
    goto LABEL_26;
  }

  commandId3 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
  if (commandId3)
  {
    v8 = commandId3;
    commandId4 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
    commandId5 = [equalCopy commandId];
    v11 = [commandId4 isEqual:commandId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    commandType = self->_commandType;
    if (commandType != [equalCopy commandType])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    commandOutcome = self->_commandOutcome;
    if (commandOutcome != [equalCopy commandOutcome])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    commandErrorReason = self->_commandErrorReason;
    if (commandErrorReason != [equalCopy commandErrorReason])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    commandDuration = self->_commandDuration;
    if (commandDuration != [equalCopy commandDuration])
    {
      goto LABEL_27;
    }
  }

  commandId = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  commandId2 = [equalCopy homeAutomationRequests];
  if ((commandId != 0) == (commandId2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  homeAutomationRequests = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  if (!homeAutomationRequests)
  {

LABEL_30:
    v26 = 1;
    goto LABEL_28;
  }

  v22 = homeAutomationRequests;
  homeAutomationRequests2 = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  homeAutomationRequests3 = [equalCopy homeAutomationRequests];
  v25 = [homeAutomationRequests2 isEqual:homeAutomationRequests3];

  if (v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  commandId = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];

  if (commandId)
  {
    commandId2 = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
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

- (void)addHomeAutomationRequests:(id)requests
{
  requestsCopy = requests;
  homeAutomationRequests = self->_homeAutomationRequests;
  v8 = requestsCopy;
  if (!homeAutomationRequests)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_homeAutomationRequests;
    self->_homeAutomationRequests = array;

    requestsCopy = v8;
    homeAutomationRequests = self->_homeAutomationRequests;
  }

  [(NSArray *)homeAutomationRequests addObject:requestsCopy];
}

- (void)setHasCommandDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCommandErrorReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCommandOutcome:(BOOL)outcome
{
  if (outcome)
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
  v12.super_class = FLOWSchemaFLOWHomeAutomationCommand;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  commandId = [(FLOWSchemaFLOWHomeAutomationCommand *)self commandId];
  v7 = [commandId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWHomeAutomationCommand *)self deleteCommandId];
  }

  homeAutomationRequests = [(FLOWSchemaFLOWHomeAutomationCommand *)self homeAutomationRequests];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:homeAutomationRequests underConditions:policyCopy];
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