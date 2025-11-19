@interface _PSRecipient
+ (id)recipientForINPerson:(id)a3 contactResolver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_PSRecipient)initWithCoder:(id)a3;
- (_PSRecipient)initWithIdentifier:(id)a3 senderHandle:(id)a4 handle:(id)a5 displayName:(id)a6 contact:(id)a7 mostRecentTransportBundleId:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSRecipient

- (_PSRecipient)initWithIdentifier:(id)a3 senderHandle:(id)a4 handle:(id)a5 displayName:(id)a6 contact:(id)a7 mostRecentTransportBundleId:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v32.receiver = self;
  v32.super_class = _PSRecipient;
  v20 = [(_PSRecipient *)&v32 init];
  if (v20)
  {
    v21 = [v14 copy];
    identifier = v20->_identifier;
    v20->_identifier = v21;

    v23 = [v15 copy];
    senderHandle = v20->_senderHandle;
    v20->_senderHandle = v23;

    v25 = [v16 copy];
    handle = v20->_handle;
    v20->_handle = v25;

    v27 = [v17 copy];
    displayName = v20->_displayName;
    v20->_displayName = v27;

    objc_storeStrong(&v20->_contact, a7);
    v29 = [v19 copy];
    mostRecentTransportBundleId = v20->_mostRecentTransportBundleId;
    v20->_mostRecentTransportBundleId = v29;

    v20->_handleType = [_PSInteractionStoreUtils getHandleTypeFromHandleString:v16];
  }

  return v20;
}

+ (id)recipientForINPerson:(id)a3 contactResolver:(id)a4
{
  v5 = a3;
  v6 = [a4 resolveContactFromINPerson:v5];
  v7 = objc_alloc(objc_opt_class());
  v8 = [v5 contactIdentifier];
  v9 = [v5 personHandle];
  v10 = [v9 value];
  v11 = [v5 displayName];

  v12 = [v7 initWithIdentifier:v8 handle:v10 displayName:v11 contact:v6];

  return v12;
}

- (_PSRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _PSRecipient;
  v5 = [(_PSRecipient *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
    senderHandle = v5->_senderHandle;
    v5->_senderHandle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"givenName"];
    givenName = v5->_givenName;
    v5->_givenName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyName"];
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
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentTransportBundleId"];
    mostRecentTransportBundleId = v5->_mostRecentTransportBundleId;
    v5->_mostRecentTransportBundleId = v22;

    v5->_handleType = [v4 decodeIntegerForKey:@"handleType"];
    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_senderHandle forKey:@"senderHandle"];
  [v5 encodeObject:self->_handle forKey:@"handle"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_givenName forKey:@"givenName"];
  [v5 encodeObject:self->_familyName forKey:@"familyName"];
  [v5 encodeObject:self->_contact forKey:@"contact"];
  [v5 encodeObject:self->_mostRecentTransportBundleId forKey:@"mostRecentTransportBundleId"];
  [v5 encodeInteger:self->_handleType forKey:@"handleType"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(_PSRecipient *)self identifier];
        if (v7)
        {
          v8 = v7;
          v9 = [(_PSRecipient *)self handle];
          if (!v9)
          {
            v16 = 0;
LABEL_16:

            goto LABEL_17;
          }

          v10 = v9;
          v11 = [(_PSRecipient *)v6 identifier];
          if (!v11)
          {
            goto LABEL_14;
          }

          v12 = v11;
          v13 = [(_PSRecipient *)v6 handle];

          if (v13)
          {
            v8 = [(_PSRecipient *)self identifier];
            v10 = [(_PSRecipient *)v6 identifier];
            if ([v8 isEqualToString:v10])
            {
              v14 = [(_PSRecipient *)self handle];
              v15 = [(_PSRecipient *)v6 handle];
              v16 = [v14 isEqualToString:v15];

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