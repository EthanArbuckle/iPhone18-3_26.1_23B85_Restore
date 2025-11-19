@interface _SFPBShowPhotosOneUpViewCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBShowPhotosOneUpViewCommand)initWithDictionary:(id)a3;
- (_SFPBShowPhotosOneUpViewCommand)initWithFacade:(id)a3;
- (_SFPBShowPhotosOneUpViewCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchedPeople:(id)a3;
- (void)addMatchedScenes:(id)a3;
- (void)setMatchedPeople:(id)a3;
- (void)setMatchedScenes:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBShowPhotosOneUpViewCommand

- (_SFPBShowPhotosOneUpViewCommand)initWithFacade:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self init];
  if (v5)
  {
    v6 = [v4 photosLibraryImage];

    if (v6)
    {
      v7 = [_SFPBPhotosLibraryImage alloc];
      v8 = [v4 photosLibraryImage];
      v9 = [(_SFPBPhotosLibraryImage *)v7 initWithFacade:v8];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v9];
    }

    v10 = [v4 matchedPerson];

    if (v10)
    {
      v11 = [_SFPBPerson alloc];
      v12 = [v4 matchedPerson];
      v13 = [(_SFPBPerson *)v11 initWithFacade:v12];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v13];
    }

    v14 = [v4 matchedScenes];
    if (v14)
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
    v16 = [v4 matchedScenes];
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBScene alloc] initWithFacade:*(*(&v41 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v18);
    }

    [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedScenes:v15];
    v22 = [v4 matchedPeople];
    if (v22)
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
    v24 = [v4 matchedPeople];
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
            objc_enumerationMutation(v24);
          }

          v29 = [[_SFPBPerson alloc] initWithFacade:*(*(&v37 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v26);
    }

    [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedPeoples:v23];
    v30 = [v4 photoFilePunchout];

    if (v30)
    {
      v31 = [_SFPBPunchout alloc];
      v32 = [v4 photoFilePunchout];
      v33 = [(_SFPBPunchout *)v31 initWithFacade:v32];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotoFilePunchout:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBShowPhotosOneUpViewCommand)initWithDictionary:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = _SFPBShowPhotosOneUpViewCommand;
  v5 = [(_SFPBShowPhotosOneUpViewCommand *)&v42 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"photosLibraryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPhotosLibraryImage alloc] initWithDictionary:v6];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"matchedPerson"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBPerson alloc] initWithDictionary:v8];
      [(_SFPBShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"matchedScenes"];
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

    v19 = [v4 objectForKeyedSubscript:@"matchedPeople"];
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

    v27 = [v4 objectForKeyedSubscript:@"photoFilePunchout"];
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

- (_SFPBShowPhotosOneUpViewCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBShowPhotosOneUpViewCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBShowPhotosOneUpViewCommand *)self dictionaryRepresentation];
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
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedPeoples count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"matchedPeople"];
  }

  if (self->_matchedPerson)
  {
    v12 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"matchedPerson"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"matchedPerson"];
    }
  }

  if ([(NSArray *)self->_matchedScenes count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
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

          v21 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"matchedScenes"];
  }

  if (self->_photoFilePunchout)
  {
    v23 = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"photoFilePunchout"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"photoFilePunchout"];
    }
  }

  if (self->_photosLibraryImage)
  {
    v26 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBPhotosLibraryImage *)self->_photosLibraryImage hash];
  v4 = [(_SFPBPerson *)self->_matchedPerson hash]^ v3;
  v5 = [(NSArray *)self->_matchedScenes hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_matchedPeoples hash];
  return v6 ^ [(_SFPBPunchout *)self->_photoFilePunchout hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
  v6 = [v4 photosLibraryImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
    v10 = [v4 photosLibraryImage];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
  v6 = [v4 matchedPerson];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
    v15 = [v4 matchedPerson];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
  v6 = [v4 matchedScenes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
    v20 = [v4 matchedScenes];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
  v6 = [v4 matchedPeoples];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
    v25 = [v4 matchedPeoples];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
  v6 = [v4 photoFilePunchout];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
    v30 = [v4 photoFilePunchout];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBShowPhotosOneUpViewCommand *)self photosLibraryImage];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPerson];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedScenes];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v13 = [(_SFPBShowPhotosOneUpViewCommand *)self matchedPeoples];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [(_SFPBShowPhotosOneUpViewCommand *)self photoFilePunchout];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addMatchedPeople:(id)a3
{
  v4 = a3;
  matchedPeoples = self->_matchedPeoples;
  v8 = v4;
  if (!matchedPeoples)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedPeoples;
    self->_matchedPeoples = v6;

    v4 = v8;
    matchedPeoples = self->_matchedPeoples;
  }

  [(NSArray *)matchedPeoples addObject:v4];
}

- (void)setMatchedPeople:(id)a3
{
  v4 = [a3 copy];
  matchedPeoples = self->_matchedPeoples;
  self->_matchedPeoples = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMatchedScenes:(id)a3
{
  v4 = a3;
  matchedScenes = self->_matchedScenes;
  v8 = v4;
  if (!matchedScenes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedScenes;
    self->_matchedScenes = v6;

    v4 = v8;
    matchedScenes = self->_matchedScenes;
  }

  [(NSArray *)matchedScenes addObject:v4];
}

- (void)setMatchedScenes:(id)a3
{
  v4 = [a3 copy];
  matchedScenes = self->_matchedScenes;
  self->_matchedScenes = v4;

  MEMORY[0x1EEE66BB8]();
}

@end