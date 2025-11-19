@interface SFKeyValueTuple
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFKeyValueTuple)initWithCoder:(id)a3;
- (SFKeyValueTuple)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFKeyValueTuple

- (SFKeyValueTuple)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFKeyValueTuple;
  v5 = [(SFKeyValueTuple *)&v12 init];
  if (v5)
  {
    v6 = [v4 key];

    if (v6)
    {
      v7 = [v4 key];
      [(SFKeyValueTuple *)v5 setKey:v7];
    }

    v8 = [v4 value];

    if (v8)
    {
      v9 = [v4 value];
      [(SFKeyValueTuple *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFKeyValueTuple *)self key];
  v4 = [v3 hash];
  v5 = [(SFKeyValueTuple *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFKeyValueTuple *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFKeyValueTuple *)self key];
      v8 = [(SFKeyValueTuple *)v6 key];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFKeyValueTuple *)self key];
      if (v9)
      {
        v3 = [(SFKeyValueTuple *)self key];
        v10 = [(SFKeyValueTuple *)v6 key];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(SFKeyValueTuple *)self value];
      v13 = [(SFKeyValueTuple *)v6 value];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(SFKeyValueTuple *)self value];
        if (v15)
        {
          v16 = v15;
          v19 = [(SFKeyValueTuple *)self value];
          [(SFKeyValueTuple *)v6 value];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFKeyValueTuple *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  v7 = [(SFKeyValueTuple *)self value];
  v8 = [v7 copy];
  [v4 setValue:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBKeyValueTuple alloc] initWithFacade:self];
  v3 = [(_SFPBKeyValueTuple *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBKeyValueTuple alloc] initWithFacade:self];
  v3 = [(_SFPBKeyValueTuple *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBKeyValueTuple alloc] initWithFacade:self];
  v5 = [(_SFPBKeyValueTuple *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFKeyValueTuple)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBKeyValueTuple alloc] initWithData:v5];
  v7 = [(SFKeyValueTuple *)self initWithProtobuf:v6];

  return v7;
}

@end