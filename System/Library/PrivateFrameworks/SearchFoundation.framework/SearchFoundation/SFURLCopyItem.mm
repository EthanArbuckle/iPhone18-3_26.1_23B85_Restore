@interface SFURLCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFURLCopyItem)initWithCoder:(id)a3;
- (SFURLCopyItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFURLCopyItem

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFURLCopyItem;
  v3 = [(SFCopyItem *)&v7 hash];
  v4 = [(SFURLCopyItem *)self url];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFURLCopyItem *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFURLCopyItem, [(SFCopyItem *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFURLCopyItem *)self url];
    v7 = [(SFURLCopyItem *)v5 url];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFURLCopyItem *)self url];
      if (v8)
      {
        v9 = [(SFURLCopyItem *)self url];
        v10 = [(SFURLCopyItem *)v5 url];
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
  v8.receiver = self;
  v8.super_class = SFURLCopyItem;
  v4 = [(SFCopyItem *)&v8 copyWithZone:a3];
  v5 = [(SFURLCopyItem *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBURLCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBURLCopyItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBURLCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBURLCopyItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBURLCopyItem alloc] initWithFacade:self];
  v5 = [(_SFPBURLCopyItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFURLCopyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBURLCopyItem alloc] initWithData:v5];
  v7 = [(SFURLCopyItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFURLCopyItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFURLCopyItem;
  v5 = [(SFURLCopyItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 url];

    if (v6)
    {
      v7 = [v4 url];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFURLCopyItem *)v5 setUrl:v8];
    }

    v9 = v5;
  }

  return v5;
}

@end