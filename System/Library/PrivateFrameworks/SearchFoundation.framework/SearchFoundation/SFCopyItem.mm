@interface SFCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCopyItem)initWithCoder:(id)a3;
- (SFCopyItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCopyItem

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (NSData)jsonData
{
  v2 = [[_SFPBCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBCopyItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBCopyItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCopyItem alloc] initWithFacade:self];
  v5 = [(_SFPBCopyItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCopyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCopyItem alloc] initWithData:v5];
  v7 = [(SFCopyItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFCopyItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFCopyItem;
  v5 = [(SFCopyItem *)&v16 init];
  if (v5)
  {
    v6 = [v4 textCopyItem];

    if (v6)
    {
      v7 = [SFTextCopyItem alloc];
      v8 = [v4 textCopyItem];
    }

    else
    {
      v10 = [v4 spotlightCopyItem];

      if (v10)
      {
        v7 = [SFCoreSpotlightCopyItem alloc];
        v8 = [v4 spotlightCopyItem];
      }

      else
      {
        v11 = [v4 imageCopyItem];

        if (v11)
        {
          v7 = [SFImageCopyItem alloc];
          v8 = [v4 imageCopyItem];
        }

        else
        {
          v12 = [v4 contactCopyItem];

          if (v12)
          {
            v7 = [SFContactCopyItem alloc];
            v8 = [v4 contactCopyItem];
          }

          else
          {
            v13 = [v4 urlCopyItem];

            if (!v13)
            {
              v9 = v5;
              goto LABEL_14;
            }

            v7 = [SFURLCopyItem alloc];
            v8 = [v4 urlCopyItem];
          }
        }
      }
    }

    v14 = v8;
    v9 = [(SFTextCopyItem *)v7 initWithProtobuf:v8];
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

@end