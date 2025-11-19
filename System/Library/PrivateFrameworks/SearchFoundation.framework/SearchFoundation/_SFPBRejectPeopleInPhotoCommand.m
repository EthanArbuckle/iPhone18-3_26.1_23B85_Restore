@interface _SFPBRejectPeopleInPhotoCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRejectPeopleInPhotoCommand)initWithDictionary:(id)a3;
- (_SFPBRejectPeopleInPhotoCommand)initWithFacade:(id)a3;
- (_SFPBRejectPeopleInPhotoCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)addRejectedPeople:(id)a3;
- (void)setRejectedPeople:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRejectPeopleInPhotoCommand

- (_SFPBRejectPeopleInPhotoCommand)initWithFacade:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRejectPeopleInPhotoCommand *)self init];
  if (v5)
  {
    v6 = [v4 rejectedPeople];
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
    v8 = [v4 rejectedPeople];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

          v13 = [[_SFPBPerson alloc] initWithFacade:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(_SFPBRejectPeopleInPhotoCommand *)v5 setRejectedPeoples:v7];
    v14 = [v4 photosLibraryImage];

    if (v14)
    {
      v15 = [_SFPBPhotosLibraryImage alloc];
      v16 = [v4 photosLibraryImage];
      v17 = [(_SFPBPhotosLibraryImage *)v15 initWithFacade:v16];
      [(_SFPBRejectPeopleInPhotoCommand *)v5 setPhotosLibraryImage:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRejectPeopleInPhotoCommand)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _SFPBRejectPeopleInPhotoCommand;
  v5 = [(_SFPBRejectPeopleInPhotoCommand *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rejectedPeople"];
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

    v15 = [v4 objectForKeyedSubscript:{@"photosLibraryImage", v20}];
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

- (_SFPBRejectPeopleInPhotoCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRejectPeopleInPhotoCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRejectPeopleInPhotoCommand *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_photosLibraryImage)
  {
    v4 = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"photosLibraryImage"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"photosLibraryImage"];
    }
  }

  if ([(NSArray *)self->_rejectedPeoples count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"rejectedPeople"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
  v6 = [v4 rejectedPeoples];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
    v10 = [v4 rejectedPeoples];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
  v6 = [v4 photosLibraryImage];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
    v15 = [v4 photosLibraryImage];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRejectPeopleInPhotoCommand *)self rejectedPeoples];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBRejectPeopleInPhotoCommand *)self photosLibraryImage];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addRejectedPeople:(id)a3
{
  v4 = a3;
  rejectedPeoples = self->_rejectedPeoples;
  v8 = v4;
  if (!rejectedPeoples)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_rejectedPeoples;
    self->_rejectedPeoples = v6;

    v4 = v8;
    rejectedPeoples = self->_rejectedPeoples;
  }

  [(NSArray *)rejectedPeoples addObject:v4];
}

- (void)setRejectedPeople:(id)a3
{
  v4 = [a3 copy];
  rejectedPeoples = self->_rejectedPeoples;
  self->_rejectedPeoples = v4;

  MEMORY[0x1EEE66BB8]();
}

@end