@interface SFPhotosAlbumImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosAlbumImage)initWithCoder:(id)coder;
- (SFPhotosAlbumImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPhotosAlbumImage

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFPhotosAlbumImage;
  v3 = [(SFImage *)&v9 hash];
  albumIdentifier = [(SFPhotosAlbumImage *)self albumIdentifier];
  v5 = [albumIdentifier hash];
  applicationBundleIdentifier = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];

  return v7 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFPhotosAlbumImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFPhotosAlbumImage;
      if ([(SFImage *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        albumIdentifier = [(SFPhotosAlbumImage *)self albumIdentifier];
        albumIdentifier2 = [(SFPhotosAlbumImage *)v6 albumIdentifier];
        if ((albumIdentifier != 0) == (albumIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        albumIdentifier3 = [(SFPhotosAlbumImage *)self albumIdentifier];
        if (albumIdentifier3)
        {
          albumIdentifier4 = [(SFPhotosAlbumImage *)self albumIdentifier];
          albumIdentifier5 = [(SFPhotosAlbumImage *)v6 albumIdentifier];
          if (![albumIdentifier4 isEqual:albumIdentifier5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = albumIdentifier5;
        }

        applicationBundleIdentifier = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFPhotosAlbumImage *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          applicationBundleIdentifier3 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
          if (applicationBundleIdentifier3)
          {
            v16 = applicationBundleIdentifier3;
            applicationBundleIdentifier4 = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
            [(SFPhotosAlbumImage *)v6 applicationBundleIdentifier];
            v17 = v20 = albumIdentifier4;
            v11 = [applicationBundleIdentifier4 isEqual:v17];

            albumIdentifier4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        albumIdentifier5 = v21;
        if (!albumIdentifier3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFPhotosAlbumImage;
  v4 = [(SFImage *)&v10 copyWithZone:zone];
  albumIdentifier = [(SFPhotosAlbumImage *)self albumIdentifier];
  v6 = [albumIdentifier copy];
  [v4 setAlbumIdentifier:v6];

  applicationBundleIdentifier = [(SFPhotosAlbumImage *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosAlbumImage alloc] initWithFacade:self];
  jsonData = [(_SFPBPhotosAlbumImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosAlbumImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPhotosAlbumImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPhotosAlbumImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFPhotosAlbumImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFPhotosAlbumImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFPhotosAlbumImage;
  v5 = [(SFPhotosAlbumImage *)&v12 init];
  if (v5)
  {
    albumIdentifier = [protobufCopy albumIdentifier];

    if (albumIdentifier)
    {
      albumIdentifier2 = [protobufCopy albumIdentifier];
      [(SFPhotosAlbumImage *)v5 setAlbumIdentifier:albumIdentifier2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFPhotosAlbumImage *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

@end