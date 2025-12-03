@interface SFPerson
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerson)initWithCoder:(id)coder;
- (SFPerson)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPerson

- (SFPerson)initWithProtobuf:(id)protobuf
{
  v42 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v39.receiver = self;
  v39.super_class = SFPerson;
  v5 = [(SFPerson *)&v39 init];
  if (v5)
  {
    personIdentifier = [protobufCopy personIdentifier];

    if (personIdentifier)
    {
      personIdentifier2 = [protobufCopy personIdentifier];
      [(SFPerson *)v5 setPersonIdentifier:personIdentifier2];
    }

    contactIdentifier = [protobufCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [protobufCopy contactIdentifier];
      [(SFPerson *)v5 setContactIdentifier:contactIdentifier2];
    }

    displayName = [protobufCopy displayName];

    if (displayName)
    {
      displayName2 = [protobufCopy displayName];
      [(SFPerson *)v5 setDisplayName:displayName2];
    }

    phoneNumbers = [protobufCopy phoneNumbers];
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
    phoneNumbers2 = [protobufCopy phoneNumbers];
    v15 = [phoneNumbers2 countByEnumeratingWithState:&v35 objects:v41 count:16];
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

        v16 = [phoneNumbers2 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v16);
    }

    [(SFPerson *)v5 setPhoneNumbers:v13];
    emailAddresses = [protobufCopy emailAddresses];
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
    emailAddresses2 = [protobufCopy emailAddresses];
    v22 = [emailAddresses2 countByEnumeratingWithState:&v31 objects:v40 count:16];
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

        v23 = [emailAddresses2 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v23);
    }

    [(SFPerson *)v5 setEmailAddresses:v20];
    photosIdentifier = [protobufCopy photosIdentifier];

    if (photosIdentifier)
    {
      photosIdentifier2 = [protobufCopy photosIdentifier];
      [(SFPerson *)v5 setPhotosIdentifier:photosIdentifier2];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  personIdentifier = [(SFPerson *)self personIdentifier];
  v4 = [personIdentifier hash];
  contactIdentifier = [(SFPerson *)self contactIdentifier];
  v6 = [contactIdentifier hash] ^ v4;
  displayName = [(SFPerson *)self displayName];
  v8 = [displayName hash];
  phoneNumbers = [(SFPerson *)self phoneNumbers];
  v10 = v6 ^ v8 ^ [phoneNumbers hash];
  emailAddresses = [(SFPerson *)self emailAddresses];
  v12 = [emailAddresses hash];
  photosIdentifier = [(SFPerson *)self photosIdentifier];
  v14 = v12 ^ [photosIdentifier hash];

  return v10 ^ v14;
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
    if ([(SFPerson *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      personIdentifier = [(SFPerson *)self personIdentifier];
      personIdentifier2 = [(SFPerson *)v6 personIdentifier];
      if ((personIdentifier != 0) == (personIdentifier2 == 0))
      {
        v11 = 0;
LABEL_36:

        goto LABEL_37;
      }

      personIdentifier3 = [(SFPerson *)self personIdentifier];
      if (personIdentifier3)
      {
        personIdentifier4 = [(SFPerson *)self personIdentifier];
        personIdentifier5 = [(SFPerson *)v6 personIdentifier];
        if (![personIdentifier4 isEqual:?])
        {
          v11 = 0;
          goto LABEL_34;
        }

        v54 = personIdentifier4;
      }

      contactIdentifier = [(SFPerson *)self contactIdentifier];
      contactIdentifier2 = [(SFPerson *)v6 contactIdentifier];
      if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
      {
        goto LABEL_32;
      }

      contactIdentifier3 = [(SFPerson *)self contactIdentifier];
      if (contactIdentifier3)
      {
        contactIdentifier4 = [(SFPerson *)self contactIdentifier];
        contactIdentifier5 = [(SFPerson *)v6 contactIdentifier];
        if (([contactIdentifier4 isEqual:contactIdentifier5] & 1) == 0)
        {

LABEL_31:
LABEL_32:

          v11 = 0;
          goto LABEL_33;
        }

        v51 = contactIdentifier4;
        v53 = personIdentifier2;
        v14 = personIdentifier5;
        v15 = contactIdentifier3;
      }

      else
      {
        v53 = personIdentifier2;
        v14 = personIdentifier5;
        v15 = 0;
      }

      v52 = contactIdentifier5;
      personIdentifier5 = v14;
      displayName = [(SFPerson *)self displayName];
      displayName2 = [(SFPerson *)v6 displayName];
      contactIdentifier3 = v15;
      personIdentifier2 = v53;
      if ((displayName != 0) != (displayName2 == 0))
      {
        v50 = displayName2;
        displayName3 = [(SFPerson *)self displayName];
        if (displayName3)
        {
          displayName4 = [(SFPerson *)self displayName];
          displayName5 = [(SFPerson *)v6 displayName];
          v47 = displayName4;
          if (![displayName4 isEqual:?])
          {
            v11 = 0;
            v24 = displayName3;
            goto LABEL_56;
          }

          v48 = v15;
        }

        else
        {
          v48 = v15;
        }

        phoneNumbers = [(SFPerson *)self phoneNumbers];
        phoneNumbers2 = [(SFPerson *)v6 phoneNumbers];
        if ((phoneNumbers != 0) != (phoneNumbers2 == 0))
        {
          v45 = phoneNumbers2;
          [(SFPerson *)self phoneNumbers];
          contactIdentifier3 = v48;
          v44 = v43 = phoneNumbers;
          if (v44)
          {
            phoneNumbers3 = [(SFPerson *)self phoneNumbers];
            phoneNumbers4 = [(SFPerson *)v6 phoneNumbers];
            v42 = phoneNumbers3;
            if (![phoneNumbers3 isEqual:?])
            {
              v11 = 0;
              v22 = v44;
LABEL_54:

LABEL_55:
              v24 = displayName3;
              if (!displayName3)
              {
LABEL_57:

                if (contactIdentifier3)
                {
                }

LABEL_33:
                personIdentifier4 = v54;
                if (!personIdentifier3)
                {
LABEL_35:

                  goto LABEL_36;
                }

LABEL_34:

                goto LABEL_35;
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          emailAddresses = [(SFPerson *)self emailAddresses];
          emailAddresses2 = [(SFPerson *)v6 emailAddresses];
          if ((emailAddresses != 0) == (emailAddresses2 == 0))
          {

            v11 = 0;
            contactIdentifier3 = v48;
            goto LABEL_53;
          }

          v39 = emailAddresses;
          v40 = emailAddresses2;
          [(SFPerson *)self emailAddresses];
          v38 = contactIdentifier3 = v48;
          if (v38 && (-[SFPerson emailAddresses](self, "emailAddresses"), v27 = objc_claimAutoreleasedReturnValue(), -[SFPerson emailAddresses](v6, "emailAddresses"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
          {
            v11 = 0;
            v32 = v38;
          }

          else
          {
            photosIdentifier = [(SFPerson *)self photosIdentifier];
            photosIdentifier2 = [(SFPerson *)v6 photosIdentifier];
            if ((photosIdentifier != 0) == (photosIdentifier2 == 0))
            {

              v11 = 0;
              contactIdentifier3 = v48;
            }

            else
            {
              v35 = photosIdentifier2;
              photosIdentifier3 = [(SFPerson *)self photosIdentifier];
              contactIdentifier3 = v48;
              if (photosIdentifier3)
              {
                v34 = photosIdentifier3;
                photosIdentifier4 = [(SFPerson *)self photosIdentifier];
                photosIdentifier5 = [(SFPerson *)v6 photosIdentifier];
                v11 = [photosIdentifier4 isEqual:?];
              }

              else
              {

                v11 = 1;
              }
            }

            v32 = v38;
            if (!v38)
            {
              goto LABEL_52;
            }
          }

LABEL_52:
LABEL_53:
          v22 = v44;
          if (!v44)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

        contactIdentifier3 = v48;
        if (displayName3)
        {
        }

        displayName2 = v50;
      }

      if (contactIdentifier3)
      {
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_37:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  personIdentifier = [(SFPerson *)self personIdentifier];
  v6 = [personIdentifier copy];
  [v4 setPersonIdentifier:v6];

  contactIdentifier = [(SFPerson *)self contactIdentifier];
  v8 = [contactIdentifier copy];
  [v4 setContactIdentifier:v8];

  displayName = [(SFPerson *)self displayName];
  v10 = [displayName copy];
  [v4 setDisplayName:v10];

  phoneNumbers = [(SFPerson *)self phoneNumbers];
  v12 = [phoneNumbers copy];
  [v4 setPhoneNumbers:v12];

  emailAddresses = [(SFPerson *)self emailAddresses];
  v14 = [emailAddresses copy];
  [v4 setEmailAddresses:v14];

  photosIdentifier = [(SFPerson *)self photosIdentifier];
  v16 = [photosIdentifier copy];
  [v4 setPhotosIdentifier:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerson alloc] initWithFacade:self];
  jsonData = [(_SFPBPerson *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerson alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPerson *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPerson alloc] initWithFacade:self];
  data = [(_SFPBPerson *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPerson alloc] initWithData:v5];
  v7 = [(SFPerson *)self initWithProtobuf:v6];

  return v7;
}

@end