@interface SFMediaArtworkImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaArtworkImage)initWithCoder:(id)a3;
- (SFMediaArtworkImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMediaArtworkImage

- (SFMediaArtworkImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFMediaArtworkImage;
  v5 = [(SFMediaArtworkImage *)&v14 init];
  if (v5)
  {
    v6 = [v4 persistentID];

    if (v6)
    {
      v7 = [v4 persistentID];
      [(SFMediaArtworkImage *)v5 setPersistentID:v7];
    }

    v8 = [v4 spotlightIdentifier];

    if (v8)
    {
      v9 = [v4 spotlightIdentifier];
      [(SFMediaArtworkImage *)v5 setSpotlightIdentifier:v9];
    }

    if ([v4 mediaEntityType])
    {
      -[SFMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", [v4 mediaEntityType]);
    }

    v10 = [v4 universalLibraryID];

    if (v10)
    {
      v11 = [v4 universalLibraryID];
      [(SFMediaArtworkImage *)v5 setUniversalLibraryID:v11];
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
  v4 = [(SFMediaArtworkImage *)self persistentID];
  v5 = [v4 hash];
  v6 = [(SFMediaArtworkImage *)self spotlightIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(SFMediaArtworkImage *)self mediaEntityType];
  v9 = [(SFMediaArtworkImage *)self universalLibraryID];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v3;
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
    if ([(SFMediaArtworkImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFMediaArtworkImage;
      if ([(SFImage *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFMediaArtworkImage *)self persistentID];
        v8 = [(SFMediaArtworkImage *)v6 persistentID];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SFMediaArtworkImage *)self persistentID];
        if (v9)
        {
          v10 = [(SFMediaArtworkImage *)self persistentID];
          v3 = [(SFMediaArtworkImage *)v6 persistentID];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SFMediaArtworkImage *)self spotlightIdentifier];
        v13 = [(SFMediaArtworkImage *)v6 spotlightIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SFMediaArtworkImage *)self spotlightIdentifier];
        if (v15)
        {
          v26 = v3;
          v16 = [(SFMediaArtworkImage *)self spotlightIdentifier];
          v28 = [(SFMediaArtworkImage *)v6 spotlightIdentifier];
          v29 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v3 = v26;
            goto LABEL_26;
          }

          v30 = v15;
          v3 = v26;
        }

        else
        {
          v30 = 0;
        }

        v17 = [(SFMediaArtworkImage *)self mediaEntityType];
        if (v17 == [(SFMediaArtworkImage *)v6 mediaEntityType])
        {
          v18 = [(SFMediaArtworkImage *)self universalLibraryID];
          v19 = [(SFMediaArtworkImage *)v6 universalLibraryID];
          if ((v18 != 0) != (v19 == 0))
          {
            v25 = v19;
            v27 = v18;
            v20 = [(SFMediaArtworkImage *)self universalLibraryID];
            if (v20)
            {
              v24 = v20;
              v23 = [(SFMediaArtworkImage *)self universalLibraryID];
              v21 = [(SFMediaArtworkImage *)v6 universalLibraryID];
              v11 = [v23 isEqual:v21];
            }

            else
            {

              v11 = 1;
            }

LABEL_25:
            v15 = v30;
            if (!v30)
            {
LABEL_27:

LABEL_28:
              v10 = v31;
              if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFMediaArtworkImage;
  v4 = [(SFImage *)&v12 copyWithZone:a3];
  v5 = [(SFMediaArtworkImage *)self persistentID];
  v6 = [v5 copy];
  [v4 setPersistentID:v6];

  v7 = [(SFMediaArtworkImage *)self spotlightIdentifier];
  v8 = [v7 copy];
  [v4 setSpotlightIdentifier:v8];

  [v4 setMediaEntityType:{-[SFMediaArtworkImage mediaEntityType](self, "mediaEntityType")}];
  v9 = [(SFMediaArtworkImage *)self universalLibraryID];
  v10 = [v9 copy];
  [v4 setUniversalLibraryID:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaArtworkImage alloc] initWithFacade:self];
  v3 = [(_SFPBMediaArtworkImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaArtworkImage alloc] initWithFacade:self];
  v3 = [(_SFPBMediaArtworkImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMediaArtworkImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFMediaArtworkImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end