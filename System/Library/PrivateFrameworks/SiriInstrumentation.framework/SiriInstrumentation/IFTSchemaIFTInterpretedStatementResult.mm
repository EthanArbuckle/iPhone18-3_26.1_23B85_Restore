@interface IFTSchemaIFTInterpretedStatementResult
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTInterpretedStatementResult)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTInterpretedStatementResult)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTInterpretedStatementResult

- (IFTSchemaIFTInterpretedStatementResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = IFTSchemaIFTInterpretedStatementResult;
  v5 = [(IFTSchemaIFTInterpretedStatementResult *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementOutcome alloc] initWithDictionary:v6];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setOutcome:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v8];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setResultStatementId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v10];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setOriginProgramStatementId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setToolId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"actionEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setActionEventId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"originTaskStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v16];
      [(IFTSchemaIFTInterpretedStatementResult *)v5 setOriginTaskStatementId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (IFTSchemaIFTInterpretedStatementResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTInterpretedStatementResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTInterpretedStatementResult *)self dictionaryRepresentation];
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
    actionEventId = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
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

  if (self->_originProgramStatementId)
  {
    originProgramStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
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
    originTaskStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
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

  if (self->_outcome)
  {
    outcome = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
    dictionaryRepresentation4 = [outcome dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"outcome"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"outcome"];
    }
  }

  if (self->_resultStatementId)
  {
    resultStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
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
    toolId = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
    v20 = [toolId copy];
    [dictionary setObject:v20 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementOutcome *)self->_outcome hash];
  v4 = [(IFTSchemaIFTStatementId *)self->_resultStatementId hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_toolId hash];
  v7 = [(SISchemaUUID *)self->_actionEventId hash];
  return v6 ^ v7 ^ [(IFTSchemaIFTStatementId *)self->_originTaskStatementId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
  outcome2 = [equalCopy outcome];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_31;
  }

  outcome3 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
  if (outcome3)
  {
    v8 = outcome3;
    outcome4 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
    outcome5 = [equalCopy outcome];
    v11 = [outcome4 isEqual:outcome5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
  outcome2 = [equalCopy resultStatementId];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_31;
  }

  resultStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
  if (resultStatementId)
  {
    v13 = resultStatementId;
    resultStatementId2 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
    resultStatementId3 = [equalCopy resultStatementId];
    v16 = [resultStatementId2 isEqual:resultStatementId3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
  outcome2 = [equalCopy originProgramStatementId];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_31;
  }

  originProgramStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
  if (originProgramStatementId)
  {
    v18 = originProgramStatementId;
    originProgramStatementId2 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
    originProgramStatementId3 = [equalCopy originProgramStatementId];
    v21 = [originProgramStatementId2 isEqual:originProgramStatementId3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
  outcome2 = [equalCopy toolId];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_31;
  }

  toolId = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
  if (toolId)
  {
    v23 = toolId;
    toolId2 = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];
    toolId3 = [equalCopy toolId];
    v26 = [toolId2 isEqual:toolId3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
  outcome2 = [equalCopy actionEventId];
  if ((outcome != 0) == (outcome2 == 0))
  {
    goto LABEL_31;
  }

  actionEventId = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
  if (actionEventId)
  {
    v28 = actionEventId;
    actionEventId2 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
    actionEventId3 = [equalCopy actionEventId];
    v31 = [actionEventId2 isEqual:actionEventId3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
  outcome2 = [equalCopy originTaskStatementId];
  if ((outcome != 0) != (outcome2 == 0))
  {
    originTaskStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    if (!originTaskStatementId)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = originTaskStatementId;
    originTaskStatementId2 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    originTaskStatementId3 = [equalCopy originTaskStatementId];
    v36 = [originTaskStatementId2 isEqual:originTaskStatementId3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];

  if (outcome)
  {
    outcome2 = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
    PBDataWriterWriteSubmessage();
  }

  resultStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];

  if (resultStatementId)
  {
    resultStatementId2 = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
    PBDataWriterWriteSubmessage();
  }

  originProgramStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];

  if (originProgramStatementId)
  {
    originProgramStatementId2 = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(IFTSchemaIFTInterpretedStatementResult *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  actionEventId = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];

  if (actionEventId)
  {
    actionEventId2 = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
    PBDataWriterWriteSubmessage();
  }

  originTaskStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];

  v14 = toCopy;
  if (originTaskStatementId)
  {
    originTaskStatementId2 = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = IFTSchemaIFTInterpretedStatementResult;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteToolId];
  }

  outcome = [(IFTSchemaIFTInterpretedStatementResult *)self outcome];
  v7 = [outcome applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteOutcome];
  }

  resultStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self resultStatementId];
  v10 = [resultStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteResultStatementId];
  }

  originProgramStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originProgramStatementId];
  v13 = [originProgramStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteOriginProgramStatementId];
  }

  actionEventId = [(IFTSchemaIFTInterpretedStatementResult *)self actionEventId];
  v16 = [actionEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteActionEventId];
  }

  originTaskStatementId = [(IFTSchemaIFTInterpretedStatementResult *)self originTaskStatementId];
  v19 = [originTaskStatementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTInterpretedStatementResult *)self deleteOriginTaskStatementId];
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