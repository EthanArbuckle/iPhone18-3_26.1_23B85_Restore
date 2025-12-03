@interface SBSApplicationShortcutContactIcon
- (BOOL)isEqual:(id)equal;
- (SBSApplicationShortcutContactIcon)initWithContactIdentifier:(id)identifier;
- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)name lastName:(id)lastName;
- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)name lastName:(id)lastName imageData:(id)data;
- (SBSApplicationShortcutContactIcon)initWithXPCDictionary:(id)dictionary;
- (id)_initForSubclass;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSApplicationShortcutContactIcon

- (SBSApplicationShortcutContactIcon)initWithContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBSApplicationShortcutContactIcon;
  _initForSubclass = [(SBSApplicationShortcutIcon *)&v9 _initForSubclass];
  if (_initForSubclass)
  {
    v6 = [identifierCopy copy];
    contactIdentifier = _initForSubclass->_contactIdentifier;
    _initForSubclass->_contactIdentifier = v6;
  }

  return _initForSubclass;
}

- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  v14.receiver = self;
  v14.super_class = SBSApplicationShortcutContactIcon;
  _initForSubclass = [(SBSApplicationShortcutIcon *)&v14 _initForSubclass];
  if (_initForSubclass)
  {
    v9 = [nameCopy copy];
    firstName = _initForSubclass->_firstName;
    _initForSubclass->_firstName = v9;

    v11 = [lastNameCopy copy];
    lastName = _initForSubclass->_lastName;
    _initForSubclass->_lastName = v11;
  }

  return _initForSubclass;
}

- (SBSApplicationShortcutContactIcon)initWithFirstName:(id)name lastName:(id)lastName imageData:(id)data
{
  nameCopy = name;
  lastNameCopy = lastName;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = SBSApplicationShortcutContactIcon;
  _initForSubclass = [(SBSApplicationShortcutIcon *)&v17 _initForSubclass];
  if (_initForSubclass)
  {
    v12 = [nameCopy copy];
    firstName = _initForSubclass->_firstName;
    _initForSubclass->_firstName = v12;

    v14 = [lastNameCopy copy];
    lastName = _initForSubclass->_lastName;
    _initForSubclass->_lastName = v14;

    objc_storeStrong(&_initForSubclass->_imageData, data);
  }

  return _initForSubclass;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    contactIdentifier = [(SBSApplicationShortcutContactIcon *)self contactIdentifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke;
    v28[3] = &unk_1E7360810;
    v7 = equalCopy;
    v29 = v7;
    v8 = [v5 appendObject:contactIdentifier counterpart:v28];

    firstName = [(SBSApplicationShortcutContactIcon *)self firstName];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke_2;
    v26[3] = &unk_1E7360810;
    v10 = v7;
    v27 = v10;
    v11 = [v5 appendObject:firstName counterpart:v26];

    lastName = [(SBSApplicationShortcutContactIcon *)self lastName];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke_3;
    v24[3] = &unk_1E7360810;
    v13 = v10;
    v25 = v13;
    v14 = [v5 appendObject:lastName counterpart:v24];

    imageData = [(SBSApplicationShortcutContactIcon *)self imageData];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __45__SBSApplicationShortcutContactIcon_isEqual___block_invoke_4;
    v22 = &unk_1E7360C58;
    v23 = v13;
    v16 = [v5 appendObject:imageData counterpart:&v19];

    v17 = [v5 isEqual];
  }

  return v17;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  contactIdentifier = [(SBSApplicationShortcutContactIcon *)self contactIdentifier];
  v5 = [builder appendObject:contactIdentifier];

  lastName = [(SBSApplicationShortcutContactIcon *)self lastName];
  v7 = [builder appendObject:lastName];

  v8 = [builder hash];
  return v8;
}

- (SBSApplicationShortcutContactIcon)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
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

      v16 = xpc_dictionary_get_value(dictionaryCopy, "contactIconImageData");
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = xpc_dictionary_get_value(dictionaryCopy, "contactImageData");
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
        selfCopy = 0;
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
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    xdict = dictionaryCopy;
    contactIdentifier = [(SBSApplicationShortcutContactIcon *)self contactIdentifier];
    BSSerializeStringToXPCDictionaryWithKey();

    firstName = [(SBSApplicationShortcutContactIcon *)self firstName];
    BSSerializeStringToXPCDictionaryWithKey();

    lastName = [(SBSApplicationShortcutContactIcon *)self lastName];
    BSSerializeStringToXPCDictionaryWithKey();

    imageData = [(SBSApplicationShortcutContactIcon *)self imageData];
    v9 = [imageData length];
    if (v9)
    {
      xpc_dictionary_set_data(xdict, "contactIconImageData", [imageData bytes], v9);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end