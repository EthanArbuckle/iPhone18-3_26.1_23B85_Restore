@interface _SFPBProduct
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBProduct)initWithDictionary:(id)a3;
- (_SFPBProduct)initWithFacade:(id)a3;
- (_SFPBProduct)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDisplayName:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setProductIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBProduct

- (_SFPBProduct)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBProduct *)self init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(_SFPBProduct *)v5 setIdentifier:v7];
    }

    v8 = [v4 productIdentifier];

    if (v8)
    {
      v9 = [v4 productIdentifier];
      [(_SFPBProduct *)v5 setProductIdentifier:v9];
    }

    v10 = [v4 availabilityURL];

    if (v10)
    {
      v11 = [_SFPBURL alloc];
      v12 = [v4 availabilityURL];
      v13 = [(_SFPBURL *)v11 initWithNSURL:v12];
      [(_SFPBProduct *)v5 setAvailabilityURL:v13];
    }

    v14 = [v4 displayName];

    if (v14)
    {
      v15 = [v4 displayName];
      [(_SFPBProduct *)v5 setDisplayName:v15];
    }

    if ([v4 hasBuyable])
    {
      -[_SFPBProduct setBuyable:](v5, "setBuyable:", [v4 buyable]);
    }

    v16 = v5;
  }

  return v5;
}

- (_SFPBProduct)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _SFPBProduct;
  v5 = [(_SFPBProduct *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBProduct *)v5 setIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"productIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBProduct *)v5 setProductIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"availabilityURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBURL alloc] initWithDictionary:v10];
      [(_SFPBProduct *)v5 setAvailabilityURL:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"displayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBProduct *)v5 setDisplayName:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"buyable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBProduct setBuyable:](v5, "setBuyable:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (_SFPBProduct)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBProduct *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBProduct *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_availabilityURL)
  {
    v4 = [(_SFPBProduct *)self availabilityURL];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"availabilityURL"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"availabilityURL"];
    }
  }

  if (self->_buyable)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBProduct buyable](self, "buyable")}];
    [v3 setObject:v7 forKeyedSubscript:@"buyable"];
  }

  if (self->_displayName)
  {
    v8 = [(_SFPBProduct *)self displayName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"displayName"];
  }

  if (self->_identifier)
  {
    v10 = [(_SFPBProduct *)self identifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"identifier"];
  }

  if (self->_productIdentifier)
  {
    v12 = [(_SFPBProduct *)self productIdentifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"productIdentifier"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBProduct *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBProduct *)self identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBProduct *)self identifier];
    v10 = [v4 identifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBProduct *)self productIdentifier];
  v6 = [v4 productIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBProduct *)self productIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBProduct *)self productIdentifier];
    v15 = [v4 productIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBProduct *)self availabilityURL];
  v6 = [v4 availabilityURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBProduct *)self availabilityURL];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBProduct *)self availabilityURL];
    v20 = [v4 availabilityURL];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBProduct *)self displayName];
  v6 = [v4 displayName];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBProduct *)self displayName];
    if (!v22)
    {

LABEL_25:
      buyable = self->_buyable;
      v27 = buyable == [v4 buyable];
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBProduct *)self displayName];
    v25 = [v4 displayName];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_SFPBProduct *)self identifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBProduct *)self productIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBProduct *)self availabilityURL];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBProduct *)self displayName];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBProduct *)self buyable])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setProductIdentifier:(id)a3
{
  v4 = [a3 copy];
  productIdentifier = self->_productIdentifier;
  self->_productIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end