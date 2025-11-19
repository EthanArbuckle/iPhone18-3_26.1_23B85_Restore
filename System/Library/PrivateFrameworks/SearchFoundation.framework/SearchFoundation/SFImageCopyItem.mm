@interface SFImageCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFImageCopyItem)initWithCoder:(id)a3;
- (SFImageCopyItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFImageCopyItem

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFImageCopyItem;
  v3 = [(SFCopyItem *)&v7 hash];
  v4 = [(SFImageCopyItem *)self image];
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

  else if ([(SFImageCopyItem *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFImageCopyItem, [(SFCopyItem *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFImageCopyItem *)self image];
    v7 = [(SFImageCopyItem *)v5 image];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFImageCopyItem *)self image];
      if (v8)
      {
        v9 = [(SFImageCopyItem *)self image];
        v10 = [(SFImageCopyItem *)v5 image];
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
  v8.super_class = SFImageCopyItem;
  v4 = [(SFCopyItem *)&v8 copyWithZone:a3];
  v5 = [(SFImageCopyItem *)self image];
  v6 = [v5 copy];
  [v4 setImage:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBImageCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBImageCopyItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBImageCopyItem alloc] initWithFacade:self];
  v3 = [(_SFPBImageCopyItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImageCopyItem alloc] initWithFacade:self];
  v5 = [(_SFPBImageCopyItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFImageCopyItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImageCopyItem alloc] initWithData:v5];
  v7 = [(SFImageCopyItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFImageCopyItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFImageCopyItem;
  v5 = [(SFImageCopyItem *)&v12 init];
  if (v5)
  {
    v6 = [v4 image];

    if (v6)
    {
      v7 = [SFImage alloc];
      v8 = [v4 image];
      v9 = [(SFImage *)v7 initWithProtobuf:v8];
      [(SFImageCopyItem *)v5 setImage:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end