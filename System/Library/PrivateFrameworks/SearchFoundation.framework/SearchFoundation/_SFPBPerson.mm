@interface _SFPBPerson
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPerson)initWithDictionary:(id)dictionary;
- (_SFPBPerson)initWithFacade:(id)facade;
- (_SFPBPerson)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmailAddresses:(id)addresses;
- (void)addPhoneNumbers:(id)numbers;
- (void)setContactIdentifier:(id)identifier;
- (void)setDisplayName:(id)name;
- (void)setEmailAddresses:(id)addresses;
- (void)setPersonIdentifier:(id)identifier;
- (void)setPhoneNumbers:(id)numbers;
- (void)setPhotosIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPerson

- (_SFPBPerson)initWithFacade:(id)facade
{
  v41 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBPerson *)self init];
  if (v5)
  {
    personIdentifier = [facadeCopy personIdentifier];

    if (personIdentifier)
    {
      personIdentifier2 = [facadeCopy personIdentifier];
      [(_SFPBPerson *)v5 setPersonIdentifier:personIdentifier2];
    }

    contactIdentifier = [facadeCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [facadeCopy contactIdentifier];
      [(_SFPBPerson *)v5 setContactIdentifier:contactIdentifier2];
    }

    displayName = [facadeCopy displayName];

    if (displayName)
    {
      displayName2 = [facadeCopy displayName];
      [(_SFPBPerson *)v5 setDisplayName:displayName2];
    }

    phoneNumbers = [facadeCopy phoneNumbers];
    if (phoneNumbers)
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
    phoneNumbers2 = [facadeCopy phoneNumbers];
    v15 = [phoneNumbers2 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
            objc_enumerationMutation(phoneNumbers2);
          }

          if (*(*(&v35 + 1) + 8 * i))
          {
            [v13 addObject:?];
          }
        }

        v16 = [phoneNumbers2 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v16);
    }

    [(_SFPBPerson *)v5 setPhoneNumbers:v13];
    emailAddresses = [facadeCopy emailAddresses];
    if (emailAddresses)
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
    emailAddresses2 = [facadeCopy emailAddresses];
    v22 = [emailAddresses2 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
            objc_enumerationMutation(emailAddresses2);
          }

          if (*(*(&v31 + 1) + 8 * j))
          {
            [v20 addObject:?];
          }
        }

        v23 = [emailAddresses2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }

    [(_SFPBPerson *)v5 setEmailAddresses:v20];
    photosIdentifier = [facadeCopy photosIdentifier];

    if (photosIdentifier)
    {
      photosIdentifier2 = [facadeCopy photosIdentifier];
      [(_SFPBPerson *)v5 setPhotosIdentifier:photosIdentifier2];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPerson)initWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = _SFPBPerson;
  v5 = [(_SFPBPerson *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"personIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerson *)v5 setPersonIdentifier:v7];
    }

    v35 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPerson *)v5 setContactIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBPerson *)v5 setDisplayName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumbers"];
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

    v20 = [dictionaryCopy objectForKeyedSubscript:@"emailAddresses"];
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

    v28 = [dictionaryCopy objectForKeyedSubscript:@"photosIdentifier"];
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

- (_SFPBPerson)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPerson *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPerson *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_contactIdentifier)
  {
    contactIdentifier = [(_SFPBPerson *)self contactIdentifier];
    v5 = [contactIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_displayName)
  {
    displayName = [(_SFPBPerson *)self displayName];
    v7 = [displayName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"displayName"];
  }

  if (self->_emailAddresses)
  {
    emailAddresses = [(_SFPBPerson *)self emailAddresses];
    v9 = [emailAddresses copy];
    [dictionary setObject:v9 forKeyedSubscript:@"emailAddresses"];
  }

  if (self->_personIdentifier)
  {
    personIdentifier = [(_SFPBPerson *)self personIdentifier];
    v11 = [personIdentifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"personIdentifier"];
  }

  if (self->_phoneNumbers)
  {
    phoneNumbers = [(_SFPBPerson *)self phoneNumbers];
    v13 = [phoneNumbers copy];
    [dictionary setObject:v13 forKeyedSubscript:@"phoneNumbers"];
  }

  if (self->_photosIdentifier)
  {
    photosIdentifier = [(_SFPBPerson *)self photosIdentifier];
    v15 = [photosIdentifier copy];
    [dictionary setObject:v15 forKeyedSubscript:@"photosIdentifier"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  personIdentifier = [(_SFPBPerson *)self personIdentifier];
  personIdentifier2 = [equalCopy personIdentifier];
  if ((personIdentifier != 0) == (personIdentifier2 == 0))
  {
    goto LABEL_31;
  }

  personIdentifier3 = [(_SFPBPerson *)self personIdentifier];
  if (personIdentifier3)
  {
    v8 = personIdentifier3;
    personIdentifier4 = [(_SFPBPerson *)self personIdentifier];
    personIdentifier5 = [equalCopy personIdentifier];
    v11 = [personIdentifier4 isEqual:personIdentifier5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  personIdentifier = [(_SFPBPerson *)self contactIdentifier];
  personIdentifier2 = [equalCopy contactIdentifier];
  if ((personIdentifier != 0) == (personIdentifier2 == 0))
  {
    goto LABEL_31;
  }

  contactIdentifier = [(_SFPBPerson *)self contactIdentifier];
  if (contactIdentifier)
  {
    v13 = contactIdentifier;
    contactIdentifier2 = [(_SFPBPerson *)self contactIdentifier];
    contactIdentifier3 = [equalCopy contactIdentifier];
    v16 = [contactIdentifier2 isEqual:contactIdentifier3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  personIdentifier = [(_SFPBPerson *)self displayName];
  personIdentifier2 = [equalCopy displayName];
  if ((personIdentifier != 0) == (personIdentifier2 == 0))
  {
    goto LABEL_31;
  }

  displayName = [(_SFPBPerson *)self displayName];
  if (displayName)
  {
    v18 = displayName;
    displayName2 = [(_SFPBPerson *)self displayName];
    displayName3 = [equalCopy displayName];
    v21 = [displayName2 isEqual:displayName3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  personIdentifier = [(_SFPBPerson *)self phoneNumbers];
  personIdentifier2 = [equalCopy phoneNumbers];
  if ((personIdentifier != 0) == (personIdentifier2 == 0))
  {
    goto LABEL_31;
  }

  phoneNumbers = [(_SFPBPerson *)self phoneNumbers];
  if (phoneNumbers)
  {
    v23 = phoneNumbers;
    phoneNumbers2 = [(_SFPBPerson *)self phoneNumbers];
    phoneNumbers3 = [equalCopy phoneNumbers];
    v26 = [phoneNumbers2 isEqual:phoneNumbers3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  personIdentifier = [(_SFPBPerson *)self emailAddresses];
  personIdentifier2 = [equalCopy emailAddresses];
  if ((personIdentifier != 0) == (personIdentifier2 == 0))
  {
    goto LABEL_31;
  }

  emailAddresses = [(_SFPBPerson *)self emailAddresses];
  if (emailAddresses)
  {
    v28 = emailAddresses;
    emailAddresses2 = [(_SFPBPerson *)self emailAddresses];
    emailAddresses3 = [equalCopy emailAddresses];
    v31 = [emailAddresses2 isEqual:emailAddresses3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  personIdentifier = [(_SFPBPerson *)self photosIdentifier];
  personIdentifier2 = [equalCopy photosIdentifier];
  if ((personIdentifier != 0) != (personIdentifier2 == 0))
  {
    photosIdentifier = [(_SFPBPerson *)self photosIdentifier];
    if (!photosIdentifier)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = photosIdentifier;
    photosIdentifier2 = [(_SFPBPerson *)self photosIdentifier];
    photosIdentifier3 = [equalCopy photosIdentifier];
    v36 = [photosIdentifier2 isEqual:photosIdentifier3];

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

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  personIdentifier = [(_SFPBPerson *)self personIdentifier];
  if (personIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  contactIdentifier = [(_SFPBPerson *)self contactIdentifier];
  if (contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  displayName = [(_SFPBPerson *)self displayName];
  if (displayName)
  {
    PBDataWriterWriteStringField();
  }

  phoneNumbers = [(_SFPBPerson *)self phoneNumbers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(phoneNumbers);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        PBDataWriterWriteStringField();
        ++v12;
      }

      while (v10 != v12);
      v10 = [phoneNumbers countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  emailAddresses = [(_SFPBPerson *)self emailAddresses];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [emailAddresses countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  photosIdentifier = [(_SFPBPerson *)self photosIdentifier];
  if (photosIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setPhotosIdentifier:(id)identifier
{
  v4 = [identifier copy];
  photosIdentifier = self->_photosIdentifier;
  self->_photosIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  emailAddresses = self->_emailAddresses;
  v8 = addressesCopy;
  if (!emailAddresses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_emailAddresses;
    self->_emailAddresses = array;

    addressesCopy = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSArray *)emailAddresses addObject:addressesCopy];
}

- (void)setEmailAddresses:(id)addresses
{
  v4 = [addresses copy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  phoneNumbers = self->_phoneNumbers;
  v8 = numbersCopy;
  if (!phoneNumbers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = array;

    numbersCopy = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSArray *)phoneNumbers addObject:numbersCopy];
}

- (void)setPhoneNumbers:(id)numbers
{
  v4 = [numbers copy];
  phoneNumbers = self->_phoneNumbers;
  self->_phoneNumbers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersonIdentifier:(id)identifier
{
  v4 = [identifier copy];
  personIdentifier = self->_personIdentifier;
  self->_personIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end