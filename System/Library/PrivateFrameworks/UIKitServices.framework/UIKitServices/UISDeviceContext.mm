@interface UISDeviceContext
+ (id)_allKeys;
+ (id)_keysToValueTypes;
+ (id)defaultContext;
- (BOOL)_isDeviceInfoValue:(id)a3 appropriateForKey:(id)a4;
- (BOOL)deviceInfoBoolValueForKey:(id)a3;
- (BOOL)hasDeviceInfoValueForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UISDeviceContext)initWithBSXPCCoder:(id)a3;
- (UISDeviceContext)initWithDeviceInfoValues:(id)a3;
- (double)deviceInfoFloatValueForKey:(id)a3;
- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)a3;
- (id)deviceInfoStringValueForKey:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)_valueTypeForKey:(id)a3;
- (int64_t)_valueTypeForValue:(id)a3;
- (int64_t)deviceInfoIntegerValueForKey:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation UISDeviceContext

+ (id)defaultContext
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E730] sharedInstance];
  v11[0] = @"UISDeviceContextDeviceClassKey";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "deviceClass")}];
  v12[0] = v4;
  v12[1] = &unk_1F0A84508;
  v11[1] = @"UISDeviceContextDeviceIdiomKey";
  v11[2] = @"UISDeviceContextHomeButtonTypeKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "homeButtonType")}];
  v12[2] = v5;
  v11[3] = @"UISDeviceContextDeviceCornerRadiusKey";
  v6 = MEMORY[0x1E696AD98];
  MGGetFloat32Answer();
  v7 = [v6 numberWithFloat:?];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = [[a1 alloc] initWithDeviceInfoValues:v8];

  return v9;
}

+ (id)_allKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__UISDeviceContext__allKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED51BFE0 != -1)
  {
    dispatch_once(&qword_1ED51BFE0, block);
  }

  v2 = qword_1ED51BFD8;

  return v2;
}

+ (id)_keysToValueTypes
{
  if (qword_1ED51BFD0 != -1)
  {
    dispatch_once(&qword_1ED51BFD0, &__block_literal_global_12);
  }

  v3 = _MergedGlobals_15;

  return v3;
}

void __28__UISDeviceContext__allKeys__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = [*(a1 + 32) _keysToValueTypes];
  v3 = [v6 allKeys];
  v4 = [v2 initWithArray:v3];
  v5 = qword_1ED51BFD8;
  qword_1ED51BFD8 = v4;
}

void __37__UISDeviceContext__keysToValueTypes__block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"UISDeviceContextDeviceClassKey";
  v2[1] = @"UISDeviceContextDeviceIdiomKey";
  v3[0] = &unk_1F0A84520;
  v3[1] = &unk_1F0A84520;
  v2[2] = @"UISDeviceContextHomeButtonTypeKey";
  v2[3] = @"UISDeviceContextDeviceCornerRadiusKey";
  v3[2] = &unk_1F0A84520;
  v3[3] = &unk_1F0A84538;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _MergedGlobals_15;
  _MergedGlobals_15 = v0;
}

- (UISDeviceContext)initWithDeviceInfoValues:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UISDeviceContext;
  v5 = [(UISDeviceContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(UISDeviceContext *)v5 _dictionaryWithOnlyValidKeysFromDictionary:v4];
    deviceInfoKeysToValues = v6->_deviceInfoKeysToValues;
    v6->_deviceInfoKeysToValues = v7;
  }

  return v6;
}

- (BOOL)hasDeviceInfoValueForKey:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() _allKeys];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:60 description:{@"Key '%@' isn't valid", v5}];
  }

  v8 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:v5];
  v9 = v8 != 0;

  return v9;
}

- (double)deviceInfoFloatValueForKey:(id)a3
{
  v5 = a3;
  if (![(UISDeviceContext *)self _isDeviceInfoType:3 appropriateForKey:v5])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:65 description:{@"%s values aren't valid for the key '%@'", "Float", v5}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (int64_t)deviceInfoIntegerValueForKey:(id)a3
{
  v5 = a3;
  if (![(UISDeviceContext *)self _isDeviceInfoType:2 appropriateForKey:v5])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:74 description:{@"%s values aren't valid for the key '%@'", "Integer", v5}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
}

- (BOOL)deviceInfoBoolValueForKey:(id)a3
{
  v5 = a3;
  if (![(UISDeviceContext *)self _isDeviceInfoType:2 appropriateForKey:v5])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:79 description:{@"%s values aren't valid for the key '%@'", "Integer", v5}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:v5];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)deviceInfoStringValueForKey:(id)a3
{
  v5 = a3;
  if (![(UISDeviceContext *)self _isDeviceInfoType:4 appropriateForKey:v5])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:84 description:{@"%s values aren't valid for the key '%@'", "String", v5}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:v5];

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  deviceInfoKeysToValues = self->_deviceInfoKeysToValues;
  v5 = a3;
  v6 = [(UISDeviceContext *)self _dictionaryWithOnlyValidKeysFromDictionary:deviceInfoKeysToValues];
  [v5 encodeObject:v6 forKey:@"DeviceContextInfo"];
}

- (UISDeviceContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceContextInfo"];

  v6 = [(UISDeviceContext *)self initWithDeviceInfoValues:v5];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UISMutableDeviceContext alloc];
  deviceInfoKeysToValues = self->_deviceInfoKeysToValues;

  return [(UISDeviceContext *)v4 initWithDeviceInfoValues:deviceInfoKeysToValues];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UISDeviceContext *)self _rawDeviceInfoKeysToValues];
    v7 = [(UISDeviceContext *)v5 _rawDeviceInfoKeysToValues];
    v8 = [v6 isEqual:v7];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_deviceInfoKeysToValues withName:@"DeviceInfoKeysToValues"];
  v5 = [v3 build];

  return v5;
}

- (int64_t)_valueTypeForKey:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() _allKeys];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:140 description:{@"Key '%@' isn't valid", v5}];
  }

  v8 = [objc_opt_class() _keysToValueTypes];
  v9 = [v8 objectForKeyedSubscript:v5];

  if (v9)
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)_valueTypeForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_isDeviceInfoValue:(id)a3 appropriateForKey:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = [(UISDeviceContext *)self _isDeviceInfoType:[(UISDeviceContext *)self _valueTypeForValue:a3] appropriateForKey:v6];

  return a3;
}

- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__UISDeviceContext__dictionaryWithOnlyValidKeysFromDictionary___block_invoke;
  v5[3] = &unk_1E7459630;
  v5[4] = self;
  v3 = [a3 bs_filter:v5];

  return v3;
}

@end