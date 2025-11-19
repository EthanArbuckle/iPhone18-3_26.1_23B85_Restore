@interface SFLocationTypeInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLocationTypeInfo)initWithCoder:(id)a3;
- (SFLocationTypeInfo)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLocationTypeInfo

- (unint64_t)hash
{
  v2 = [(SFLocationTypeInfo *)self address];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFLocationTypeInfo *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFLocationTypeInfo *)self address];
    v7 = [(SFLocationTypeInfo *)v5 address];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFLocationTypeInfo *)self address];
      if (v8)
      {
        v9 = [(SFLocationTypeInfo *)self address];
        v10 = [(SFLocationTypeInfo *)v5 address];
        v11 = [v9 isEqual:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFLocationTypeInfo *)self address];
  v6 = [v5 copy];
  [v4 setAddress:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLocationTypeInfo alloc] initWithFacade:self];
  v3 = [(_SFPBLocationTypeInfo *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLocationTypeInfo alloc] initWithFacade:self];
  v3 = [(_SFPBLocationTypeInfo *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBLocationTypeInfo alloc] initWithFacade:self];
  v5 = [(_SFPBLocationTypeInfo *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFLocationTypeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBLocationTypeInfo alloc] initWithData:v5];
  v7 = [(SFLocationTypeInfo *)self initWithProtobuf:v6];

  return v7;
}

- (SFLocationTypeInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFLocationTypeInfo;
  v5 = [(SFLocationTypeInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 address];

    if (v6)
    {
      v7 = [v4 address];
      [(SFLocationTypeInfo *)v5 setAddress:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end