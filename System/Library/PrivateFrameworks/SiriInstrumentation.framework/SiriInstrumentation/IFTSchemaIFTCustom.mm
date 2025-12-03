@interface IFTSchemaIFTCustom
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCustom)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTCustom)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTCustom

- (IFTSchemaIFTCustom)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaIFTCustom;
  v5 = [(IFTSchemaIFTCustom *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTCustom *)v5 setBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"customTypeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(IFTSchemaIFTCustom *)v5 setCustomTypeName:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCustom)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCustom *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTCustom *)self dictionaryRepresentation];
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
    bundleId = [(IFTSchemaIFTCustom *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_customTypeName)
  {
    customTypeName = [(IFTSchemaIFTCustom *)self customTypeName];
    v7 = [customTypeName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"customTypeName"];
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

  bundleId = [(IFTSchemaIFTCustom *)self bundleId];
  bundleId2 = [equalCopy bundleId];
  if ((bundleId != 0) == (bundleId2 == 0))
  {
    goto LABEL_11;
  }

  bundleId3 = [(IFTSchemaIFTCustom *)self bundleId];
  if (bundleId3)
  {
    v8 = bundleId3;
    bundleId4 = [(IFTSchemaIFTCustom *)self bundleId];
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

  bundleId = [(IFTSchemaIFTCustom *)self customTypeName];
  bundleId2 = [equalCopy customTypeName];
  if ((bundleId != 0) != (bundleId2 == 0))
  {
    customTypeName = [(IFTSchemaIFTCustom *)self customTypeName];
    if (!customTypeName)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = customTypeName;
    customTypeName2 = [(IFTSchemaIFTCustom *)self customTypeName];
    customTypeName3 = [equalCopy customTypeName];
    v16 = [customTypeName2 isEqual:customTypeName3];

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
  bundleId = [(IFTSchemaIFTCustom *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  customTypeName = [(IFTSchemaIFTCustom *)self customTypeName];

  if (customTypeName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTCustom;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTCustom *)self deleteBundleId];
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