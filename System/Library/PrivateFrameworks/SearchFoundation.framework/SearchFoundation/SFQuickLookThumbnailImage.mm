@interface SFQuickLookThumbnailImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFQuickLookThumbnailImage)initWithCoder:(id)coder;
- (SFQuickLookThumbnailImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFQuickLookThumbnailImage

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFQuickLookThumbnailImage;
  v3 = [(SFImage *)&v11 hash];
  filePath = [(SFQuickLookThumbnailImage *)self filePath];
  v5 = [filePath hash];
  coreSpotlightIdentifier = [(SFQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  v7 = v5 ^ [coreSpotlightIdentifier hash];
  fileProviderIdentifier = [(SFQuickLookThumbnailImage *)self fileProviderIdentifier];
  v9 = v7 ^ [fileProviderIdentifier hash];

  return v9 ^ v3;
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
    if ([(SFQuickLookThumbnailImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFQuickLookThumbnailImage;
      if ([(SFImage *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        filePath = [(SFQuickLookThumbnailImage *)self filePath];
        filePath2 = [(SFQuickLookThumbnailImage *)v6 filePath];
        if ((filePath != 0) == (filePath2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        filePath3 = [(SFQuickLookThumbnailImage *)self filePath];
        if (filePath3)
        {
          filePath4 = [(SFQuickLookThumbnailImage *)self filePath];
          filePath5 = [(SFQuickLookThumbnailImage *)v6 filePath];
          if (![filePath4 isEqual:filePath5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = filePath5;
        }

        coreSpotlightIdentifier = [(SFQuickLookThumbnailImage *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFQuickLookThumbnailImage *)v6 coreSpotlightIdentifier];
        v14 = coreSpotlightIdentifier2;
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        coreSpotlightIdentifier3 = [(SFQuickLookThumbnailImage *)self coreSpotlightIdentifier];
        if (coreSpotlightIdentifier3)
        {
          v25 = coreSpotlightIdentifier;
          coreSpotlightIdentifier4 = [(SFQuickLookThumbnailImage *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier5 = [(SFQuickLookThumbnailImage *)v6 coreSpotlightIdentifier];
          v28 = coreSpotlightIdentifier4;
          if (![coreSpotlightIdentifier4 isEqual:?])
          {
            v11 = 0;
            coreSpotlightIdentifier = v25;
            goto LABEL_26;
          }

          v29 = coreSpotlightIdentifier3;
          v30 = filePath4;
          coreSpotlightIdentifier = v25;
        }

        else
        {
          v29 = 0;
          v30 = filePath4;
        }

        fileProviderIdentifier = [(SFQuickLookThumbnailImage *)self fileProviderIdentifier];
        fileProviderIdentifier2 = [(SFQuickLookThumbnailImage *)v6 fileProviderIdentifier];
        if ((fileProviderIdentifier != 0) == (fileProviderIdentifier2 == 0))
        {

          v11 = 0;
          coreSpotlightIdentifier3 = v29;
          filePath4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = fileProviderIdentifier;
          v26 = fileProviderIdentifier2;
          fileProviderIdentifier3 = [(SFQuickLookThumbnailImage *)self fileProviderIdentifier];
          coreSpotlightIdentifier3 = v29;
          if (fileProviderIdentifier3)
          {
            v23 = fileProviderIdentifier3;
            fileProviderIdentifier4 = [(SFQuickLookThumbnailImage *)self fileProviderIdentifier];
            fileProviderIdentifier5 = [(SFQuickLookThumbnailImage *)v6 fileProviderIdentifier];
            v11 = [fileProviderIdentifier4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          filePath4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        filePath5 = v31;
        if (!filePath3)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFQuickLookThumbnailImage;
  v4 = [(SFImage *)&v12 copyWithZone:zone];
  filePath = [(SFQuickLookThumbnailImage *)self filePath];
  v6 = [filePath copy];
  [v4 setFilePath:v6];

  coreSpotlightIdentifier = [(SFQuickLookThumbnailImage *)self coreSpotlightIdentifier];
  v8 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v8];

  fileProviderIdentifier = [(SFQuickLookThumbnailImage *)self fileProviderIdentifier];
  v10 = [fileProviderIdentifier copy];
  [v4 setFileProviderIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBQuickLookThumbnailImage alloc] initWithFacade:self];
  jsonData = [(_SFPBQuickLookThumbnailImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBQuickLookThumbnailImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBQuickLookThumbnailImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFQuickLookThumbnailImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFQuickLookThumbnailImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFQuickLookThumbnailImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v15.receiver = self;
  v15.super_class = SFQuickLookThumbnailImage;
  v5 = [(SFQuickLookThumbnailImage *)&v15 init];
  if (v5)
  {
    filePath = [protobufCopy filePath];

    if (filePath)
    {
      filePath2 = [protobufCopy filePath];
      v8 = _SFPBURLHandwrittenTranslator(filePath2);
      [(SFQuickLookThumbnailImage *)v5 setFilePath:v8];
    }

    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFQuickLookThumbnailImage *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    fileProviderIdentifier = [protobufCopy fileProviderIdentifier];

    if (fileProviderIdentifier)
    {
      fileProviderIdentifier2 = [protobufCopy fileProviderIdentifier];
      [(SFQuickLookThumbnailImage *)v5 setFileProviderIdentifier:fileProviderIdentifier2];
    }

    v13 = v5;
  }

  return v5;
}

@end