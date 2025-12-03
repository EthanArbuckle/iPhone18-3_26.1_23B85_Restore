@interface SUTSchemaTestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestContext)initWithDictionary:(id)dictionary;
- (SUTSchemaTestContext)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestContext

- (SUTSchemaTestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SUTSchemaTestContext;
  v5 = [(SUTSchemaTestContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"testName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SUTSchemaTestContext *)v5 setTestName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"testType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUTSchemaTestContext setTestType:](v5, "setTestType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"testSessionInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SUTSchemaTestSessionInfo alloc] initWithDictionary:v9];
      [(SUTSchemaTestContext *)v5 setTestSessionInfo:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SUTSchemaTestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestContext *)self dictionaryRepresentation];
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
  if (self->_testName)
  {
    testName = [(SUTSchemaTestContext *)self testName];
    v5 = [testName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"testName"];
  }

  if (self->_testSessionInfo)
  {
    testSessionInfo = [(SUTSchemaTestContext *)self testSessionInfo];
    dictionaryRepresentation = [testSessionInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"testSessionInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"testSessionInfo"];
    }
  }

  if (*&self->_has)
  {
    v9 = [(SUTSchemaTestContext *)self testType]- 1;
    if (v9 > 3)
    {
      v10 = @"TESTTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E7DD8[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"testType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_testName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_testType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SUTSchemaTestSessionInfo *)self->_testSessionInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  testName = [(SUTSchemaTestContext *)self testName];
  testName2 = [equalCopy testName];
  if ((testName != 0) == (testName2 == 0))
  {
    goto LABEL_14;
  }

  testName3 = [(SUTSchemaTestContext *)self testName];
  if (testName3)
  {
    v8 = testName3;
    testName4 = [(SUTSchemaTestContext *)self testName];
    testName5 = [equalCopy testName];
    v11 = [testName4 isEqual:testName5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    testType = self->_testType;
    if (testType != [equalCopy testType])
    {
      goto LABEL_15;
    }
  }

  testName = [(SUTSchemaTestContext *)self testSessionInfo];
  testName2 = [equalCopy testSessionInfo];
  if ((testName != 0) != (testName2 == 0))
  {
    testSessionInfo = [(SUTSchemaTestContext *)self testSessionInfo];
    if (!testSessionInfo)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = testSessionInfo;
    testSessionInfo2 = [(SUTSchemaTestContext *)self testSessionInfo];
    testSessionInfo3 = [equalCopy testSessionInfo];
    v17 = [testSessionInfo2 isEqual:testSessionInfo3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  testName = [(SUTSchemaTestContext *)self testName];

  if (testName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  testSessionInfo = [(SUTSchemaTestContext *)self testSessionInfo];

  v6 = toCopy;
  if (testSessionInfo)
  {
    testSessionInfo2 = [(SUTSchemaTestContext *)self testSessionInfo];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUTSchemaTestContext *)self testSessionInfo:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SUTSchemaTestContext *)self deleteTestSessionInfo];
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