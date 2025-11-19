@interface SUTSchemaTestExecutionBegin
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SUTSchemaTestExecutionBegin)initWithDictionary:(id)a3;
- (SUTSchemaTestExecutionBegin)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SUTSchemaTestExecutionBegin

- (SUTSchemaTestExecutionBegin)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUTSchemaTestExecutionBegin;
  v5 = [(SUTSchemaTestExecutionBegin *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUTSchemaTestContext alloc] initWithDictionary:v6];
      [(SUTSchemaTestExecutionBegin *)v5 setContext:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"shouldPersistData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUTSchemaTestExecutionBegin setShouldPersistData:](v5, "setShouldPersistData:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SUTSchemaTestExecutionBegin)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SUTSchemaTestExecutionBegin *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SUTSchemaTestExecutionBegin *)self dictionaryRepresentation];
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
  if (self->_context)
  {
    v4 = [(SUTSchemaTestExecutionBegin *)self context];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"context"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"context"];
    }
  }

  if (*(&self->_shouldPersistData + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUTSchemaTestExecutionBegin shouldPersistData](self, "shouldPersistData")}];
    [v3 setObject:v7 forKeyedSubscript:@"shouldPersistData"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SUTSchemaTestContext *)self->_context hash];
  if (*(&self->_shouldPersistData + 1))
  {
    v4 = 2654435761 * self->_shouldPersistData;
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

  v5 = [(SUTSchemaTestExecutionBegin *)self context];
  v6 = [v4 context];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(SUTSchemaTestExecutionBegin *)self context];
  if (v8)
  {
    v9 = v8;
    v10 = [(SUTSchemaTestExecutionBegin *)self context];
    v11 = [v4 context];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_shouldPersistData + 1) != (v4[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_shouldPersistData + 1))
  {
    shouldPersistData = self->_shouldPersistData;
    if (shouldPersistData != [v4 shouldPersistData])
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
  v4 = [(SUTSchemaTestExecutionBegin *)self context];

  if (v4)
  {
    v5 = [(SUTSchemaTestExecutionBegin *)self context];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_shouldPersistData + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestExecutionBegin;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SUTSchemaTestExecutionBegin *)self context:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SUTSchemaTestExecutionBegin *)self deleteContext];
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