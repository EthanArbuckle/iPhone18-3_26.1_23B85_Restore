@interface SFRejectPeopleInPhotoCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRejectPeopleInPhotoCommand)initWithCoder:(id)coder;
- (SFRejectPeopleInPhotoCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRejectPeopleInPhotoCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFRejectPeopleInPhotoCommand;
  v3 = [(SFCommand *)&v9 hash];
  rejectedPeople = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
  v5 = [rejectedPeople hash];
  photosLibraryImage = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
  v7 = v5 ^ [photosLibraryImage hash];

  return v7 ^ v3;
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
    if ([(SFRejectPeopleInPhotoCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFRejectPeopleInPhotoCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        rejectedPeople = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
        rejectedPeople2 = [(SFRejectPeopleInPhotoCommand *)v6 rejectedPeople];
        if ((rejectedPeople != 0) == (rejectedPeople2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        rejectedPeople3 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
        if (rejectedPeople3)
        {
          rejectedPeople4 = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
          rejectedPeople5 = [(SFRejectPeopleInPhotoCommand *)v6 rejectedPeople];
          if (![rejectedPeople4 isEqual:rejectedPeople5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = rejectedPeople5;
        }

        photosLibraryImage = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
        photosLibraryImage2 = [(SFRejectPeopleInPhotoCommand *)v6 photosLibraryImage];
        v14 = photosLibraryImage2;
        if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
        {

          v11 = 0;
        }

        else
        {
          photosLibraryImage3 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
          if (photosLibraryImage3)
          {
            v16 = photosLibraryImage3;
            photosLibraryImage4 = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
            [(SFRejectPeopleInPhotoCommand *)v6 photosLibraryImage];
            v17 = v20 = rejectedPeople4;
            v11 = [photosLibraryImage4 isEqual:v17];

            rejectedPeople4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        rejectedPeople5 = v21;
        if (!rejectedPeople3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFRejectPeopleInPhotoCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  rejectedPeople = [(SFRejectPeopleInPhotoCommand *)self rejectedPeople];
  v6 = [rejectedPeople copy];
  [v4 setRejectedPeople:v6];

  photosLibraryImage = [(SFRejectPeopleInPhotoCommand *)self photosLibraryImage];
  v8 = [photosLibraryImage copy];
  [v4 setPhotosLibraryImage:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBRejectPeopleInPhotoCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRejectPeopleInPhotoCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRejectPeopleInPhotoCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFRejectPeopleInPhotoCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFRejectPeopleInPhotoCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFRejectPeopleInPhotoCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rejectedPeople = [(SFCommand *)v8 rejectedPeople];
    [(SFRejectPeopleInPhotoCommand *)v5 setRejectedPeople:rejectedPeople];

    photosLibraryImage = [(SFCommand *)v8 photosLibraryImage];
    [(SFRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:photosLibraryImage];

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

- (SFRejectPeopleInPhotoCommand)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = SFRejectPeopleInPhotoCommand;
  v5 = [(SFRejectPeopleInPhotoCommand *)&v25 init];
  if (v5)
  {
    rejectedPeoples = [protobufCopy rejectedPeoples];
    if (rejectedPeoples)
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
    rejectedPeoples2 = [protobufCopy rejectedPeoples];
    v9 = [rejectedPeoples2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(rejectedPeoples2);
          }

          v13 = [[SFPerson alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [rejectedPeoples2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [(SFRejectPeopleInPhotoCommand *)v5 setRejectedPeople:v7];
    photosLibraryImage = [protobufCopy photosLibraryImage];

    if (photosLibraryImage)
    {
      v15 = [SFPhotosLibraryImage alloc];
      photosLibraryImage2 = [protobufCopy photosLibraryImage];
      v17 = [(SFPhotosLibraryImage *)v15 initWithProtobuf:photosLibraryImage2];
      [(SFRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end