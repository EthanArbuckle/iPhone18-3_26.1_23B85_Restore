@interface SFPerson
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerson)initWithCoder:(id)a3;
- (SFPerson)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPerson

- (SFPerson)initWithProtobuf:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = SFPerson;
  v5 = [(SFPerson *)&v39 init];
  if (v5)
  {
    v6 = [v4 personIdentifier];

    if (v6)
    {
      v7 = [v4 personIdentifier];
      [(SFPerson *)v5 setPersonIdentifier:v7];
    }

    v8 = [v4 contactIdentifier];

    if (v8)
    {
      v9 = [v4 contactIdentifier];
      [(SFPerson *)v5 setContactIdentifier:v9];
    }

    v10 = [v4 displayName];

    if (v10)
    {
      v11 = [v4 displayName];
      [(SFPerson *)v5 setDisplayName:v11];
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
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
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

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v16);
    }

    [(SFPerson *)v5 setPhoneNumbers:v13];
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
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
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

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v23);
    }

    [(SFPerson *)v5 setEmailAddresses:v20];
    v26 = [v4 photosIdentifier];

    if (v26)
    {
      v27 = [v4 photosIdentifier];
      [(SFPerson *)v5 setPhotosIdentifier:v27];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFPerson *)self personIdentifier];
  v4 = [v3 hash];
  v5 = [(SFPerson *)self contactIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFPerson *)self displayName];
  v8 = [v7 hash];
  v9 = [(SFPerson *)self phoneNumbers];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SFPerson *)self emailAddresses];
  v12 = [v11 hash];
  v13 = [(SFPerson *)self photosIdentifier];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
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
    if ([(SFPerson *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFPerson *)self personIdentifier];
      v8 = [(SFPerson *)v6 personIdentifier];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v9 = [(SFPerson *)self personIdentifier];
      if (v9)
      {
        v10 = [(SFPerson *)self personIdentifier];
        v57 = [(SFPerson *)v6 personIdentifier];
        if (![v10 isEqual:?])
        {
          v11 = 0;
          goto LABEL_34;
        }

        v54 = v10;
      }

      v56 = [(SFPerson *)self contactIdentifier];
      v55 = [(SFPerson *)v6 contactIdentifier];
      if ((v56 != 0) == (v55 == 0))
      {
        goto LABEL_32;
      }

      v12 = [(SFPerson *)self contactIdentifier];
      if (v12)
      {
        v13 = [(SFPerson *)self contactIdentifier];
        v3 = [(SFPerson *)v6 contactIdentifier];
        if (([v13 isEqual:v3] & 1) == 0)
        {

LABEL_31:
LABEL_32:

          v11 = 0;
          goto LABEL_33;
        }

        v51 = v13;
        v53 = v8;
        v14 = v57;
        v15 = v12;
      }

      else
      {
        v53 = v8;
        v14 = v57;
        v15 = 0;
      }

      v52 = v3;
      v57 = v14;
      v16 = [(SFPerson *)self displayName];
      v17 = [(SFPerson *)v6 displayName];
      v12 = v15;
      v8 = v53;
      if ((v16 != 0) != (v17 == 0))
      {
        v50 = v17;
        v49 = [(SFPerson *)self displayName];
        if (v49)
        {
          v18 = [(SFPerson *)self displayName];
          v46 = [(SFPerson *)v6 displayName];
          v47 = v18;
          if (![v18 isEqual:?])
          {
            v11 = 0;
            v24 = v49;
            goto LABEL_56;
          }

          v48 = v15;
        }

        else
        {
          v48 = v15;
        }

        v19 = [(SFPerson *)self phoneNumbers];
        v20 = [(SFPerson *)v6 phoneNumbers];
        if ((v19 != 0) != (v20 == 0))
        {
          v45 = v20;
          [(SFPerson *)self phoneNumbers];
          v12 = v48;
          v44 = v43 = v19;
          if (v44)
          {
            v21 = [(SFPerson *)self phoneNumbers];
            v41 = [(SFPerson *)v6 phoneNumbers];
            v42 = v21;
            if (![v21 isEqual:?])
            {
              v11 = 0;
              v22 = v44;
LABEL_54:

LABEL_55:
              v24 = v49;
              if (!v49)
              {
LABEL_57:

                if (v12)
                {
                }

LABEL_33:
                v10 = v54;
                if (!v9)
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

          v25 = [(SFPerson *)self emailAddresses];
          v26 = [(SFPerson *)v6 emailAddresses];
          if ((v25 != 0) == (v26 == 0))
          {

            v11 = 0;
            v12 = v48;
            goto LABEL_53;
          }

          v39 = v25;
          v40 = v26;
          [(SFPerson *)self emailAddresses];
          v38 = v12 = v48;
          if (v38 && (-[SFPerson emailAddresses](self, "emailAddresses"), v27 = objc_claimAutoreleasedReturnValue(), -[SFPerson emailAddresses](v6, "emailAddresses"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v27, ![v27 isEqual:?]))
          {
            v11 = 0;
            v32 = v38;
          }

          else
          {
            v28 = [(SFPerson *)self photosIdentifier];
            v29 = [(SFPerson *)v6 photosIdentifier];
            if ((v28 != 0) == (v29 == 0))
            {

              v11 = 0;
              v12 = v48;
            }

            else
            {
              v35 = v29;
              v30 = [(SFPerson *)self photosIdentifier];
              v12 = v48;
              if (v30)
              {
                v34 = v30;
                v33 = [(SFPerson *)self photosIdentifier];
                v31 = [(SFPerson *)v6 photosIdentifier];
                v11 = [v33 isEqual:?];
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

        v12 = v48;
        if (v49)
        {
        }

        v17 = v50;
      }

      if (v12)
      {
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_37:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFPerson *)self personIdentifier];
  v6 = [v5 copy];
  [v4 setPersonIdentifier:v6];

  v7 = [(SFPerson *)self contactIdentifier];
  v8 = [v7 copy];
  [v4 setContactIdentifier:v8];

  v9 = [(SFPerson *)self displayName];
  v10 = [v9 copy];
  [v4 setDisplayName:v10];

  v11 = [(SFPerson *)self phoneNumbers];
  v12 = [v11 copy];
  [v4 setPhoneNumbers:v12];

  v13 = [(SFPerson *)self emailAddresses];
  v14 = [v13 copy];
  [v4 setEmailAddresses:v14];

  v15 = [(SFPerson *)self photosIdentifier];
  v16 = [v15 copy];
  [v4 setPhotosIdentifier:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerson alloc] initWithFacade:self];
  v3 = [(_SFPBPerson *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerson alloc] initWithFacade:self];
  v3 = [(_SFPBPerson *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPerson alloc] initWithFacade:self];
  v5 = [(_SFPBPerson *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPerson alloc] initWithData:v5];
  v7 = [(SFPerson *)self initWithProtobuf:v6];

  return v7;
}

@end