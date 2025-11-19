@interface IFTSchemaIFTToolResolution
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTToolResolution)initWithDictionary:(id)a3;
- (IFTSchemaIFTToolResolution)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTToolResolution

- (IFTSchemaIFTToolResolution)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTToolResolution;
  v5 = [(IFTSchemaIFTToolResolution *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTToolResolution setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTToolResolution *)v5 setToolId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTToolResolution *)v5 setStatementId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"originProgramStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v11];
      [(IFTSchemaIFTToolResolution *)v5 setOriginProgramStatementId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (IFTSchemaIFTToolResolution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTToolResolution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTToolResolution *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTToolResolution exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_originProgramStatementId)
  {
    v5 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"originProgramStatementId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"originProgramStatementId"];
    }
  }

  if (self->_statementId)
  {
    v8 = [(IFTSchemaIFTToolResolution *)self statementId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_toolId)
  {
    v11 = [(IFTSchemaIFTToolResolution *)self toolId];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"toolId"];
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

  v4 = [(NSString *)self->_toolId hash]^ v3;
  v5 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTStatementId *)self->_originProgramStatementId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_20;
    }
  }

  v6 = [(IFTSchemaIFTToolResolution *)self toolId];
  v7 = [v4 toolId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(IFTSchemaIFTToolResolution *)self toolId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTToolResolution *)self toolId];
    v11 = [v4 toolId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTToolResolution *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(IFTSchemaIFTToolResolution *)self statementId];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTToolResolution *)self statementId];
    v16 = [v4 statementId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
  v7 = [v4 originProgramStatementId];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    v21 = [v4 originProgramStatementId];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTToolResolution *)self toolId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(IFTSchemaIFTToolResolution *)self statementId];

  if (v5)
  {
    v6 = [(IFTSchemaIFTToolResolution *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];

  v8 = v10;
  if (v7)
  {
    v9 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTToolResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTToolResolution *)self deleteToolId];
  }

  v6 = [(IFTSchemaIFTToolResolution *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTToolResolution *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTToolResolution *)self originProgramStatementId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTToolResolution *)self deleteOriginProgramStatementId];
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