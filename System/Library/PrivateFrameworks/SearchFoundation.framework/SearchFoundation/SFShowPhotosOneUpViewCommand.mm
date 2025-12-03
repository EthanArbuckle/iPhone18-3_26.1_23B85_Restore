@interface SFShowPhotosOneUpViewCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowPhotosOneUpViewCommand)initWithCoder:(id)coder;
- (SFShowPhotosOneUpViewCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShowPhotosOneUpViewCommand

- (SFShowPhotosOneUpViewCommand)initWithProtobuf:(id)protobuf
{
  v48 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v45.receiver = self;
  v45.super_class = SFShowPhotosOneUpViewCommand;
  v5 = [(SFShowPhotosOneUpViewCommand *)&v45 init];
  if (v5)
  {
    photosLibraryImage = [protobufCopy photosLibraryImage];

    if (photosLibraryImage)
    {
      v7 = [SFPhotosLibraryImage alloc];
      photosLibraryImage2 = [protobufCopy photosLibraryImage];
      v9 = [(SFPhotosLibraryImage *)v7 initWithProtobuf:photosLibraryImage2];
      [(SFShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:v9];
    }

    matchedPerson = [protobufCopy matchedPerson];

    if (matchedPerson)
    {
      v11 = [SFPerson alloc];
      matchedPerson2 = [protobufCopy matchedPerson];
      v13 = [(SFPerson *)v11 initWithProtobuf:matchedPerson2];
      [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPerson:v13];
    }

    matchedScenes = [protobufCopy matchedScenes];
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
    matchedScenes2 = [protobufCopy matchedScenes];
    v17 = [matchedScenes2 countByEnumeratingWithState:&v41 objects:v47 count:16];
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

          v21 = [[SFScene alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [matchedScenes2 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v18);
    }

    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedScenes:v15];
    matchedPeoples = [protobufCopy matchedPeoples];
    if (matchedPeoples)
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
    matchedPeoples2 = [protobufCopy matchedPeoples];
    v25 = [matchedPeoples2 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
            objc_enumerationMutation(matchedPeoples2);
          }

          v29 = [[SFPerson alloc] initWithProtobuf:*(*(&v37 + 1) + 8 * j)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [matchedPeoples2 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v26);
    }

    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPeople:v23];
    photoFilePunchout = [protobufCopy photoFilePunchout];

    if (photoFilePunchout)
    {
      v31 = [SFPunchout alloc];
      photoFilePunchout2 = [protobufCopy photoFilePunchout];
      v33 = [(SFPunchout *)v31 initWithProtobuf:photoFilePunchout2];
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
  photosLibraryImage = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
  v5 = [photosLibraryImage hash];
  matchedPerson = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
  v7 = v5 ^ [matchedPerson hash];
  matchedScenes = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
  v9 = v7 ^ [matchedScenes hash];
  matchedPeople = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
  v11 = v9 ^ [matchedPeople hash];
  photoFilePunchout = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
  v13 = v11 ^ [photoFilePunchout hash];

  return v13 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(SFShowPhotosOneUpViewCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v50.receiver = self;
      v50.super_class = SFShowPhotosOneUpViewCommand;
      if ([(SFCommand *)&v50 isEqual:equalCopy])
      {
        v5 = equalCopy;
        photosLibraryImage = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
        photosLibraryImage2 = [(SFShowPhotosOneUpViewCommand *)v5 photosLibraryImage];
        if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
        {
          v10 = 0;
LABEL_51:

          goto LABEL_52;
        }

        photosLibraryImage3 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
        if (photosLibraryImage3)
        {
          photosLibraryImage4 = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
          photosLibraryImage5 = [(SFShowPhotosOneUpViewCommand *)v5 photosLibraryImage];
          if (![photosLibraryImage4 isEqual:?])
          {
            v10 = 0;
            goto LABEL_49;
          }

          v47 = photosLibraryImage4;
        }

        matchedPerson = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
        matchedPerson2 = [(SFShowPhotosOneUpViewCommand *)v5 matchedPerson];
        if ((matchedPerson != 0) != (matchedPerson2 == 0))
        {
          matchedPerson3 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
          if (matchedPerson3)
          {
            v13 = matchedPerson3;
            matchedPerson4 = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
            [(SFShowPhotosOneUpViewCommand *)v5 matchedPerson];
            v45 = v44 = matchedPerson4;
            if (![matchedPerson4 isEqual:?])
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

          matchedScenes = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
          matchedScenes2 = [(SFShowPhotosOneUpViewCommand *)v5 matchedScenes];
          if ((matchedScenes != 0) != (matchedScenes2 == 0))
          {
            v42 = matchedScenes;
            v43 = matchedScenes2;
            matchedScenes3 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
            if (matchedScenes3)
            {
              matchedScenes4 = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
              matchedScenes5 = [(SFShowPhotosOneUpViewCommand *)v5 matchedScenes];
              v40 = matchedScenes4;
              if (![matchedScenes4 isEqual:?])
              {
                v10 = 0;
                v20 = v45;
                v19 = v46;
                goto LABEL_44;
              }

              v41 = matchedScenes3;
            }

            else
            {
              v41 = 0;
            }

            matchedPeople = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
            matchedPeople2 = [(SFShowPhotosOneUpViewCommand *)v5 matchedPeople];
            if ((matchedPeople != 0) != (matchedPeople2 == 0))
            {
              v38 = matchedPeople2;
              [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
              v37 = v20 = v45;
              if (v37)
              {
                v33 = matchedPeople;
                matchedPeople3 = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
                matchedPeople4 = [(SFShowPhotosOneUpViewCommand *)v5 matchedPeople];
                v36 = matchedPeople3;
                if (![matchedPeople3 isEqual:?])
                {
                  v10 = 0;
                  v27 = v37;
                  matchedPeople = v33;
                  goto LABEL_42;
                }

                matchedPeople = v33;
              }

              photoFilePunchout = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
              photoFilePunchout2 = [(SFShowPhotosOneUpViewCommand *)v5 photoFilePunchout];
              if ((photoFilePunchout != 0) == (photoFilePunchout2 == 0))
              {

                v10 = 0;
                v20 = v45;
                v27 = v37;
                if (!v37)
                {
LABEL_43:

                  matchedScenes3 = v41;
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
                v32 = photoFilePunchout2;
                v34 = photoFilePunchout;
                photoFilePunchout3 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
                v20 = v45;
                v27 = v37;
                if (photoFilePunchout3)
                {
                  v31 = photoFilePunchout3;
                  photoFilePunchout4 = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
                  photoFilePunchout5 = [(SFShowPhotosOneUpViewCommand *)v5 photoFilePunchout];
                  v10 = [photoFilePunchout4 isEqual:photoFilePunchout5];

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
            matchedScenes3 = v41;
            if (!v41)
            {
LABEL_45:

              if (!v19)
              {
LABEL_47:

LABEL_48:
                photosLibraryImage4 = v47;
                if (!photosLibraryImage3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = SFShowPhotosOneUpViewCommand;
  v4 = [(SFCommand *)&v16 copyWithZone:zone];
  photosLibraryImage = [(SFShowPhotosOneUpViewCommand *)self photosLibraryImage];
  v6 = [photosLibraryImage copy];
  [v4 setPhotosLibraryImage:v6];

  matchedPerson = [(SFShowPhotosOneUpViewCommand *)self matchedPerson];
  v8 = [matchedPerson copy];
  [v4 setMatchedPerson:v8];

  matchedScenes = [(SFShowPhotosOneUpViewCommand *)self matchedScenes];
  v10 = [matchedScenes copy];
  [v4 setMatchedScenes:v10];

  matchedPeople = [(SFShowPhotosOneUpViewCommand *)self matchedPeople];
  v12 = [matchedPeople copy];
  [v4 setMatchedPeople:v12];

  photoFilePunchout = [(SFShowPhotosOneUpViewCommand *)self photoFilePunchout];
  v14 = [photoFilePunchout copy];
  [v4 setPhotoFilePunchout:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShowPhotosOneUpViewCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowPhotosOneUpViewCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShowPhotosOneUpViewCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShowPhotosOneUpViewCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShowPhotosOneUpViewCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShowPhotosOneUpViewCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photosLibraryImage = [(SFCommand *)v8 photosLibraryImage];
    [(SFShowPhotosOneUpViewCommand *)v5 setPhotosLibraryImage:photosLibraryImage];

    matchedPerson = [(SFCommand *)v8 matchedPerson];
    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPerson:matchedPerson];

    matchedScenes = [(SFCommand *)v8 matchedScenes];
    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedScenes:matchedScenes];

    matchedPeople = [(SFCommand *)v8 matchedPeople];
    [(SFShowPhotosOneUpViewCommand *)v5 setMatchedPeople:matchedPeople];

    photoFilePunchout = [(SFCommand *)v8 photoFilePunchout];
    [(SFShowPhotosOneUpViewCommand *)v5 setPhotoFilePunchout:photoFilePunchout];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end