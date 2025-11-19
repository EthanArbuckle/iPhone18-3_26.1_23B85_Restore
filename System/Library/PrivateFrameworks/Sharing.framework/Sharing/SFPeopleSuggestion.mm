@interface SFPeopleSuggestion
+ (id)TTRPeopleSuggestion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGroup;
- (BOOL)isTapToRadar;
- (NSString)description;
- (SFPeopleSuggestion)initWithCoder:(id)a3;
- (SFPeopleSuggestion)initWithIdentifier:(id)a3 displayName:(id)a4 transportBundleIdentifier:(id)a5 contact:(id)a6 deviceModelIdentifier:(id)a7;
- (SFPeopleSuggestion)initWithIdentifier:(id)a3 displayName:(id)a4 transportBundleIdentifier:(id)a5 contacts:(id)a6 formattedHandles:(id)a7 donatedImage:(id)a8 placeholder:(BOOL)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPeopleSuggestion

+ (id)TTRPeopleSuggestion
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 alloc];
  v5 = [v3 UUIDString];
  LOBYTE(v8) = 0;
  v6 = [v4 initWithIdentifier:v5 displayName:@"File radar" transportBundleIdentifier:@"com.apple.TapToRadar.shareextension" contacts:MEMORY[0x1E695E0F0] formattedHandles:MEMORY[0x1E695E0F0] donatedImage:0 placeholder:v8];

  return v6;
}

- (SFPeopleSuggestion)initWithIdentifier:(id)a3 displayName:(id)a4 transportBundleIdentifier:(id)a5 contacts:(id)a6 formattedHandles:(id)a7 donatedImage:(id)a8 placeholder:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v33.receiver = self;
  v33.super_class = SFPeopleSuggestion;
  v21 = [(SFPeopleSuggestion *)&v33 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v16 copy];
    displayName = v21->_displayName;
    v21->_displayName = v24;

    v26 = [v17 copy];
    transportBundleIdentifier = v21->_transportBundleIdentifier;
    v21->_transportBundleIdentifier = v26;

    v28 = [v18 copy];
    contacts = v21->_contacts;
    v21->_contacts = v28;

    v30 = [v19 copy];
    formattedHandles = v21->_formattedHandles;
    v21->_formattedHandles = v30;

    objc_storeStrong(&v21->_donatedImage, a8);
    v21->_isPlaceholder = a9;
  }

  return v21;
}

- (SFPeopleSuggestion)initWithIdentifier:(id)a3 displayName:(id)a4 transportBundleIdentifier:(id)a5 contact:(id)a6 deviceModelIdentifier:(id)a7
{
  v31[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = SFPeopleSuggestion;
  v17 = [(SFPeopleSuggestion *)&v30 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    v22 = [v14 copy];
    transportBundleIdentifier = v17->_transportBundleIdentifier;
    v17->_transportBundleIdentifier = v22;

    v24 = [v16 copy];
    deviceModelIdentifier = v17->_deviceModelIdentifier;
    v17->_deviceModelIdentifier = v24;

    if (v15)
    {
      v31[0] = v15;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    }

    else
    {
      v26 = MEMORY[0x1E695E0F0];
    }

    contacts = v17->_contacts;
    v17->_contacts = v26;

    v17->_isPlaceholder = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v17;
}

- (SFPeopleSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"displayName"];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v31 = [v4 decodeObjectOfClasses:v7 forKey:@"identifier"];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"transportBundleIdentifier"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v12 = getCNContactClass_softClass;
  v40 = getCNContactClass_softClass;
  if (!getCNContactClass_softClass)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getCNContactClass_block_invoke;
    v35 = &unk_1E788A938;
    v36 = &v37;
    __getCNContactClass_block_invoke(&v32);
    v12 = v38[3];
  }

  v13 = self;
  v14 = v12;
  _Block_object_dispose(&v37, 8);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v15 = getCNMutableContactClass_softClass;
  v40 = getCNMutableContactClass_softClass;
  if (!getCNMutableContactClass_softClass)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getCNMutableContactClass_block_invoke;
    v35 = &unk_1E788A938;
    v36 = &v37;
    __getCNMutableContactClass_block_invoke(&v32);
    v15 = v38[3];
  }

  v16 = v15;
  _Block_object_dispose(&v37, 8);
  v17 = [v10 setWithObjects:{v11, v12, v15, 0}];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"contacts"];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"formattedHandles"];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v23 = getINImageClass_softClass;
  v40 = getINImageClass_softClass;
  if (!getINImageClass_softClass)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getINImageClass_block_invoke;
    v35 = &unk_1E788A938;
    v36 = &v37;
    __getINImageClass_block_invoke(&v32);
    v23 = v38[3];
  }

  v24 = v23;
  _Block_object_dispose(&v37, 8);
  v25 = [v4 decodeObjectOfClass:v23 forKey:@"donatedImage"];
  LOBYTE(v30) = [v4 decodeBoolForKey:@"isPlaceholder"];
  v26 = [(SFPeopleSuggestion *)v13 initWithIdentifier:v31 displayName:v6 transportBundleIdentifier:v9 contacts:v18 formattedHandles:v22 donatedImage:v25 placeholder:v30];
  if (v26)
  {
    v26->_isRestricted = [v4 decodeBoolForKey:@"isRestricted"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceModelIdentifier"];
    deviceModelIdentifier = v26->_deviceModelIdentifier;
    v26->_deviceModelIdentifier = v27;
  }

  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  displayName = self->_displayName;
  v5 = a3;
  [v5 encodeObject:displayName forKey:@"displayName"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_transportBundleIdentifier forKey:@"transportBundleIdentifier"];
  [v5 encodeObject:self->_deviceModelIdentifier forKey:@"deviceModelIdentifier"];
  [v5 encodeObject:self->_contacts forKey:@"contacts"];
  [v5 encodeObject:self->_formattedHandles forKey:@"formattedHandles"];
  [v5 encodeObject:self->_donatedImage forKey:@"donatedImage"];
  [v5 encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [v5 encodeBool:self->_isPlaceholder forKey:@"isPlaceholder"];
}

- (BOOL)isTapToRadar
{
  v2 = [(SFPeopleSuggestion *)self transportBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.TapToRadar.shareextension"];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = SFPeopleSuggestion;
  v15 = [(SFPeopleSuggestion *)&v16 description];
  v4 = [(SFPeopleSuggestion *)self displayName];
  v5 = [(SFPeopleSuggestion *)self identifier];
  v6 = [(SFPeopleSuggestion *)self transportBundleIdentifier];
  v7 = IsAppleInternalBuild();
  if (v7)
  {
    v8 = [(SFPeopleSuggestion *)self deviceModelIdentifier];
  }

  else
  {
    v8 = @"<private>";
  }

  v9 = [(SFPeopleSuggestion *)self contacts];
  v10 = [(SFPeopleSuggestion *)self donatedImage];
  [(SFPeopleSuggestion *)self isRestricted];
  v11 = NSStringFromBOOL();
  [(SFPeopleSuggestion *)self isPlaceholder];
  v12 = NSStringFromBOOL();
  v13 = [v3 stringWithFormat:@"<%@ displayName:%@ identifier:%@ transportBundleIdentifier:%@ deviceModelIdentifier:%@ contacts:%@ donatedImage:%@ isRestricted:%@ isPlaceholder:%@>", v15, v4, v5, v6, v8, v9, v10, v11, v12];

  if (v7)
  {
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 hash];

  v6 = [(SFPeopleSuggestion *)self identifier];
  v7 = [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFPeopleSuggestion *)self identifier];
      v7 = [(SFPeopleSuggestion *)v5 identifier];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          LOBYTE(self) = 0;
          v16 = v9;
          v14 = v8;
          goto LABEL_52;
        }

        v11 = [(SFPeopleSuggestion *)v8 isEqual:v9];

        if (!v11)
        {
          LOBYTE(self) = 0;
LABEL_53:

          goto LABEL_54;
        }
      }

      v12 = [(SFPeopleSuggestion *)self displayName];
      v13 = [(SFPeopleSuggestion *)v5 displayName];
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
          LOBYTE(self) = 0;
          v22 = v15;
          v20 = v14;
          goto LABEL_51;
        }

        v17 = [(SFPeopleSuggestion *)v14 isEqual:v15];

        if (!v17)
        {
          LOBYTE(self) = 0;
LABEL_52:

          goto LABEL_53;
        }
      }

      v18 = [(SFPeopleSuggestion *)self transportBundleIdentifier];
      v19 = [(SFPeopleSuggestion *)v5 transportBundleIdentifier];
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
          LOBYTE(self) = 0;
          v58 = v21;
          v31 = v21;
          v26 = v20;
LABEL_50:

          v22 = v58;
          goto LABEL_51;
        }

        v23 = [(SFPeopleSuggestion *)v20 isEqual:v21];

        if (!v23)
        {
          LOBYTE(self) = 0;
LABEL_51:

          goto LABEL_52;
        }
      }

      v58 = v22;
      v56 = v20;
      v24 = [(SFPeopleSuggestion *)self deviceModelIdentifier];
      v25 = [(SFPeopleSuggestion *)v5 deviceModelIdentifier];
      v26 = v24;
      v27 = v25;
      v28 = v27;
      v57 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        if ((v26 != 0) == (v27 == 0))
        {
          LOBYTE(self) = 0;
          v40 = v26;
          v20 = v56;
LABEL_48:

          goto LABEL_49;
        }

        v29 = v27;
        v30 = [(SFPeopleSuggestion *)v26 isEqual:v27];

        if (!v30)
        {
          LOBYTE(self) = 0;
          v20 = v56;
LABEL_49:
          v31 = v57;
          goto LABEL_50;
        }
      }

      v55 = v26;
      v32 = [(SFPeopleSuggestion *)self contacts];
      v33 = [(SFPeopleSuggestion *)v5 contacts];
      v34 = v32;
      v35 = v33;
      v36 = v35;
      v53 = v35;
      v54 = v34;
      if (v34 == v35)
      {
      }

      else
      {
        if ((v34 != 0) == (v35 == 0))
        {
          LOBYTE(self) = 0;
          v45 = v34;
          goto LABEL_45;
        }

        v37 = v35;
        v38 = v34;
        v39 = [(SFPeopleSuggestion *)v34 isEqual:v35];

        if (!v39)
        {
          LOBYTE(self) = 0;
          v26 = v55;
          v20 = v56;
LABEL_47:
          v28 = v53;
          v40 = v54;
          goto LABEL_48;
        }
      }

      v41 = [(SFPeopleSuggestion *)self donatedImage];
      v42 = [(SFPeopleSuggestion *)v5 donatedImage];
      v43 = v41;
      v44 = v42;
      v45 = v43;
      if (v43 == v44)
      {
        v52 = v44;

        v26 = v55;
LABEL_40:
        v48 = [(SFPeopleSuggestion *)self isRestricted];
        if (v48 == [(SFPeopleSuggestion *)v5 isRestricted])
        {
          v49 = [(SFPeopleSuggestion *)self isPlaceholder];
          if (v49 == [(SFPeopleSuggestion *)v5 isPlaceholder])
          {
            v51 = [(SFPeopleSuggestion *)self isTapToRadar];
            LODWORD(self) = v51 ^ [(SFPeopleSuggestion *)v5 isTapToRadar]^ 1;
            goto LABEL_43;
          }
        }

LABEL_42:
        LOBYTE(self) = 0;
LABEL_43:
        v20 = v56;
        v36 = v52;
LABEL_46:

        goto LABEL_47;
      }

      if ((v43 != 0) != (v44 == 0))
      {
        v46 = v44;
        v47 = [(SFPeopleSuggestion *)v43 isEqual:v44];
        v52 = v46;

        v26 = v55;
        if (!v47)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      self = v44;

      v36 = self;
      LOBYTE(self) = 0;
LABEL_45:
      v26 = v55;
      v20 = v56;
      goto LABEL_46;
    }

    LOBYTE(self) = 0;
  }

LABEL_54:

  return self;
}

- (BOOL)isGroup
{
  v2 = [(SFPeopleSuggestion *)self contacts];
  v3 = [v2 count] > 1;

  return v3;
}

@end