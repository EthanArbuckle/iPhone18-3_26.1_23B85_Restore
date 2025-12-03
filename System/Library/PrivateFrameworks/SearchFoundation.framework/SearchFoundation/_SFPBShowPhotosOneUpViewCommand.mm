@interface _SFPBShowPhotosOneUpViewCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShowPhotosOneUpViewCommand)initWithDictionary:(id)dictionary;
- (_SFPBShowPhotosOneUpViewCommand)initWithFacade:(id)facade;
- (_SFPBShowPhotosOneUpViewCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchedPeople:(id)people;
- (void)addMatchedScenes:(id)scenes;
- (void)setMatchedPeople:(id)people;
- (void)setMatchedScenes:(id)scenes;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShowPhotosOneUpViewCommand

- (_SFPBShowPhotosOneUpViewCommand)initWithFacade:(id)facade
{
  v47 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self init];
  if (v5)
  {
    photosLibraryImage = [facadeCopy photosLibraryImage];

    if (photosLibraryImage)
    {
      v7 = [_SFPBPhotosLibraryImage alloc];
      photosLibraryImage2 = [facadeCopy photosLibraryImage];
      v9 = [(_SFPBPhotosLibraryImage *)v7 initWithFacade:photosLibraryImage2];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v9];
    }

    matchedPerson = [facadeCopy matchedPerson];

    if (matchedPerson)
    {
      v11 = [_SFPBPerson alloc];
      matchedPerson2 = [facadeCopy matchedPerson];
      v13 = [(_SFPBPerson *)v11 initWithFacade:matchedPerson2];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v13];
    }

    matchedScenes = [facadeCopy matchedScenes];
    if (matchedScenes)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    matchedScenes2 = [facadeCopy matchedScenes];
    v17 = [matchedScenes2 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(matchedScenes2);
          }

          v21 = [[_SFPBScene alloc] initWithFacade:*(*(&v41 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [matchedScenes2 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v18);
    }

    [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedScenes:v15];
    matchedPeople = [facadeCopy matchedPeople];
    if (matchedPeople)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    matchedPeople2 = [facadeCopy matchedPeople];
    v25 = [matchedPeople2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(matchedPeople2);
          }

          v29 = [[_SFPBPerson alloc] initWithFacade:*(*(&v37 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [matchedPeople2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v26);
    }

    [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedPeoples:v23];
    photoFilePunchout = [facadeCopy photoFilePunchout];

    if (photoFilePunchout)
    {
      v31 = [_SFPBPunchout alloc];
      photoFilePunchout2 = [facadeCopy photoFilePunchout];
      v33 = [(_SFPBPunchout *)v31 initWithFacade:photoFilePunchout2];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotoFilePunchout:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBShowPhotosOneUpViewCommand)initWithDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = _SFPBShowPhotosOneUpViewCommand;
  v5 = [(_SFPBShowPhotosOneUpViewCommand *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"photosLibraryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPhotosLibraryImage alloc] initWithDictionary:v6];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"matchedPerson"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPerson alloc] initWithDictionary:v8];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"matchedScenes"];
    objc_opt_class();
    v33 = v6;
    if (objc_opt_isKindOfClass())
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v39;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[_SFPBScene alloc] initWithDictionary:v17];
              [(_SFPBShowPhotosOneUpViewCommand *)v5 addMatchedScenes:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v14);
      }

      v6 = v33;
      v10 = v11;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"matchedPeople"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v10;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v34 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [[_SFPBPerson alloc] initWithDictionary:v25];
              [(_SFPBShowPhotosOneUpViewCommand *)v5 addMatchedPeople:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v22);
      }

      v6 = v33;
      v10 = v32;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"photoFilePunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBPunchout alloc] initWithDictionary:v27];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotoFilePunchout:v28];
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBShowPhotosOneUpViewCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShowPhotosOneUpViewCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShowPhotosOneUpViewCommand *)self dictionaryRepresentation];
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
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedPeoples count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = self->_matchedPeoples;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchedPeople"];
  }

  if (self->_matchedPerson)
  {
    matchedPerson = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
    dictionaryRepresentation2 = [matchedPerson dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"matchedPerson"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"matchedPerson"];
    }
  }

  if ([(NSArray *)self->_matchedScenes count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = self->_matchedScenes;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"matchedScenes"];
  }

  if (self->_photoFilePunchout)
  {
    photoFilePunchout = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
    dictionaryRepresentation4 = [photoFilePunchout dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"photoFilePunchout"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"photoFilePunchout"];
    }
  }

  if (self->_photosLibraryImage)
  {
    photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
    dictionaryRepresentation5 = [photosLibraryImage dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBPhotosLibraryImage *)self->_photosLibraryImage hash];
  v4 = [(_SFPBPerson *)self->_matchedPerson hash]^ v3;
  v5 = [(NSArray *)self->_matchedScenes hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_matchedPeoples hash];
  return v6 ^ [(_SFPBPunchout *)self->_photoFilePunchout hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
  photosLibraryImage2 = [equalCopy photosLibraryImage];
  if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
  {
    goto LABEL_26;
  }

  photosLibraryImage3 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
  if (photosLibraryImage3)
  {
    v8 = photosLibraryImage3;
    photosLibraryImage4 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
    photosLibraryImage5 = [equalCopy photosLibraryImage];
    v11 = [photosLibraryImage4 isEqual:photosLibraryImage5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
  photosLibraryImage2 = [equalCopy matchedPerson];
  if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
  {
    goto LABEL_26;
  }

  matchedPerson = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
  if (matchedPerson)
  {
    v13 = matchedPerson;
    matchedPerson2 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
    matchedPerson3 = [equalCopy matchedPerson];
    v16 = [matchedPerson2 isEqual:matchedPerson3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
  photosLibraryImage2 = [equalCopy matchedScenes];
  if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
  {
    goto LABEL_26;
  }

  matchedScenes = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
  if (matchedScenes)
  {
    v18 = matchedScenes;
    matchedScenes2 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
    matchedScenes3 = [equalCopy matchedScenes];
    v21 = [matchedScenes2 isEqual:matchedScenes3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
  photosLibraryImage2 = [equalCopy matchedPeoples];
  if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
  {
    goto LABEL_26;
  }

  matchedPeoples = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
  if (matchedPeoples)
  {
    v23 = matchedPeoples;
    matchedPeoples2 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
    matchedPeoples3 = [equalCopy matchedPeoples];
    v26 = [matchedPeoples2 isEqual:matchedPeoples3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
  photosLibraryImage2 = [equalCopy photoFilePunchout];
  if ((photosLibraryImage != 0) != (photosLibraryImage2 == 0))
  {
    photoFilePunchout = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
    if (!photoFilePunchout)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = photoFilePunchout;
    photoFilePunchout2 = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
    photoFilePunchout3 = [equalCopy photoFilePunchout];
    v31 = [photoFilePunchout2 isEqual:photoFilePunchout3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  photosLibraryImage = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
  if (photosLibraryImage)
  {
    PBDataWriterWriteSubmessage();
  }

  matchedPerson = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
  if (matchedPerson)
  {
    PBDataWriterWriteSubmessage();
  }

  matchedScenes = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [matchedScenes countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(matchedScenes);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [matchedScenes countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  matchedPeoples = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [matchedPeoples countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(matchedPeoples);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [matchedPeoples countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  photoFilePunchout = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
  if (photoFilePunchout)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addMatchedPeople:(id)people
{
  peopleCopy = people;
  matchedPeoples = self->_matchedPeoples;
  v8 = peopleCopy;
  if (!matchedPeoples)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedPeoples;
    self->_matchedPeoples = array;

    peopleCopy = v8;
    matchedPeoples = self->_matchedPeoples;
  }

  [(NSArray *)matchedPeoples addObject:peopleCopy];
}

- (void)setMatchedPeople:(id)people
{
  v4 = [people copy];
  matchedPeoples = self->_matchedPeoples;
  self->_matchedPeoples = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMatchedScenes:(id)scenes
{
  scenesCopy = scenes;
  matchedScenes = self->_matchedScenes;
  v8 = scenesCopy;
  if (!matchedScenes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedScenes;
    self->_matchedScenes = array;

    scenesCopy = v8;
    matchedScenes = self->_matchedScenes;
  }

  [(NSArray *)matchedScenes addObject:scenesCopy];
}

- (void)setMatchedScenes:(id)scenes
{
  v4 = [scenes copy];
  matchedScenes = self->_matchedScenes;
  self->_matchedScenes = v4;

  MEMORY[0x1EEE66BB8]();
}

@end