@interface SFPhotosMemoryImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosMemoryImage)initWithCoder:(id)coder;
- (SFPhotosMemoryImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPhotosMemoryImage

- (SFPhotosMemoryImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFPhotosMemoryImage;
  v5 = [(SFPhotosMemoryImage *)&v12 init];
  if (v5)
  {
    memoryIdentifier = [protobufCopy memoryIdentifier];

    if (memoryIdentifier)
    {
      memoryIdentifier2 = [protobufCopy memoryIdentifier];
      [(SFPhotosMemoryImage *)v5 setMemoryIdentifier:memoryIdentifier2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFPhotosMemoryImage *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFPhotosMemoryImage;
  v3 = [(SFImage *)&v9 hash];
  memoryIdentifier = [(SFPhotosMemoryImage *)self memoryIdentifier];
  v5 = [memoryIdentifier hash];
  applicationBundleIdentifier = [(SFPhotosMemoryImage *)self applicationBundleIdentifier];
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
    if ([(SFPhotosMemoryImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFPhotosMemoryImage;
      if ([(SFImage *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        memoryIdentifier = [(SFPhotosMemoryImage *)self memoryIdentifier];
        memoryIdentifier2 = [(SFPhotosMemoryImage *)v6 memoryIdentifier];
        if ((memoryIdentifier != 0) == (memoryIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        memoryIdentifier3 = [(SFPhotosMemoryImage *)self memoryIdentifier];
        if (memoryIdentifier3)
        {
          memoryIdentifier4 = [(SFPhotosMemoryImage *)self memoryIdentifier];
          memoryIdentifier5 = [(SFPhotosMemoryImage *)v6 memoryIdentifier];
          if (![memoryIdentifier4 isEqual:memoryIdentifier5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = memoryIdentifier5;
        }

        applicationBundleIdentifier = [(SFPhotosMemoryImage *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFPhotosMemoryImage *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
        }

        else
        {
          applicationBundleIdentifier3 = [(SFPhotosMemoryImage *)self applicationBundleIdentifier];
          if (applicationBundleIdentifier3)
          {
            v16 = applicationBundleIdentifier3;
            applicationBundleIdentifier4 = [(SFPhotosMemoryImage *)self applicationBundleIdentifier];
            [(SFPhotosMemoryImage *)v6 applicationBundleIdentifier];
            v17 = v20 = memoryIdentifier4;
            v11 = [applicationBundleIdentifier4 isEqual:v17];

            memoryIdentifier4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        memoryIdentifier5 = v21;
        if (!memoryIdentifier3)
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
  v10.super_class = SFPhotosMemoryImage;
  v4 = [(SFImage *)&v10 copyWithZone:zone];
  memoryIdentifier = [(SFPhotosMemoryImage *)self memoryIdentifier];
  v6 = [memoryIdentifier copy];
  [v4 setMemoryIdentifier:v6];

  applicationBundleIdentifier = [(SFPhotosMemoryImage *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosMemoryImage alloc] initWithFacade:self];
  jsonData = [(_SFPBPhotosMemoryImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosMemoryImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPhotosMemoryImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPhotosMemoryImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFPhotosMemoryImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end