@interface _SFPBProduct
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBProduct)initWithDictionary:(id)dictionary;
- (_SFPBProduct)initWithFacade:(id)facade;
- (_SFPBProduct)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDisplayName:(id)name;
- (void)setIdentifier:(id)identifier;
- (void)setProductIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBProduct

- (_SFPBProduct)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBProduct *)self init];
  if (v5)
  {
    identifier = [facadeCopy identifier];

    if (identifier)
    {
      identifier2 = [facadeCopy identifier];
      [(_SFPBProduct *)v5 setIdentifier:identifier2];
    }

    productIdentifier = [facadeCopy productIdentifier];

    if (productIdentifier)
    {
      productIdentifier2 = [facadeCopy productIdentifier];
      [(_SFPBProduct *)v5 setProductIdentifier:productIdentifier2];
    }

    availabilityURL = [facadeCopy availabilityURL];

    if (availabilityURL)
    {
      v11 = [_SFPBURL alloc];
      availabilityURL2 = [facadeCopy availabilityURL];
      v13 = [(_SFPBURL *)v11 initWithNSURL:availabilityURL2];
      [(_SFPBProduct *)v5 setAvailabilityURL:v13];
    }

    displayName = [facadeCopy displayName];

    if (displayName)
    {
      displayName2 = [facadeCopy displayName];
      [(_SFPBProduct *)v5 setDisplayName:displayName2];
    }

    if ([facadeCopy hasBuyable])
    {
      -[_SFPBProduct setBuyable:](v5, "setBuyable:", [facadeCopy buyable]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBProduct)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = _SFPBProduct;
  v5 = [(_SFPBProduct *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBProduct *)v5 setIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"productIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBProduct *)v5 setProductIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"availabilityURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBURL alloc] initWithDictionary:v10];
      [(_SFPBProduct *)v5 setAvailabilityURL:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBProduct *)v5 setDisplayName:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"buyable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProduct setBuyable:](v5, "setBuyable:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (_SFPBProduct)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBProduct *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBProduct *)self dictionaryRepresentation];
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
  if (self->_availabilityURL)
  {
    availabilityURL = [(_SFPBProduct *)self availabilityURL];
    dictionaryRepresentation = [availabilityURL dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"availabilityURL"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"availabilityURL"];
    }
  }

  if (self->_buyable)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBProduct buyable](self, "buyable")}];
    [dictionary setObject:v7 forKeyedSubscript:@"buyable"];
  }

  if (self->_displayName)
  {
    displayName = [(_SFPBProduct *)self displayName];
    v9 = [displayName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"displayName"];
  }

  if (self->_identifier)
  {
    identifier = [(_SFPBProduct *)self identifier];
    v11 = [identifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"identifier"];
  }

  if (self->_productIdentifier)
  {
    productIdentifier = [(_SFPBProduct *)self productIdentifier];
    v13 = [productIdentifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"productIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_productIdentifier hash];
  v5 = [(_SFPBURL *)self->_availabilityURL hash];
  v6 = [(NSString *)self->_displayName hash];
  v7 = 2654435761;
  if (!self->_buyable)
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = [(_SFPBProduct *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_21;
  }

  identifier3 = [(_SFPBProduct *)self identifier];
  if (identifier3)
  {
    v8 = identifier3;
    identifier4 = [(_SFPBProduct *)self identifier];
    identifier5 = [equalCopy identifier];
    v11 = [identifier4 isEqual:identifier5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  identifier = [(_SFPBProduct *)self productIdentifier];
  identifier2 = [equalCopy productIdentifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_21;
  }

  productIdentifier = [(_SFPBProduct *)self productIdentifier];
  if (productIdentifier)
  {
    v13 = productIdentifier;
    productIdentifier2 = [(_SFPBProduct *)self productIdentifier];
    productIdentifier3 = [equalCopy productIdentifier];
    v16 = [productIdentifier2 isEqual:productIdentifier3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  identifier = [(_SFPBProduct *)self availabilityURL];
  identifier2 = [equalCopy availabilityURL];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_21;
  }

  availabilityURL = [(_SFPBProduct *)self availabilityURL];
  if (availabilityURL)
  {
    v18 = availabilityURL;
    availabilityURL2 = [(_SFPBProduct *)self availabilityURL];
    availabilityURL3 = [equalCopy availabilityURL];
    v21 = [availabilityURL2 isEqual:availabilityURL3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  identifier = [(_SFPBProduct *)self displayName];
  identifier2 = [equalCopy displayName];
  if ((identifier != 0) != (identifier2 == 0))
  {
    displayName = [(_SFPBProduct *)self displayName];
    if (!displayName)
    {

LABEL_25:
      buyable = self->_buyable;
      v27 = buyable == [equalCopy buyable];
      goto LABEL_23;
    }

    v23 = displayName;
    displayName2 = [(_SFPBProduct *)self displayName];
    displayName3 = [equalCopy displayName];
    v26 = [displayName2 isEqual:displayName3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = [(_SFPBProduct *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteStringField();
  }

  productIdentifier = [(_SFPBProduct *)self productIdentifier];
  if (productIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  availabilityURL = [(_SFPBProduct *)self availabilityURL];
  if (availabilityURL)
  {
    PBDataWriterWriteSubmessage();
  }

  displayName = [(_SFPBProduct *)self displayName];
  if (displayName)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBProduct *)self buyable])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProductIdentifier:(id)identifier
{
  v4 = [identifier copy];
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end