@interface IFTSchemaIFTActionCancellation
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionCancellation)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionCancellation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionCancellation

- (IFTSchemaIFTActionCancellation)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTActionCancellation;
  v5 = [(IFTSchemaIFTActionCancellation *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionCancellation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"cancelledActionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v7];
      [(IFTSchemaIFTActionCancellation *)v5 setCancelledActionStatementId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTActionCancellation *)v5 setStatementId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionCancellation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionCancellation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionCancellation *)self dictionaryRepresentation];
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
  if (self->_cancelledActionStatementId)
  {
    v4 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"cancelledActionStatementId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"cancelledActionStatementId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionCancellation exists](self, "exists")}];
    [v3 setObject:v7 forKeyedSubscript:@"exists"];
  }

  if (self->_statementId)
  {
    v8 = [(IFTSchemaIFTActionCancellation *)self statementId];
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

  v4 = [(IFTSchemaIFTStatementId *)self->_cancelledActionStatementId hash]^ v3;
  return v4 ^ [(IFTSchemaIFTStatementId *)self->_statementId hash];
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

  v6 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];
  v7 = [v4 cancelledActionStatementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];
    v11 = [v4 cancelledActionStatementId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTActionCancellation *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(IFTSchemaIFTActionCancellation *)self statementId];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IFTSchemaIFTActionCancellation *)self statementId];
    v16 = [v4 statementId];
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
  v9 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTActionCancellation *)self statementId];

  v7 = v9;
  if (v6)
  {
    v8 = [(IFTSchemaIFTActionCancellation *)self statementId];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTActionCancellation;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTActionCancellation *)self cancelledActionStatementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTActionCancellation *)self deleteCancelledActionStatementId];
  }

  v9 = [(IFTSchemaIFTActionCancellation *)self statementId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTActionCancellation *)self deleteStatementId];
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