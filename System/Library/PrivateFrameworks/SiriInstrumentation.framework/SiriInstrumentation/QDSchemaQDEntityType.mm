@interface QDSchemaQDEntityType
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDEntityType)initWithDictionary:(id)dictionary;
- (QDSchemaQDEntityType)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDEntityType

- (QDSchemaQDEntityType)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = QDSchemaQDEntityType;
  v5 = [(QDSchemaQDEntityType *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(QDSchemaQDEntityType *)v5 setBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nameOfTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(QDSchemaQDEntityType *)v5 setNameOfTypedValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (QDSchemaQDEntityType)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDEntityType *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDEntityType *)self dictionaryRepresentation];
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
    bundleId = [(QDSchemaQDEntityType *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_nameOfTypedValue)
  {
    nameOfTypedValue = [(QDSchemaQDEntityType *)self nameOfTypedValue];
    v7 = [nameOfTypedValue copy];
    [dictionary setObject:v7 forKeyedSubscript:@"nameOfTypedValue"];
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

  bundleId = [(QDSchemaQDEntityType *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_11;
  }

  bundleId3 = [(QDSchemaQDEntityType *)self bundleId];
  if (bundleId3)
  {
    v8 = bundleId3;
    bundleId4 = [(QDSchemaQDEntityType *)self bundleId];
    bundleId5 = [equalCopy bundleId];
    v11 = [bundleId4 isEqual:bundleId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  bundleId = [(QDSchemaQDEntityType *)self nameOfTypedValue];
  bundleId2 = [equalCopy nameOfTypedValue];
  if ((bundleId != 0) != (bundleId2 == 0))
  {
    nameOfTypedValue = [(QDSchemaQDEntityType *)self nameOfTypedValue];
    if (!nameOfTypedValue)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = nameOfTypedValue;
    nameOfTypedValue2 = [(QDSchemaQDEntityType *)self nameOfTypedValue];
    nameOfTypedValue3 = [equalCopy nameOfTypedValue];
    v16 = [nameOfTypedValue2 isEqual:nameOfTypedValue3];

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
  bundleId = [(QDSchemaQDEntityType *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  nameOfTypedValue = [(QDSchemaQDEntityType *)self nameOfTypedValue];

  if (nameOfTypedValue)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = QDSchemaQDEntityType;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(QDSchemaQDEntityType *)self deleteBundleId];
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