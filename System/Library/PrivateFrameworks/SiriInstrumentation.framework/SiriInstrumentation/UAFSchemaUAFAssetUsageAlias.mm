@interface UAFSchemaUAFAssetUsageAlias
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFAssetUsageAlias)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAssetUsageAlias)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAssetUsageAlias

- (UAFSchemaUAFAssetUsageAlias)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = UAFSchemaUAFAssetUsageAlias;
  v5 = [(UAFSchemaUAFAssetUsageAlias *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aliasName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetUsageAlias *)v5 setAliasName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aliasValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFAssetUsageAlias *)v5 setAliasValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetUsageAlias)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetUsageAlias *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAssetUsageAlias *)self dictionaryRepresentation];
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
  if (self->_aliasName)
  {
    aliasName = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
    v5 = [aliasName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aliasName"];
  }

  if (self->_aliasValue)
  {
    aliasValue = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
    v7 = [aliasValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"aliasValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  aliasName = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
  aliasName2 = [equalCopy aliasName];
  if ((aliasName != 0) == (aliasName2 == 0))
  {
    goto LABEL_11;
  }

  aliasName3 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
  if (aliasName3)
  {
    v8 = aliasName3;
    aliasName4 = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];
    aliasName5 = [equalCopy aliasName];
    v11 = [aliasName4 isEqual:aliasName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  aliasName = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
  aliasName2 = [equalCopy aliasValue];
  if ((aliasName != 0) != (aliasName2 == 0))
  {
    aliasValue = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
    if (!aliasValue)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = aliasValue;
    aliasValue2 = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];
    aliasValue3 = [equalCopy aliasValue];
    v16 = [aliasValue2 isEqual:aliasValue3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  aliasName = [(UAFSchemaUAFAssetUsageAlias *)self aliasName];

  if (aliasName)
  {
    PBDataWriterWriteStringField();
  }

  aliasValue = [(UAFSchemaUAFAssetUsageAlias *)self aliasValue];

  if (aliasValue)
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