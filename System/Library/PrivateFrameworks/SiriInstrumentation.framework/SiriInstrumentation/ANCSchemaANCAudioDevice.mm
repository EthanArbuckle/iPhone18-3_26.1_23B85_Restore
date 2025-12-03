@interface ANCSchemaANCAudioDevice
- (ANCSchemaANCAudioDevice)initWithDictionary:(id)dictionary;
- (ANCSchemaANCAudioDevice)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCAudioDevice

- (ANCSchemaANCAudioDevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ANCSchemaANCAudioDevice;
  v5 = [(ANCSchemaANCAudioDevice *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"vendorIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ANCSchemaANCAudioDevice *)v5 setVendorIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"productIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ANCSchemaANCAudioDevice *)v5 setProductIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ANCSchemaANCAudioDevice)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCAudioDevice *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCAudioDevice *)self dictionaryRepresentation];
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
  if (self->_productIdentifier)
  {
    productIdentifier = [(ANCSchemaANCAudioDevice *)self productIdentifier];
    v5 = [productIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"productIdentifier"];
  }

  if (self->_vendorIdentifier)
  {
    vendorIdentifier = [(ANCSchemaANCAudioDevice *)self vendorIdentifier];
    v7 = [vendorIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"vendorIdentifier"];
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

  vendorIdentifier = [(ANCSchemaANCAudioDevice *)self vendorIdentifier];
  vendorIdentifier2 = [equalCopy vendorIdentifier];
  if ((vendorIdentifier != 0) == (vendorIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  vendorIdentifier3 = [(ANCSchemaANCAudioDevice *)self vendorIdentifier];
  if (vendorIdentifier3)
  {
    v8 = vendorIdentifier3;
    vendorIdentifier4 = [(ANCSchemaANCAudioDevice *)self vendorIdentifier];
    vendorIdentifier5 = [equalCopy vendorIdentifier];
    v11 = [vendorIdentifier4 isEqual:vendorIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  vendorIdentifier = [(ANCSchemaANCAudioDevice *)self productIdentifier];
  vendorIdentifier2 = [equalCopy productIdentifier];
  if ((vendorIdentifier != 0) != (vendorIdentifier2 == 0))
  {
    productIdentifier = [(ANCSchemaANCAudioDevice *)self productIdentifier];
    if (!productIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = productIdentifier;
    productIdentifier2 = [(ANCSchemaANCAudioDevice *)self productIdentifier];
    productIdentifier3 = [equalCopy productIdentifier];
    v16 = [productIdentifier2 isEqual:productIdentifier3];

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
  vendorIdentifier = [(ANCSchemaANCAudioDevice *)self vendorIdentifier];

  if (vendorIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  productIdentifier = [(ANCSchemaANCAudioDevice *)self productIdentifier];

  if (productIdentifier)
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