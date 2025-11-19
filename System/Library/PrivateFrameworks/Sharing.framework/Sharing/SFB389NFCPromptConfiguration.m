@interface SFB389NFCPromptConfiguration
- (BOOL)isEqual:(id)a3;
- (SFB389NFCPromptConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFB389NFCPromptConfiguration

- (void)encodeWithCoder:(id)a3
{
  localizedTitle = self->_localizedTitle;
  v5 = a3;
  [v5 encodeObject:localizedTitle forKey:@"localizedTitle"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [v5 encodeObject:self->_userMessage forKey:@"userMessage"];
  [v5 encodeObject:self->_baUUID forKey:@"baUUID"];
  [v5 encodeInteger:self->_promptState forKey:@"promptState"];
}

- (SFB389NFCPromptConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SFB389NFCPromptConfiguration;
  v5 = [(SFB389NFCPromptConfiguration *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    v7 = [v6 copy];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    v10 = [v9 copy];
    message = v5->_message;
    v5->_message = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    v13 = [v12 copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userMessage"];
    v16 = [v15 copy];
    userMessage = v5->_userMessage;
    v5->_userMessage = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baUUID"];
    v19 = [v18 copy];
    baUUID = v5->_baUUID;
    v5->_baUUID = v19;

    v5->_promptState = [v4 decodeIntegerForKey:@"promptState"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SFB389NFCPromptConfiguration *)self localizedTitle];
      v6 = [(SFB389NFCPromptConfiguration *)v4 localizedTitle];
      v7 = v5;
      v8 = v6;
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

      v12 = [(SFB389NFCPromptConfiguration *)self message];
      v13 = [(SFB389NFCPromptConfiguration *)v4 message];
      v14 = v12;
      v15 = v13;
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

      v18 = [(SFB389NFCPromptConfiguration *)self phoneNumber];
      v19 = [(SFB389NFCPromptConfiguration *)v4 phoneNumber];
      v20 = v18;
      v21 = v19;
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

      v24 = [(SFB389NFCPromptConfiguration *)self userMessage];
      v25 = [(SFB389NFCPromptConfiguration *)v4 userMessage];
      v26 = v24;
      v27 = v25;
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
      v29 = [(SFB389NFCPromptConfiguration *)self baUUID];
      v30 = [(SFB389NFCPromptConfiguration *)v4 baUUID];
      v31 = v29;
      v32 = v30;
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

      v38 = [(SFB389NFCPromptConfiguration *)self promptState];
      v11 = v38 == [(SFB389NFCPromptConfiguration *)v4 promptState];
      goto LABEL_35;
    }

    v11 = 0;
  }

LABEL_42:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SFB389NFCPromptConfiguration *)self localizedTitle];
  v6 = [v5 copy];
  [v4 setLocalizedTitle:v6];

  v7 = [(SFB389NFCPromptConfiguration *)self message];
  v8 = [v7 copy];
  [v4 setMessage:v8];

  v9 = [(SFB389NFCPromptConfiguration *)self userMessage];
  v10 = [v9 copy];
  [v4 setUserMessage:v10];

  v11 = [(SFB389NFCPromptConfiguration *)self phoneNumber];
  v12 = [v11 copy];
  [v4 setPhoneNumber:v12];

  v13 = [(SFB389NFCPromptConfiguration *)self baUUID];
  v14 = [v13 copy];
  [v4 setBaUUID:v14];

  [v4 setPromptState:{-[SFB389NFCPromptConfiguration promptState](self, "promptState")}];
  return v4;
}

@end