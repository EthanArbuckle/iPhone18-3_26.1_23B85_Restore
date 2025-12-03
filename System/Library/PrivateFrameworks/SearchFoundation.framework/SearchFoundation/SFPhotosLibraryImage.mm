@interface SFPhotosLibraryImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosLibraryImage)initWithCoder:(id)coder;
- (SFPhotosLibraryImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPhotosLibraryImage

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFPhotosLibraryImage;
  v3 = [(SFImage *)&v12 hash];
  photoIdentifier = [(SFPhotosLibraryImage *)self photoIdentifier];
  v5 = [photoIdentifier hash];
  v6 = v5 ^ [(SFPhotosLibraryImage *)self isSyndicated];
  peopleInPhoto = [(SFPhotosLibraryImage *)self peopleInPhoto];
  v8 = v6 ^ [peopleInPhoto hash];
  applicationBundleIdentifier = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
  v10 = v8 ^ [applicationBundleIdentifier hash];

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
    if ([(SFPhotosLibraryImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SFPhotosLibraryImage;
      if ([(SFImage *)&v32 isEqual:equalCopy])
      {
        v7 = equalCopy;
        photoIdentifier = [(SFPhotosLibraryImage *)self photoIdentifier];
        photoIdentifier2 = [(SFPhotosLibraryImage *)v7 photoIdentifier];
        if ((photoIdentifier != 0) == (photoIdentifier2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        photoIdentifier3 = [(SFPhotosLibraryImage *)self photoIdentifier];
        if (photoIdentifier3)
        {
          photoIdentifier4 = [(SFPhotosLibraryImage *)self photoIdentifier];
          photoIdentifier5 = [(SFPhotosLibraryImage *)v7 photoIdentifier];
          if (![photoIdentifier4 isEqual:photoIdentifier5])
          {
            v11 = 0;
            goto LABEL_18;
          }
        }

        isSyndicated = [(SFPhotosLibraryImage *)self isSyndicated];
        if (isSyndicated == [(SFPhotosLibraryImage *)v7 isSyndicated])
        {
          peopleInPhoto = [(SFPhotosLibraryImage *)self peopleInPhoto];
          peopleInPhoto2 = [(SFPhotosLibraryImage *)v7 peopleInPhoto];
          if ((peopleInPhoto != 0) != (peopleInPhoto2 == 0))
          {
            v31 = peopleInPhoto2;
            v29 = peopleInPhoto;
            peopleInPhoto3 = [(SFPhotosLibraryImage *)self peopleInPhoto];
            if (!peopleInPhoto3 || (-[SFPhotosLibraryImage peopleInPhoto](self, "peopleInPhoto"), v15 = objc_claimAutoreleasedReturnValue(), -[SFPhotosLibraryImage peopleInPhoto](v7, "peopleInPhoto"), v27 = objc_claimAutoreleasedReturnValue(), v28 = v15, [v15 isEqual:?]))
            {
              applicationBundleIdentifier = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
              applicationBundleIdentifier2 = [(SFPhotosLibraryImage *)v7 applicationBundleIdentifier];
              if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
              {

                v11 = 0;
                v16 = v29;
              }

              else
              {
                v25 = applicationBundleIdentifier;
                v26 = applicationBundleIdentifier2;
                applicationBundleIdentifier3 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
                v16 = v29;
                if (applicationBundleIdentifier3)
                {
                  v24 = applicationBundleIdentifier3;
                  applicationBundleIdentifier4 = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
                  applicationBundleIdentifier5 = [(SFPhotosLibraryImage *)v7 applicationBundleIdentifier];
                  v11 = [applicationBundleIdentifier4 isEqual:applicationBundleIdentifier5];
                }

                else
                {

                  v11 = 1;
                }
              }

              v17 = peopleInPhoto3;
              if (!peopleInPhoto3)
              {
LABEL_29:

                if (!photoIdentifier3)
                {
                  goto LABEL_19;
                }

                goto LABEL_18;
              }
            }

            else
            {
              v11 = 0;
              v16 = peopleInPhoto;
              v17 = peopleInPhoto3;
            }

            goto LABEL_29;
          }
        }

        v11 = 0;
        if (!photoIdentifier3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFPhotosLibraryImage;
  v4 = [(SFImage *)&v12 copyWithZone:zone];
  photoIdentifier = [(SFPhotosLibraryImage *)self photoIdentifier];
  v6 = [photoIdentifier copy];
  [v4 setPhotoIdentifier:v6];

  [v4 setIsSyndicated:{-[SFPhotosLibraryImage isSyndicated](self, "isSyndicated")}];
  peopleInPhoto = [(SFPhotosLibraryImage *)self peopleInPhoto];
  v8 = [peopleInPhoto copy];
  [v4 setPeopleInPhoto:v8];

  applicationBundleIdentifier = [(SFPhotosLibraryImage *)self applicationBundleIdentifier];
  v10 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosLibraryImage alloc] initWithFacade:self];
  jsonData = [(_SFPBPhotosLibraryImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosLibraryImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPhotosLibraryImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPhotosLibraryImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFPhotosLibraryImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFPhotosLibraryImage)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = SFPhotosLibraryImage;
  v5 = [(SFPhotosLibraryImage *)&v25 init];
  if (v5)
  {
    photoIdentifier = [protobufCopy photoIdentifier];

    if (photoIdentifier)
    {
      photoIdentifier2 = [protobufCopy photoIdentifier];
      [(SFPhotosLibraryImage *)v5 setPhotoIdentifier:photoIdentifier2];
    }

    if ([protobufCopy isSyndicated])
    {
      -[SFPhotosLibraryImage setIsSyndicated:](v5, "setIsSyndicated:", [protobufCopy isSyndicated]);
    }

    peopleInPhotos = [protobufCopy peopleInPhotos];
    if (peopleInPhotos)
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
    peopleInPhotos2 = [protobufCopy peopleInPhotos];
    v11 = [peopleInPhotos2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(peopleInPhotos2);
          }

          v15 = [[SFPerson alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [peopleInPhotos2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    [(SFPhotosLibraryImage *)v5 setPeopleInPhoto:v9];
    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFPhotosLibraryImage *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end