@interface IFTSchemaIFTSystemPromptResolution
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemPromptResolution)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemPromptResolution)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemPromptResolution

- (IFTSchemaIFTSystemPromptResolution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTSystemPromptResolution;
  v5 = [(IFTSchemaIFTSystemPromptResolution *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTSystemPromptResolutionUserAction alloc] initWithDictionary:v8];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setUserAction:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"inputModality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolution setInputModality:](v5, "setInputModality:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"actionEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setActionEventId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"systemResponseEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setSystemResponseEventId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"input"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[IFTSchemaIFTSystemPromptResolutionInput alloc] initWithDictionary:v15];
      [(IFTSchemaIFTSystemPromptResolution *)v5 setInput:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemPromptResolution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemPromptResolution *)self dictionaryRepresentation];
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
  if (self->_actionEventId)
  {
    actionEventId = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
    dictionaryRepresentation = [actionEventId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionEventId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionEventId"];
    }
  }

  if (self->_input)
  {
    input = [(IFTSchemaIFTSystemPromptResolution *)self input];
    dictionaryRepresentation2 = [input dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"input"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"input"];
    }
  }

  if (*&self->_has)
  {
    inputModality = [(IFTSchemaIFTSystemPromptResolution *)self inputModality];
    v11 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_UNKNOWN";
    if (inputModality == 1)
    {
      v11 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_TOUCH";
    }

    if (inputModality == 2)
    {
      v12 = @"IFTSYSTEMPROMPTRESOLUTIONINPUTMODALITY_HAND_GESTURE";
    }

    else
    {
      v12 = v11;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"inputModality"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
    dictionaryRepresentation3 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_systemResponseEventId)
  {
    systemResponseEventId = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
    dictionaryRepresentation4 = [systemResponseEventId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"systemResponseEventId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"systemResponseEventId"];
    }
  }

  if (self->_userAction)
  {
    userAction = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
    dictionaryRepresentation5 = [userAction dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"userAction"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"userAction"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v4 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self->_userAction hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_inputModality;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_actionEventId hash];
  v7 = [(SISchemaUUID *)self->_systemResponseEventId hash];
  return v6 ^ v7 ^ [(IFTSchemaIFTSystemPromptResolutionInput *)self->_input hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  statementId = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_29;
  }

  statementId3 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
  if (statementId3)
  {
    v8 = statementId3;
    statementId4 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
    statementId5 = [equalCopy statementId];
    v11 = [statementId4 isEqual:statementId5];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
  statementId2 = [equalCopy userAction];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_29;
  }

  userAction = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
  if (userAction)
  {
    v13 = userAction;
    userAction2 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
    userAction3 = [equalCopy userAction];
    v16 = [userAction2 isEqual:userAction3];

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
    inputModality = self->_inputModality;
    if (inputModality != [equalCopy inputModality])
    {
      goto LABEL_30;
    }
  }

  statementId = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
  statementId2 = [equalCopy actionEventId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_29;
  }

  actionEventId = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
  if (actionEventId)
  {
    v19 = actionEventId;
    actionEventId2 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
    actionEventId3 = [equalCopy actionEventId];
    v22 = [actionEventId2 isEqual:actionEventId3];

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
  statementId2 = [equalCopy systemResponseEventId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_29;
  }

  systemResponseEventId = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
  if (systemResponseEventId)
  {
    v24 = systemResponseEventId;
    systemResponseEventId2 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
    systemResponseEventId3 = [equalCopy systemResponseEventId];
    v27 = [systemResponseEventId2 isEqual:systemResponseEventId3];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTSystemPromptResolution *)self input];
  statementId2 = [equalCopy input];
  if ((statementId != 0) != (statementId2 == 0))
  {
    input = [(IFTSchemaIFTSystemPromptResolution *)self input];
    if (!input)
    {

LABEL_33:
      v33 = 1;
      goto LABEL_31;
    }

    v29 = input;
    input2 = [(IFTSchemaIFTSystemPromptResolution *)self input];
    input3 = [equalCopy input];
    v32 = [input2 isEqual:input3];

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
  statementId = [(IFTSchemaIFTSystemPromptResolution *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  userAction = [(IFTSchemaIFTSystemPromptResolution *)self userAction];

  if (userAction)
  {
    userAction2 = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  actionEventId = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];

  if (actionEventId)
  {
    actionEventId2 = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
    PBDataWriterWriteSubmessage();
  }

  systemResponseEventId = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];

  if (systemResponseEventId)
  {
    systemResponseEventId2 = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
    PBDataWriterWriteSubmessage();
  }

  input = [(IFTSchemaIFTSystemPromptResolution *)self input];

  v13 = toCopy;
  if (input)
  {
    input2 = [(IFTSchemaIFTSystemPromptResolution *)self input];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTSystemPromptResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  statementId = [(IFTSchemaIFTSystemPromptResolution *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteStatementId];
  }

  userAction = [(IFTSchemaIFTSystemPromptResolution *)self userAction];
  v10 = [userAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteUserAction];
  }

  actionEventId = [(IFTSchemaIFTSystemPromptResolution *)self actionEventId];
  v13 = [actionEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteActionEventId];
  }

  systemResponseEventId = [(IFTSchemaIFTSystemPromptResolution *)self systemResponseEventId];
  v16 = [systemResponseEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteSystemResponseEventId];
  }

  input = [(IFTSchemaIFTSystemPromptResolution *)self input];
  v19 = [input applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTSystemPromptResolution *)self deleteInput];
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