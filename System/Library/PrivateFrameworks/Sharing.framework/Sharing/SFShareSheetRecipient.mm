@interface SFShareSheetRecipient
- (SFShareSheetRecipient)initWithAirDropNode:(id)a3;
- (SFShareSheetRecipient)initWithCoder:(id)a3;
- (SFShareSheetRecipient)initWithNode:(id)a3;
- (SFShareSheetRecipient)initWithPerson:(id)a3 handleValidationBlock:(id)a4;
- (SFShareSheetRecipient)initWithRealName:(id)a3 displayName:(id)a4 formattedHandles:(id)a5 contactIdentifier:(id)a6;
- (id)_handleFromPerson:(id)a3 withHandleValidationBlock:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFShareSheetRecipient

- (SFShareSheetRecipient)initWithNode:(id)a3
{
  v4 = a3;
  v5 = [v4 realName];
  v6 = [v4 displayName];
  v7 = [v4 formattedHandles];
  v8 = [v4 contactIdentifier];

  v9 = [(SFShareSheetRecipient *)self initWithRealName:v5 displayName:v6 formattedHandles:v7 contactIdentifier:v8];
  return v9;
}

- (SFShareSheetRecipient)initWithAirDropNode:(id)a3
{
  v4 = a3;
  v5 = [v4 realName];
  v6 = [v4 displayName];
  v7 = [v4 formattedHandles];
  v8 = [v4 contactIdentifier];

  v9 = [(SFShareSheetRecipient *)self initWithRealName:v5 displayName:v6 formattedHandles:v7 contactIdentifier:v8];
  return v9;
}

- (SFShareSheetRecipient)initWithPerson:(id)a3 handleValidationBlock:(id)a4
{
  v6 = a3;
  v7 = [(SFShareSheetRecipient *)self _handleFromPerson:v6 withHandleValidationBlock:a4];
  if (v7)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v7];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v8 = ;
  v9 = [v6 customIdentifier];
  v10 = [v6 displayName];
  v11 = [v6 contactIdentifier];

  v12 = [(SFShareSheetRecipient *)self initWithRealName:v9 displayName:v10 formattedHandles:v8 contactIdentifier:v11];
  return v12;
}

- (SFShareSheetRecipient)initWithRealName:(id)a3 displayName:(id)a4 formattedHandles:(id)a5 contactIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SFShareSheetRecipient;
  v14 = [(SFShareSheetRecipient *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    realName = v14->_realName;
    v14->_realName = v15;

    v17 = [v11 copy];
    displayName = v14->_displayName;
    v14->_displayName = v17;

    v19 = [v12 copy];
    formattedHandles = v14->_formattedHandles;
    v14->_formattedHandles = v19;

    v21 = [v13 copy];
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

- (SFShareSheetRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFShareSheetRecipient;
  v5 = [(SFShareSheetRecipient *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"realName"];
    realName = v5->_realName;
    v5->_realName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"formattedHandles"];
    formattedHandles = v5->_formattedHandles;
    v5->_formattedHandles = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  realName = self->_realName;
  v5 = a3;
  [v5 encodeObject:realName forKey:@"realName"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_formattedHandles forKey:@"formattedHandles"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (id)_handleFromPerson:(id)a3 withHandleValidationBlock:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 personHandle];
  v8 = [v7 value];

  if (v8 && (!v6 || ([v5 personHandle], v9 = objc_claimAutoreleasedReturnValue(), v10 = v6[2](v6, v9), v9, v10)))
  {
    v11 = [v5 personHandle];
    v12 = [v11 value];
  }

  else
  {
    v12 = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v5 aliases];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if (!v6 || v6[2](v6, *(*(&v22 + 1) + 8 * i)))
        {
          v19 = [v18 value];

          v12 = v19;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

@end