@interface SFSportsItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSportsItem)initWithCoder:(id)a3;
- (SFSportsItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSportsItem

- (unint64_t)hash
{
  v3 = [(SFSportsItem *)self type];
  v4 = [(SFSportsItem *)self identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else if ([(SFSportsItem *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFSportsItem *)self type];
    if (v6 == [(SFSportsItem *)v5 type])
    {
      v7 = [(SFSportsItem *)self identifier];
      v8 = [(SFSportsItem *)v5 identifier];
      if ((v7 != 0) == (v8 == 0))
      {
        v12 = 0;
      }

      else
      {
        v9 = [(SFSportsItem *)self identifier];
        if (v9)
        {
          v10 = [(SFSportsItem *)self identifier];
          v11 = [(SFSportsItem *)v5 identifier];
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 1;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setType:{-[SFSportsItem type](self, "type")}];
  v5 = [(SFSportsItem *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSportsItem alloc] initWithFacade:self];
  v3 = [(_SFPBSportsItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSportsItem alloc] initWithFacade:self];
  v3 = [(_SFPBSportsItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBSportsItem alloc] initWithFacade:self];
  v5 = [(_SFPBSportsItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSportsItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSportsItem alloc] initWithData:v5];
  v7 = [(SFSportsItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFSportsItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFSportsItem;
  v5 = [(SFSportsItem *)&v10 init];
  if (v5)
  {
    if ([v4 type])
    {
      -[SFSportsItem setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(SFSportsItem *)v5 setIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end