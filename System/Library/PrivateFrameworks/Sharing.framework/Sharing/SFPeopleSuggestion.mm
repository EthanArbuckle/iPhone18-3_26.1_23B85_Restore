@interface SFPeopleSuggestion
+ (id)TTRPeopleSuggestion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroup;
- (BOOL)isTapToRadar;
- (NSString)description;
- (SFPeopleSuggestion)initWithCoder:(id)coder;
- (SFPeopleSuggestion)initWithIdentifier:(id)identifier displayName:(id)name transportBundleIdentifier:(id)bundleIdentifier contact:(id)contact deviceModelIdentifier:(id)modelIdentifier;
- (SFPeopleSuggestion)initWithIdentifier:(id)identifier displayName:(id)name transportBundleIdentifier:(id)bundleIdentifier contacts:(id)contacts formattedHandles:(id)handles donatedImage:(id)image placeholder:(BOOL)placeholder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPeopleSuggestion

+ (id)TTRPeopleSuggestion
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self alloc];
  uUIDString = [uUID UUIDString];
  LOBYTE(v8) = 0;
  v6 = [v4 initWithIdentifier:uUIDString displayName:@"File radar" transportBundleIdentifier:@"com.apple.TapToRadar.shareextension" contacts:MEMORY[0x1E695E0F0] formattedHandles:MEMORY[0x1E695E0F0] donatedImage:0 placeholder:v8];

  return v6;
}

- (SFPeopleSuggestion)initWithIdentifier:(id)identifier displayName:(id)name transportBundleIdentifier:(id)bundleIdentifier contacts:(id)contacts formattedHandles:(id)handles donatedImage:(id)image placeholder:(BOOL)placeholder
{
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  contactsCopy = contacts;
  handlesCopy = handles;
  imageCopy = image;
  v33.receiver = self;
  v33.super_class = SFPeopleSuggestion;
  v21 = [(SFPeopleSuggestion *)&v33 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [nameCopy copy];
    displayName = v21->_displayName;
    v21->_displayName = v24;

    v26 = [bundleIdentifierCopy copy];
    transportBundleIdentifier = v21->_transportBundleIdentifier;
    v21->_transportBundleIdentifier = v26;

    v28 = [contactsCopy copy];
    contacts = v21->_contacts;
    v21->_contacts = v28;

    v30 = [handlesCopy copy];
    formattedHandles = v21->_formattedHandles;
    v21->_formattedHandles = v30;

    objc_storeStrong(&v21->_donatedImage, image);
    v21->_isPlaceholder = placeholder;
  }

  return v21;
}

- (SFPeopleSuggestion)initWithIdentifier:(id)identifier displayName:(id)name transportBundleIdentifier:(id)bundleIdentifier contact:(id)contact deviceModelIdentifier:(id)modelIdentifier
{
  v31[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  contactCopy = contact;
  modelIdentifierCopy = modelIdentifier;
  v30.receiver = self;
  v30.super_class = SFPeopleSuggestion;
  v17 = [(SFPeopleSuggestion *)&v30 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [nameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    v22 = [bundleIdentifierCopy copy];
    transportBundleIdentifier = v17->_transportBundleIdentifier;
    v17->_transportBundleIdentifier = v22;

    v24 = [modelIdentifierCopy copy];
    deviceModelIdentifier = v17->_deviceModelIdentifier;
    v17->_deviceModelIdentifier = v24;

    if (contactCopy)
    {
      v31[0] = contactCopy;
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

- (SFPeopleSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"displayName"];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v31 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"transportBundleIdentifier"];

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

  selfCopy = self;
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
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"contacts"];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"formattedHandles"];

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
  v25 = [coderCopy decodeObjectOfClass:v23 forKey:@"donatedImage"];
  LOBYTE(v30) = [coderCopy decodeBoolForKey:@"isPlaceholder"];
  v26 = [(SFPeopleSuggestion *)selfCopy initWithIdentifier:v31 displayName:v6 transportBundleIdentifier:v9 contacts:v18 formattedHandles:v22 donatedImage:v25 placeholder:v30];
  if (v26)
  {
    v26->_isRestricted = [coderCopy decodeBoolForKey:@"isRestricted"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModelIdentifier"];
    deviceModelIdentifier = v26->_deviceModelIdentifier;
    v26->_deviceModelIdentifier = v27;
  }

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_transportBundleIdentifier forKey:@"transportBundleIdentifier"];
  [coderCopy encodeObject:self->_deviceModelIdentifier forKey:@"deviceModelIdentifier"];
  [coderCopy encodeObject:self->_contacts forKey:@"contacts"];
  [coderCopy encodeObject:self->_formattedHandles forKey:@"formattedHandles"];
  [coderCopy encodeObject:self->_donatedImage forKey:@"donatedImage"];
  [coderCopy encodeBool:self->_isRestricted forKey:@"isRestricted"];
  [coderCopy encodeBool:self->_isPlaceholder forKey:@"isPlaceholder"];
}

- (BOOL)isTapToRadar
{
  transportBundleIdentifier = [(SFPeopleSuggestion *)self transportBundleIdentifier];
  v3 = [transportBundleIdentifier isEqualToString:@"com.apple.TapToRadar.shareextension"];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = SFPeopleSuggestion;
  v15 = [(SFPeopleSuggestion *)&v16 description];
  displayName = [(SFPeopleSuggestion *)self displayName];
  identifier = [(SFPeopleSuggestion *)self identifier];
  transportBundleIdentifier = [(SFPeopleSuggestion *)self transportBundleIdentifier];
  v7 = IsAppleInternalBuild();
  if (v7)
  {
    deviceModelIdentifier = [(SFPeopleSuggestion *)self deviceModelIdentifier];
  }

  else
  {
    deviceModelIdentifier = @"<private>";
  }

  contacts = [(SFPeopleSuggestion *)self contacts];
  donatedImage = [(SFPeopleSuggestion *)self donatedImage];
  [(SFPeopleSuggestion *)self isRestricted];
  v11 = NSStringFromBOOL();
  [(SFPeopleSuggestion *)self isPlaceholder];
  v12 = NSStringFromBOOL();
  v13 = [v3 stringWithFormat:@"<%@ displayName:%@ identifier:%@ transportBundleIdentifier:%@ deviceModelIdentifier:%@ contacts:%@ donatedImage:%@ isRestricted:%@ isPlaceholder:%@>", v15, displayName, identifier, transportBundleIdentifier, deviceModelIdentifier, contacts, donatedImage, v11, v12];

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

  identifier = [(SFPeopleSuggestion *)self identifier];
  v7 = [identifier hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SFPeopleSuggestion *)self identifier];
      identifier2 = [(SFPeopleSuggestion *)v5 identifier];
      v8 = identifier;
      v9 = identifier2;
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

      displayName = [(SFPeopleSuggestion *)self displayName];
      displayName2 = [(SFPeopleSuggestion *)v5 displayName];
      v14 = displayName;
      v15 = displayName2;
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

      transportBundleIdentifier = [(SFPeopleSuggestion *)self transportBundleIdentifier];
      transportBundleIdentifier2 = [(SFPeopleSuggestion *)v5 transportBundleIdentifier];
      v20 = transportBundleIdentifier;
      v21 = transportBundleIdentifier2;
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
      deviceModelIdentifier = [(SFPeopleSuggestion *)self deviceModelIdentifier];
      deviceModelIdentifier2 = [(SFPeopleSuggestion *)v5 deviceModelIdentifier];
      v26 = deviceModelIdentifier;
      v27 = deviceModelIdentifier2;
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
      contacts = [(SFPeopleSuggestion *)self contacts];
      contacts2 = [(SFPeopleSuggestion *)v5 contacts];
      v34 = contacts;
      v35 = contacts2;
      selfCopy = v35;
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

      donatedImage = [(SFPeopleSuggestion *)self donatedImage];
      donatedImage2 = [(SFPeopleSuggestion *)v5 donatedImage];
      v43 = donatedImage;
      v44 = donatedImage2;
      v45 = v43;
      if (v43 == v44)
      {
        v52 = v44;

        v26 = v55;
LABEL_40:
        isRestricted = [(SFPeopleSuggestion *)self isRestricted];
        if (isRestricted == [(SFPeopleSuggestion *)v5 isRestricted])
        {
          isPlaceholder = [(SFPeopleSuggestion *)self isPlaceholder];
          if (isPlaceholder == [(SFPeopleSuggestion *)v5 isPlaceholder])
          {
            isTapToRadar = [(SFPeopleSuggestion *)self isTapToRadar];
            LODWORD(self) = isTapToRadar ^ [(SFPeopleSuggestion *)v5 isTapToRadar]^ 1;
            goto LABEL_43;
          }
        }

LABEL_42:
        LOBYTE(self) = 0;
LABEL_43:
        v20 = v56;
        selfCopy = v52;
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

      selfCopy = self;
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
  contacts = [(SFPeopleSuggestion *)self contacts];
  v3 = [contacts count] > 1;

  return v3;
}

@end