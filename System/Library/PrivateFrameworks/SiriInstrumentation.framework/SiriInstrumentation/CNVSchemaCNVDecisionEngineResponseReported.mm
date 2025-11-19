@interface CNVSchemaCNVDecisionEngineResponseReported
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVDecisionEngineResponseReported)initWithDictionary:(id)a3;
- (CNVSchemaCNVDecisionEngineResponseReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVDecisionEngineResponseReported

- (CNVSchemaCNVDecisionEngineResponseReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNVSchemaCNVDecisionEngineResponseReported;
  v5 = [(CNVSchemaCNVDecisionEngineResponseReported *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"flowHandlerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CNVSchemaCNVDecisionEngineResponseReported *)v5 setFlowHandlerId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"parseHypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(CNVSchemaCNVDecisionEngineResponseReported *)v5 setParseHypothesisId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isExistingFlowSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVDecisionEngineResponseReported setIsExistingFlowSelected:](v5, "setIsExistingFlowSelected:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isInterpretableAsUniversalCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVDecisionEngineResponseReported setIsInterpretableAsUniversalCommand:](v5, "setIsInterpretableAsUniversalCommand:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (CNVSchemaCNVDecisionEngineResponseReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVDecisionEngineResponseReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVDecisionEngineResponseReported *)self dictionaryRepresentation];
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
  if (self->_flowHandlerId)
  {
    v4 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"flowHandlerId"];
  }

  v6 = *(&self->_isInterpretableAsUniversalCommand + 1);
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNVSchemaCNVDecisionEngineResponseReported isExistingFlowSelected](self, "isExistingFlowSelected")}];
    [v3 setObject:v7 forKeyedSubscript:@"isExistingFlowSelected"];

    v6 = *(&self->_isInterpretableAsUniversalCommand + 1);
  }

  if ((v6 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNVSchemaCNVDecisionEngineResponseReported isInterpretableAsUniversalCommand](self, "isInterpretableAsUniversalCommand")}];
    [v3 setObject:v8 forKeyedSubscript:@"isInterpretableAsUniversalCommand"];
  }

  if (self->_parseHypothesisId)
  {
    v9 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"parseHypothesisId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"parseHypothesisId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
  v6 = [v4 flowHandlerId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];
    v10 = [v4 flowHandlerId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
  v6 = [v4 parseHypothesisId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
  if (v12)
  {
    v13 = v12;
    v14 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
    v15 = [v4 parseHypothesisId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = *(&self->_isInterpretableAsUniversalCommand + 1);
  v20 = v4[26];
  if ((v19 & 1) == (v20 & 1))
  {
    if (v19)
    {
      isExistingFlowSelected = self->_isExistingFlowSelected;
      if (isExistingFlowSelected != [v4 isExistingFlowSelected])
      {
        goto LABEL_12;
      }

      v19 = *(&self->_isInterpretableAsUniversalCommand + 1);
      v20 = v4[26];
    }

    v22 = (v19 >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (isInterpretableAsUniversalCommand = self->_isInterpretableAsUniversalCommand, isInterpretableAsUniversalCommand == [v4 isInterpretableAsUniversalCommand]))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(CNVSchemaCNVDecisionEngineResponseReported *)self flowHandlerId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];

  if (v5)
  {
    v6 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId];
    PBDataWriterWriteSubmessage();
  }

  v7 = *(&self->_isInterpretableAsUniversalCommand + 1);
  if (v7)
  {
    PBDataWriterWriteBOOLField();
    v7 = *(&self->_isInterpretableAsUniversalCommand + 1);
  }

  v8 = v9;
  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = v9;
  }
}

- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isInterpretableAsUniversalCommand + 1) = *(&self->_isInterpretableAsUniversalCommand + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVDecisionEngineResponseReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CNVSchemaCNVDecisionEngineResponseReported *)self parseHypothesisId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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