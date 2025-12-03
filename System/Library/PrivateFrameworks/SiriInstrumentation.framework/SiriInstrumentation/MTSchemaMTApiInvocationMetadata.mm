@interface MTSchemaMTApiInvocationMetadata
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTApiInvocationMetadata)initWithDictionary:(id)dictionary;
- (MTSchemaMTApiInvocationMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTApiInvocationMetadata

- (MTSchemaMTApiInvocationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MTSchemaMTApiInvocationMetadata;
  v5 = [(MTSchemaMTApiInvocationMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v6];
      [(MTSchemaMTApiInvocationMetadata *)v5 setLocalePair:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (MTSchemaMTApiInvocationMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTApiInvocationMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTApiInvocationMetadata *)self dictionaryRepresentation];
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
  if (self->_localePair)
  {
    localePair = [(MTSchemaMTApiInvocationMetadata *)self localePair];
    dictionaryRepresentation = [localePair dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"localePair"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"localePair"];
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
    localePair = [(MTSchemaMTApiInvocationMetadata *)self localePair];
    localePair2 = [equalCopy localePair];
    v7 = localePair2;
    if ((localePair != 0) != (localePair2 == 0))
    {
      localePair3 = [(MTSchemaMTApiInvocationMetadata *)self localePair];
      if (!localePair3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = localePair3;
      localePair4 = [(MTSchemaMTApiInvocationMetadata *)self localePair];
      localePair5 = [equalCopy localePair];
      v12 = [localePair4 isEqual:localePair5];

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
  localePair = [(MTSchemaMTApiInvocationMetadata *)self localePair];

  if (localePair)
  {
    localePair2 = [(MTSchemaMTApiInvocationMetadata *)self localePair];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = MTSchemaMTApiInvocationMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MTSchemaMTApiInvocationMetadata *)self localePair:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(MTSchemaMTApiInvocationMetadata *)self deleteLocalePair];
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