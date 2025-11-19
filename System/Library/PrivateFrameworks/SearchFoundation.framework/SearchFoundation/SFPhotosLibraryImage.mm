@interface SFPhotosLibraryImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosLibraryImage)initWithCoder:(id)a3;
- (SFPhotosLibraryImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPhotosLibraryImage

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFPhotosLibraryImage;
  v3 = [(SFImage *)&v12 hash];
  v4 = [(SFPhotosLibraryImage *)self photoIdentifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFPhotosLibraryImage *)self isSyndicated];
  v7 = [(SFPhotosLibraryImage *)self peopleInPhoto];
  v8 = v6 ^ [v7 hash];
  v9 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFPhotosLibraryImage *)v6 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFPhotosLibraryImage;
      if ([(SFImage *)&v32 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFPhotosLibraryImage *)self photoIdentifier];
        v9 = [(SFPhotosLibraryImage *)v7 photoIdentifier];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v10 = [(SFPhotosLibraryImage *)self photoIdentifier];
        if (v10)
        {
          v3 = [(SFPhotosLibraryImage *)self photoIdentifier];
          v4 = [(SFPhotosLibraryImage *)v7 photoIdentifier];
          if (![v3 isEqual:v4])
          {
            v11 = 0;
            goto LABEL_18;
          }
        }

        v12 = [(SFPhotosLibraryImage *)self isSyndicated];
        if (v12 == [(SFPhotosLibraryImage *)v7 isSyndicated])
        {
          v13 = [(SFPhotosLibraryImage *)self peopleInPhoto];
          v14 = [(SFPhotosLibraryImage *)v7 peopleInPhoto];
          if ((v13 != 0) != (v14 == 0))
          {
            v31 = v14;
            v29 = v13;
            v30 = [(SFPhotosLibraryImage *)self peopleInPhoto];
            if (!v30 || (-[SFPhotosLibraryImage peopleInPhoto](self, "peopleInPhoto"), v15 = objc_claimAutoreleasedReturnValue(), -[SFPhotosLibraryImage peopleInPhoto](v7, "peopleInPhoto"), v27 = objc_claimAutoreleasedReturnValue(), v28 = v15, [v15 isEqual:?]))
            {
              v19 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
              v20 = [(SFPhotosLibraryImage *)v7 applicationBundleIdentifier];
              if ((v19 != 0) == (v20 == 0))
              {

                v11 = 0;
                v16 = v29;
              }

              else
              {
                v25 = v19;
                v26 = v20;
                v21 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
                v16 = v29;
                if (v21)
                {
                  v24 = v21;
                  v23 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
                  v22 = [(SFPhotosLibraryImage *)v7 applicationBundleIdentifier];
                  v11 = [v23 isEqual:v22];
                }

                else
                {

                  v11 = 1;
                }
              }

              v17 = v30;
              if (!v30)
              {
LABEL_29:

                if (!v10)
                {
                  goto LABEL_19;
                }

                goto LABEL_18;
              }
            }

            else
            {
              v11 = 0;
              v16 = v13;
              v17 = v30;
            }

            goto LABEL_29;
          }
        }

        v11 = 0;
        if (!v10)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFPhotosLibraryImage;
  v4 = [(SFImage *)&v12 copyWithZone:a3];
  v5 = [(SFPhotosLibraryImage *)self photoIdentifier];
  v6 = [v5 copy];
  [v4 setPhotoIdentifier:v6];

  [v4 setIsSyndicated:{-[SFPhotosLibraryImage isSyndicated](self, "isSyndicated")}];
  v7 = [(SFPhotosLibraryImage *)self peopleInPhoto];
  v8 = [v7 copy];
  [v4 setPeopleInPhoto:v8];

  v9 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
  v10 = [v9 copy];
  [v4 setApplicationBundleIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosLibraryImage alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosLibraryImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosLibraryImage alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosLibraryImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  v5 = [(_SFPBImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPhotosLibraryImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFPhotosLibraryImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFPhotosLibraryImage)initWithProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SFPhotosLibraryImage;
  v5 = [(SFPhotosLibraryImage *)&v25 init];
  if (v5)
  {
    v6 = [v4 photoIdentifier];

    if (v6)
    {
      v7 = [v4 photoIdentifier];
      [(SFPhotosLibraryImage *)v5 setPhotoIdentifier:v7];
    }

    if ([v4 isSyndicated])
    {
      -[SFPhotosLibraryImage setIsSyndicated:](v5, "setIsSyndicated:", [v4 isSyndicated]);
    }

    v8 = [v4 peopleInPhotos];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v4 peopleInPhotos];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[SFPerson alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(SFPhotosLibraryImage *)v5 setPeopleInPhoto:v9];
    v16 = [v4 applicationBundleIdentifier];

    if (v16)
    {
      v17 = [v4 applicationBundleIdentifier];
      [(SFPhotosLibraryImage *)v5 setApplicationBundleIdentifier:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end