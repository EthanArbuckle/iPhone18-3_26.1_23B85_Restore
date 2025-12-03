@interface SFDefaultPunchoutAppIconImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDefaultPunchoutAppIconImage)initWithCoder:(id)coder;
- (SFDefaultPunchoutAppIconImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDefaultPunchoutAppIconImage

- (SFDefaultPunchoutAppIconImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFDefaultPunchoutAppIconImage;
  v5 = [(SFDefaultPunchoutAppIconImage *)&v16 init];
  if (v5)
  {
    punchout = [protobufCopy punchout];

    if (punchout)
    {
      v7 = [SFPunchout alloc];
      punchout2 = [protobufCopy punchout];
      v9 = [(SFPunchout *)v7 initWithProtobuf:punchout2];
      [(SFDefaultPunchoutAppIconImage *)v5 setPunchout:v9];
    }

    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFDefaultPunchoutAppIconImage *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    fileProviderIdentifier = [protobufCopy fileProviderIdentifier];

    if (fileProviderIdentifier)
    {
      fileProviderIdentifier2 = [protobufCopy fileProviderIdentifier];
      [(SFDefaultPunchoutAppIconImage *)v5 setFileProviderIdentifier:fileProviderIdentifier2];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFDefaultPunchoutAppIconImage;
  v3 = [(SFImage *)&v11 hash];
  punchout = [(SFDefaultPunchoutAppIconImage *)self punchout];
  v5 = [punchout hash];
  coreSpotlightIdentifier = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  v7 = v5 ^ [coreSpotlightIdentifier hash];
  fileProviderIdentifier = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
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
    if ([(SFDefaultPunchoutAppIconImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFDefaultPunchoutAppIconImage;
      if ([(SFImage *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        punchout = [(SFDefaultPunchoutAppIconImage *)self punchout];
        punchout2 = [(SFDefaultPunchoutAppIconImage *)v6 punchout];
        if ((punchout != 0) == (punchout2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        punchout3 = [(SFDefaultPunchoutAppIconImage *)self punchout];
        if (punchout3)
        {
          punchout4 = [(SFDefaultPunchoutAppIconImage *)self punchout];
          punchout5 = [(SFDefaultPunchoutAppIconImage *)v6 punchout];
          if (![punchout4 isEqual:punchout5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = punchout5;
        }

        coreSpotlightIdentifier = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFDefaultPunchoutAppIconImage *)v6 coreSpotlightIdentifier];
        v14 = coreSpotlightIdentifier2;
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        coreSpotlightIdentifier3 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
        if (coreSpotlightIdentifier3)
        {
          v25 = coreSpotlightIdentifier;
          coreSpotlightIdentifier4 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier5 = [(SFDefaultPunchoutAppIconImage *)v6 coreSpotlightIdentifier];
          v28 = coreSpotlightIdentifier4;
          if (![coreSpotlightIdentifier4 isEqual:?])
          {
            v11 = 0;
            coreSpotlightIdentifier = v25;
            goto LABEL_26;
          }

          v29 = coreSpotlightIdentifier3;
          v30 = punchout4;
          coreSpotlightIdentifier = v25;
        }

        else
        {
          v29 = 0;
          v30 = punchout4;
        }

        fileProviderIdentifier = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
        fileProviderIdentifier2 = [(SFDefaultPunchoutAppIconImage *)v6 fileProviderIdentifier];
        if ((fileProviderIdentifier != 0) == (fileProviderIdentifier2 == 0))
        {

          v11 = 0;
          coreSpotlightIdentifier3 = v29;
          punchout4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = fileProviderIdentifier;
          v26 = fileProviderIdentifier2;
          fileProviderIdentifier3 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
          coreSpotlightIdentifier3 = v29;
          if (fileProviderIdentifier3)
          {
            v23 = fileProviderIdentifier3;
            fileProviderIdentifier4 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
            fileProviderIdentifier5 = [(SFDefaultPunchoutAppIconImage *)v6 fileProviderIdentifier];
            v11 = [fileProviderIdentifier4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          punchout4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        punchout5 = v31;
        if (!punchout3)
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
  v12.super_class = SFDefaultPunchoutAppIconImage;
  v4 = [(SFImage *)&v12 copyWithZone:zone];
  punchout = [(SFDefaultPunchoutAppIconImage *)self punchout];
  v6 = [punchout copy];
  [v4 setPunchout:v6];

  coreSpotlightIdentifier = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  v8 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v8];

  fileProviderIdentifier = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
  v10 = [fileProviderIdentifier copy];
  [v4 setFileProviderIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithFacade:self];
  jsonData = [(_SFPBDefaultPunchoutAppIconImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBDefaultPunchoutAppIconImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFDefaultPunchoutAppIconImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFDefaultPunchoutAppIconImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end