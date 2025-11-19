@interface SKGPersonComponents
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersonComponents:(id)a3;
- (SKGPersonComponents)initWithEmailAddresses:(id)a3 phoneNumbers:(id)a4;
- (SKGPersonComponents)initWithName:(id)a3 nameComponents:(id)a4 displayName:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7;
- (void)addName:(id)a3 nameComponents:(id)a4 displayName:(id)a5;
@end

@implementation SKGPersonComponents

- (SKGPersonComponents)initWithName:(id)a3 nameComponents:(id)a4 displayName:(id)a5 emailAddresses:(id)a6 phoneNumbers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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

    if (v12 && v13)
    {
      [(NSMutableSet *)v17->_nameComponents addObject:v13];
      [(NSMutableSet *)v17->_names addObject:v12];
      if (v14)
      {
        v24 = v14;
      }

      else
      {
        v24 = v12;
      }

      [(NSMutableSet *)v17->_displayNames addObject:v24];
    }

    if (v15)
    {
      [MEMORY[0x277CBEB58] setWithArray:v15];
    }

    else
    {
      [MEMORY[0x277CBEB58] set];
    }
    v25 = ;
    emailAddresses = v17->_emailAddresses;
    v17->_emailAddresses = v25;

    if (v16)
    {
      [MEMORY[0x277CBEB58] setWithArray:v16];
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

- (SKGPersonComponents)initWithEmailAddresses:(id)a3 phoneNumbers:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    if (v6)
    {
      [MEMORY[0x277CBEB58] setWithArray:v6];
    }

    else
    {
      [MEMORY[0x277CBEB58] set];
    }
    v15 = ;
    emailAddresses = v8->_emailAddresses;
    v8->_emailAddresses = v15;

    if (v7)
    {
      [MEMORY[0x277CBEB58] setWithArray:v7];
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

- (void)addName:(id)a3 nameComponents:(id)a4 displayName:(id)a5
{
  if (a3 && a4)
  {
    names = self->_names;
    v9 = MEMORY[0x277CCACA8];
    v10 = a5;
    v11 = a4;
    v18 = a3;
    v12 = [v9 stringWithString:v18];
    [(NSMutableSet *)names addObject:v12];

    nameComponents = self->_nameComponents;
    v14 = [v11 copy];

    [(NSMutableSet *)nameComponents addObject:v14];
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v18;
    }

    displayNames = self->_displayNames;
    v17 = [MEMORY[0x277CCACA8] stringWithString:v15];
    [(NSMutableSet *)displayNames addObject:v17];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGPersonComponents *)self isEqualToPersonComponents:v4];

  return v5;
}

- (BOOL)isEqualToPersonComponents:(id)a3
{
  v4 = a3;
  v5 = [(SKGPersonComponents *)self names];
  v6 = [v4 names];
  v7 = [v5 isEqualToArray:v6];

  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = [(SKGPersonComponents *)self nameComponents];
  v9 = [v4 nameComponents];
  v10 = [v8 isEqualToArray:v9];

  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = [(SKGPersonComponents *)self phoneNumbers];
  v12 = [v4 phoneNumbers];
  v13 = [v11 isEqualToArray:v12];

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = [(SKGPersonComponents *)self emailAddresses];
  v15 = [v4 emailAddresses];
  v16 = [v14 isEqualToArray:v15];

  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = [(SKGPersonComponents *)self entityIdentifier];
  if (!v17 || ([v4 entityIdentifier], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(SKGPersonComponents *)self entityIdentifier];
    if (v18 || ([v4 entityIdentifier], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19 = [(SKGPersonComponents *)self entityIdentifier];
      v20 = [v4 entityIdentifier];
      v21 = [v19 isEqualToString:v20] ^ 1;

      if (v18)
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
    if (v17)
    {
    }

    if (v21)
    {
      goto LABEL_28;
    }

    v17 = [(SKGPersonComponents *)self contactIdentifier];
    if (v17)
    {
      v15 = [v4 contactIdentifier];
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    v23 = [(SKGPersonComponents *)self contactIdentifier];
    if (v23 || ([v4 contactIdentifier], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v24 = [(SKGPersonComponents *)self contactIdentifier];
      v25 = [v4 contactIdentifier];
      v26 = [v24 isEqualToString:v25] ^ 1;

      if (v23)
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
    if (v17)
    {
    }

    if (v26)
    {
      goto LABEL_28;
    }

    v30 = [(SKGPersonComponents *)self photosPersonIdentifier];
    if (v30)
    {
      v15 = [v4 photosPersonIdentifier];
      if (!v15)
      {
        LOBYTE(v31) = 1;
        goto LABEL_40;
      }
    }

    v32 = [(SKGPersonComponents *)self photosPersonIdentifier];
    if (v32 || ([v4 photosPersonIdentifier], (v35 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v33 = [(SKGPersonComponents *)self photosPersonIdentifier];
      v34 = [v4 photosPersonIdentifier];
      v31 = [v33 isEqualToString:v34] ^ 1;

      if (v32)
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
    if (!v30)
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