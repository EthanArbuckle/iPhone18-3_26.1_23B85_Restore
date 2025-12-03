@interface SUTSchemaTestExecutionBegin
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestExecutionBegin)initWithDictionary:(id)dictionary;
- (SUTSchemaTestExecutionBegin)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestExecutionBegin

- (SUTSchemaTestExecutionBegin)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SUTSchemaTestExecutionBegin;
  v5 = [(SUTSchemaTestExecutionBegin *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SUTSchemaTestContext alloc] initWithDictionary:v6];
      [(SUTSchemaTestExecutionBegin *)v5 setContext:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"shouldPersistData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUTSchemaTestExecutionBegin setShouldPersistData:](v5, "setShouldPersistData:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SUTSchemaTestExecutionBegin)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestExecutionBegin *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestExecutionBegin *)self dictionaryRepresentation];
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
  if (self->_context)
  {
    context = [(SUTSchemaTestExecutionBegin *)self context];
    dictionaryRepresentation = [context dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"context"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"context"];
    }
  }

  if (*(&self->_shouldPersistData + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUTSchemaTestExecutionBegin shouldPersistData](self, "shouldPersistData")}];
    [dictionary setObject:v7 forKeyedSubscript:@"shouldPersistData"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  context = [(SUTSchemaTestExecutionBegin *)self context];
  context2 = [equalCopy context];
  v7 = context2;
  if ((context != 0) == (context2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  context3 = [(SUTSchemaTestExecutionBegin *)self context];
  if (context3)
  {
    v9 = context3;
    context4 = [(SUTSchemaTestExecutionBegin *)self context];
    context5 = [equalCopy context];
    v12 = [context4 isEqual:context5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_shouldPersistData + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_shouldPersistData + 1))
  {
    shouldPersistData = self->_shouldPersistData;
    if (shouldPersistData != [equalCopy shouldPersistData])
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
  context = [(SUTSchemaTestExecutionBegin *)self context];

  if (context)
  {
    context2 = [(SUTSchemaTestExecutionBegin *)self context];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_shouldPersistData + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestExecutionBegin;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUTSchemaTestExecutionBegin *)self context:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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