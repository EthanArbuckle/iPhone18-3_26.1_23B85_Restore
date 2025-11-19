@interface WFPosterRepresentation
+ (id)defaultPoster;
+ (id)posterWithSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WFPosterRepresentation)initWithCoder:(id)a3;
- (WFPosterRepresentation)initWithUUID:(id)a3 name:(id)a4 providerBundleIdentifier:(id)a5;
- (id)description;
- (id)serializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFPosterRepresentation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFPosterRepresentation *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [(WFPosterRepresentation *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(WFPosterRepresentation *)self providerBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"providerBundleIdentifier"];
}

- (WFPosterRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFPosterRepresentation;
  v5 = [(WFPosterRepresentation *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(WFPosterRepresentation *)self UUID];
  v4 = [v3 hash];
  v5 = [(WFPosterRepresentation *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFPosterRepresentation *)self providerBundleIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(WFPosterRepresentation *)self UUID];
    v8 = [(WFPosterRepresentation *)v6 UUID];
    v9 = v7;
    v10 = v8;
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

    v16 = [(WFPosterRepresentation *)self name];
    v17 = [(WFPosterRepresentation *)v6 name];
    v14 = v16;
    v18 = v17;
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

    v21 = [(WFPosterRepresentation *)self providerBundleIdentifier];
    v22 = [(WFPosterRepresentation *)v6 providerBundleIdentifier];
    v20 = v21;
    v23 = v22;
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
  v5 = [(WFPosterRepresentation *)self UUID];
  v6 = [(WFPosterRepresentation *)self name];
  v7 = [(WFPosterRepresentation *)self providerBundleIdentifier];
  v8 = [v3 stringWithFormat:@"<%@, UUID: %@, name: %@, providerBundleId: %@>", v4, v5, v6, v7];

  return v8;
}

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFPosterRepresentation *)self UUID];
  v5 = [v4 UUIDString];
  [v3 if_setObjectIfNonNil:v5 forKey:@"UUID"];

  v6 = [(WFPosterRepresentation *)self name];
  [v3 if_setObjectIfNonNil:v6 forKey:@"name"];

  v7 = [(WFPosterRepresentation *)self providerBundleIdentifier];
  [v3 if_setObjectIfNonNil:v7 forKey:@"providerBundleIdentifier"];

  v8 = [v3 copy];

  return v8;
}

- (WFPosterRepresentation)initWithUUID:(id)a3 name:(id)a4 providerBundleIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = WFPosterRepresentation;
  v12 = [(WFPosterRepresentation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_UUID, a3);
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [v11 copy];
    providerBundleIdentifier = v13->_providerBundleIdentifier;
    v13->_providerBundleIdentifier = v16;

    v18 = v13;
  }

  return v13;
}

+ (id)defaultPoster
{
  v3 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v4 = [v3 objectForKey:@"WFShortcutsDefaultPosterRepresentation"];

  v5 = [a1 posterWithSerializedRepresentation:v4];

  return v5;
}

+ (id)posterWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 objectForKey:@"UUID"];
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
      v10 = [v4 objectForKey:@"name"];
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

      v13 = [v4 objectForKey:@"providerBundleIdentifier"];
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

      v7 = [[a1 alloc] initWithUUID:v9 name:v12 providerBundleIdentifier:v15];
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