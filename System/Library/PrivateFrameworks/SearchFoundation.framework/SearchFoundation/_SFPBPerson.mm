@interface _SFPBPerson
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPerson)initWithDictionary:(id)a3;
- (_SFPBPerson)initWithFacade:(id)a3;
- (_SFPBPerson)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmailAddresses:(id)a3;
- (void)addPhoneNumbers:(id)a3;
- (void)setContactIdentifier:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setEmailAddresses:(id)a3;
- (void)setPersonIdentifier:(id)a3;
- (void)setPhoneNumbers:(id)a3;
- (void)setPhotosIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPerson

- (_SFPBPerson)initWithFacade:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPerson *)self init];
  if (v5)
  {
    v6 = [v4 personIdentifier];

    if (v6)
    {
      v7 = [v4 personIdentifier];
      [(_SFPBPerson *)v5 setPersonIdentifier:v7];
    }

    v8 = [v4 contactIdentifier];

    if (v8)
    {
      v9 = [v4 contactIdentifier];
      [(_SFPBPerson *)v5 setContactIdentifier:v9];
    }

    v10 = [v4 displayName];

    if (v10)
    {
      v11 = [v4 displayName];
      [(_SFPBPerson *)v5 setDisplayName:v11];
    }

    v12 = [v4 phoneNumbers];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [v4 phoneNumbers];
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (*(*(&v35 + 1) + 8 * i))
          {
            [v13 addObject:?];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    [(_SFPBPerson *)v5 setPhoneNumbers:v13];
    v19 = [v4 emailAddresses];
    if (v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v20 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = [v4 emailAddresses];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          if (*(*(&v31 + 1) + 8 * j))
          {
            [v20 addObject:?];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }

    [(_SFPBPerson *)v5 setEmailAddresses:v20];
    v26 = [v4 photosIdentifier];

    if (v26)
    {
      v27 = [v4 photosIdentifier];
      [(_SFPBPerson *)v5 setPhotosIdentifier:v27];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPerson)initWithDictionary:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = _SFPBPerson;
  v5 = [(_SFPBPerson *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"personIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerson *)v5 setPersonIdentifier:v7];
    }

    v35 = v6;
    v8 = [v4 objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPerson *)v5 setContactIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"displayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPerson *)v5 setDisplayName:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"phoneNumbers"];
    objc_opt_class();
    v33 = v10;
    v34 = v8;
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v41;
        do
        {
          v17 = 0;
          do
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v40 + 1) + 8 * v17);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 copy];
              [(_SFPBPerson *)v5 addPhoneNumbers:v19];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v15);
      }

      v10 = v33;
      v8 = v34;
    }

    v20 = [v4 objectForKeyedSubscript:@"emailAddresses"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          v25 = 0;
          do
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v36 + 1) + 8 * v25);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 copy];
              [(_SFPBPerson *)v5 addEmailAddresses:v27];
            }

            ++v25;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v23);
      }

      v10 = v33;
      v8 = v34;
    }

    v28 = [v4 objectForKeyedSubscript:@"photosIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBPerson *)v5 setPhotosIdentifier:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPerson)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPerson *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPerson *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contactIdentifier)
  {
    v4 = [(_SFPBPerson *)self contactIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_displayName)
  {
    v6 = [(_SFPBPerson *)self displayName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"displayName"];
  }

  if (self->_emailAddresses)
  {
    v8 = [(_SFPBPerson *)self emailAddresses];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"emailAddresses"];
  }

  if (self->_personIdentifier)
  {
    v10 = [(_SFPBPerson *)self personIdentifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"personIdentifier"];
  }

  if (self->_phoneNumbers)
  {
    v12 = [(_SFPBPerson *)self phoneNumbers];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"phoneNumbers"];
  }

  if (self->_photosIdentifier)
  {
    v14 = [(_SFPBPerson *)self photosIdentifier];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"photosIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_personIdentifier hash];
  v4 = [(NSString *)self->_contactIdentifier hash]^ v3;
  v5 = [(NSString *)self->_displayName hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_phoneNumbers hash];
  v7 = [(NSArray *)self->_emailAddresses hash];
  return v6 ^ v7 ^ [(NSString *)self->_photosIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_SFPBPerson *)self personIdentifier];
  v6 = [v4 personIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_SFPBPerson *)self personIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPerson *)self personIdentifier];
    v10 = [v4 personIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerson *)self contactIdentifier];
  v6 = [v4 contactIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_SFPBPerson *)self contactIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPerson *)self contactIdentifier];
    v15 = [v4 contactIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerson *)self displayName];
  v6 = [v4 displayName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_SFPBPerson *)self displayName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBPerson *)self displayName];
    v20 = [v4 displayName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerson *)self phoneNumbers];
  v6 = [v4 phoneNumbers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_SFPBPerson *)self phoneNumbers];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBPerson *)self phoneNumbers];
    v25 = [v4 phoneNumbers];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerson *)self emailAddresses];
  v6 = [v4 emailAddresses];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_SFPBPerson *)self emailAddresses];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBPerson *)self emailAddresses];
    v30 = [v4 emailAddresses];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerson *)self photosIdentifier];
  v6 = [v4 photosIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_SFPBPerson *)self photosIdentifier];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_SFPBPerson *)self photosIdentifier];
    v35 = [v4 photosIdentifier];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPerson *)self personIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBPerson *)self contactIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBPerson *)self displayName];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBPerson *)self phoneNumbers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBPerson *)self emailAddresses];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = [(_SFPBPerson *)self photosIdentifier];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setPhotosIdentifier:(id)a3
{
  v4 = [a3 copy];
  photosIdentifier = self->_photosIdentifier;
  self->_photosIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addEmailAddresses:(id)a3
{
  v4 = a3;
  emailAddresses = self->_emailAddresses;
  v8 = v4;
  if (!emailAddresses)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    v4 = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSArray *)emailAddresses addObject:v4];
}

- (void)setEmailAddresses:(id)a3
{
  v4 = [a3 copy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPhoneNumbers:(id)a3
{
  v4 = a3;
  phoneNumbers = self->_phoneNumbers;
  v8 = v4;
  if (!phoneNumbers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    v4 = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSArray *)phoneNumbers addObject:v4];
}

- (void)setPhoneNumbers:(id)a3
{
  v4 = [a3 copy];
  phoneNumbers = self->_phoneNumbers;
  self->_phoneNumbers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersonIdentifier:(id)a3
{
  v4 = [a3 copy];
  personIdentifier = self->_personIdentifier;
  self->_personIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end