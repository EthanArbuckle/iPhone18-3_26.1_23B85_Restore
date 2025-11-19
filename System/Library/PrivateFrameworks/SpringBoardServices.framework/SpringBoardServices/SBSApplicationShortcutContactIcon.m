@interface SBSApplicationShortcutContactIcon
- (BOOL)isEqual:(id)a3;
- (SBSApplicationShortcutContactIcon)initWithContactIdentifier:(id)a3;
- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)a3 lastName:(id)a4;
- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)a3 lastName:(id)a4 imageData:(id)a5;
- (SBSApplicationShortcutContactIcon)initWithXPCDictionary:(id)a3;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSApplicationShortcutContactIcon

- (SBSApplicationShortcutContactIcon)initWithContactIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutContactIcon;
  v5 = [(SBSApplicationShortcutIcon *)&v9 _initForSubclass];
  if (v5)
  {
    v6 = [v4 copy];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v6;
  }

  return v5;
}

- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)a3 lastName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBSApplicationShortcutContactIcon;
  v8 = [(SBSApplicationShortcutIcon *)&v14 _initForSubclass];
  if (v8)
  {
    v9 = [v6 copy];
    firstName = v8->_firstName;
    v8->_firstName = v9;

    v11 = [v7 copy];
    lastName = v8->_lastName;
    v8->_lastName = v11;
  }

  return v8;
}

- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)a3 lastName:(id)a4 imageData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SBSApplicationShortcutContactIcon;
  v11 = [(SBSApplicationShortcutIcon *)&v17 _initForSubclass];
  if (v11)
  {
    v12 = [v8 copy];
    firstName = v11->_firstName;
    v11->_firstName = v12;

    v14 = [v9 copy];
    lastName = v11->_lastName;
    v11->_lastName = v14;

    objc_storeStrong(&v11->_imageData, a5);
  }

  return v11;
}

- (id)_initForSubclass
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithContactIdentifier:].", "-[SBSApplicationShortcutContactIcon _initForSubclass]", v6}];

  return [(SBSApplicationShortcutContactIcon *)self initWithContactIdentifier:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(SBSApplicationShortcutContactIcon *)self contactIdentifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke;
    v28[3] = &unk_1E7360810;
    v7 = v4;
    v29 = v7;
    v8 = [v5 appendObject:v6 counterpart:v28];

    v9 = [(SBSApplicationShortcutContactIcon *)self firstName];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke_2;
    v26[3] = &unk_1E7360810;
    v10 = v7;
    v27 = v10;
    v11 = [v5 appendObject:v9 counterpart:v26];

    v12 = [(SBSApplicationShortcutContactIcon *)self lastName];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke_3;
    v24[3] = &unk_1E7360810;
    v13 = v10;
    v25 = v13;
    v14 = [v5 appendObject:v12 counterpart:v24];

    v15 = [(SBSApplicationShortcutContactIcon *)self imageData];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke_4;
    v22 = &unk_1E7360C58;
    v23 = v13;
    v16 = [v5 appendObject:v15 counterpart:&v19];

    v17 = [v5 isEqual];
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(SBSApplicationShortcutContactIcon *)self contactIdentifier];
  v5 = [v3 appendObject:v4];

  v6 = [(SBSApplicationShortcutContactIcon *)self lastName];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- (SBSApplicationShortcutContactIcon)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  if (!v5)
  {
    v5 = BSDeserializeStringFromXPCDictionaryWithKey();
    if (!v5)
    {
      v8 = BSDeserializeStringFromXPCDictionaryWithKey();
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = BSDeserializeStringFromXPCDictionaryWithKey();
      }

      v11 = v10;

      v12 = BSDeserializeStringFromXPCDictionaryWithKey();
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = BSDeserializeStringFromXPCDictionaryWithKey();
      }

      v15 = v14;

      v16 = xpc_dictionary_get_value(v4, "contactIconImageData");
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = xpc_dictionary_get_value(v4, "contactImageData");
        if (!v17)
        {
          goto LABEL_16;
        }
      }

      if (MEMORY[0x193AFFE60](v17) == MEMORY[0x1E69E9E70])
      {
        v20 = MEMORY[0x1E695DEF0];
        bytes_ptr = xpc_data_get_bytes_ptr(v17);
        v19 = [v20 dataWithBytes:bytes_ptr length:xpc_data_get_length(v17)];
        self = [(SBSApplicationShortcutContactIcon *)self initWithFirstName:v11 lastName:v15 imageData:v19];
        v18 = 1;
LABEL_18:

        if (v18)
        {
          goto LABEL_5;
        }

LABEL_19:
        v7 = 0;
        goto LABEL_20;
      }

LABEL_16:
      v18 = 0;
      v19 = 0;
      goto LABEL_18;
    }
  }

  v6 = v5;
  self = [(SBSApplicationShortcutContactIcon *)self initWithContactIdentifier:v5];

LABEL_5:
  self = self;
  v7 = self;
LABEL_20:

  return v7;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    v5 = [(SBSApplicationShortcutContactIcon *)self contactIdentifier];
    BSSerializeStringToXPCDictionaryWithKey();

    v6 = [(SBSApplicationShortcutContactIcon *)self firstName];
    BSSerializeStringToXPCDictionaryWithKey();

    v7 = [(SBSApplicationShortcutContactIcon *)self lastName];
    BSSerializeStringToXPCDictionaryWithKey();

    v8 = [(SBSApplicationShortcutContactIcon *)self imageData];
    v9 = [v8 length];
    if (v9)
    {
      xpc_dictionary_set_data(xdict, "contactIconImageData", [v8 bytes], v9);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end