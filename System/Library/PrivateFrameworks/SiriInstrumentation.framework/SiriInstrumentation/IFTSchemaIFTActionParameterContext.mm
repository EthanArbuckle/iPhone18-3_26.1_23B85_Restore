@interface IFTSchemaIFTActionParameterContext
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionParameterContext)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionParameterContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionParameterContext

- (IFTSchemaIFTActionParameterContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTActionParameterContext;
  v5 = [(IFTSchemaIFTActionParameterContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTActionParameterContext *)v5 setStatementId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(IFTSchemaIFTActionParameterContext *)v5 setToolId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"actionClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionParameterContext setActionClass:](v5, "setActionClass:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionParameterContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionParameterContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionParameterContext *)self dictionaryRepresentation];
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
    v4 = [(IFTSchemaIFTActionParameterContext *)self actionClass]- 1;
    if (v4 > 2)
    {
      v5 = @"IFTACTIONCLASS_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D81C0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"actionClass"];
  }

  if (self->_statementId)
  {
    v6 = [(IFTSchemaIFTActionParameterContext *)self statementId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    v9 = [(IFTSchemaIFTActionParameterContext *)self toolId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  v4 = [(NSString *)self->_toolId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_actionClass;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(IFTSchemaIFTActionParameterContext *)self statementId];
  v6 = [v4 statementId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(IFTSchemaIFTActionParameterContext *)self statementId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTActionParameterContext *)self statementId];
    v10 = [v4 statementId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTActionParameterContext *)self toolId];
  v6 = [v4 toolId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(IFTSchemaIFTActionParameterContext *)self toolId];
  if (v12)
  {
    v13 = v12;
    v14 = [(IFTSchemaIFTActionParameterContext *)self toolId];
    v15 = [v4 toolId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (actionClass = self->_actionClass, actionClass == [v4 actionClass]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(IFTSchemaIFTActionParameterContext *)self statementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTActionParameterContext *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTActionParameterContext *)self toolId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTActionParameterContext;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTActionParameterContext *)self deleteToolId];
  }

  v6 = [(IFTSchemaIFTActionParameterContext *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTActionParameterContext *)self deleteStatementId];
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