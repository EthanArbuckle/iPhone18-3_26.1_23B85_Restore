@interface _SFPBRejectPeopleInPhotoCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRejectPeopleInPhotoCommand)initWithDictionary:(id)dictionary;
- (_SFPBRejectPeopleInPhotoCommand)initWithFacade:(id)facade;
- (_SFPBRejectPeopleInPhotoCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addRejectedPeople:(id)people;
- (void)setRejectedPeople:(id)people;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRejectPeopleInPhotoCommand

- (_SFPBRejectPeopleInPhotoCommand)initWithFacade:(id)facade
{
  v26 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRejectPeopleInPhotoCommand *)self init];
  if (v5)
  {
    rejectedPeople = [facadeCopy rejectedPeople];
    if (rejectedPeople)
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
    rejectedPeople2 = [facadeCopy rejectedPeople];
    v9 = [rejectedPeople2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(rejectedPeople2);
          }

          v13 = [[_SFPBPerson alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [rejectedPeople2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(_SFPBRejectPeopleInPhotoCommand *)v5 setRejectedPeoples:v7];
    photosLibraryImage = [facadeCopy photosLibraryImage];

    if (photosLibraryImage)
    {
      v15 = [_SFPBPhotosLibraryImage alloc];
      photosLibraryImage2 = [facadeCopy photosLibraryImage];
      v17 = [(_SFPBPhotosLibraryImage *)v15 initWithFacade:photosLibraryImage2];
      [(_SFPBRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRejectPeopleInPhotoCommand)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBRejectPeopleInPhotoCommand;
  v5 = [(_SFPBRejectPeopleInPhotoCommand *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rejectedPeople"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [_SFPBPerson alloc];
              v14 = [(_SFPBPerson *)v13 initWithDictionary:v12, v20];
              [(_SFPBRejectPeopleInPhotoCommand *)v5 addRejectedPeople:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"photosLibraryImage", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBPhotosLibraryImage alloc] initWithDictionary:v15];
      [(_SFPBRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:v16];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRejectPeopleInPhotoCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRejectPeopleInPhotoCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRejectPeopleInPhotoCommand *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_photosLibraryImage)
  {
    photosLibraryImage = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
    dictionaryRepresentation = [photosLibraryImage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  if ([(NSArray *)self->_rejectedPeoples count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_rejectedPeoples;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"rejectedPeople"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  rejectedPeoples = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
  rejectedPeoples2 = [equalCopy rejectedPeoples];
  if ((rejectedPeoples != 0) == (rejectedPeoples2 == 0))
  {
    goto LABEL_11;
  }

  rejectedPeoples3 = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
  if (rejectedPeoples3)
  {
    v8 = rejectedPeoples3;
    rejectedPeoples4 = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
    rejectedPeoples5 = [equalCopy rejectedPeoples];
    v11 = [rejectedPeoples4 isEqual:rejectedPeoples5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  rejectedPeoples = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
  rejectedPeoples2 = [equalCopy photosLibraryImage];
  if ((rejectedPeoples != 0) != (rejectedPeoples2 == 0))
  {
    photosLibraryImage = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
    if (!photosLibraryImage)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = photosLibraryImage;
    photosLibraryImage2 = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
    photosLibraryImage3 = [equalCopy photosLibraryImage];
    v16 = [photosLibraryImage2 isEqual:photosLibraryImage3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  rejectedPeoples = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [rejectedPeoples countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(rejectedPeoples);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [rejectedPeoples countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  photosLibraryImage = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
  if (photosLibraryImage)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addRejectedPeople:(id)people
{
  peopleCopy = people;
  rejectedPeoples = self->_rejectedPeoples;
  v8 = peopleCopy;
  if (!rejectedPeoples)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_rejectedPeoples;
    self->_rejectedPeoples = array;

    peopleCopy = v8;
    rejectedPeoples = self->_rejectedPeoples;
  }

  [(NSArray *)rejectedPeoples addObject:peopleCopy];
}

- (void)setRejectedPeople:(id)people
{
  v4 = [people copy];
  rejectedPeoples = self->_rejectedPeoples;
  self->_rejectedPeoples = v4;

  MEMORY[0x1EEE66BB8]();
}

@end