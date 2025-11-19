@interface _SFPBPhotosLibraryImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPhotosLibraryImage)initWithDictionary:(id)a3;
- (_SFPBPhotosLibraryImage)initWithFacade:(id)a3;
- (_SFPBPhotosLibraryImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPeopleInPhoto:(id)a3;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setPeopleInPhoto:(id)a3;
- (void)setPhotoIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPhotosLibraryImage

- (_SFPBPhotosLibraryImage)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPhotosLibraryImage *)self init];
  if (v5)
  {
    v6 = [v4 photoIdentifier];

    if (v6)
    {
      v7 = [v4 photoIdentifier];
      [(_SFPBPhotosLibraryImage *)v5 setPhotoIdentifier:v7];
    }

    if ([v4 hasIsSyndicated])
    {
      -[_SFPBPhotosLibraryImage setIsSyndicated:](v5, "setIsSyndicated:", [v4 isSyndicated]);
    }

    v8 = [v4 peopleInPhoto];
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
    v10 = [v4 peopleInPhoto];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

          v15 = [[_SFPBPerson alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [(_SFPBPhotosLibraryImage *)v5 setPeopleInPhotos:v9];
    v16 = [v4 applicationBundleIdentifier];

    if (v16)
    {
      v17 = [v4 applicationBundleIdentifier];
      [(_SFPBPhotosLibraryImage *)v5 setApplicationBundleIdentifier:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPhotosLibraryImage)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _SFPBPhotosLibraryImage;
  v5 = [(_SFPBPhotosLibraryImage *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"photoIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPhotosLibraryImage *)v5 setPhotoIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isSyndicated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosLibraryImage setIsSyndicated:](v5, "setIsSyndicated:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"peopleInPhoto"];
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

    v17 = [v4 objectForKeyedSubscript:{@"applicationBundleIdentifier", v22, v23, v24}];
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

- (_SFPBPhotosLibraryImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPhotosLibraryImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPhotosLibraryImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    v4 = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_isSyndicated)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosLibraryImage isSyndicated](self, "isSyndicated")}];
    [v3 setObject:v6 forKeyedSubscript:@"isSyndicated"];
  }

  if ([(NSArray *)self->_peopleInPhotos count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"peopleInPhoto"];
  }

  if (self->_photoIdentifier)
  {
    v15 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"photoIdentifier"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
  v6 = [v4 photoIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v7 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
    v10 = [v4 photoIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  isSyndicated = self->_isSyndicated;
  if (isSyndicated != [v4 isSyndicated])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
  v6 = [v4 peopleInPhotos];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
    v16 = [v4 peopleInPhotos];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  if (!v18)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  v21 = [v4 applicationBundleIdentifier];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPhotosLibraryImage *)self photoIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBPhotosLibraryImage *)self isSyndicated])
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(_SFPBPhotosLibraryImage *)self peopleInPhotos];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(_SFPBPhotosLibraryImage *)self applicationBundleIdentifier];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPeopleInPhoto:(id)a3
{
  v4 = a3;
  peopleInPhotos = self->_peopleInPhotos;
  v8 = v4;
  if (!peopleInPhotos)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_peopleInPhotos;
    self->_peopleInPhotos = v6;

    v4 = v8;
    peopleInPhotos = self->_peopleInPhotos;
  }

  [(NSArray *)peopleInPhotos addObject:v4];
}

- (void)setPeopleInPhoto:(id)a3
{
  v4 = [a3 copy];
  peopleInPhotos = self->_peopleInPhotos;
  self->_peopleInPhotos = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPhotoIdentifier:(id)a3
{
  v4 = [a3 copy];
  photoIdentifier = self->_photoIdentifier;
  self->_photoIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end