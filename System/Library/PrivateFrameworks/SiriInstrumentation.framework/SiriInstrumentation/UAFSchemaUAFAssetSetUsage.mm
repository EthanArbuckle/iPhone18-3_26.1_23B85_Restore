@interface UAFSchemaUAFAssetSetUsage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (UAFSchemaUAFAssetSetUsage)initWithDictionary:(id)dictionary;
- (UAFSchemaUAFAssetSetUsage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation UAFSchemaUAFAssetSetUsage

- (UAFSchemaUAFAssetSetUsage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = UAFSchemaUAFAssetSetUsage;
  v5 = [(UAFSchemaUAFAssetSetUsage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usageName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(UAFSchemaUAFAssetSetUsage *)v5 setUsageName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"usageValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(UAFSchemaUAFAssetSetUsage *)v5 setUsageValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (UAFSchemaUAFAssetSetUsage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(UAFSchemaUAFAssetSetUsage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(UAFSchemaUAFAssetSetUsage *)self dictionaryRepresentation];
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
  if (self->_usageName)
  {
    usageName = [(UAFSchemaUAFAssetSetUsage *)self usageName];
    v5 = [usageName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"usageName"];
  }

  if (self->_usageValue)
  {
    usageValue = [(UAFSchemaUAFAssetSetUsage *)self usageValue];
    v7 = [usageValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"usageValue"];
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

  usageName = [(UAFSchemaUAFAssetSetUsage *)self usageName];
  usageName2 = [equalCopy usageName];
  if ((usageName != 0) == (usageName2 == 0))
  {
    goto LABEL_11;
  }

  usageName3 = [(UAFSchemaUAFAssetSetUsage *)self usageName];
  if (usageName3)
  {
    v8 = usageName3;
    usageName4 = [(UAFSchemaUAFAssetSetUsage *)self usageName];
    usageName5 = [equalCopy usageName];
    v11 = [usageName4 isEqual:usageName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  usageName = [(UAFSchemaUAFAssetSetUsage *)self usageValue];
  usageName2 = [equalCopy usageValue];
  if ((usageName != 0) != (usageName2 == 0))
  {
    usageValue = [(UAFSchemaUAFAssetSetUsage *)self usageValue];
    if (!usageValue)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = usageValue;
    usageValue2 = [(UAFSchemaUAFAssetSetUsage *)self usageValue];
    usageValue3 = [equalCopy usageValue];
    v16 = [usageValue2 isEqual:usageValue3];

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
  usageName = [(UAFSchemaUAFAssetSetUsage *)self usageName];

  if (usageName)
  {
    PBDataWriterWriteStringField();
  }

  usageValue = [(UAFSchemaUAFAssetSetUsage *)self usageValue];

  if (usageValue)
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