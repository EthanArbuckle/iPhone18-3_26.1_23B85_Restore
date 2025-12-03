@interface SFShareSheetRecipient
- (SFShareSheetRecipient)initWithAirDropNode:(id)node;
- (SFShareSheetRecipient)initWithCoder:(id)coder;
- (SFShareSheetRecipient)initWithNode:(id)node;
- (SFShareSheetRecipient)initWithPerson:(id)person handleValidationBlock:(id)block;
- (SFShareSheetRecipient)initWithRealName:(id)name displayName:(id)displayName formattedHandles:(id)handles contactIdentifier:(id)identifier;
- (id)_handleFromPerson:(id)person withHandleValidationBlock:(id)block;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShareSheetRecipient

- (SFShareSheetRecipient)initWithNode:(id)node
{
  nodeCopy = node;
  realName = [nodeCopy realName];
  displayName = [nodeCopy displayName];
  formattedHandles = [nodeCopy formattedHandles];
  contactIdentifier = [nodeCopy contactIdentifier];

  v9 = [(SFShareSheetRecipient *)self initWithRealName:realName displayName:displayName formattedHandles:formattedHandles contactIdentifier:contactIdentifier];
  return v9;
}

- (SFShareSheetRecipient)initWithAirDropNode:(id)node
{
  nodeCopy = node;
  realName = [nodeCopy realName];
  displayName = [nodeCopy displayName];
  formattedHandles = [nodeCopy formattedHandles];
  contactIdentifier = [nodeCopy contactIdentifier];

  v9 = [(SFShareSheetRecipient *)self initWithRealName:realName displayName:displayName formattedHandles:formattedHandles contactIdentifier:contactIdentifier];
  return v9;
}

- (SFShareSheetRecipient)initWithPerson:(id)person handleValidationBlock:(id)block
{
  personCopy = person;
  v7 = [(SFShareSheetRecipient *)self _handleFromPerson:personCopy withHandleValidationBlock:block];
  if (v7)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v7];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v8 = ;
  customIdentifier = [personCopy customIdentifier];
  displayName = [personCopy displayName];
  contactIdentifier = [personCopy contactIdentifier];

  v12 = [(SFShareSheetRecipient *)self initWithRealName:customIdentifier displayName:displayName formattedHandles:v8 contactIdentifier:contactIdentifier];
  return v12;
}

- (SFShareSheetRecipient)initWithRealName:(id)name displayName:(id)displayName formattedHandles:(id)handles contactIdentifier:(id)identifier
{
  nameCopy = name;
  displayNameCopy = displayName;
  handlesCopy = handles;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = SFShareSheetRecipient;
  v14 = [(SFShareSheetRecipient *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    realName = v14->_realName;
    v14->_realName = v15;

    v17 = [displayNameCopy copy];
    displayName = v14->_displayName;
    v14->_displayName = v17;

    v19 = [handlesCopy copy];
    formattedHandles = v14->_formattedHandles;
    v14->_formattedHandles = v19;

    v21 = [identifierCopy copy];
    contactIdentifier = v14->_contactIdentifier;
    v14->_contactIdentifier = v21;
  }

  return v14;
}

- (id)description
{
  if (IsAppleInternalBuild())
  {
    v3 = MEMORY[0x1E696AEC0];
    v8.receiver = self;
    v8.super_class = SFShareSheetRecipient;
    v4 = [(SFShareSheetRecipient *)&v8 description];
    v5 = [v3 stringWithFormat:@"<%@ realName:%@ displayName:%@ contactIdentifier:%@ formattedHandles:%@>", v4, self->_realName, self->_displayName, self->_contactIdentifier, self->_formattedHandles];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFShareSheetRecipient;
    v5 = [(SFShareSheetRecipient *)&v7 description];
  }

  return v5;
}

- (SFShareSheetRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SFShareSheetRecipient;
  v5 = [(SFShareSheetRecipient *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"realName"];
    realName = v5->_realName;
    v5->_realName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"formattedHandles"];
    formattedHandles = v5->_formattedHandles;
    v5->_formattedHandles = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  realName = self->_realName;
  coderCopy = coder;
  [coderCopy encodeObject:realName forKey:@"realName"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_formattedHandles forKey:@"formattedHandles"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (id)_handleFromPerson:(id)person withHandleValidationBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  personCopy = person;
  blockCopy = block;
  personHandle = [personCopy personHandle];
  value = [personHandle value];

  if (value && (!blockCopy || ([personCopy personHandle], v9 = objc_claimAutoreleasedReturnValue(), v10 = blockCopy[2](blockCopy, v9), v9, v10)))
  {
    personHandle2 = [personCopy personHandle];
    value2 = [personHandle2 value];
  }

  else
  {
    value2 = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  aliases = [personCopy aliases];
  v14 = [aliases countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(aliases);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if (!blockCopy || blockCopy[2](blockCopy, *(*(&v22 + 1) + 8 * i)))
        {
          value3 = [v18 value];

          value2 = value3;
        }
      }

      v15 = [aliases countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];

  return value2;
}

@end