@interface UISDeviceContext
+ (id)_allKeys;
+ (id)_keysToValueTypes;
+ (id)defaultContext;
- (BOOL)_isDeviceInfoValue:(id)value appropriateForKey:(id)key;
- (BOOL)deviceInfoBoolValueForKey:(id)key;
- (BOOL)hasDeviceInfoValueForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UISDeviceContext)initWithBSXPCCoder:(id)coder;
- (UISDeviceContext)initWithDeviceInfoValues:(id)values;
- (double)deviceInfoFloatValueForKey:(id)key;
- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)dictionary;
- (id)deviceInfoStringValueForKey:(id)key;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)_valueTypeForKey:(id)key;
- (int64_t)_valueTypeForValue:(id)value;
- (int64_t)deviceInfoIntegerValueForKey:(id)key;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation UISDeviceContext

+ (id)defaultContext
{
  v12[4] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  v11[0] = @"UISDeviceContextDeviceClassKey";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(mEMORY[0x1E698E730], "deviceClass")}];
  v12[0] = v4;
  v12[1] = &unk_1F0A84508;
  v11[1] = @"UISDeviceContextDeviceIdiomKey";
  v11[2] = @"UISDeviceContextHomeButtonTypeKey";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(mEMORY[0x1E698E730], "homeButtonType")}];
  v12[2] = v5;
  v11[3] = @"UISDeviceContextDeviceCornerRadiusKey";
  v6 = MEMORY[0x1E696AD98];
  MGGetFloat32Answer();
  v7 = [v6 numberWithFloat:?];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = [[self alloc] initWithDeviceInfoValues:v8];

  return v9;
}

+ (id)_allKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__UISDeviceContext__allKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (UISDeviceContext)initWithDeviceInfoValues:(id)values
{
  valuesCopy = values;
  v10.receiver = self;
  v10.super_class = UISDeviceContext;
  v5 = [(UISDeviceContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(UISDeviceContext *)v5 _dictionaryWithOnlyValidKeysFromDictionary:valuesCopy];
    deviceInfoKeysToValues = v6->_deviceInfoKeysToValues;
    v6->_deviceInfoKeysToValues = v7;
  }

  return v6;
}

- (BOOL)hasDeviceInfoValueForKey:(id)key
{
  keyCopy = key;
  _allKeys = [objc_opt_class() _allKeys];
  v7 = [_allKeys containsObject:keyCopy];

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:60 description:{@"Key '%@' isn't valid", keyCopy}];
  }

  v8 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:keyCopy];
  v9 = v8 != 0;

  return v9;
}

- (double)deviceInfoFloatValueForKey:(id)key
{
  keyCopy = key;
  if (![(UISDeviceContext *)self _isDeviceInfoType:3 appropriateForKey:keyCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:65 description:{@"%s values aren't valid for the key '%@'", "Float", keyCopy}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:keyCopy];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (int64_t)deviceInfoIntegerValueForKey:(id)key
{
  keyCopy = key;
  if (![(UISDeviceContext *)self _isDeviceInfoType:2 appropriateForKey:keyCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:74 description:{@"%s values aren't valid for the key '%@'", "Integer", keyCopy}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:keyCopy];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (BOOL)deviceInfoBoolValueForKey:(id)key
{
  keyCopy = key;
  if (![(UISDeviceContext *)self _isDeviceInfoType:2 appropriateForKey:keyCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:79 description:{@"%s values aren't valid for the key '%@'", "Integer", keyCopy}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:keyCopy];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)deviceInfoStringValueForKey:(id)key
{
  keyCopy = key;
  if (![(UISDeviceContext *)self _isDeviceInfoType:4 appropriateForKey:keyCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:84 description:{@"%s values aren't valid for the key '%@'", "String", keyCopy}];
  }

  v6 = [(NSDictionary *)self->_deviceInfoKeysToValues objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  deviceInfoKeysToValues = self->_deviceInfoKeysToValues;
  coderCopy = coder;
  v6 = [(UISDeviceContext *)self _dictionaryWithOnlyValidKeysFromDictionary:deviceInfoKeysToValues];
  [coderCopy encodeObject:v6 forKey:@"DeviceContextInfo"];
}

- (UISDeviceContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceContextInfo"];

  v6 = [(UISDeviceContext *)self initWithDeviceInfoValues:v5];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UISMutableDeviceContext alloc];
  deviceInfoKeysToValues = self->_deviceInfoKeysToValues;

  return [(UISDeviceContext *)v4 initWithDeviceInfoValues:deviceInfoKeysToValues];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _rawDeviceInfoKeysToValues = [(UISDeviceContext *)self _rawDeviceInfoKeysToValues];
    _rawDeviceInfoKeysToValues2 = [(UISDeviceContext *)v5 _rawDeviceInfoKeysToValues];
    v8 = [_rawDeviceInfoKeysToValues isEqual:_rawDeviceInfoKeysToValues2];
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
  build = [v3 build];

  return build;
}

- (int64_t)_valueTypeForKey:(id)key
{
  keyCopy = key;
  _allKeys = [objc_opt_class() _allKeys];
  v7 = [_allKeys containsObject:keyCopy];

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISDeviceContext.m" lineNumber:140 description:{@"Key '%@' isn't valid", keyCopy}];
  }

  _keysToValueTypes = [objc_opt_class() _keysToValueTypes];
  v9 = [_keysToValueTypes objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)_valueTypeForValue:(id)value
{
  valueCopy = value;
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

- (BOOL)_isDeviceInfoValue:(id)value appropriateForKey:(id)key
{
  keyCopy = key;
  LOBYTE(value) = [(UISDeviceContext *)self _isDeviceInfoType:[(UISDeviceContext *)self _valueTypeForValue:value] appropriateForKey:keyCopy];

  return value;
}

- (id)_dictionaryWithOnlyValidKeysFromDictionary:(id)dictionary
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__UISDeviceContext__dictionaryWithOnlyValidKeysFromDictionary___block_invoke;
  v5[3] = &unk_1E7459630;
  v5[4] = self;
  v3 = [dictionary bs_filter:v5];

  return v3;
}

@end