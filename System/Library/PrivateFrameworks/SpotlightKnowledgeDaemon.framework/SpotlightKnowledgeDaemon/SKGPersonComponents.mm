@interface SKGPersonComponents
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersonComponents:(id)components;
- (SKGPersonComponents)initWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers;
- (SKGPersonComponents)initWithName:(id)name nameComponents:(id)components displayName:(id)displayName emailAddresses:(id)addresses phoneNumbers:(id)numbers;
- (void)addName:(id)name nameComponents:(id)components displayName:(id)displayName;
@end

@implementation SKGPersonComponents

- (SKGPersonComponents)initWithName:(id)name nameComponents:(id)components displayName:(id)displayName emailAddresses:(id)addresses phoneNumbers:(id)numbers
{
  nameCopy = name;
  componentsCopy = components;
  displayNameCopy = displayName;
  addressesCopy = addresses;
  numbersCopy = numbers;
  v33.receiver = self;
  v33.super_class = SKGPersonComponents;
  v17 = [(SKGPersonComponents *)&v33 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    nameComponents = v17->_nameComponents;
    v17->_nameComponents = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    names = v17->_names;
    v17->_names = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    displayNames = v17->_displayNames;
    v17->_displayNames = v22;

    if (nameCopy && componentsCopy)
    {
      [(NSMutableSet *)v17->_nameComponents addObject:componentsCopy];
      [(NSMutableSet *)v17->_names addObject:nameCopy];
      if (displayNameCopy)
      {
        v24 = displayNameCopy;
      }

      else
      {
        v24 = nameCopy;
      }

      [(NSMutableSet *)v17->_displayNames addObject:v24];
    }

    if (addressesCopy)
    {
      [MEMORY[0x277CBEB58] setWithArray:addressesCopy];
    }

    else
    {
      [MEMORY[0x277CBEB58] set];
    }
    v25 = ;
    emailAddresses = v17->_emailAddresses;
    v17->_emailAddresses = v25;

    if (numbersCopy)
    {
      [MEMORY[0x277CBEB58] setWithArray:numbersCopy];
    }

    else
    {
      [MEMORY[0x277CBEB58] set];
    }
    v27 = ;
    phoneNumbers = v17->_phoneNumbers;
    v17->_phoneNumbers = v27;

    entityIdentifier = v17->_entityIdentifier;
    v17->_entityIdentifier = 0;

    contactIdentifier = v17->_contactIdentifier;
    v17->_contactIdentifier = 0;

    photosPersonIdentifier = v17->_photosPersonIdentifier;
    v17->_photosPersonIdentifier = 0;
  }

  return v17;
}

- (SKGPersonComponents)initWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers
{
  addressesCopy = addresses;
  numbersCopy = numbers;
  v23.receiver = self;
  v23.super_class = SKGPersonComponents;
  v8 = [(SKGPersonComponents *)&v23 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    nameComponents = v8->_nameComponents;
    v8->_nameComponents = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    names = v8->_names;
    v8->_names = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    displayNames = v8->_displayNames;
    v8->_displayNames = v13;

    if (addressesCopy)
    {
      [MEMORY[0x277CBEB58] setWithArray:addressesCopy];
    }

    else
    {
      [MEMORY[0x277CBEB58] set];
    }
    v15 = ;
    emailAddresses = v8->_emailAddresses;
    v8->_emailAddresses = v15;

    if (numbersCopy)
    {
      [MEMORY[0x277CBEB58] setWithArray:numbersCopy];
    }

    else
    {
      [MEMORY[0x277CBEB58] set];
    }
    v17 = ;
    phoneNumbers = v8->_phoneNumbers;
    v8->_phoneNumbers = v17;

    entityIdentifier = v8->_entityIdentifier;
    v8->_entityIdentifier = 0;

    contactIdentifier = v8->_contactIdentifier;
    v8->_contactIdentifier = 0;

    photosPersonIdentifier = v8->_photosPersonIdentifier;
    v8->_photosPersonIdentifier = 0;
  }

  return v8;
}

- (void)addName:(id)name nameComponents:(id)components displayName:(id)displayName
{
  if (name && components)
  {
    names = self->_names;
    v9 = MEMORY[0x277CCACA8];
    displayNameCopy = displayName;
    componentsCopy = components;
    nameCopy = name;
    v12 = [v9 stringWithString:nameCopy];
    [(NSMutableSet *)names addObject:v12];

    nameComponents = self->_nameComponents;
    v14 = [componentsCopy copy];

    [(NSMutableSet *)nameComponents addObject:v14];
    if (displayNameCopy)
    {
      v15 = displayNameCopy;
    }

    else
    {
      v15 = nameCopy;
    }

    displayNames = self->_displayNames;
    v17 = [MEMORY[0x277CCACA8] stringWithString:v15];
    [(NSMutableSet *)displayNames addObject:v17];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGPersonComponents *)self isEqualToPersonComponents:equalCopy];

  return v5;
}

- (BOOL)isEqualToPersonComponents:(id)components
{
  componentsCopy = components;
  names = [(SKGPersonComponents *)self names];
  names2 = [componentsCopy names];
  v7 = [names isEqualToArray:names2];

  if (!v7)
  {
    goto LABEL_28;
  }

  nameComponents = [(SKGPersonComponents *)self nameComponents];
  nameComponents2 = [componentsCopy nameComponents];
  v10 = [nameComponents isEqualToArray:nameComponents2];

  if (!v10)
  {
    goto LABEL_28;
  }

  phoneNumbers = [(SKGPersonComponents *)self phoneNumbers];
  phoneNumbers2 = [componentsCopy phoneNumbers];
  v13 = [phoneNumbers isEqualToArray:phoneNumbers2];

  if (!v13)
  {
    goto LABEL_28;
  }

  emailAddresses = [(SKGPersonComponents *)self emailAddresses];
  emailAddresses2 = [componentsCopy emailAddresses];
  v16 = [emailAddresses isEqualToArray:emailAddresses2];

  if (!v16)
  {
    goto LABEL_28;
  }

  entityIdentifier = [(SKGPersonComponents *)self entityIdentifier];
  if (!entityIdentifier || ([componentsCopy entityIdentifier], (emailAddresses2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    entityIdentifier2 = [(SKGPersonComponents *)self entityIdentifier];
    if (entityIdentifier2 || ([componentsCopy entityIdentifier], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      entityIdentifier3 = [(SKGPersonComponents *)self entityIdentifier];
      entityIdentifier4 = [componentsCopy entityIdentifier];
      v21 = [entityIdentifier3 isEqualToString:entityIdentifier4] ^ 1;

      if (entityIdentifier2)
      {
        goto LABEL_13;
      }

      v22 = 0;
    }

    else
    {
      v21 = 1;
    }

LABEL_13:
    if (entityIdentifier)
    {
    }

    if (v21)
    {
      goto LABEL_28;
    }

    entityIdentifier = [(SKGPersonComponents *)self contactIdentifier];
    if (entityIdentifier)
    {
      emailAddresses2 = [componentsCopy contactIdentifier];
      if (!emailAddresses2)
      {
        goto LABEL_18;
      }
    }

    contactIdentifier = [(SKGPersonComponents *)self contactIdentifier];
    if (contactIdentifier || ([componentsCopy contactIdentifier], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      contactIdentifier2 = [(SKGPersonComponents *)self contactIdentifier];
      contactIdentifier3 = [componentsCopy contactIdentifier];
      v26 = [contactIdentifier2 isEqualToString:contactIdentifier3] ^ 1;

      if (contactIdentifier)
      {
        goto LABEL_25;
      }

      v27 = 0;
    }

    else
    {
      v26 = 1;
    }

LABEL_25:
    if (entityIdentifier)
    {
    }

    if (v26)
    {
      goto LABEL_28;
    }

    photosPersonIdentifier = [(SKGPersonComponents *)self photosPersonIdentifier];
    if (photosPersonIdentifier)
    {
      emailAddresses2 = [componentsCopy photosPersonIdentifier];
      if (!emailAddresses2)
      {
        LOBYTE(v31) = 1;
        goto LABEL_40;
      }
    }

    photosPersonIdentifier2 = [(SKGPersonComponents *)self photosPersonIdentifier];
    if (photosPersonIdentifier2 || ([componentsCopy photosPersonIdentifier], (v35 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      photosPersonIdentifier3 = [(SKGPersonComponents *)self photosPersonIdentifier];
      photosPersonIdentifier4 = [componentsCopy photosPersonIdentifier];
      v31 = [photosPersonIdentifier3 isEqualToString:photosPersonIdentifier4] ^ 1;

      if (photosPersonIdentifier2)
      {
        goto LABEL_39;
      }

      v35 = 0;
    }

    else
    {
      LOBYTE(v31) = 1;
    }

LABEL_39:
    if (!photosPersonIdentifier)
    {
LABEL_41:

      v28 = v31 ^ 1;
      goto LABEL_29;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_18:

LABEL_28:
  v28 = 0;
LABEL_29:

  return v28;
}

@end