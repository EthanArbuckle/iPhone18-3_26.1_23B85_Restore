@interface IFTSchemaIFTSystemRequirementProtectedAppRequest
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemRequirementProtectedAppRequest

- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTSystemRequirementProtectedAppRequest;
  v5 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)v5 setBundleId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemRequirementProtectedAppRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self dictionaryRepresentation];
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
  if (self->_bundleId)
  {
    bundleId = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleId = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
    bundleId2 = [equalCopy bundleId];
    v7 = bundleId2;
    if ((bundleId != 0) != (bundleId2 == 0))
    {
      bundleId3 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
      if (!bundleId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = bundleId3;
      bundleId4 = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];
      bundleId5 = [equalCopy bundleId];
      v12 = [bundleId4 isEqual:bundleId5];

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
  bundleId = [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTSystemRequirementProtectedAppRequest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTSystemRequirementProtectedAppRequest *)self deleteBundleId];
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