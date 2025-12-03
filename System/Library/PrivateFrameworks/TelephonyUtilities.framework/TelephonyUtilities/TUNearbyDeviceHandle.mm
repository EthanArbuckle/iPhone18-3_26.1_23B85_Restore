@interface TUNearbyDeviceHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceHandle:(id)handle;
- (BOOL)isEquivalentToDeviceHandle:(id)handle;
- (NSDictionary)plistRepresentation;
- (TUNearbyDeviceHandle)initWithCoder:(id)coder;
- (TUNearbyDeviceHandle)initWithName:(id)name knownIdentifiers:(id)identifiers;
- (TUNearbyDeviceHandle)initWithName:(id)name knownIdentifiers:(id)identifiers deviceModel:(int64_t)model;
- (TUNearbyDeviceHandle)initWithName:(id)name knownIdentifiers:(id)identifiers deviceModel:(int64_t)model capabilities:(id)capabilities;
- (TUNearbyDeviceHandle)initWithType:(int64_t)type identifier:(id)identifier name:(id)name;
- (TUNearbyDeviceHandle)initWithType:(int64_t)type identifier:(id)identifier name:(id)name capabilities:(id)capabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identifierDescription;
- (id)identifierWithType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNearbyDeviceHandle

- (TUNearbyDeviceHandle)initWithName:(id)name knownIdentifiers:(id)identifiers deviceModel:(int64_t)model capabilities:(id)capabilities
{
  nameCopy = name;
  identifiersCopy = identifiers;
  capabilitiesCopy = capabilities;
  v19.receiver = self;
  v19.super_class = TUNearbyDeviceHandle;
  v13 = [(TUNearbyDeviceHandle *)&v19 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [identifiersCopy copy];
    knownIdentifiersByHandleType = v13->_knownIdentifiersByHandleType;
    v13->_knownIdentifiersByHandleType = v16;

    v13->_deviceModel = model;
    objc_storeStrong(&v13->_capabilities, capabilities);
  }

  return v13;
}

- (TUNearbyDeviceHandle)initWithName:(id)name knownIdentifiers:(id)identifiers deviceModel:(int64_t)model
{
  identifiersCopy = identifiers;
  nameCopy = name;
  v10 = objc_alloc_init(TUNearbyDeviceHandleCapabilities);
  v11 = [(TUNearbyDeviceHandle *)self initWithName:nameCopy knownIdentifiers:identifiersCopy deviceModel:model capabilities:v10];

  return v11;
}

- (TUNearbyDeviceHandle)initWithName:(id)name knownIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  nameCopy = name;
  v8 = objc_alloc_init(TUNearbyDeviceHandleCapabilities);
  v9 = [(TUNearbyDeviceHandle *)self initWithName:nameCopy knownIdentifiers:identifiersCopy deviceModel:0 capabilities:v8];

  return v9;
}

- (TUNearbyDeviceHandle)initWithType:(int64_t)type identifier:(id)identifier name:(id)name
{
  v8 = MEMORY[0x1E695DF20];
  v9 = MEMORY[0x1E696AD98];
  nameCopy = name;
  identifierCopy = identifier;
  v12 = [v9 numberWithInteger:type];
  v13 = [v8 dictionaryWithObject:identifierCopy forKey:v12];

  v14 = objc_alloc_init(TUNearbyDeviceHandleCapabilities);
  v15 = [(TUNearbyDeviceHandle *)self initWithName:nameCopy knownIdentifiers:v13 deviceModel:0 capabilities:v14];

  return v15;
}

- (TUNearbyDeviceHandle)initWithType:(int64_t)type identifier:(id)identifier name:(id)name capabilities:(id)capabilities
{
  v10 = MEMORY[0x1E695DF20];
  v11 = MEMORY[0x1E696AD98];
  capabilitiesCopy = capabilities;
  nameCopy = name;
  identifierCopy = identifier;
  v15 = [v11 numberWithInteger:type];
  v16 = [v10 dictionaryWithObject:identifierCopy forKey:v15];

  v17 = [(TUNearbyDeviceHandle *)self initWithName:nameCopy knownIdentifiers:v16 deviceModel:0 capabilities:capabilitiesCopy];
  return v17;
}

- (id)identifierDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__TUNearbyDeviceHandle_identifierDescription__block_invoke;
  v7[3] = &unk_1E7427D58;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)knownIdentifiersByHandleType enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __45__TUNearbyDeviceHandle_identifierDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v8 = a3;
  v5 = [a2 integerValue];
  v6 = @"Effective identifier";
  if (v5 == 1)
  {
    v6 = @"Media route identifier";
  }

  if (v5 == 2)
  {
    v7 = @"IDS device identifier";
  }

  else
  {
    v7 = v6;
  }

  [v4 setObject:v8 forKeyedSubscript:v7];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = TUNearbyDeviceHandle;
  v4 = [(TUNearbyDeviceHandle *)&v12 description];
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"<nil>";
  }

  identifierDescription = [(TUNearbyDeviceHandle *)self identifierDescription];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceModel];
  stringValue = [v7 stringValue];
  v9 = [(TUNearbyDeviceHandleCapabilities *)self->_capabilities description];
  v10 = [v3 initWithFormat:@"%@: %@ - %@ - %@ - %@", v4, name, identifierDescription, stringValue, v9];

  return v10;
}

- (NSDictionary)plistRepresentation
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"name";
  name = [(TUNearbyDeviceHandle *)self name];
  v4 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    v5 = @"<nil>";
  }

  v16[0] = v5;
  v15[1] = @"deviceModel";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TUNearbyDeviceHandle deviceModel](self, "deviceModel")}];
  v16[1] = v6;
  v15[2] = @"identifiers";
  identifierDescription = [(TUNearbyDeviceHandle *)self identifierDescription];
  v16[2] = identifierDescription;
  v15[3] = @"capabilities";
  capabilities = [(TUNearbyDeviceHandle *)self capabilities];
  v9 = [capabilities description];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"<nil>";
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)identifierWithType:(int64_t)type
{
  knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSDictionary *)knownIdentifiersByHandleType objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEquivalentToDeviceHandle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __51__TUNearbyDeviceHandle_isEquivalentToDeviceHandle___block_invoke;
    v17 = &unk_1E7427D80;
    v6 = handleCopy;
    v18 = v6;
    v19 = &v20;
    [(NSDictionary *)knownIdentifiersByHandleType enumerateKeysAndObjectsUsingBlock:&v14];
    if (v21[3])
    {
      v7 = 1;
LABEL_11:

      _Block_object_dispose(&v20, 8);
      goto LABEL_12;
    }

    v8 = [(NSDictionary *)self->_knownIdentifiersByHandleType objectForKeyedSubscript:&unk_1F09C62F8, v14, v15, v16, v17];
    knownIdentifiersByHandleType = [v6 knownIdentifiersByHandleType];
    v10 = [knownIdentifiersByHandleType objectForKeyedSubscript:&unk_1F09C62F8];

    if (v8)
    {
      knownIdentifiersByHandleType2 = [v6 knownIdentifiersByHandleType];
      v12 = [knownIdentifiersByHandleType2 objectForKeyedSubscript:&unk_1F09C6310];
      v7 = [v12 isEqualToString:v8];
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        goto LABEL_10;
      }

      knownIdentifiersByHandleType2 = [(NSDictionary *)self->_knownIdentifiersByHandleType objectForKeyedSubscript:&unk_1F09C6310];
      v7 = [knownIdentifiersByHandleType2 isEqualToString:v10];
    }

LABEL_10:
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

void __51__TUNearbyDeviceHandle_isEquivalentToDeviceHandle___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 knownIdentifiersByHandleType];
  v11 = [v10 objectForKeyedSubscript:v9];

  LODWORD(v9) = [v11 isEqual:v8];
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isEqualToDeviceHandle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
    knownIdentifiersByHandleType = [handleCopy knownIdentifiersByHandleType];
    v7 = [(NSDictionary *)knownIdentifiersByHandleType isEqual:knownIdentifiersByHandleType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
    knownIdentifiersByHandleType = [equalCopy knownIdentifiersByHandleType];
    v7 = [(NSDictionary *)knownIdentifiersByHandleType isEqualToDictionary:knownIdentifiersByHandleType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  name = [(TUNearbyDeviceHandle *)self name];
  v7 = [name copyWithZone:zone];
  knownIdentifiersByHandleType = [(TUNearbyDeviceHandle *)self knownIdentifiersByHandleType];
  v9 = [knownIdentifiersByHandleType copyWithZone:zone];
  deviceModel = [(TUNearbyDeviceHandle *)self deviceModel];
  capabilities = [(TUNearbyDeviceHandle *)self capabilities];
  v12 = [capabilities copyWithZone:zone];
  v13 = [v5 initWithName:v7 knownIdentifiers:v9 deviceModel:deviceModel capabilities:v12];

  return v13;
}

- (TUNearbyDeviceHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = NSStringFromSelector(sel_knownIdentifiersByHandleType);
  v13 = [coderCopy decodeObjectOfClasses:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_deviceModel);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  if (v16)
  {
    integerValue = [v16 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_capabilities);
  v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];

  v21 = [(TUNearbyDeviceHandle *)self initWithName:v7 knownIdentifiers:v13 deviceModel:integerValue capabilities:v20];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v6];

  knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
  v8 = NSStringFromSelector(sel_knownIdentifiersByHandleType);
  [coderCopy encodeObject:knownIdentifiersByHandleType forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceModel];
  v10 = NSStringFromSelector(sel_deviceModel);
  [coderCopy encodeObject:v9 forKey:v10];

  capabilities = self->_capabilities;
  v12 = NSStringFromSelector(sel_capabilities);
  [coderCopy encodeObject:capabilities forKey:v12];
}

@end