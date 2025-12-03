@interface _SFPBPhotosLibraryImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPhotosLibraryImage)initWithDictionary:(id)dictionary;
- (_SFPBPhotosLibraryImage)initWithFacade:(id)facade;
- (_SFPBPhotosLibraryImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPeopleInPhoto:(id)photo;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setPeopleInPhoto:(id)photo;
- (void)setPhotoIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPhotosLibraryImage

- (_SFPBPhotosLibraryImage)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBPhotosLibraryImage *)self init];
  if (v5)
  {
    photoIdentifier = [facadeCopy photoIdentifier];

    if (photoIdentifier)
    {
      photoIdentifier2 = [facadeCopy photoIdentifier];
      [(_SFPBPhotosLibraryImage *)v5 setPhotoIdentifier:photoIdentifier2];
    }

    if ([facadeCopy hasIsSyndicated])
    {
      -[_SFPBPhotosLibraryImage setIsSyndicated:](v5, "setIsSyndicated:", [facadeCopy isSyndicated]);
    }

    peopleInPhoto = [facadeCopy peopleInPhoto];
    if (peopleInPhoto)
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
    peopleInPhoto2 = [facadeCopy peopleInPhoto];
    v11 = [peopleInPhoto2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(peopleInPhoto2);
          }

          v15 = [[_SFPBPerson alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [peopleInPhoto2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [(_SFPBPhotosLibraryImage *)v5 setPeopleInPhotos:v9];
    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBPhotosLibraryImage *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPhotosLibraryImage)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = _SFPBPhotosLibraryImage;
  v5 = [(_SFPBPhotosLibraryImage *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"photoIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPhotosLibraryImage *)v5 setPhotoIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSyndicated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosLibraryImage setIsSyndicated:](v5, "setIsSyndicated:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"peopleInPhoto"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v8;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[_SFPBPerson alloc] initWithDictionary:v15];
              [(_SFPBPhotosLibraryImage *)v5 addPeopleInPhoto:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }

      v8 = v22;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:{@"applicationBundleIdentifier", v22, v23, v24}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBPhotosLibraryImage *)v5 setApplicationBundleIdentifier:v18];
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPhotosLibraryImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPhotosLibraryImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPhotosLibraryImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_isSyndicated)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosLibraryImage isSyndicated](self, "isSyndicated")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isSyndicated"];
  }

  if ([(NSArray *)self->_peopleInPhotos count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_peopleInPhotos;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"peopleInPhoto"];
  }

  if (self->_photoIdentifier)
  {
    photoIdentifier = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
    v16 = [photoIdentifier copy];
    [dictionary setObject:v16 forKeyedSubscript:@"photoIdentifier"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_photoIdentifier hash];
  if (self->_isSyndicated)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3 ^ [(NSArray *)self->_peopleInPhotos hash];
  return v5 ^ [(NSString *)self->_applicationBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  photoIdentifier = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
  photoIdentifier2 = [equalCopy photoIdentifier];
  if ((photoIdentifier != 0) == (photoIdentifier2 == 0))
  {
    goto LABEL_17;
  }

  photoIdentifier3 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
  if (photoIdentifier3)
  {
    v8 = photoIdentifier3;
    photoIdentifier4 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
    photoIdentifier5 = [equalCopy photoIdentifier];
    v11 = [photoIdentifier4 isEqual:photoIdentifier5];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  isSyndicated = self->_isSyndicated;
  if (isSyndicated != [equalCopy isSyndicated])
  {
    goto LABEL_18;
  }

  photoIdentifier = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
  photoIdentifier2 = [equalCopy peopleInPhotos];
  if ((photoIdentifier != 0) == (photoIdentifier2 == 0))
  {
    goto LABEL_17;
  }

  peopleInPhotos = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
  if (peopleInPhotos)
  {
    v14 = peopleInPhotos;
    peopleInPhotos2 = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
    peopleInPhotos3 = [equalCopy peopleInPhotos];
    v17 = [peopleInPhotos2 isEqual:peopleInPhotos3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  photoIdentifier = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  photoIdentifier2 = [equalCopy applicationBundleIdentifier];
  if ((photoIdentifier != 0) == (photoIdentifier2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  applicationBundleIdentifier = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  if (!applicationBundleIdentifier)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = applicationBundleIdentifier;
  applicationBundleIdentifier2 = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
  v22 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  photoIdentifier = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
  if (photoIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBPhotosLibraryImage *)self isSyndicated])
  {
    PBDataWriterWriteBOOLField();
  }

  peopleInPhotos = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [peopleInPhotos countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(peopleInPhotos);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [peopleInPhotos countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  applicationBundleIdentifier = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPeopleInPhoto:(id)photo
{
  photoCopy = photo;
  peopleInPhotos = self->_peopleInPhotos;
  v8 = photoCopy;
  if (!peopleInPhotos)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_peopleInPhotos;
    self->_peopleInPhotos = array;

    photoCopy = v8;
    peopleInPhotos = self->_peopleInPhotos;
  }

  [(NSArray *)peopleInPhotos addObject:photoCopy];
}

- (void)setPeopleInPhoto:(id)photo
{
  v4 = [photo copy];
  peopleInPhotos = self->_peopleInPhotos;
  self->_peopleInPhotos = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPhotoIdentifier:(id)identifier
{
  v4 = [identifier copy];
  photoIdentifier = self->_photoIdentifier;
  self->_photoIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end