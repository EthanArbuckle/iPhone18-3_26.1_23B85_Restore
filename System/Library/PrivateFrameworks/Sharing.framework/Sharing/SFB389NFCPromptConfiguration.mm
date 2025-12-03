@interface SFB389NFCPromptConfiguration
- (BOOL)isEqual:(id)equal;
- (SFB389NFCPromptConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFB389NFCPromptConfiguration

- (void)encodeWithCoder:(id)coder
{
  localizedTitle = self->_localizedTitle;
  coderCopy = coder;
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_userMessage forKey:@"userMessage"];
  [coderCopy encodeObject:self->_baUUID forKey:@"baUUID"];
  [coderCopy encodeInteger:self->_promptState forKey:@"promptState"];
}

- (SFB389NFCPromptConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SFB389NFCPromptConfiguration;
  v5 = [(SFB389NFCPromptConfiguration *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    v7 = [v6 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    v10 = [v9 copy];
    message = v5->_message;
    v5->_message = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    v13 = [v12 copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userMessage"];
    v16 = [v15 copy];
    userMessage = v5->_userMessage;
    v5->_userMessage = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baUUID"];
    v19 = [v18 copy];
    baUUID = v5->_baUUID;
    v5->_baUUID = v19;

    v5->_promptState = [coderCopy decodeIntegerForKey:@"promptState"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      localizedTitle = [(SFB389NFCPromptConfiguration *)self localizedTitle];
      localizedTitle2 = [(SFB389NFCPromptConfiguration *)equalCopy localizedTitle];
      v7 = localizedTitle;
      v8 = localizedTitle2;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
          v16 = v8;
          v14 = v7;
          goto LABEL_40;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          v11 = 0;
LABEL_41:

          goto LABEL_42;
        }
      }

      message = [(SFB389NFCPromptConfiguration *)self message];
      message2 = [(SFB389NFCPromptConfiguration *)equalCopy message];
      v14 = message;
      v15 = message2;
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        if ((v14 != 0) == (v15 == 0))
        {
          v11 = 0;
          v22 = v15;
          v20 = v14;
          goto LABEL_39;
        }

        v17 = [v14 isEqual:v15];

        if (!v17)
        {
          v11 = 0;
LABEL_40:

          goto LABEL_41;
        }
      }

      phoneNumber = [(SFB389NFCPromptConfiguration *)self phoneNumber];
      phoneNumber2 = [(SFB389NFCPromptConfiguration *)equalCopy phoneNumber];
      v20 = phoneNumber;
      v21 = phoneNumber2;
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        if ((v20 != 0) == (v21 == 0))
        {
          v11 = 0;
          v28 = v21;
          v26 = v20;
          goto LABEL_38;
        }

        v23 = [v20 isEqual:v21];

        if (!v23)
        {
          v11 = 0;
LABEL_39:

          goto LABEL_40;
        }
      }

      userMessage = [(SFB389NFCPromptConfiguration *)self userMessage];
      userMessage2 = [(SFB389NFCPromptConfiguration *)equalCopy userMessage];
      v26 = userMessage;
      v27 = userMessage2;
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        if ((v26 != 0) == (v27 == 0))
        {
          v46 = v20;
          v11 = 0;
          v36 = v27;
          v37 = v26;
LABEL_37:

          v20 = v46;
          goto LABEL_38;
        }

        v44 = [v26 isEqual:v27];

        if (!v44)
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }
      }

      v43 = v28;
      v45 = v26;
      baUUID = [(SFB389NFCPromptConfiguration *)self baUUID];
      baUUID2 = [(SFB389NFCPromptConfiguration *)equalCopy baUUID];
      v31 = baUUID;
      v32 = baUUID2;
      v46 = v20;
      if (v31 == v32)
      {
        v41 = v32;

        v42 = v31;
        v28 = v43;
      }

      else
      {
        if ((v31 != 0) == (v32 == 0))
        {
          v39 = v32;

          v36 = v39;
          v11 = 0;
          v37 = v31;
          v28 = v43;
          v26 = v45;
          goto LABEL_37;
        }

        v33 = v32;
        v34 = v31;
        v35 = [v31 isEqual:v32];
        v41 = v33;

        v42 = v34;
        v28 = v43;
        if (!v35)
        {
          v11 = 0;
LABEL_35:
          v26 = v45;
          v36 = v41;
          v37 = v42;
          goto LABEL_37;
        }
      }

      promptState = [(SFB389NFCPromptConfiguration *)self promptState];
      v11 = promptState == [(SFB389NFCPromptConfiguration *)equalCopy promptState];
      goto LABEL_35;
    }

    v11 = 0;
  }

LABEL_42:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  localizedTitle = [(SFB389NFCPromptConfiguration *)self localizedTitle];
  v6 = [localizedTitle copy];
  [v4 setLocalizedTitle:v6];

  message = [(SFB389NFCPromptConfiguration *)self message];
  v8 = [message copy];
  [v4 setMessage:v8];

  userMessage = [(SFB389NFCPromptConfiguration *)self userMessage];
  v10 = [userMessage copy];
  [v4 setUserMessage:v10];

  phoneNumber = [(SFB389NFCPromptConfiguration *)self phoneNumber];
  v12 = [phoneNumber copy];
  [v4 setPhoneNumber:v12];

  baUUID = [(SFB389NFCPromptConfiguration *)self baUUID];
  v14 = [baUUID copy];
  [v4 setBaUUID:v14];

  [v4 setPromptState:{-[SFB389NFCPromptConfiguration promptState](self, "promptState")}];
  return v4;
}

@end