@interface SFSpotlightEmbeddingState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSpotlightEmbeddingState)initWithCoder:(id)a3;
- (SFSpotlightEmbeddingState)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSpotlightEmbeddingState

- (SFSpotlightEmbeddingState)initWithProtobuf:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFSpotlightEmbeddingState;
  v5 = [(SFSpotlightEmbeddingState *)&v11 init];
  if (v5)
  {
    if ([v4 embeddedPhotosAssetsCount])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "embeddedPhotosAssetsCount")}];
      [(SFSpotlightEmbeddingState *)v5 setEmbeddedPhotosAssetsCount:v6];
    }

    if ([v4 totalPhotosAssetsCount])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "totalPhotosAssetsCount")}];
      [(SFSpotlightEmbeddingState *)v5 setTotalPhotosAssetsCount:v7];
    }

    if ([v4 embeddedPhotosAssetsPercentage])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "embeddedPhotosAssetsPercentage")}];
      [(SFSpotlightEmbeddingState *)v5 setEmbeddedPhotosAssetsPercentage:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
  v4 = [v3 hash];
  v5 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    if ([(SFSpotlightEmbeddingState *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
      v8 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsCount];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
      if (v9)
      {
        v3 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
        v10 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsCount];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
      v13 = [(SFSpotlightEmbeddingState *)v6 totalPhotosAssetsCount];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
        v27 = [(SFSpotlightEmbeddingState *)v6 totalPhotosAssetsCount];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
        }

        v29 = v15;
        v30 = v3;
        v12 = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      v17 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
      v18 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsPercentage];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
          v20 = [(SFSpotlightEmbeddingState *)v6 embeddedPhotosAssetsPercentage];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsCount];
  v6 = [v5 copy];
  [v4 setEmbeddedPhotosAssetsCount:v6];

  v7 = [(SFSpotlightEmbeddingState *)self totalPhotosAssetsCount];
  v8 = [v7 copy];
  [v4 setTotalPhotosAssetsCount:v8];

  v9 = [(SFSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
  v10 = [v9 copy];
  [v4 setEmbeddedPhotosAssetsPercentage:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSpotlightEmbeddingState alloc] initWithFacade:self];
  v3 = [(_SFPBSpotlightEmbeddingState *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSpotlightEmbeddingState alloc] initWithFacade:self];
  v3 = [(_SFPBSpotlightEmbeddingState *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBSpotlightEmbeddingState alloc] initWithFacade:self];
  v5 = [(_SFPBSpotlightEmbeddingState *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSpotlightEmbeddingState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSpotlightEmbeddingState alloc] initWithData:v5];
  v7 = [(SFSpotlightEmbeddingState *)self initWithProtobuf:v6];

  return v7;
}

@end