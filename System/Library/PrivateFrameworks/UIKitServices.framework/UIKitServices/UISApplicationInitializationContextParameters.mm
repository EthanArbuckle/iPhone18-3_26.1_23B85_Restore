@interface UISApplicationInitializationContextParameters
- (CGSize)usableDisplaySizeHint;
- (UISApplicationInitializationContextParameters)init;
- (UISApplicationInitializationContextParameters)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UISApplicationInitializationContextParameters

- (UISApplicationInitializationContextParameters)init
{
  v7.receiver = self;
  v7.super_class = UISApplicationInitializationContextParameters;
  v2 = [(UISApplicationInitializationContextParameters *)&v7 init];
  v3 = v2;
  if (v2)
  {
    deviceFamilies = v2->_deviceFamilies;
    v5 = MEMORY[0x1E695E0F0];
    v2->_supportedInterfaceOrientations = 0;
    v2->_deviceFamilies = v5;

    *&v3->_requiresFullScreen = 0;
    v3->_initialCGDirectDisplayID = 0;
    v3->_usableDisplaySizeHint = *MEMORY[0x1E695F060];
    *&v3->_preferSmallerDisplaySize = 0;
  }

  return v3;
}

- (UISApplicationInitializationContextParameters)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = UISApplicationInitializationContextParameters;
  v5 = [(UISApplicationInitializationContextParameters *)&v14 init];
  if (v5)
  {
    v5->_supportedInterfaceOrientations = xpc_dictionary_get_int64(dictionaryCopy, "supportedInterfaceOrientations");
    v6 = xpc_dictionary_get_array(dictionaryCopy, "deviceFamilies");
    if (v6)
    {
      array = [MEMORY[0x1E695DF70] array];
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __71__UISApplicationInitializationContextParameters_initWithXPCDictionary___block_invoke;
      applier[3] = &unk_1E7459440;
      applier[4] = array;
      xpc_array_apply(v6, applier);
      v8 = [array copyWithZone:0];
      deviceFamilies = v5->_deviceFamilies;
      v5->_deviceFamilies = v8;
    }

    else
    {
      array = v5->_deviceFamilies;
      v5->_deviceFamilies = MEMORY[0x1E695E0F0];
    }

    v5->_requiresFullScreen = xpc_dictionary_get_BOOL(dictionaryCopy, "requiresFullScreen");
    v5->_supportsMultiwindow = xpc_dictionary_get_BOOL(dictionaryCopy, "supportsMultiwindow");
    v5->_initialCGDirectDisplayID = xpc_dictionary_get_uint64(dictionaryCopy, "initialCGDirectDisplayID");
    v10 = xpc_dictionary_get_double(dictionaryCopy, "usableDisplaySizeHint_w");
    v11 = xpc_dictionary_get_double(dictionaryCopy, "usableDisplaySizeHint_h");
    v5->_usableDisplaySizeHint.width = v10;
    v5->_usableDisplaySizeHint.height = v11;
    v5->_preferSmallerDisplaySize = xpc_dictionary_get_BOOL(dictionaryCopy, "preferSmallerDisplaySize");
    v5->_useTrueDisplaySize = xpc_dictionary_get_BOOL(dictionaryCopy, "useTrueDisplaySize");
  }

  return v5;
}

uint64_t __71__UISApplicationInitializationContextParameters_initWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x19A8C6CB0]() == MEMORY[0x1E69E9EB0])
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v4)];
    [v5 addObject:v6];
  }

  return 1;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  xpc_dictionary_set_int64(dictionaryCopy, "supportedInterfaceOrientations", self->_supportedInterfaceOrientations);
  if (self->_deviceFamilies)
  {
    v5 = xpc_array_create(0, 0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_deviceFamilies;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v11 + 1) + 8 * v10++) integerValue]);
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    xpc_dictionary_set_value(dictionaryCopy, "deviceFamilies", v5);
  }

  xpc_dictionary_set_BOOL(dictionaryCopy, "requiresFullScreen", self->_requiresFullScreen);
  xpc_dictionary_set_BOOL(dictionaryCopy, "supportsMultiwindow", self->_supportsMultiwindow);
  xpc_dictionary_set_uint64(dictionaryCopy, "initialCGDirectDisplayID", self->_initialCGDirectDisplayID);
  xpc_dictionary_set_double(dictionaryCopy, "usableDisplaySizeHint_w", self->_usableDisplaySizeHint.width);
  xpc_dictionary_set_double(dictionaryCopy, "usableDisplaySizeHint_h", self->_usableDisplaySizeHint.height);
  xpc_dictionary_set_BOOL(dictionaryCopy, "preferSmallerDisplaySize", self->_preferSmallerDisplaySize);
  xpc_dictionary_set_BOOL(dictionaryCopy, "useTrueDisplaySize", self->_useTrueDisplaySize);
}

- (CGSize)usableDisplaySizeHint
{
  width = self->_usableDisplaySizeHint.width;
  height = self->_usableDisplaySizeHint.height;
  result.height = height;
  result.width = width;
  return result;
}

@end