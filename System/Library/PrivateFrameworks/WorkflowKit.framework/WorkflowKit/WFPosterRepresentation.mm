@interface WFPosterRepresentation
+ (id)defaultPoster;
+ (id)posterWithSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (WFPosterRepresentation)initWithCoder:(id)coder;
- (WFPosterRepresentation)initWithUUID:(id)d name:(id)name providerBundleIdentifier:(id)identifier;
- (id)description;
- (id)serializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPosterRepresentation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(WFPosterRepresentation *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  name = [(WFPosterRepresentation *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  providerBundleIdentifier = [(WFPosterRepresentation *)self providerBundleIdentifier];
  [coderCopy encodeObject:providerBundleIdentifier forKey:@"providerBundleIdentifier"];
}

- (WFPosterRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFPosterRepresentation;
  v5 = [(WFPosterRepresentation *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  uUID = [(WFPosterRepresentation *)self UUID];
  v4 = [uUID hash];
  name = [(WFPosterRepresentation *)self name];
  v6 = [name hash] ^ v4;
  providerBundleIdentifier = [(WFPosterRepresentation *)self providerBundleIdentifier];
  v8 = [providerBundleIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    uUID = [(WFPosterRepresentation *)self UUID];
    uUID2 = [(WFPosterRepresentation *)v6 UUID];
    v9 = uUID;
    v10 = uUID2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    name = [(WFPosterRepresentation *)self name];
    name2 = [(WFPosterRepresentation *)v6 name];
    v14 = name;
    v18 = name2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    providerBundleIdentifier = [(WFPosterRepresentation *)self providerBundleIdentifier];
    providerBundleIdentifier2 = [(WFPosterRepresentation *)v6 providerBundleIdentifier];
    v20 = providerBundleIdentifier;
    v23 = providerBundleIdentifier2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqualToString:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = WFPosterRepresentation;
  v4 = [(WFPosterRepresentation *)&v10 description];
  uUID = [(WFPosterRepresentation *)self UUID];
  name = [(WFPosterRepresentation *)self name];
  providerBundleIdentifier = [(WFPosterRepresentation *)self providerBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@, UUID: %@, name: %@, providerBundleId: %@>", v4, uUID, name, providerBundleIdentifier];

  return v8;
}

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  uUID = [(WFPosterRepresentation *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 if_setObjectIfNonNil:uUIDString forKey:@"UUID"];

  name = [(WFPosterRepresentation *)self name];
  [v3 if_setObjectIfNonNil:name forKey:@"name"];

  providerBundleIdentifier = [(WFPosterRepresentation *)self providerBundleIdentifier];
  [v3 if_setObjectIfNonNil:providerBundleIdentifier forKey:@"providerBundleIdentifier"];

  v8 = [v3 copy];

  return v8;
}

- (WFPosterRepresentation)initWithUUID:(id)d name:(id)name providerBundleIdentifier:(id)identifier
{
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = WFPosterRepresentation;
  v12 = [(WFPosterRepresentation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_UUID, d);
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [identifierCopy copy];
    providerBundleIdentifier = v13->_providerBundleIdentifier;
    v13->_providerBundleIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

+ (id)defaultPoster
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v4 = [systemShortcutsUserDefaults objectForKey:@"WFShortcutsDefaultPosterRepresentation"];

  v5 = [self posterWithSerializedRepresentation:v4];

  return v5;
}

+ (id)posterWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [representationCopy objectForKey:@"UUID"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (v9)
    {
      v10 = [representationCopy objectForKey:@"name"];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [representationCopy objectForKey:@"providerBundleIdentifier"];
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      v7 = [[self alloc] initWithUUID:v9 name:v12 providerBundleIdentifier:v15];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end