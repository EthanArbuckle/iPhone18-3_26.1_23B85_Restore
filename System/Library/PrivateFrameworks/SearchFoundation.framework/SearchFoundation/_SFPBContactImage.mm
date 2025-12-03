@interface _SFPBContactImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBContactImage)initWithDictionary:(id)dictionary;
- (_SFPBContactImage)initWithFacade:(id)facade;
- (_SFPBContactImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactIdentifiers:(id)identifiers;
- (void)setAppIconBadgeBundleIdentifier:(id)identifier;
- (void)setContactIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation _SFPBContactImage

- (_SFPBContactImage)initWithFacade:(id)facade
{
  v23 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBContactImage *)self init];
  if (v5)
  {
    contactIdentifiers = [facadeCopy contactIdentifiers];
    if (contactIdentifiers)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    contactIdentifiers2 = [facadeCopy contactIdentifiers];
    v9 = [contactIdentifiers2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(contactIdentifiers2);
          }

          if (*(*(&v18 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [contactIdentifiers2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [(_SFPBContactImage *)v5 setContactIdentifiers:v7];
    if ([facadeCopy hasThreeDTouchEnabled])
    {
      -[_SFPBContactImage setThreeDTouchEnabled:](v5, "setThreeDTouchEnabled:", [facadeCopy threeDTouchEnabled]);
    }

    appIconBadgeBundleIdentifier = [facadeCopy appIconBadgeBundleIdentifier];

    if (appIconBadgeBundleIdentifier)
    {
      appIconBadgeBundleIdentifier2 = [facadeCopy appIconBadgeBundleIdentifier];
      [(_SFPBContactImage *)v5 setAppIconBadgeBundleIdentifier:appIconBadgeBundleIdentifier2];
    }

    v15 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBContactImage)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBContactImage;
  v5 = [(_SFPBContactImage *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactIdentifiers"];
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
              v13 = [v12 copy];
              [(_SFPBContactImage *)v5 addContactIdentifiers:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"threeDTouchEnabled", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBContactImage setThreeDTouchEnabled:](v5, "setThreeDTouchEnabled:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"appIconBadgeBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBContactImage *)v5 setAppIconBadgeBundleIdentifier:v16];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBContactImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBContactImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBContactImage *)self dictionaryRepresentation];
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
  if (self->_appIconBadgeBundleIdentifier)
  {
    appIconBadgeBundleIdentifier = [(_SFPBContactImage *)self appIconBadgeBundleIdentifier];
    v5 = [appIconBadgeBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appIconBadgeBundleIdentifier"];
  }

  if (self->_contactIdentifiers)
  {
    contactIdentifiers = [(_SFPBContactImage *)self contactIdentifiers];
    v7 = [contactIdentifiers copy];
    [dictionary setObject:v7 forKeyedSubscript:@"contactIdentifiers"];
  }

  if (self->_threeDTouchEnabled)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBContactImage threeDTouchEnabled](self, "threeDTouchEnabled")}];
    [dictionary setObject:v8 forKeyedSubscript:@"threeDTouchEnabled"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_contactIdentifiers hash];
  if (self->_threeDTouchEnabled)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_appIconBadgeBundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  contactIdentifiers = [(_SFPBContactImage *)self contactIdentifiers];
  contactIdentifiers2 = [equalCopy contactIdentifiers];
  if ((contactIdentifiers != 0) == (contactIdentifiers2 == 0))
  {
    goto LABEL_12;
  }

  contactIdentifiers3 = [(_SFPBContactImage *)self contactIdentifiers];
  if (contactIdentifiers3)
  {
    v8 = contactIdentifiers3;
    contactIdentifiers4 = [(_SFPBContactImage *)self contactIdentifiers];
    contactIdentifiers5 = [equalCopy contactIdentifiers];
    v11 = [contactIdentifiers4 isEqual:contactIdentifiers5];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  threeDTouchEnabled = self->_threeDTouchEnabled;
  if (threeDTouchEnabled != [equalCopy threeDTouchEnabled])
  {
    goto LABEL_13;
  }

  contactIdentifiers = [(_SFPBContactImage *)self appIconBadgeBundleIdentifier];
  contactIdentifiers2 = [equalCopy appIconBadgeBundleIdentifier];
  if ((contactIdentifiers != 0) == (contactIdentifiers2 == 0))
  {
LABEL_12:

    goto LABEL_13;
  }

  appIconBadgeBundleIdentifier = [(_SFPBContactImage *)self appIconBadgeBundleIdentifier];
  if (!appIconBadgeBundleIdentifier)
  {

LABEL_16:
    v18 = 1;
    goto LABEL_14;
  }

  v14 = appIconBadgeBundleIdentifier;
  appIconBadgeBundleIdentifier2 = [(_SFPBContactImage *)self appIconBadgeBundleIdentifier];
  appIconBadgeBundleIdentifier3 = [equalCopy appIconBadgeBundleIdentifier];
  v17 = [appIconBadgeBundleIdentifier2 isEqual:appIconBadgeBundleIdentifier3];

  if (v17)
  {
    goto LABEL_16;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  contactIdentifiers = [(_SFPBContactImage *)self contactIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [contactIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(contactIdentifiers);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [contactIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(_SFPBContactImage *)self threeDTouchEnabled])
  {
    PBDataWriterWriteBOOLField();
  }

  appIconBadgeBundleIdentifier = [(_SFPBContactImage *)self appIconBadgeBundleIdentifier];
  if (appIconBadgeBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAppIconBadgeBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  appIconBadgeBundleIdentifier = self->_appIconBadgeBundleIdentifier;
  self->_appIconBadgeBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  contactIdentifiers = self->_contactIdentifiers;
  v8 = identifiersCopy;
  if (!contactIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contactIdentifiers;
    self->_contactIdentifiers = array;

    identifiersCopy = v8;
    contactIdentifiers = self->_contactIdentifiers;
  }

  [(NSArray *)contactIdentifiers addObject:identifiersCopy];
}

- (void)setContactIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  contactIdentifiers = self->_contactIdentifiers;
  self->_contactIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

@end