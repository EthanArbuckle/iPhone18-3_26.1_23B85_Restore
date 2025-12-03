@interface SISchemaVerticalLayoutCardSectionInvocationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaVerticalLayoutCardSectionInvocationContext)initWithDictionary:(id)dictionary;
- (SISchemaVerticalLayoutCardSectionInvocationContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SISchemaVerticalLayoutCardSectionInvocationContext

- (SISchemaVerticalLayoutCardSectionInvocationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaVerticalLayoutCardSectionInvocationContext;
  v5 = [(SISchemaVerticalLayoutCardSectionInvocationContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"resultIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaVerticalLayoutCardSectionInvocationContext *)v5 setResultIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaVerticalLayoutCardSectionInvocationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self dictionaryRepresentation];
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
  if (self->_resultIdentifier)
  {
    resultIdentifier = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self resultIdentifier];
    v5 = [resultIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"resultIdentifier"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resultIdentifier = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self resultIdentifier];
    resultIdentifier2 = [equalCopy resultIdentifier];
    v7 = resultIdentifier2;
    if ((resultIdentifier != 0) != (resultIdentifier2 == 0))
    {
      resultIdentifier3 = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self resultIdentifier];
      if (!resultIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resultIdentifier3;
      resultIdentifier4 = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self resultIdentifier];
      resultIdentifier5 = [equalCopy resultIdentifier];
      v12 = [resultIdentifier4 isEqual:resultIdentifier5];

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
  resultIdentifier = [(SISchemaVerticalLayoutCardSectionInvocationContext *)self resultIdentifier];

  if (resultIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end