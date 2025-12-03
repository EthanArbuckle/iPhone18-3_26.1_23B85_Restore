@interface IFTSchemaIFTStatementResult
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTStatementResult)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTStatementResult)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTStatementResult

- (IFTSchemaIFTStatementResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = IFTSchemaIFTStatementResult;
  v5 = [(IFTSchemaIFTStatementResult *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTStatementResult setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"resultStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTStatementResult *)v5 setResultStatementId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTStatementResult *)v5 setOriginProgramStatementId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTStatementResultPayload alloc] initWithDictionary:v11];
      [(IFTSchemaIFTStatementResult *)v5 setPayload:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(IFTSchemaIFTStatementResult *)v5 setToolId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"actionEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(IFTSchemaIFTStatementResult *)v5 setActionEventId:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"originTaskStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v17];
      [(IFTSchemaIFTStatementResult *)v5 setOriginTaskStatementId:v18];
    }

    v19 = v5;
  }

  return v5;
}

- (IFTSchemaIFTStatementResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTStatementResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTStatementResult *)self dictionaryRepresentation];
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
    actionEventId = [(IFTSchemaIFTStatementResult *)self actionEventId];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTStatementResult exists](self, "exists")}];
    [dictionary setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_originProgramStatementId)
  {
    originProgramStatementId = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
    dictionaryRepresentation2 = [originProgramStatementId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originProgramStatementId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originProgramStatementId"];
    }
  }

  if (self->_originTaskStatementId)
  {
    originTaskStatementId = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    dictionaryRepresentation3 = [originTaskStatementId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"originTaskStatementId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"originTaskStatementId"];
    }
  }

  if (self->_payload)
  {
    payload = [(IFTSchemaIFTStatementResult *)self payload];
    dictionaryRepresentation4 = [payload dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"payload"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"payload"];
    }
  }

  if (self->_resultStatementId)
  {
    resultStatementId = [(IFTSchemaIFTStatementResult *)self resultStatementId];
    dictionaryRepresentation5 = [resultStatementId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"resultStatementId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"resultStatementId"];
    }
  }

  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTStatementResult *)self toolId];
    v21 = [toolId copy];
    [dictionary setObject:v21 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTStatementId *)self->_resultStatementId hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash];
  v6 = v4 ^ v5 ^ [(IFTSchemaIFTStatementResultPayload *)self->_payload hash];
  v7 = [(NSString *)self->_toolId hash];
  v8 = v7 ^ [(SISchemaUUID *)self->_actionEventId hash];
  return v6 ^ v8 ^ [(IFTSchemaIFTStatementId *)self->_originTaskStatementId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_35;
    }
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self resultStatementId];
  resultStatementId2 = [equalCopy resultStatementId];
  if ((resultStatementId != 0) == (resultStatementId2 == 0))
  {
    goto LABEL_34;
  }

  resultStatementId3 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
  if (resultStatementId3)
  {
    v9 = resultStatementId3;
    resultStatementId4 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
    resultStatementId5 = [equalCopy resultStatementId];
    v12 = [resultStatementId4 isEqual:resultStatementId5];

    if (!v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
  resultStatementId2 = [equalCopy originProgramStatementId];
  if ((resultStatementId != 0) == (resultStatementId2 == 0))
  {
    goto LABEL_34;
  }

  originProgramStatementId = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
  if (originProgramStatementId)
  {
    v14 = originProgramStatementId;
    originProgramStatementId2 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
    originProgramStatementId3 = [equalCopy originProgramStatementId];
    v17 = [originProgramStatementId2 isEqual:originProgramStatementId3];

    if (!v17)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self payload];
  resultStatementId2 = [equalCopy payload];
  if ((resultStatementId != 0) == (resultStatementId2 == 0))
  {
    goto LABEL_34;
  }

  payload = [(IFTSchemaIFTStatementResult *)self payload];
  if (payload)
  {
    v19 = payload;
    payload2 = [(IFTSchemaIFTStatementResult *)self payload];
    payload3 = [equalCopy payload];
    v22 = [payload2 isEqual:payload3];

    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self toolId];
  resultStatementId2 = [equalCopy toolId];
  if ((resultStatementId != 0) == (resultStatementId2 == 0))
  {
    goto LABEL_34;
  }

  toolId = [(IFTSchemaIFTStatementResult *)self toolId];
  if (toolId)
  {
    v24 = toolId;
    toolId2 = [(IFTSchemaIFTStatementResult *)self toolId];
    toolId3 = [equalCopy toolId];
    v27 = [toolId2 isEqual:toolId3];

    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self actionEventId];
  resultStatementId2 = [equalCopy actionEventId];
  if ((resultStatementId != 0) == (resultStatementId2 == 0))
  {
    goto LABEL_34;
  }

  actionEventId = [(IFTSchemaIFTStatementResult *)self actionEventId];
  if (actionEventId)
  {
    v29 = actionEventId;
    actionEventId2 = [(IFTSchemaIFTStatementResult *)self actionEventId];
    actionEventId3 = [equalCopy actionEventId];
    v32 = [actionEventId2 isEqual:actionEventId3];

    if (!v32)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
  resultStatementId2 = [equalCopy originTaskStatementId];
  if ((resultStatementId != 0) != (resultStatementId2 == 0))
  {
    originTaskStatementId = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    if (!originTaskStatementId)
    {

LABEL_38:
      v38 = 1;
      goto LABEL_36;
    }

    v34 = originTaskStatementId;
    originTaskStatementId2 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    originTaskStatementId3 = [equalCopy originTaskStatementId];
    v37 = [originTaskStatementId2 isEqual:originTaskStatementId3];

    if (v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
LABEL_34:
  }

LABEL_35:
  v38 = 0;
LABEL_36:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self resultStatementId];

  if (resultStatementId)
  {
    resultStatementId2 = [(IFTSchemaIFTStatementResult *)self resultStatementId];
    PBDataWriterWriteSubmessage();
  }

  originProgramStatementId = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];

  if (originProgramStatementId)
  {
    originProgramStatementId2 = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();
  }

  payload = [(IFTSchemaIFTStatementResult *)self payload];

  if (payload)
  {
    payload2 = [(IFTSchemaIFTStatementResult *)self payload];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTStatementResult *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  actionEventId = [(IFTSchemaIFTStatementResult *)self actionEventId];

  if (actionEventId)
  {
    actionEventId2 = [(IFTSchemaIFTStatementResult *)self actionEventId];
    PBDataWriterWriteSubmessage();
  }

  originTaskStatementId = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];

  v14 = toCopy;
  if (originTaskStatementId)
  {
    originTaskStatementId2 = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTStatementResult;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTStatementResult *)self deleteToolId];
  }

  resultStatementId = [(IFTSchemaIFTStatementResult *)self resultStatementId];
  v7 = [resultStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTStatementResult *)self deleteResultStatementId];
  }

  originProgramStatementId = [(IFTSchemaIFTStatementResult *)self originProgramStatementId];
  v10 = [originProgramStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTStatementResult *)self deleteOriginProgramStatementId];
  }

  payload = [(IFTSchemaIFTStatementResult *)self payload];
  v13 = [payload applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTStatementResult *)self deletePayload];
  }

  actionEventId = [(IFTSchemaIFTStatementResult *)self actionEventId];
  v16 = [actionEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTStatementResult *)self deleteActionEventId];
  }

  originTaskStatementId = [(IFTSchemaIFTStatementResult *)self originTaskStatementId];
  v19 = [originTaskStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTStatementResult *)self deleteOriginTaskStatementId];
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