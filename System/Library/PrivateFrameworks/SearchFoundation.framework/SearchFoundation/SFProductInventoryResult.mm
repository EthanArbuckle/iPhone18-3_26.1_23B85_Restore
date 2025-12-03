@interface SFProductInventoryResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFProductInventoryResult)initWithCoder:(id)coder;
- (SFProductInventoryResult)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFProductInventoryResult

- (unint64_t)hash
{
  productIdentifier = [(SFProductInventoryResult *)self productIdentifier];
  v4 = [productIdentifier hash];
  availability = [(SFProductInventoryResult *)self availability];
  v6 = [availability hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFProductInventoryResult *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      productIdentifier = [(SFProductInventoryResult *)self productIdentifier];
      productIdentifier2 = [(SFProductInventoryResult *)v6 productIdentifier];
      if ((productIdentifier != 0) == (productIdentifier2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      productIdentifier3 = [(SFProductInventoryResult *)self productIdentifier];
      if (productIdentifier3)
      {
        productIdentifier4 = [(SFProductInventoryResult *)self productIdentifier];
        productIdentifier5 = [(SFProductInventoryResult *)v6 productIdentifier];
        if (![productIdentifier4 isEqual:productIdentifier5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = productIdentifier5;
      }

      availability = [(SFProductInventoryResult *)self availability];
      availability2 = [(SFProductInventoryResult *)v6 availability];
      v14 = availability2;
      if ((availability != 0) == (availability2 == 0))
      {

        v11 = 0;
      }

      else
      {
        availability3 = [(SFProductInventoryResult *)self availability];
        if (availability3)
        {
          v16 = availability3;
          availability4 = [(SFProductInventoryResult *)self availability];
          [(SFProductInventoryResult *)v6 availability];
          v17 = v20 = productIdentifier4;
          v11 = [availability4 isEqual:v17];

          productIdentifier4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      productIdentifier5 = v21;
      if (!productIdentifier3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  productIdentifier = [(SFProductInventoryResult *)self productIdentifier];
  v6 = [productIdentifier copy];
  [v4 setProductIdentifier:v6];

  availability = [(SFProductInventoryResult *)self availability];
  v8 = [availability copy];
  [v4 setAvailability:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBProductInventoryResult alloc] initWithFacade:self];
  jsonData = [(_SFPBProductInventoryResult *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBProductInventoryResult alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBProductInventoryResult *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBProductInventoryResult alloc] initWithFacade:self];
  data = [(_SFPBProductInventoryResult *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFProductInventoryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBProductInventoryResult alloc] initWithData:v5];
  v7 = [(SFProductInventoryResult *)self initWithProtobuf:v6];

  return v7;
}

- (SFProductInventoryResult)initWithProtobuf:(id)protobuf
{
  v25 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v23.receiver = self;
  v23.super_class = SFProductInventoryResult;
  v5 = [(SFProductInventoryResult *)&v23 init];
  if (v5)
  {
    productIdentifier = [protobufCopy productIdentifier];

    if (productIdentifier)
    {
      productIdentifier2 = [protobufCopy productIdentifier];
      [(SFProductInventoryResult *)v5 setProductIdentifier:productIdentifier2];
    }

    availabilitys = [protobufCopy availabilitys];
    if (availabilitys)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    availabilitys2 = [protobufCopy availabilitys];
    v11 = [availabilitys2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(availabilitys2);
          }

          v15 = [[SFProductInventory alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [availabilitys2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(SFProductInventoryResult *)v5 setAvailability:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end