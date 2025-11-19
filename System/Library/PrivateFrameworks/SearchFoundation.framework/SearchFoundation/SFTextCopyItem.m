@interface SFTextCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextCopyItem)initWithCoder:(id)a3;
- (SFTextCopyItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTextCopyItem

- (SFTextCopyItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFTextCopyItem;
  v5 = [(SFTextCopyItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 copyableString];

    if (v6)
    {
      v7 = [v4 copyableString];
      [(SFTextCopyItem *)v5 setCopyableString:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFTextCopyItem;
  v3 = [(SFCopyItem *)&v7 hash];
  v4 = [(SFTextCopyItem *)self copyableString];
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

  else if ([(SFTextCopyItem *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFTextCopyItem, [(SFCopyItem *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFTextCopyItem *)self copyableString];
    v7 = [(SFTextCopyItem *)v5 copyableString];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFTextCopyItem *)self copyableString];
      if (v8)
      {
        v9 = [(SFTextCopyItem *)self copyableString];
        v10 = [(SFTextCopyItem *)v5 copyableString];
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
  v8.super_class = SFTextCopyItem;
  v4 = [(SFCopyItem *)&v8 copyWithZone:a3];
  v5 = [(SFTextCopyItem *)self copyableString];
  v6 = [v5 copy];
  [v4 setCopyableString:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBTextCopyItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBTextCopyItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBTextCopyItem alloc] initWithFacade:self];
  v5 = [(_SFPBTextCopyItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFTextCopyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTextCopyItem alloc] initWithData:v5];
  v7 = [(SFTextCopyItem *)self initWithProtobuf:v6];

  return v7;
}

@end