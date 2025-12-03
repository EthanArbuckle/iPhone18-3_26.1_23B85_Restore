@interface SFProduct
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFProduct)initWithCoder:(id)coder;
- (SFProduct)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFProduct

- (unint64_t)hash
{
  identifier = [(SFProduct *)self identifier];
  v4 = [identifier hash];
  productIdentifier = [(SFProduct *)self productIdentifier];
  v6 = [productIdentifier hash] ^ v4;
  availabilityURL = [(SFProduct *)self availabilityURL];
  v8 = [availabilityURL hash];
  displayName = [(SFProduct *)self displayName];
  v10 = v6 ^ v8 ^ [displayName hash];
  buyable = [(SFProduct *)self buyable];

  return v10 ^ buyable;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    if ([(SFProduct *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      identifier = [(SFProduct *)self identifier];
      identifier2 = [(SFProduct *)v5 identifier];
      if ((identifier != 0) == (identifier2 == 0))
      {
        LOBYTE(v10) = 0;
LABEL_37:

        goto LABEL_38;
      }

      identifier3 = [(SFProduct *)self identifier];
      if (identifier3)
      {
        identifier4 = [(SFProduct *)self identifier];
        identifier5 = [(SFProduct *)v5 identifier];
        if (![identifier4 isEqual:?])
        {
          LOBYTE(v10) = 0;
          goto LABEL_35;
        }

        v39 = identifier4;
      }

      productIdentifier = [(SFProduct *)self productIdentifier];
      productIdentifier2 = [(SFProduct *)v5 productIdentifier];
      if ((productIdentifier != 0) != (productIdentifier2 == 0))
      {
        productIdentifier3 = [(SFProduct *)self productIdentifier];
        if (productIdentifier3)
        {
          v13 = productIdentifier3;
          productIdentifier4 = [(SFProduct *)self productIdentifier];
          [(SFProduct *)v5 productIdentifier];
          v38 = v36 = productIdentifier4;
          if (![productIdentifier4 isEqual:?])
          {
            LOBYTE(v10) = 0;
            v19 = v38;
            goto LABEL_32;
          }

          v37 = v13;
        }

        else
        {
          v37 = 0;
        }

        availabilityURL = [(SFProduct *)self availabilityURL];
        availabilityURL2 = [(SFProduct *)v5 availabilityURL];
        if ((availabilityURL != 0) != (availabilityURL2 == 0))
        {
          v34 = availabilityURL;
          v35 = availabilityURL2;
          availabilityURL3 = [(SFProduct *)self availabilityURL];
          if (availabilityURL3)
          {
            availabilityURL4 = [(SFProduct *)self availabilityURL];
            availabilityURL5 = [(SFProduct *)v5 availabilityURL];
            v33 = availabilityURL4;
            if (![availabilityURL4 isEqual:?])
            {
              LOBYTE(v10) = 0;
              v13 = v37;
              v19 = v38;
              goto LABEL_30;
            }
          }

          displayName = [(SFProduct *)self displayName];
          v21 = displayName != 0;
          displayName2 = [(SFProduct *)v5 displayName];
          if (v21 == (displayName2 == 0))
          {

            LOBYTE(v10) = 0;
            v13 = v37;
            v19 = v38;
            if (!availabilityURL3)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          v29 = displayName2;
          v30 = displayName;
          [(SFProduct *)self displayName];
          v31 = v19 = v38;
          if (!v31 || (-[SFProduct displayName](self, "displayName"), v23 = objc_claimAutoreleasedReturnValue(), -[SFProduct displayName](v5, "displayName"), v24 = objc_claimAutoreleasedReturnValue(), v28 = v23, v25 = v23, v21 = v24, [v25 isEqual:v24]))
          {
            buyable = [(SFProduct *)self buyable];
            v10 = buyable ^ [(SFProduct *)v5 buyable]^ 1;
            if (!v31)
            {
              goto LABEL_41;
            }
          }

          else
          {
            LOBYTE(v10) = 0;
          }

LABEL_41:
          v13 = v37;
          if (!availabilityURL3)
          {
LABEL_31:

            if (!v13)
            {
LABEL_33:

LABEL_34:
              identifier4 = v39;
              if (!identifier3)
              {
LABEL_36:

                goto LABEL_37;
              }

LABEL_35:

              goto LABEL_36;
            }

LABEL_32:

            goto LABEL_33;
          }

LABEL_30:

          goto LABEL_31;
        }

        if (v37)
        {
        }
      }

      LOBYTE(v10) = 0;
      goto LABEL_34;
    }

    LOBYTE(v10) = 0;
  }

LABEL_38:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(SFProduct *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  productIdentifier = [(SFProduct *)self productIdentifier];
  v8 = [productIdentifier copy];
  [v4 setProductIdentifier:v8];

  availabilityURL = [(SFProduct *)self availabilityURL];
  v10 = [availabilityURL copy];
  [v4 setAvailabilityURL:v10];

  displayName = [(SFProduct *)self displayName];
  v12 = [displayName copy];
  [v4 setDisplayName:v12];

  [v4 setBuyable:{-[SFProduct buyable](self, "buyable")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBProduct alloc] initWithFacade:self];
  jsonData = [(_SFPBProduct *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBProduct alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBProduct *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBProduct alloc] initWithFacade:self];
  data = [(_SFPBProduct *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFProduct)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBProduct alloc] initWithData:v5];
  v7 = [(SFProduct *)self initWithProtobuf:v6];

  return v7;
}

- (SFProduct)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = SFProduct;
  v5 = [(SFProduct *)&v17 init];
  if (v5)
  {
    identifier = [protobufCopy identifier];

    if (identifier)
    {
      identifier2 = [protobufCopy identifier];
      [(SFProduct *)v5 setIdentifier:identifier2];
    }

    productIdentifier = [protobufCopy productIdentifier];

    if (productIdentifier)
    {
      productIdentifier2 = [protobufCopy productIdentifier];
      [(SFProduct *)v5 setProductIdentifier:productIdentifier2];
    }

    availabilityURL = [protobufCopy availabilityURL];

    if (availabilityURL)
    {
      availabilityURL2 = [protobufCopy availabilityURL];
      v12 = _SFPBURLHandwrittenTranslator(availabilityURL2);
      [(SFProduct *)v5 setAvailabilityURL:v12];
    }

    displayName = [protobufCopy displayName];

    if (displayName)
    {
      displayName2 = [protobufCopy displayName];
      [(SFProduct *)v5 setDisplayName:displayName2];
    }

    if ([protobufCopy buyable])
    {
      -[SFProduct setBuyable:](v5, "setBuyable:", [protobufCopy buyable]);
    }

    v15 = v5;
  }

  return v5;
}

@end