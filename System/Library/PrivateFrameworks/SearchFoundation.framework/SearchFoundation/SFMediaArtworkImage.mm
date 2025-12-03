@interface SFMediaArtworkImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaArtworkImage)initWithCoder:(id)coder;
- (SFMediaArtworkImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaArtworkImage

- (SFMediaArtworkImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFMediaArtworkImage;
  v5 = [(SFMediaArtworkImage *)&v14 init];
  if (v5)
  {
    persistentID = [protobufCopy persistentID];

    if (persistentID)
    {
      persistentID2 = [protobufCopy persistentID];
      [(SFMediaArtworkImage *)v5 setPersistentID:persistentID2];
    }

    spotlightIdentifier = [protobufCopy spotlightIdentifier];

    if (spotlightIdentifier)
    {
      spotlightIdentifier2 = [protobufCopy spotlightIdentifier];
      [(SFMediaArtworkImage *)v5 setSpotlightIdentifier:spotlightIdentifier2];
    }

    if ([protobufCopy mediaEntityType])
    {
      -[SFMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", [protobufCopy mediaEntityType]);
    }

    universalLibraryID = [protobufCopy universalLibraryID];

    if (universalLibraryID)
    {
      universalLibraryID2 = [protobufCopy universalLibraryID];
      [(SFMediaArtworkImage *)v5 setUniversalLibraryID:universalLibraryID2];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFMediaArtworkImage;
  v3 = [(SFImage *)&v12 hash];
  persistentID = [(SFMediaArtworkImage *)self persistentID];
  v5 = [persistentID hash];
  spotlightIdentifier = [(SFMediaArtworkImage *)self spotlightIdentifier];
  v7 = v5 ^ [spotlightIdentifier hash];
  v8 = v7 ^ [(SFMediaArtworkImage *)self mediaEntityType];
  universalLibraryID = [(SFMediaArtworkImage *)self universalLibraryID];
  v10 = v8 ^ [universalLibraryID hash];

  return v10 ^ v3;
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
    if ([(SFMediaArtworkImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFMediaArtworkImage;
      if ([(SFImage *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        persistentID = [(SFMediaArtworkImage *)self persistentID];
        persistentID2 = [(SFMediaArtworkImage *)v6 persistentID];
        if ((persistentID != 0) == (persistentID2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        persistentID3 = [(SFMediaArtworkImage *)self persistentID];
        if (persistentID3)
        {
          persistentID4 = [(SFMediaArtworkImage *)self persistentID];
          persistentID5 = [(SFMediaArtworkImage *)v6 persistentID];
          if (![persistentID4 isEqual:persistentID5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = persistentID4;
        }

        spotlightIdentifier = [(SFMediaArtworkImage *)self spotlightIdentifier];
        spotlightIdentifier2 = [(SFMediaArtworkImage *)v6 spotlightIdentifier];
        v14 = spotlightIdentifier2;
        if ((spotlightIdentifier != 0) == (spotlightIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        spotlightIdentifier3 = [(SFMediaArtworkImage *)self spotlightIdentifier];
        if (spotlightIdentifier3)
        {
          v26 = persistentID5;
          spotlightIdentifier4 = [(SFMediaArtworkImage *)self spotlightIdentifier];
          spotlightIdentifier5 = [(SFMediaArtworkImage *)v6 spotlightIdentifier];
          v29 = spotlightIdentifier4;
          if (![spotlightIdentifier4 isEqual:?])
          {
            v11 = 0;
            persistentID5 = v26;
            goto LABEL_26;
          }

          v30 = spotlightIdentifier3;
          persistentID5 = v26;
        }

        else
        {
          v30 = 0;
        }

        mediaEntityType = [(SFMediaArtworkImage *)self mediaEntityType];
        if (mediaEntityType == [(SFMediaArtworkImage *)v6 mediaEntityType])
        {
          universalLibraryID = [(SFMediaArtworkImage *)self universalLibraryID];
          universalLibraryID2 = [(SFMediaArtworkImage *)v6 universalLibraryID];
          if ((universalLibraryID != 0) != (universalLibraryID2 == 0))
          {
            v25 = universalLibraryID2;
            v27 = universalLibraryID;
            universalLibraryID3 = [(SFMediaArtworkImage *)self universalLibraryID];
            if (universalLibraryID3)
            {
              v24 = universalLibraryID3;
              universalLibraryID4 = [(SFMediaArtworkImage *)self universalLibraryID];
              universalLibraryID5 = [(SFMediaArtworkImage *)v6 universalLibraryID];
              v11 = [universalLibraryID4 isEqual:universalLibraryID5];
            }

            else
            {

              v11 = 1;
            }

LABEL_25:
            spotlightIdentifier3 = v30;
            if (!v30)
            {
LABEL_27:

LABEL_28:
              persistentID4 = v31;
              if (!persistentID3)
              {
LABEL_30:

                goto LABEL_31;
              }

LABEL_29:

              goto LABEL_30;
            }

LABEL_26:

            goto LABEL_27;
          }
        }

        v11 = 0;
        goto LABEL_25;
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
  v12.super_class = SFMediaArtworkImage;
  v4 = [(SFImage *)&v12 copyWithZone:zone];
  persistentID = [(SFMediaArtworkImage *)self persistentID];
  v6 = [persistentID copy];
  [v4 setPersistentID:v6];

  spotlightIdentifier = [(SFMediaArtworkImage *)self spotlightIdentifier];
  v8 = [spotlightIdentifier copy];
  [v4 setSpotlightIdentifier:v8];

  [v4 setMediaEntityType:{-[SFMediaArtworkImage mediaEntityType](self, "mediaEntityType")}];
  universalLibraryID = [(SFMediaArtworkImage *)self universalLibraryID];
  v10 = [universalLibraryID copy];
  [v4 setUniversalLibraryID:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaArtworkImage alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaArtworkImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaArtworkImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaArtworkImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMediaArtworkImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFMediaArtworkImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end