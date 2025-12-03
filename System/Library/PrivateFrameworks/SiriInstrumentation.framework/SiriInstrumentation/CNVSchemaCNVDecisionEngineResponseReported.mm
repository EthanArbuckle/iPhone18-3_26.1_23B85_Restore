@interface CNVSchemaCNVDecisionEngineResponseReported
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVDecisionEngineResponseReported)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVDecisionEngineResponseReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)command;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVDecisionEngineResponseReported

- (CNVSchemaCNVDecisionEngineResponseReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CNVSchemaCNVDecisionEngineResponseReported;
  v5 = [(CNVSchemaCNVDecisionEngineResponseReported *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"flowHandlerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CNVSchemaCNVDecisionEngineResponseReported *)v5 setFlowHandlerId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"parseHypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(CNVSchemaCNVDecisionEngineResponseReported *)v5 setParseHypothesisId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isExistingFlowSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVDecisionEngineResponseReported setIsExistingFlowSelected:](v5, "setIsExistingFlowSelected:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isInterpretableAsUniversalCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVDecisionEngineResponseReported setIsInterpretableAsUniversalCommand:](v5, "setIsInterpretableAsUniversalCommand:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (CNVSchemaCNVDecisionEngineResponseReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVDecisionEngineResponseReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVDecisionEngineResponseReported *)self dictionaryRepresentation];
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
  if (self->_flowHandlerId)
  {
    flowHandlerId = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
    v5 = [flowHandlerId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"flowHandlerId"];
  }

  v6 = *(&self->_isInterpretableAsUniversalCommand + 1);
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNVSchemaCNVDecisionEngineResponseReported isExistingFlowSelected](self, "isExistingFlowSelected")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isExistingFlowSelected"];

    v6 = *(&self->_isInterpretableAsUniversalCommand + 1);
  }

  if ((v6 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNVSchemaCNVDecisionEngineResponseReported isInterpretableAsUniversalCommand](self, "isInterpretableAsUniversalCommand")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isInterpretableAsUniversalCommand"];
  }

  if (self->_parseHypothesisId)
  {
    parseHypothesisId = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
    dictionaryRepresentation = [parseHypothesisId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parseHypothesisId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"parseHypothesisId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_flowHandlerId hash];
  v4 = [(SISchemaUUID *)self->_parseHypothesisId hash];
  if (*(&self->_isInterpretableAsUniversalCommand + 1))
  {
    v5 = 2654435761 * self->_isExistingFlowSelected;
    if ((*(&self->_isInterpretableAsUniversalCommand + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*(&self->_isInterpretableAsUniversalCommand + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_isInterpretableAsUniversalCommand;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  flowHandlerId = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
  flowHandlerId2 = [equalCopy flowHandlerId];
  if ((flowHandlerId != 0) == (flowHandlerId2 == 0))
  {
    goto LABEL_11;
  }

  flowHandlerId3 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
  if (flowHandlerId3)
  {
    v8 = flowHandlerId3;
    flowHandlerId4 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
    flowHandlerId5 = [equalCopy flowHandlerId];
    v11 = [flowHandlerId4 isEqual:flowHandlerId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  flowHandlerId = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
  flowHandlerId2 = [equalCopy parseHypothesisId];
  if ((flowHandlerId != 0) == (flowHandlerId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  parseHypothesisId = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
  if (parseHypothesisId)
  {
    v13 = parseHypothesisId;
    parseHypothesisId2 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
    parseHypothesisId3 = [equalCopy parseHypothesisId];
    v16 = [parseHypothesisId2 isEqual:parseHypothesisId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = *(&self->_isInterpretableAsUniversalCommand + 1);
  v20 = equalCopy[26];
  if ((v19 & 1) == (v20 & 1))
  {
    if (v19)
    {
      isExistingFlowSelected = self->_isExistingFlowSelected;
      if (isExistingFlowSelected != [equalCopy isExistingFlowSelected])
      {
        goto LABEL_12;
      }

      v19 = *(&self->_isInterpretableAsUniversalCommand + 1);
      v20 = equalCopy[26];
    }

    v22 = (v19 >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (isInterpretableAsUniversalCommand = self->_isInterpretableAsUniversalCommand, isInterpretableAsUniversalCommand == [equalCopy isInterpretableAsUniversalCommand]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  flowHandlerId = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];

  if (flowHandlerId)
  {
    PBDataWriterWriteStringField();
  }

  parseHypothesisId = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];

  if (parseHypothesisId)
  {
    parseHypothesisId2 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
    PBDataWriterWriteSubmessage();
  }

  v7 = *(&self->_isInterpretableAsUniversalCommand + 1);
  if (v7)
  {
    PBDataWriterWriteBOOLField();
    v7 = *(&self->_isInterpretableAsUniversalCommand + 1);
  }

  v8 = toCopy;
  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = toCopy;
  }
}

- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)command
{
  if (command)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isInterpretableAsUniversalCommand + 1) = *(&self->_isInterpretableAsUniversalCommand + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVDecisionEngineResponseReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CNVSchemaCNVDecisionEngineResponseReported *)self deleteParseHypothesisId];
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