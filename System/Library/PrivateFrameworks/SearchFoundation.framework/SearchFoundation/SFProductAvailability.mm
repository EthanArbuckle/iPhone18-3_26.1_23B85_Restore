@interface SFProductAvailability
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFProductAvailability)initWithCoder:(id)coder;
- (SFProductAvailability)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFProductAvailability

- (SFProductAvailability)initWithProtobuf:(id)protobuf
{
  v23 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = SFProductAvailability;
  v5 = [(SFProductAvailability *)&v21 init];
  if (v5)
  {
    results = [protobufCopy results];
    if (results)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    results2 = [protobufCopy results];
    v9 = [results2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(results2);
          }

          v13 = [[SFProductInventoryResult alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [results2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(SFProductAvailability *)v5 setResults:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  results = [(SFProductAvailability *)self results];
  v3 = [results hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFProductAvailability *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    results = [(SFProductAvailability *)self results];
    results2 = [(SFProductAvailability *)v5 results];
    if ((results != 0) == (results2 == 0))
    {
      v11 = 0;
    }

    else
    {
      results3 = [(SFProductAvailability *)self results];
      if (results3)
      {
        results4 = [(SFProductAvailability *)self results];
        results5 = [(SFProductAvailability *)v5 results];
        v11 = [results4 isEqual:results5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  results = [(SFProductAvailability *)self results];
  v6 = [results copy];
  [v4 setResults:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBProductAvailability alloc] initWithFacade:self];
  jsonData = [(_SFPBProductAvailability *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBProductAvailability alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBProductAvailability *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBProductAvailability alloc] initWithFacade:self];
  data = [(_SFPBProductAvailability *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFProductAvailability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBProductAvailability alloc] initWithData:v5];
  v7 = [(SFProductAvailability *)self initWithProtobuf:v6];

  return v7;
}

@end