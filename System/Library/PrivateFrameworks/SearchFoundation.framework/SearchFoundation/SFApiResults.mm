@interface SFApiResults
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFApiResults)initWithCoder:(id)coder;
- (SFApiResults)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFApiResults

- (unint64_t)hash
{
  status = [(SFApiResults *)self status];
  v4 = [(SFApiResults *)self resultType]^ status;
  flights = [(SFApiResults *)self flights];
  v6 = [flights hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else if ([(SFApiResults *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    status = [(SFApiResults *)self status];
    if (status == [(SFApiResults *)v5 status]&& (v7 = [(SFApiResults *)self resultType], v7 == [(SFApiResults *)v5 resultType]))
    {
      flights = [(SFApiResults *)self flights];
      flights2 = [(SFApiResults *)v5 flights];
      if ((flights != 0) == (flights2 == 0))
      {
        v13 = 0;
      }

      else
      {
        flights3 = [(SFApiResults *)self flights];
        if (flights3)
        {
          flights4 = [(SFApiResults *)self flights];
          flights5 = [(SFApiResults *)v5 flights];
          v13 = [flights4 isEqual:flights5];
        }

        else
        {
          v13 = 1;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStatus:{-[SFApiResults status](self, "status")}];
  [v4 setResultType:{-[SFApiResults resultType](self, "resultType")}];
  flights = [(SFApiResults *)self flights];
  v6 = [flights copy];
  [v4 setFlights:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBApiResults alloc] initWithFacade:self];
  jsonData = [(_SFPBApiResults *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBApiResults alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBApiResults *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBApiResults alloc] initWithFacade:self];
  data = [(_SFPBApiResults *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFApiResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBApiResults alloc] initWithData:v5];
  v7 = [(SFApiResults *)self initWithProtobuf:v6];

  return v7;
}

- (SFApiResults)initWithProtobuf:(id)protobuf
{
  v23 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = SFApiResults;
  v5 = [(SFApiResults *)&v21 init];
  if (v5)
  {
    if ([protobufCopy status])
    {
      -[SFApiResults setStatus:](v5, "setStatus:", [protobufCopy status]);
    }

    if ([protobufCopy resultType])
    {
      -[SFApiResults setResultType:](v5, "setResultType:", [protobufCopy resultType]);
    }

    flights = [protobufCopy flights];
    if (flights)
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
    flights2 = [protobufCopy flights];
    v9 = [flights2 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(flights2);
          }

          v13 = [[SFFlight alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [flights2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(SFApiResults *)v5 setFlights:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end