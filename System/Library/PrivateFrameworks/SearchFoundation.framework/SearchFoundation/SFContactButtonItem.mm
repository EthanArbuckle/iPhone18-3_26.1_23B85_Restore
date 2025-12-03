@interface SFContactButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFContactButtonItem)initWithCoder:(id)coder;
- (SFContactButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFContactButtonItem

- (SFContactButtonItem)initWithProtobuf:(id)protobuf
{
  v28 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v26.receiver = self;
  v26.super_class = SFContactButtonItem;
  v5 = [(SFContactButtonItem *)&v26 init];
  if (v5)
  {
    contactIdentifier = [protobufCopy contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [protobufCopy contactIdentifier];
      [(SFContactButtonItem *)v5 setContactIdentifier:contactIdentifier2];
    }

    person = [protobufCopy person];

    if (person)
    {
      v9 = [SFPerson alloc];
      person2 = [protobufCopy person];
      v11 = [(SFPerson *)v9 initWithProtobuf:person2];
      [(SFContactButtonItem *)v5 setPerson:v11];
    }

    actionTypesToShows = [protobufCopy actionTypesToShows];
    if (actionTypesToShows)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    actionTypesToShows2 = [protobufCopy actionTypesToShows];
    v15 = [actionTypesToShows2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(actionTypesToShows2);
          }

          if (*(*(&v22 + 1) + 8 * i))
          {
            [v13 addObject:?];
          }
        }

        v16 = [actionTypesToShows2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }

    [(SFContactButtonItem *)v5 setActionTypesToShow:v13];
    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFContactButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  contactIdentifier = [(SFContactButtonItem *)self contactIdentifier];
  v5 = [contactIdentifier hash];
  person = [(SFContactButtonItem *)self person];
  v7 = v5 ^ [person hash];
  actionTypesToShow = [(SFContactButtonItem *)self actionTypesToShow];
  v9 = v7 ^ [actionTypesToShow hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFContactButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFContactButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        contactIdentifier = [(SFContactButtonItem *)self contactIdentifier];
        contactIdentifier2 = [(SFContactButtonItem *)v6 contactIdentifier];
        if ((contactIdentifier != 0) == (contactIdentifier2 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        contactIdentifier3 = [(SFContactButtonItem *)self contactIdentifier];
        if (contactIdentifier3)
        {
          contactIdentifier4 = [(SFContactButtonItem *)self contactIdentifier];
          contactIdentifier5 = [(SFContactButtonItem *)v6 contactIdentifier];
          if (![contactIdentifier4 isEqual:contactIdentifier5])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = contactIdentifier4;
        }

        person = [(SFContactButtonItem *)self person];
        person2 = [(SFContactButtonItem *)v6 person];
        v14 = person2;
        if ((person != 0) == (person2 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        person3 = [(SFContactButtonItem *)self person];
        if (person3)
        {
          v27 = person;
          person4 = [(SFContactButtonItem *)self person];
          person5 = [(SFContactButtonItem *)v6 person];
          v30 = person4;
          if (![person4 isEqual:?])
          {
            v11 = 0;
            person = v27;
            goto LABEL_29;
          }

          v31 = person3;
          v32 = contactIdentifier5;
          person = v27;
        }

        else
        {
          v31 = 0;
          v32 = contactIdentifier5;
        }

        actionTypesToShow = [(SFContactButtonItem *)self actionTypesToShow];
        actionTypesToShow2 = [(SFContactButtonItem *)v6 actionTypesToShow];
        if ((actionTypesToShow != 0) == (actionTypesToShow2 == 0))
        {

          v11 = 0;
          person3 = v31;
          contactIdentifier5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = actionTypesToShow2;
        v26 = actionTypesToShow;
        [(SFContactButtonItem *)self actionTypesToShow];
        v28 = person3 = v31;
        if (v28)
        {
          actionTypesToShow3 = [(SFContactButtonItem *)self actionTypesToShow];
          actionTypesToShow4 = [(SFContactButtonItem *)v6 actionTypesToShow];
          v24 = actionTypesToShow3;
          v20 = [actionTypesToShow3 isEqual:?];
          contactIdentifier5 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              contactIdentifier4 = v33;
              if (!contactIdentifier3)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          contactIdentifier5 = v32;
        }

        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFContactButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:zone];
  contactIdentifier = [(SFContactButtonItem *)self contactIdentifier];
  v6 = [contactIdentifier copy];
  [v4 setContactIdentifier:v6];

  person = [(SFContactButtonItem *)self person];
  v8 = [person copy];
  [v4 setPerson:v8];

  actionTypesToShow = [(SFContactButtonItem *)self actionTypesToShow];
  v10 = [actionTypesToShow copy];
  [v4 setActionTypesToShow:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBContactButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBContactButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBContactButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBContactButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBContactButtonItem alloc] initWithFacade:self];
  data = [(_SFPBContactButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFContactButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBContactButtonItem alloc] initWithData:v5];
  v7 = [(SFContactButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end