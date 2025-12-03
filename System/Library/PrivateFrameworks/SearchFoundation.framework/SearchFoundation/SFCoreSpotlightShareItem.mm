@interface SFCoreSpotlightShareItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightShareItem)initWithCoder:(id)coder;
- (SFCoreSpotlightShareItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCoreSpotlightShareItem

- (SFCoreSpotlightShareItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFCoreSpotlightShareItem;
  v5 = [(SFCoreSpotlightShareItem *)&v14 init];
  if (v5)
  {
    shareProviderTypeIdentifier = [protobufCopy shareProviderTypeIdentifier];

    if (shareProviderTypeIdentifier)
    {
      shareProviderTypeIdentifier2 = [protobufCopy shareProviderTypeIdentifier];
      [(SFCoreSpotlightShareItem *)v5 setShareProviderTypeIdentifier:shareProviderTypeIdentifier2];
    }

    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFCoreSpotlightShareItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFCoreSpotlightShareItem *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFCoreSpotlightShareItem;
  v3 = [(SFShareItem *)&v11 hash];
  shareProviderTypeIdentifier = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  v5 = [shareProviderTypeIdentifier hash];
  applicationBundleIdentifier = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];
  coreSpotlightIdentifier = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  v9 = v7 ^ [coreSpotlightIdentifier hash];

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
    if ([(SFCoreSpotlightShareItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFCoreSpotlightShareItem;
      if ([(SFShareItem *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        shareProviderTypeIdentifier = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
        shareProviderTypeIdentifier2 = [(SFCoreSpotlightShareItem *)v6 shareProviderTypeIdentifier];
        if ((shareProviderTypeIdentifier != 0) == (shareProviderTypeIdentifier2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        shareProviderTypeIdentifier3 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
        if (shareProviderTypeIdentifier3)
        {
          shareProviderTypeIdentifier4 = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
          shareProviderTypeIdentifier5 = [(SFCoreSpotlightShareItem *)v6 shareProviderTypeIdentifier];
          if (![shareProviderTypeIdentifier4 isEqual:shareProviderTypeIdentifier5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = shareProviderTypeIdentifier5;
        }

        applicationBundleIdentifier = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFCoreSpotlightShareItem *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        applicationBundleIdentifier3 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
        if (applicationBundleIdentifier3)
        {
          v25 = applicationBundleIdentifier;
          applicationBundleIdentifier4 = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
          applicationBundleIdentifier5 = [(SFCoreSpotlightShareItem *)v6 applicationBundleIdentifier];
          v28 = applicationBundleIdentifier4;
          if (![applicationBundleIdentifier4 isEqual:?])
          {
            v11 = 0;
            applicationBundleIdentifier = v25;
            goto LABEL_26;
          }

          v29 = applicationBundleIdentifier3;
          v30 = shareProviderTypeIdentifier4;
          applicationBundleIdentifier = v25;
        }

        else
        {
          v29 = 0;
          v30 = shareProviderTypeIdentifier4;
        }

        coreSpotlightIdentifier = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFCoreSpotlightShareItem *)v6 coreSpotlightIdentifier];
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {

          v11 = 0;
          applicationBundleIdentifier3 = v29;
          shareProviderTypeIdentifier4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = coreSpotlightIdentifier;
          v26 = coreSpotlightIdentifier2;
          coreSpotlightIdentifier3 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
          applicationBundleIdentifier3 = v29;
          if (coreSpotlightIdentifier3)
          {
            v23 = coreSpotlightIdentifier3;
            coreSpotlightIdentifier4 = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
            coreSpotlightIdentifier5 = [(SFCoreSpotlightShareItem *)v6 coreSpotlightIdentifier];
            v11 = [coreSpotlightIdentifier4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          shareProviderTypeIdentifier4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        shareProviderTypeIdentifier5 = v31;
        if (!shareProviderTypeIdentifier3)
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
  v12.super_class = SFCoreSpotlightShareItem;
  v4 = [(SFShareItem *)&v12 copyWithZone:zone];
  shareProviderTypeIdentifier = [(SFCoreSpotlightShareItem *)self shareProviderTypeIdentifier];
  v6 = [shareProviderTypeIdentifier copy];
  [v4 setShareProviderTypeIdentifier:v6];

  applicationBundleIdentifier = [(SFCoreSpotlightShareItem *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  coreSpotlightIdentifier = [(SFCoreSpotlightShareItem *)self coreSpotlightIdentifier];
  v10 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:self];
  jsonData = [(_SFPBCoreSpotlightShareItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCoreSpotlightShareItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCoreSpotlightShareItem alloc] initWithFacade:self];
  data = [(_SFPBCoreSpotlightShareItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCoreSpotlightShareItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightShareItem alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightShareItem *)self initWithProtobuf:v6];

  return v7;
}

@end