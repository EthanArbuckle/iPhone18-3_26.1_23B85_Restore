@interface SFDefaultPunchoutAppIconImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDefaultPunchoutAppIconImage)initWithCoder:(id)a3;
- (SFDefaultPunchoutAppIconImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDefaultPunchoutAppIconImage

- (SFDefaultPunchoutAppIconImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFDefaultPunchoutAppIconImage;
  v5 = [(SFDefaultPunchoutAppIconImage *)&v16 init];
  if (v5)
  {
    v6 = [v4 punchout];

    if (v6)
    {
      v7 = [SFPunchout alloc];
      v8 = [v4 punchout];
      v9 = [(SFPunchout *)v7 initWithProtobuf:v8];
      [(SFDefaultPunchoutAppIconImage *)v5 setPunchout:v9];
    }

    v10 = [v4 coreSpotlightIdentifier];

    if (v10)
    {
      v11 = [v4 coreSpotlightIdentifier];
      [(SFDefaultPunchoutAppIconImage *)v5 setCoreSpotlightIdentifier:v11];
    }

    v12 = [v4 fileProviderIdentifier];

    if (v12)
    {
      v13 = [v4 fileProviderIdentifier];
      [(SFDefaultPunchoutAppIconImage *)v5 setFileProviderIdentifier:v13];
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
  v4 = [(SFDefaultPunchoutAppIconImage *)self punchout];
  v5 = [v4 hash];
  v6 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
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
    if ([(SFDefaultPunchoutAppIconImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFDefaultPunchoutAppIconImage;
      if ([(SFImage *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFDefaultPunchoutAppIconImage *)self punchout];
        v8 = [(SFDefaultPunchoutAppIconImage *)v6 punchout];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SFDefaultPunchoutAppIconImage *)self punchout];
        if (v9)
        {
          v3 = [(SFDefaultPunchoutAppIconImage *)self punchout];
          v10 = [(SFDefaultPunchoutAppIconImage *)v6 punchout];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
        v13 = [(SFDefaultPunchoutAppIconImage *)v6 coreSpotlightIdentifier];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
        if (v15)
        {
          v25 = v12;
          v16 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
          v27 = [(SFDefaultPunchoutAppIconImage *)v6 coreSpotlightIdentifier];
          v28 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v25;
            goto LABEL_26;
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

        v17 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
        v18 = [(SFDefaultPunchoutAppIconImage *)v6 fileProviderIdentifier];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v29;
          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = v17;
          v26 = v18;
          v19 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
          v15 = v29;
          if (v19)
          {
            v23 = v19;
            v22 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
            v20 = [(SFDefaultPunchoutAppIconImage *)v6 fileProviderIdentifier];
            v11 = [v22 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

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
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFDefaultPunchoutAppIconImage;
  v4 = [(SFImage *)&v12 copyWithZone:a3];
  v5 = [(SFDefaultPunchoutAppIconImage *)self punchout];
  v6 = [v5 copy];
  [v4 setPunchout:v6];

  v7 = [(SFDefaultPunchoutAppIconImage *)self coreSpotlightIdentifier];
  v8 = [v7 copy];
  [v4 setCoreSpotlightIdentifier:v8];

  v9 = [(SFDefaultPunchoutAppIconImage *)self fileProviderIdentifier];
  v10 = [v9 copy];
  [v4 setFileProviderIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBDefaultPunchoutAppIconImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDefaultPunchoutAppIconImage alloc] initWithFacade:self];
  v3 = [(_SFPBDefaultPunchoutAppIconImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFDefaultPunchoutAppIconImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFDefaultPunchoutAppIconImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end