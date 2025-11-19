@interface TUNearbyDeviceHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceHandle:(id)a3;
- (BOOL)isEquivalentToDeviceHandle:(id)a3;
- (NSDictionary)plistRepresentation;
- (TUNearbyDeviceHandle)initWithCoder:(id)a3;
- (TUNearbyDeviceHandle)initWithName:(id)a3 knownIdentifiers:(id)a4;
- (TUNearbyDeviceHandle)initWithName:(id)a3 knownIdentifiers:(id)a4 deviceModel:(int64_t)a5;
- (TUNearbyDeviceHandle)initWithName:(id)a3 knownIdentifiers:(id)a4 deviceModel:(int64_t)a5 capabilities:(id)a6;
- (TUNearbyDeviceHandle)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5;
- (TUNearbyDeviceHandle)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5 capabilities:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identifierDescription;
- (id)identifierWithType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUNearbyDeviceHandle

- (TUNearbyDeviceHandle)initWithName:(id)a3 knownIdentifiers:(id)a4 deviceModel:(int64_t)a5 capabilities:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = TUNearbyDeviceHandle;
  v13 = [(TUNearbyDeviceHandle *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [v11 copy];
    knownIdentifiersByHandleType = v13->_knownIdentifiersByHandleType;
    v13->_knownIdentifiersByHandleType = v16;

    v13->_deviceModel = a5;
    objc_storeStrong(&v13->_capabilities, a6);
  }

  return v13;
}

- (TUNearbyDeviceHandle)initWithName:(id)a3 knownIdentifiers:(id)a4 deviceModel:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(TUNearbyDeviceHandleCapabilities);
  v11 = [(TUNearbyDeviceHandle *)self initWithName:v9 knownIdentifiers:v8 deviceModel:a5 capabilities:v10];

  return v11;
}

- (TUNearbyDeviceHandle)initWithName:(id)a3 knownIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(TUNearbyDeviceHandleCapabilities);
  v9 = [(TUNearbyDeviceHandle *)self initWithName:v7 knownIdentifiers:v6 deviceModel:0 capabilities:v8];

  return v9;
}

- (TUNearbyDeviceHandle)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5
{
  v8 = MEMORY[0x1E695DF20];
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = a4;
  v12 = [v9 numberWithInteger:a3];
  v13 = [v8 dictionaryWithObject:v11 forKey:v12];

  v14 = objc_alloc_init(TUNearbyDeviceHandleCapabilities);
  v15 = [(TUNearbyDeviceHandle *)self initWithName:v10 knownIdentifiers:v13 deviceModel:0 capabilities:v14];

  return v15;
}

- (TUNearbyDeviceHandle)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5 capabilities:(id)a6
{
  v10 = MEMORY[0x1E695DF20];
  v11 = MEMORY[0x1E696AD98];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [v11 numberWithInteger:a3];
  v16 = [v10 dictionaryWithObject:v14 forKey:v15];

  v17 = [(TUNearbyDeviceHandle *)self initWithName:v13 knownIdentifiers:v16 deviceModel:0 capabilities:v12];
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

  v6 = [(TUNearbyDeviceHandle *)self identifierDescription];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceModel];
  v8 = [v7 stringValue];
  v9 = [(TUNearbyDeviceHandleCapabilities *)self->_capabilities description];
  v10 = [v3 initWithFormat:@"%@: %@ - %@ - %@ - %@", v4, name, v6, v8, v9];

  return v10;
}

- (NSDictionary)plistRepresentation
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"name";
  v3 = [(TUNearbyDeviceHandle *)self name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v7 = [(TUNearbyDeviceHandle *)self identifierDescription];
  v16[2] = v7;
  v15[3] = @"capabilities";
  v8 = [(TUNearbyDeviceHandle *)self capabilities];
  v9 = [v8 description];
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

- (id)identifierWithType:(int64_t)a3
{
  knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)knownIdentifiersByHandleType objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEquivalentToDeviceHandle:(id)a3
{
  v4 = a3;
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
    v6 = v4;
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
    v9 = [v6 knownIdentifiersByHandleType];
    v10 = [v9 objectForKeyedSubscript:&unk_1F09C62F8];

    if (v8)
    {
      v11 = [v6 knownIdentifiersByHandleType];
      v12 = [v11 objectForKeyedSubscript:&unk_1F09C6310];
      v7 = [v12 isEqualToString:v8];
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        goto LABEL_10;
      }

      v11 = [(NSDictionary *)self->_knownIdentifiersByHandleType objectForKeyedSubscript:&unk_1F09C6310];
      v7 = [v11 isEqualToString:v10];
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

- (BOOL)isEqualToDeviceHandle:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
    v6 = [v4 knownIdentifiersByHandleType];
    v7 = [(NSDictionary *)knownIdentifiersByHandleType isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
    v6 = [v4 knownIdentifiersByHandleType];
    v7 = [(NSDictionary *)knownIdentifiersByHandleType isEqualToDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(TUNearbyDeviceHandle *)self name];
  v7 = [v6 copyWithZone:a3];
  v8 = [(TUNearbyDeviceHandle *)self knownIdentifiersByHandleType];
  v9 = [v8 copyWithZone:a3];
  v10 = [(TUNearbyDeviceHandle *)self deviceModel];
  v11 = [(TUNearbyDeviceHandle *)self capabilities];
  v12 = [v11 copyWithZone:a3];
  v13 = [v5 initWithName:v7 knownIdentifiers:v9 deviceModel:v10 capabilities:v12];

  return v13;
}

- (TUNearbyDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_name);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = NSStringFromSelector(sel_knownIdentifiersByHandleType);
  v13 = [v4 decodeObjectOfClasses:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_deviceModel);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  if (v16)
  {
    v17 = [v16 integerValue];
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_capabilities);
  v20 = [v4 decodeObjectOfClass:v18 forKey:v19];

  v21 = [(TUNearbyDeviceHandle *)self initWithName:v7 knownIdentifiers:v13 deviceModel:v17 capabilities:v20];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  v6 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v6];

  knownIdentifiersByHandleType = self->_knownIdentifiersByHandleType;
  v8 = NSStringFromSelector(sel_knownIdentifiersByHandleType);
  [v5 encodeObject:knownIdentifiersByHandleType forKey:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceModel];
  v10 = NSStringFromSelector(sel_deviceModel);
  [v5 encodeObject:v9 forKey:v10];

  capabilities = self->_capabilities;
  v12 = NSStringFromSelector(sel_capabilities);
  [v5 encodeObject:capabilities forKey:v12];
}

@end