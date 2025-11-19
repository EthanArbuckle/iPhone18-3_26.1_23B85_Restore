@interface IFTSchemaIFTClientAction
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTClientAction)initWithDictionary:(id)a3;
- (IFTSchemaIFTClientAction)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTClientAction

- (IFTSchemaIFTClientAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTClientAction;
  v5 = [(IFTSchemaIFTClientAction *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTClientAction setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTClientAction *)v5 setStatementId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(IFTSchemaIFTClientAction *)v5 setToolId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTClientAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTClientAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTClientAction *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTClientAction exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_statementId)
  {
    v5 = [(IFTSchemaIFTClientAction *)self statementId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    v8 = [(IFTSchemaIFTClientAction *)self toolId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

  v4 = [(IFTSchemaIFTStatementId *)self->_statementId hash]^ v3;
  return v4 ^ [(NSString *)self->_toolId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_15;
    }
  }

  v6 = [(IFTSchemaIFTClientAction *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(IFTSchemaIFTClientAction *)self statementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTClientAction *)self statementId];
    v11 = [v4 statementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientAction *)self toolId];
  v7 = [v4 toolId];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaIFTClientAction *)self toolId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTClientAction *)self toolId];
    v16 = [v4 toolId];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTClientAction *)self statementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTClientAction *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTClientAction *)self toolId];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTClientAction;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTClientAction *)self deleteToolId];
  }

  v6 = [(IFTSchemaIFTClientAction *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTClientAction *)self deleteStatementId];
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