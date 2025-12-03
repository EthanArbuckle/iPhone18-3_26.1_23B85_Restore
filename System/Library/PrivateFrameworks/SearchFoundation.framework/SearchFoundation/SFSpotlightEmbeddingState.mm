@interface SFSpotlightEmbeddingState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSpotlightEmbeddingState)initWithCoder:(id)coder;
- (SFSpotlightEmbeddingState)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSpotlightEmbeddingState

- (SFSpotlightEmbeddingState)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v11.receiver = self;
  v11.super_class = SFSpotlightEmbeddingState;
  v5 = [(SFSpotlightEmbeddingState *)&v11 init];
  if (v5)
  {
    if ([protobufCopy embeddedPhotosAssetsCount])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "embeddedPhotosAssetsCount")}];
      [(SFSpotlightEmbeddingState *)v5 setEmbeddedPhotosAssetsCount:v6];
    }

    if ([protobufCopy totalPhotosAssetsCount])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "totalPhotosAssetsCount")}];
      [(SFSpotlightEmbeddingState *)v5 setTotalPhotosAssetsCount:v7];
    }

    if ([protobufCopy embeddedPhotosAssetsPercentage])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "embeddedPhotosAssetsPercentage")}];
      [(SFSpotlightEmbeddingState *)v5 setEmbeddedPhotosAssetsPercentage:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  embeddedPhotosAssetsCount = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
  v4 = [embeddedPhotosAssetsCount hash];
  totalPhotosAssetsCount = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
  v6 = [totalPhotosAssetsCount hash] ^ v4;
  embeddedPhotosAssetsPercentage = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
  v8 = [embeddedPhotosAssetsPercentage hash];

  return v6 ^ v8;
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
    if ([(SFSpotlightEmbeddingState *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      embeddedPhotosAssetsCount = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
      embeddedPhotosAssetsCount2 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsCount];
      if ((embeddedPhotosAssetsCount != 0) == (embeddedPhotosAssetsCount2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      embeddedPhotosAssetsCount3 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
      if (embeddedPhotosAssetsCount3)
      {
        embeddedPhotosAssetsCount4 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
        embeddedPhotosAssetsCount5 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsCount];
        if (![embeddedPhotosAssetsCount4 isEqual:embeddedPhotosAssetsCount5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = embeddedPhotosAssetsCount5;
      }

      totalPhotosAssetsCount = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
      totalPhotosAssetsCount2 = [(SFSpotlightEmbeddingState *)v6 totalPhotosAssetsCount];
      v14 = totalPhotosAssetsCount2;
      if ((totalPhotosAssetsCount != 0) == (totalPhotosAssetsCount2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      totalPhotosAssetsCount3 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
      if (totalPhotosAssetsCount3)
      {
        v25 = totalPhotosAssetsCount;
        totalPhotosAssetsCount4 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
        totalPhotosAssetsCount5 = [(SFSpotlightEmbeddingState *)v6 totalPhotosAssetsCount];
        v28 = totalPhotosAssetsCount4;
        if (![totalPhotosAssetsCount4 isEqual:?])
        {
          v11 = 0;
          totalPhotosAssetsCount = v25;
          goto LABEL_25;
        }

        v29 = totalPhotosAssetsCount3;
        v30 = embeddedPhotosAssetsCount4;
        totalPhotosAssetsCount = v25;
      }

      else
      {
        v29 = 0;
        v30 = embeddedPhotosAssetsCount4;
      }

      embeddedPhotosAssetsPercentage = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
      embeddedPhotosAssetsPercentage2 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsPercentage];
      if ((embeddedPhotosAssetsPercentage != 0) == (embeddedPhotosAssetsPercentage2 == 0))
      {

        v11 = 0;
        totalPhotosAssetsCount3 = v29;
        embeddedPhotosAssetsCount4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = embeddedPhotosAssetsPercentage;
        v26 = embeddedPhotosAssetsPercentage2;
        embeddedPhotosAssetsPercentage3 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
        totalPhotosAssetsCount3 = v29;
        if (embeddedPhotosAssetsPercentage3)
        {
          v23 = embeddedPhotosAssetsPercentage3;
          embeddedPhotosAssetsPercentage4 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
          embeddedPhotosAssetsPercentage5 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsPercentage];
          v11 = [embeddedPhotosAssetsPercentage4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        embeddedPhotosAssetsCount4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      embeddedPhotosAssetsCount5 = v31;
      if (!embeddedPhotosAssetsCount3)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  embeddedPhotosAssetsCount = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
  v6 = [embeddedPhotosAssetsCount copy];
  [v4 setEmbeddedPhotosAssetsCount:v6];

  totalPhotosAssetsCount = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
  v8 = [totalPhotosAssetsCount copy];
  [v4 setTotalPhotosAssetsCount:v8];

  embeddedPhotosAssetsPercentage = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
  v10 = [embeddedPhotosAssetsPercentage copy];
  [v4 setEmbeddedPhotosAssetsPercentage:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSpotlightEmbeddingState alloc] initWithFacade:self];
  jsonData = [(_SFPBSpotlightEmbeddingState *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSpotlightEmbeddingState alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSpotlightEmbeddingState *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSpotlightEmbeddingState alloc] initWithFacade:self];
  data = [(_SFPBSpotlightEmbeddingState *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSpotlightEmbeddingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSpotlightEmbeddingState alloc] initWithData:v5];
  v7 = [(SFSpotlightEmbeddingState *)self initWithProtobuf:v6];

  return v7;
}

@end