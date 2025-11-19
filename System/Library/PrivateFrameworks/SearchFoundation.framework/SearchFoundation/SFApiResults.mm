@interface SFApiResults
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFApiResults)initWithCoder:(id)a3;
- (SFApiResults)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFApiResults

- (unint64_t)hash
{
  v3 = [(SFApiResults *)self status];
  v4 = [(SFApiResults *)self resultType]^ v3;
  v5 = [(SFApiResults *)self flights];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else if ([(SFApiResults *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFApiResults *)self status];
    if (v6 == [(SFApiResults *)v5 status]&& (v7 = [(SFApiResults *)self resultType], v7 == [(SFApiResults *)v5 resultType]))
    {
      v8 = [(SFApiResults *)self flights];
      v9 = [(SFApiResults *)v5 flights];
      if ((v8 != 0) == (v9 == 0))
      {
        v13 = 0;
      }

      else
      {
        v10 = [(SFApiResults *)self flights];
        if (v10)
        {
          v11 = [(SFApiResults *)self flights];
          v12 = [(SFApiResults *)v5 flights];
          v13 = [v11 isEqual:v12];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStatus:{-[SFApiResults status](self, "status")}];
  [v4 setResultType:{-[SFApiResults resultType](self, "resultType")}];
  v5 = [(SFApiResults *)self flights];
  v6 = [v5 copy];
  [v4 setFlights:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBApiResults alloc] initWithFacade:self];
  v3 = [(_SFPBApiResults *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBApiResults alloc] initWithFacade:self];
  v3 = [(_SFPBApiResults *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBApiResults alloc] initWithFacade:self];
  v5 = [(_SFPBApiResults *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFApiResults)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBApiResults alloc] initWithData:v5];
  v7 = [(SFApiResults *)self initWithProtobuf:v6];

  return v7;
}

- (SFApiResults)initWithProtobuf:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SFApiResults;
  v5 = [(SFApiResults *)&v21 init];
  if (v5)
  {
    if ([v4 status])
    {
      -[SFApiResults setStatus:](v5, "setStatus:", [v4 status]);
    }

    if ([v4 resultType])
    {
      -[SFApiResults setResultType:](v5, "setResultType:", [v4 resultType]);
    }

    v6 = [v4 flights];
    if (v6)
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
    v8 = [v4 flights];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[SFFlight alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
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