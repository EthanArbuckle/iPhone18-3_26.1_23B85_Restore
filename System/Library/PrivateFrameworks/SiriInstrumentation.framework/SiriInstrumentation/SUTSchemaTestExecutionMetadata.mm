@interface SUTSchemaTestExecutionMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SUTSchemaTestExecutionMetadata)initWithDictionary:(id)dictionary;
- (SUTSchemaTestExecutionMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SUTSchemaTestExecutionMetadata

- (SUTSchemaTestExecutionMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SUTSchemaTestExecutionMetadata;
  v5 = [(SUTSchemaTestExecutionMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fingerprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SUTSchemaTestExecutionMetadata *)v5 setFingerprint:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SUTSchemaTestExecutionMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SUTSchemaTestExecutionMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SUTSchemaTestExecutionMetadata *)self dictionaryRepresentation];
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
  if (self->_fingerprint)
  {
    fingerprint = [(SUTSchemaTestExecutionMetadata *)self fingerprint];
    dictionaryRepresentation = [fingerprint dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fingerprint"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"fingerprint"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    fingerprint = [(SUTSchemaTestExecutionMetadata *)self fingerprint];
    fingerprint2 = [equalCopy fingerprint];
    v7 = fingerprint2;
    if ((fingerprint != 0) != (fingerprint2 == 0))
    {
      fingerprint3 = [(SUTSchemaTestExecutionMetadata *)self fingerprint];
      if (!fingerprint3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = fingerprint3;
      fingerprint4 = [(SUTSchemaTestExecutionMetadata *)self fingerprint];
      fingerprint5 = [equalCopy fingerprint];
      v12 = [fingerprint4 isEqual:fingerprint5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fingerprint = [(SUTSchemaTestExecutionMetadata *)self fingerprint];

  if (fingerprint)
  {
    fingerprint2 = [(SUTSchemaTestExecutionMetadata *)self fingerprint];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SUTSchemaTestExecutionMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SUTSchemaTestExecutionMetadata *)self fingerprint:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SUTSchemaTestExecutionMetadata *)self deleteFingerprint];
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