@interface SFRejectPeopleInPhotoCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRejectPeopleInPhotoCommand)initWithCoder:(id)a3;
- (SFRejectPeopleInPhotoCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRejectPeopleInPhotoCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFRejectPeopleInPhotoCommand;
  v3 = [(SFCommand *)&v9 hash];
  v4 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
  v5 = [v4 hash];
  v6 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
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
    if ([(SFRejectPeopleInPhotoCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFRejectPeopleInPhotoCommand;
      if ([(SFCommand *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
        v8 = [(SFRejectPeopleInPhotoCommand *)v6 rejectedPeople];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
        if (v9)
        {
          v3 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
          v10 = [(SFRejectPeopleInPhotoCommand *)v6 rejectedPeople];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
        v13 = [(SFRejectPeopleInPhotoCommand *)v6 photosLibraryImage];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
            [(SFRejectPeopleInPhotoCommand *)v6 photosLibraryImage];
            v17 = v20 = v3;
            v11 = [v19 isEqual:v17];

            v3 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        v10 = v21;
        if (!v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFRejectPeopleInPhotoCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
  v6 = [v5 copy];
  [v4 setRejectedPeople:v6];

  v7 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
  v8 = [v7 copy];
  [v4 setPhotosLibraryImage:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithFacade:self];
  v3 = [(_SFPBRejectPeopleInPhotoCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithFacade:self];
  v3 = [(_SFPBRejectPeopleInPhotoCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFRejectPeopleInPhotoCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFRejectPeopleInPhotoCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFRejectPeopleInPhotoCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 rejectedPeople];
    [(SFRejectPeopleInPhotoCommand *)v5 setRejectedPeople:v9];

    v10 = [(SFCommand *)v8 photosLibraryImage];
    [(SFRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:v10];

    v11 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v11];

    v12 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v12];

    v13 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v13];

    v14 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v14];
  }

  return v5;
}

- (SFRejectPeopleInPhotoCommand)initWithProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SFRejectPeopleInPhotoCommand;
  v5 = [(SFRejectPeopleInPhotoCommand *)&v25 init];
  if (v5)
  {
    v6 = [v4 rejectedPeoples];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v4 rejectedPeoples];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SFPerson alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [(SFRejectPeopleInPhotoCommand *)v5 setRejectedPeople:v7];
    v14 = [v4 photosLibraryImage];

    if (v14)
    {
      v15 = [SFPhotosLibraryImage alloc];
      v16 = [v4 photosLibraryImage];
      v17 = [(SFPhotosLibraryImage *)v15 initWithProtobuf:v16];
      [(SFRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end