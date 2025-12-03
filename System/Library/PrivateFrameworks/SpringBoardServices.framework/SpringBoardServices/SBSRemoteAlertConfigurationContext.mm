@interface SBSRemoteAlertConfigurationContext
+ (id)configurationContextWithLegacyAlertOptions:(id)options;
- (SBSRemoteAlertConfigurationContext)initWithCoder:(id)coder;
- (SBSRemoteAlertConfigurationContext)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSRemoteAlertConfigurationContext

+ (id)configurationContextWithLegacyAlertOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(self);
  v6 = [optionsCopy bs_safeDictionaryForKey:@"UserInfo"];
  [v5 setUserInfo:v6];

  if (v5)
  {
    v7 = [optionsCopy copy];
    v8 = v5[4];
    v5[4] = v7;
  }

  return v5;
}

- (SBSRemoteAlertConfigurationContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SBSRemoteAlertConfigurationContext;
  v5 = [(SBSRemoteAlertConfigurationContext *)&v15 init];
  if (v5)
  {
    v6 = BSDeserializeCFValueFromXPCDictionaryWithKey();
    userInfo = v5->_userInfo;
    v5->_userInfo = v6;

    v8 = xpc_dictionary_get_value(dictionaryCopy, "c__endpoint");
    xpcEndpoint = v5->_xpcEndpoint;
    v5->_xpcEndpoint = v8;

    v10 = BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    actions = v5->_actions;
    v5->_actions = v10;

    v12 = BSDeserializeCFValueFromXPCDictionaryWithKey();
    legacyAlertOptions = v5->_legacyAlertOptions;
    v5->_legacyAlertOptions = v12;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  xpcEndpoint = self->_xpcEndpoint;
  if (xpcEndpoint)
  {
    xpc_dictionary_set_value(dictionaryCopy, "c__endpoint", xpcEndpoint);
  }

  if (self->_userInfo)
  {
    BSSerializeCFValueToXPCDictionaryWithKey();
  }

  if ([(NSSet *)self->_actions count])
  {
    BSSerializeSetToXPCDictionaryWithKey();
  }

  if (self->_legacyAlertOptions)
  {
    BSSerializeCFValueToXPCDictionaryWithKey();
  }

  MEMORY[0x1EEE66BB8]();
}

id __62__SBSRemoteAlertConfigurationContext_encodeWithXPCDictionary___block_invoke()
{
  v0 = BSCreateSerializedBSXPCEncodableObject();

  return v0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSRemoteAlertConfigurationContext.m" lineNumber:87 description:@"This class may only be encoded by an NSXPCCoder."];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [coderCopy encodeObject:userInfo forKey:@"__userInfo"];
  }

  xpcEndpoint = self->_xpcEndpoint;
  if (xpcEndpoint)
  {
    [coderCopy encodeXPCObject:xpcEndpoint forKey:@"__endpoint"];
  }

  if ([(NSSet *)self->_actions count])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    BSSerializeSetToXPCDictionaryWithKey();
    [coderCopy encodeXPCObject:v8 forKey:@"__actions"];
  }

  legacyAlertOptions = self->_legacyAlertOptions;
  v10 = coderCopy;
  if (legacyAlertOptions)
  {
    [coderCopy encodeObject:legacyAlertOptions forKey:@"__legacyAlertOptions"];
    v10 = coderCopy;
  }
}

id __54__SBSRemoteAlertConfigurationContext_encodeWithCoder___block_invoke()
{
  v0 = BSCreateSerializedBSXPCEncodableObject();

  return v0;
}

- (SBSRemoteAlertConfigurationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25.receiver = self;
    v25.super_class = SBSRemoteAlertConfigurationContext;
    v6 = [(SBSRemoteAlertConfigurationContext *)&v25 init];
    if (v6)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"__userInfo"];
      userInfo = v6->_userInfo;
      v6->_userInfo = v14;

      if (v6->_userInfo)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(SBSRemoteAlertConfigurationContext *)a2 initWithCoder:v6];
        }
      }

      v16 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"__endpoint"];
      xpcEndpoint = v6->_xpcEndpoint;
      v6->_xpcEndpoint = v16;

      v18 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"__actions"];
      v19 = BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
      actions = v6->_actions;
      v6->_actions = v19;

      v21 = [coderCopy decodePropertyListForKey:@"__legacyAlertOptions"];
      if ([v21 isNSDictionary])
      {
        objc_storeStrong(&v6->_legacyAlertOptions, v21);
      }
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSRemoteAlertConfigurationContext.m" lineNumber:114 description:@"This class may only be decoded by an NSXPCCoder."];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteAlertConfigurationContext.m" lineNumber:122 description:@"User info must be a dictionary type."];
}

@end