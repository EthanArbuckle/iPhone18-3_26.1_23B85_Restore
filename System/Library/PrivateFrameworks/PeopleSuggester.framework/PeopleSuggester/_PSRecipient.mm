@interface _PSRecipient
+ (id)recipientForINPerson:(id)person contactResolver:(id)resolver;
- (BOOL)isEqual:(id)equal;
- (_PSRecipient)initWithCoder:(id)coder;
- (_PSRecipient)initWithIdentifier:(id)identifier senderHandle:(id)handle handle:(id)a5 displayName:(id)name contact:(id)contact mostRecentTransportBundleId:(id)id;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSRecipient

- (_PSRecipient)initWithIdentifier:(id)identifier senderHandle:(id)handle handle:(id)a5 displayName:(id)name contact:(id)contact mostRecentTransportBundleId:(id)id
{
  identifierCopy = identifier;
  handleCopy = handle;
  v16 = a5;
  nameCopy = name;
  contactCopy = contact;
  idCopy = id;
  v32.receiver = self;
  v32.super_class = _PSRecipient;
  v20 = [(_PSRecipient *)&v32 init];
  if (v20)
  {
    v21 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [handleCopy copy];
    senderHandle = v20->_senderHandle;
    v20->_senderHandle = v23;

    v25 = [v16 copy];
    handle = v20->_handle;
    v20->_handle = v25;

    v27 = [nameCopy copy];
    displayName = v20->_displayName;
    v20->_displayName = v27;

    objc_storeStrong(&v20->_contact, contact);
    v29 = [idCopy copy];
    mostRecentTransportBundleId = v20->_mostRecentTransportBundleId;
    v20->_mostRecentTransportBundleId = v29;

    v20->_handleType = [_PSInteractionStoreUtils getHandleTypeFromHandleString:v16];
  }

  return v20;
}

+ (id)recipientForINPerson:(id)person contactResolver:(id)resolver
{
  personCopy = person;
  v6 = [resolver resolveContactFromINPerson:personCopy];
  v7 = objc_alloc(objc_opt_class());
  contactIdentifier = [personCopy contactIdentifier];
  personHandle = [personCopy personHandle];
  value = [personHandle value];
  displayName = [personCopy displayName];

  v12 = [v7 initWithIdentifier:contactIdentifier handle:value displayName:displayName contact:v6];

  return v12;
}

- (_PSRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _PSRecipient;
  v5 = [(_PSRecipient *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
    senderHandle = v5->_senderHandle;
    v5->_senderHandle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
    familyName = v5->_familyName;
    v5->_familyName = v16;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v18 = getCNContactClass_softClass_5;
    v31 = getCNContactClass_softClass_5;
    if (!getCNContactClass_softClass_5)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __getCNContactClass_block_invoke_5;
      v27[3] = &unk_1E7C23BF0;
      v27[4] = &v28;
      __getCNContactClass_block_invoke_5(v27);
      v18 = v29[3];
    }

    v19 = v18;
    _Block_object_dispose(&v28, 8);
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentTransportBundleId"];
    mostRecentTransportBundleId = v5->_mostRecentTransportBundleId;
    v5->_mostRecentTransportBundleId = v22;

    v5->_handleType = [coderCopy decodeIntegerForKey:@"handleType"];
    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_senderHandle forKey:@"senderHandle"];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_givenName forKey:@"givenName"];
  [coderCopy encodeObject:self->_familyName forKey:@"familyName"];
  [coderCopy encodeObject:self->_contact forKey:@"contact"];
  [coderCopy encodeObject:self->_mostRecentTransportBundleId forKey:@"mostRecentTransportBundleId"];
  [coderCopy encodeInteger:self->_handleType forKey:@"handleType"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = [(_PSRecipient *)self identifier];
        if (identifier)
        {
          identifier3 = identifier;
          handle = [(_PSRecipient *)self handle];
          if (!handle)
          {
            v16 = 0;
LABEL_16:

            goto LABEL_17;
          }

          identifier4 = handle;
          identifier2 = [(_PSRecipient *)v6 identifier];
          if (!identifier2)
          {
            goto LABEL_14;
          }

          v12 = identifier2;
          handle2 = [(_PSRecipient *)v6 handle];

          if (handle2)
          {
            identifier3 = [(_PSRecipient *)self identifier];
            identifier4 = [(_PSRecipient *)v6 identifier];
            if ([identifier3 isEqualToString:identifier4])
            {
              handle3 = [(_PSRecipient *)self handle];
              handle4 = [(_PSRecipient *)v6 handle];
              v16 = [handle3 isEqualToString:handle4];

LABEL_15:
              goto LABEL_16;
            }

LABEL_14:
            v16 = 0;
            goto LABEL_15;
          }
        }

        v16 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v16 = 0;
  }

LABEL_18:

  return v16;
}

@end