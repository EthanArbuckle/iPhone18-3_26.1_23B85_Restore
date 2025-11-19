@interface IFTSchemaIFTRequestPrescribedPlanOpenTool
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithDictionary:(id)a3;
- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTRequestPrescribedPlanOpenTool

- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTRequestPrescribedPlanOpenTool;
  v5 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"resultStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)v5 setResultStatementId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"elementAtIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTRequestPrescribedPlanOpenTool setElementAtIndex:](v5, "setElementAtIndex:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTRequestPrescribedPlanOpenTool)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTRequestPrescribedPlanOpenTool elementAtIndex](self, "elementAtIndex")}];
    [v3 setObject:v4 forKeyedSubscript:@"elementAtIndex"];
  }

  if (self->_resultStatementId)
  {
    v5 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"resultStatementId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"resultStatementId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
  v6 = [v4 resultStatementId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
    v11 = [v4 resultStatementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    elementAtIndex = self->_elementAtIndex;
    if (elementAtIndex != [v4 elementAtIndex])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTRequestPrescribedPlanOpenTool;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTRequestPrescribedPlanOpenTool *)self resultStatementId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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