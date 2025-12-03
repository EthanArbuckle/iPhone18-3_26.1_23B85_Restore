@interface IFTSchemaIFTRequestPrescribedPlanOpenTool
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTRequestPrescribedPlanOpenTool

- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTRequestPrescribedPlanOpenTool;
  v5 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resultStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)v5 setResultStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"elementAtIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequestPrescribedPlanOpenTool setElementAtIndex:](v5, "setElementAtIndex:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTRequestPrescribedPlanOpenTool elementAtIndex](self, "elementAtIndex")}];
    [dictionary setObject:v4 forKeyedSubscript:@"elementAtIndex"];
  }

  if (self->_resultStatementId)
  {
    resultStatementId = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
    dictionaryRepresentation = [resultStatementId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"resultStatementId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"resultStatementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_resultStatementId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_elementAtIndex;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  resultStatementId = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
  resultStatementId2 = [equalCopy resultStatementId];
  v7 = resultStatementId2;
  if ((resultStatementId != 0) == (resultStatementId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  resultStatementId3 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
  if (resultStatementId3)
  {
    v9 = resultStatementId3;
    resultStatementId4 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
    resultStatementId5 = [equalCopy resultStatementId];
    v12 = [resultStatementId4 isEqual:resultStatementId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    elementAtIndex = self->_elementAtIndex;
    if (elementAtIndex != [equalCopy elementAtIndex])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resultStatementId = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];

  if (resultStatementId)
  {
    resultStatementId2 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTRequestPrescribedPlanOpenTool;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self deleteResultStatementId];
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