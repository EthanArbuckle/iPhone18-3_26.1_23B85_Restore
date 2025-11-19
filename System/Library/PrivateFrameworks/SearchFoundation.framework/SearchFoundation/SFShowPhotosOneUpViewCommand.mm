@interface SFShowPhotosOneUpViewCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowPhotosOneUpViewCommand)initWithCoder:(id)a3;
- (SFShowPhotosOneUpViewCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFShowPhotosOneUpViewCommand

- (SFShowPhotosOneUpViewCommand)initWithProtobuf:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SFShowPhotosOneUpViewCommand;
  v5 = [(SFShowPhotosOneUpViewCommand *)&v45 init];
  if (v5)
  {
    v6 = [v4 photosLibraryImage];

    if (v6)
    {
      v7 = [SFPhotosLibraryImage alloc];
      v8 = [v4 photosLibraryImage];
      v9 = [(SFPhotosLibraryImage *)v7 initWithProtobuf:v8];
      [(SFShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v9];
    }

    v10 = [v4 matchedPerson];

    if (v10)
    {
      v11 = [SFPerson alloc];
      v12 = [v4 matchedPerson];
      v13 = [(SFPerson *)v11 initWithProtobuf:v12];
      [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v13];
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
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
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

          v21 = [[SFScene alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v18);
    }

    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedScenes:v15];
    v22 = [v4 matchedPeoples];
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
    v24 = [v4 matchedPeoples];
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
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

          v29 = [[SFPerson alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v26);
    }

    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPeople:v23];
    v30 = [v4 photoFilePunchout];

    if (v30)
    {
      v31 = [SFPunchout alloc];
      v32 = [v4 photoFilePunchout];
      v33 = [(SFPunchout *)v31 initWithProtobuf:v32];
      [(SFShowPhotosOneUpViewCommand *)v5 setPhotoFilePunchout:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = SFShowPhotosOneUpViewCommand;
  v3 = [(SFCommand *)&v15 hash];
  v4 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
  v5 = [v4 hash];
  v6 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
  v7 = v5 ^ [v6 hash];
  v8 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
  v9 = v7 ^ [v8 hash];
  v10 = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
  v11 = v9 ^ [v10 hash];
  v12 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
  v13 = v11 ^ [v12 hash];

  return v13 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(SFShowPhotosOneUpViewCommand *)v4 isMemberOfClass:objc_opt_class()])
    {
      v50.receiver = self;
      v50.super_class = SFShowPhotosOneUpViewCommand;
      if ([(SFCommand *)&v50 isEqual:v4])
      {
        v5 = v4;
        v6 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
        v7 = [(SFShowPhotosOneUpViewCommand *)v5 photosLibraryImage];
        if ((v6 != 0) == (v7 == 0))
        {
          v10 = 0;
LABEL_51:

          goto LABEL_52;
        }

        v8 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
        if (v8)
        {
          v9 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
          v48 = [(SFShowPhotosOneUpViewCommand *)v5 photosLibraryImage];
          if (![v9 isEqual:?])
          {
            v10 = 0;
            goto LABEL_49;
          }

          v47 = v9;
        }

        v49 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
        v11 = [(SFShowPhotosOneUpViewCommand *)v5 matchedPerson];
        if ((v49 != 0) != (v11 == 0))
        {
          v12 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
          if (v12)
          {
            v13 = v12;
            v14 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
            [(SFShowPhotosOneUpViewCommand *)v5 matchedPerson];
            v45 = v44 = v14;
            if (![v14 isEqual:?])
            {
              v10 = 0;
              v19 = v13;
              v20 = v45;
              goto LABEL_46;
            }

            v46 = v13;
          }

          else
          {
            v46 = 0;
          }

          v15 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
          v16 = [(SFShowPhotosOneUpViewCommand *)v5 matchedScenes];
          if ((v15 != 0) != (v16 == 0))
          {
            v42 = v15;
            v43 = v16;
            v17 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
            if (v17)
            {
              v18 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
              v39 = [(SFShowPhotosOneUpViewCommand *)v5 matchedScenes];
              v40 = v18;
              if (![v18 isEqual:?])
              {
                v10 = 0;
                v20 = v45;
                v19 = v46;
                goto LABEL_44;
              }

              v41 = v17;
            }

            else
            {
              v41 = 0;
            }

            v21 = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
            v22 = [(SFShowPhotosOneUpViewCommand *)v5 matchedPeople];
            if ((v21 != 0) != (v22 == 0))
            {
              v38 = v22;
              [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
              v37 = v20 = v45;
              if (v37)
              {
                v33 = v21;
                v23 = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
                v35 = [(SFShowPhotosOneUpViewCommand *)v5 matchedPeople];
                v36 = v23;
                if (![v23 isEqual:?])
                {
                  v10 = 0;
                  v27 = v37;
                  v21 = v33;
                  goto LABEL_42;
                }

                v21 = v33;
              }

              v24 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
              v25 = [(SFShowPhotosOneUpViewCommand *)v5 photoFilePunchout];
              if ((v24 != 0) == (v25 == 0))
              {

                v10 = 0;
                v20 = v45;
                v27 = v37;
                if (!v37)
                {
LABEL_43:

                  v17 = v41;
                  v19 = v46;
                  if (!v41)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
                v32 = v25;
                v34 = v24;
                v26 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
                v20 = v45;
                v27 = v37;
                if (v26)
                {
                  v31 = v26;
                  v30 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
                  v29 = [(SFShowPhotosOneUpViewCommand *)v5 photoFilePunchout];
                  v10 = [v30 isEqual:v29];

                  if (!v37)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {

                  v10 = 1;
                  if (!v37)
                  {
                    goto LABEL_43;
                  }
                }
              }

LABEL_42:

              goto LABEL_43;
            }

            v10 = 0;
            v20 = v45;
            v19 = v46;
            v17 = v41;
            if (!v41)
            {
LABEL_45:

              if (!v19)
              {
LABEL_47:

LABEL_48:
                v9 = v47;
                if (!v8)
                {
LABEL_50:

                  goto LABEL_51;
                }

LABEL_49:

                goto LABEL_50;
              }

LABEL_46:

              goto LABEL_47;
            }

LABEL_44:

            goto LABEL_45;
          }

          if (v46)
          {
          }
        }

        v10 = 0;
        goto LABEL_48;
      }
    }

    v10 = 0;
  }

LABEL_52:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = SFShowPhotosOneUpViewCommand;
  v4 = [(SFCommand *)&v16 copyWithZone:a3];
  v5 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
  v6 = [v5 copy];
  [v4 setPhotosLibraryImage:v6];

  v7 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
  v8 = [v7 copy];
  [v4 setMatchedPerson:v8];

  v9 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
  v10 = [v9 copy];
  [v4 setMatchedScenes:v10];

  v11 = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
  v12 = [v11 copy];
  [v4 setMatchedPeople:v12];

  v13 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
  v14 = [v13 copy];
  [v4 setPhotoFilePunchout:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithFacade:self];
  v3 = [(_SFPBShowPhotosOneUpViewCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithFacade:self];
  v3 = [(_SFPBShowPhotosOneUpViewCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFShowPhotosOneUpViewCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFShowPhotosOneUpViewCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFShowPhotosOneUpViewCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 photosLibraryImage];
    [(SFShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v9];

    v10 = [(SFCommand *)v8 matchedPerson];
    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v10];

    v11 = [(SFCommand *)v8 matchedScenes];
    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedScenes:v11];

    v12 = [(SFCommand *)v8 matchedPeople];
    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPeople:v12];

    v13 = [(SFCommand *)v8 photoFilePunchout];
    [(SFShowPhotosOneUpViewCommand *)v5 setPhotoFilePunchout:v13];

    v14 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v14];

    v15 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v15];

    v16 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v16];

    v17 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v17];
  }

  return v5;
}

@end