@interface SFPhotosAlbumImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosAlbumImage)initWithCoder:(id)a3;
- (SFPhotosAlbumImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPhotosAlbumImage

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFPhotosAlbumImage;
  v3 = [(SFImage *)&v9 hash];
  v4 = [(SFPhotosAlbumImage *)self albumIdentifier];
  v5 = [v4 hash];
  v6 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
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
    if ([(SFPhotosAlbumImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFPhotosAlbumImage;
      if ([(SFImage *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFPhotosAlbumImage *)self albumIdentifier];
        v8 = [(SFPhotosAlbumImage *)v6 albumIdentifier];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFPhotosAlbumImage *)self albumIdentifier];
        if (v9)
        {
          v3 = [(SFPhotosAlbumImage *)self albumIdentifier];
          v10 = [(SFPhotosAlbumImage *)v6 albumIdentifier];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
        v13 = [(SFPhotosAlbumImage *)v6 applicationBundleIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
            [(SFPhotosAlbumImage *)v6 applicationBundleIdentifier];
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
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFPhotosAlbumImage;
  v4 = [(SFImage *)&v10 copyWithZone:a3];
  v5 = [(SFPhotosAlbumImage *)self albumIdentifier];
  v6 = [v5 copy];
  [v4 setAlbumIdentifier:v6];

  v7 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
  v8 = [v7 copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosAlbumImage alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosAlbumImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosAlbumImage alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosAlbumImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPhotosAlbumImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFPhotosAlbumImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFPhotosAlbumImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFPhotosAlbumImage;
  v5 = [(SFPhotosAlbumImage *)&v12 init];
  if (v5)
  {
    v6 = [v4 albumIdentifier];

    if (v6)
    {
      v7 = [v4 albumIdentifier];
      [(SFPhotosAlbumImage *)v5 setAlbumIdentifier:v7];
    }

    v8 = [v4 applicationBundleIdentifier];

    if (v8)
    {
      v9 = [v4 applicationBundleIdentifier];
      [(SFPhotosAlbumImage *)v5 setApplicationBundleIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end