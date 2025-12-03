@interface WBSPasswordBreachConfigurationDictionaryUnpacker
- (BOOL)optionalBoolForKey:(id)key defaultValue:(BOOL)value;
- (WBSPasswordBreachConfigurationDictionaryUnpacker)initWithDictionary:(id)dictionary;
- (id)URLForKey:(id)key;
- (id)_valueOfClass:(Class)class forKey:(id)key required:(BOOL)required;
- (id)dataFromHexStringForKey:(id)key expectedLength:(id)length;
- (id)sortedUnsignedIntegerArrayForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue ascending:(BOOL)ascending;
- (id)stringForKey:(id)key minimumLength:(unint64_t)length;
- (unint64_t)unsignedIntegerForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue;
@end

@implementation WBSPasswordBreachConfigurationDictionaryUnpacker

- (WBSPasswordBreachConfigurationDictionaryUnpacker)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = WBSPasswordBreachConfigurationDictionaryUnpacker;
  v6 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = v7;
  }

  return v7;
}

- (id)_valueOfClass:(Class)class forKey:(id)key required:(BOOL)required
{
  requiredCopy = required;
  keyCopy = key;
  v8 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:keyCopy];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      goto LABEL_11;
    }

    v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationDictionaryUnpacker _valueOfClass:forKey:required:];
    }

    goto LABEL_9;
  }

  if (requiredCopy)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationDictionaryUnpacker _valueOfClass:forKey:required:];
    }

LABEL_9:
    v9 = 0;
    self->_errorOccurred = 1;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)stringForKey:(id)key minimumLength:(unint64_t)length
{
  keyCopy = key;
  v7 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  v8 = v7;
  if (v7)
  {
    if ([v7 length] < length)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachConfigurationDictionaryUnpacker stringForKey:minimumLength:];
      }

      self->_errorOccurred = 1;
    }

    v10 = v8;
  }

  else
  {
    v10 = &stru_1F3064D08;
  }

  return v10;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachConfigurationDictionaryUnpacker URLForKey:];
      }

      self->_errorOccurred = 1;
      v8 = objc_alloc_init(MEMORY[0x1E695DFF8]);
    }

    v9 = v8;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFF8]);
  }

  return v9;
}

- (unint64_t)unsignedIntegerForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v9 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  unsignedIntegerValue = [v9 unsignedIntegerValue];
  if (unsignedIntegerValue < value || unsignedIntegerValue > maximumValue)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412802;
      v17 = keyCopy;
      v18 = 2048;
      valueCopy = value;
      v20 = 2048;
      maximumValueCopy = maximumValue;
      _os_log_error_impl(&dword_1B8447000, v12, OS_LOG_TYPE_ERROR, "Value for configuration key %@ must be between %ld and %ld (inclusive).", &v16, 0x20u);
    }

    self->_errorOccurred = 1;
  }

  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  v14 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue2;
}

- (id)sortedUnsignedIntegerArrayForKey:(id)key minimumValue:(unint64_t)value maximumValue:(unint64_t)maximumValue ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v38 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v30 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = ascendingCopy - 1;
    v15 = *v28;
    v26 = keyCopy;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v28 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v27 + 1) + 8 * v16);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        keyCopy = v26;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [WBSPasswordBreachConfigurationDictionaryUnpacker sortedUnsignedIntegerArrayForKey:minimumValue:maximumValue:ascending:];
        }

        goto LABEL_24;
      }

      unsignedIntegerValue = [v17 unsignedIntegerValue];
      if (unsignedIntegerValue < value || unsignedIntegerValue > maximumValue)
      {
        break;
      }

      if (ascendingCopy)
      {
        if (unsignedIntegerValue < v14)
        {
          goto LABEL_22;
        }
      }

      else if (unsignedIntegerValue > v14)
      {
LABEL_22:
        v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        keyCopy = v26;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [WBSPasswordBreachConfigurationDictionaryUnpacker sortedUnsignedIntegerArrayForKey:minimumValue:maximumValue:ascending:];
        }

LABEL_24:
        self->_errorOccurred = 1;

        v20 = 0;
        goto LABEL_25;
      }

      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
        keyCopy = v26;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    keyCopy = v26;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v32 = v26;
      v33 = 2048;
      valueCopy = value;
      v35 = 2048;
      maximumValueCopy = maximumValue;
      _os_log_error_impl(&dword_1B8447000, v22, OS_LOG_TYPE_ERROR, "Value for configuration key %@ must be between %ld and %ld (inclusive).", buf, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_17:

  v20 = v11;
LABEL_25:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)dataFromHexStringForKey:(id)key expectedLength:(id)length
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  lengthCopy = length;
  v8 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:1];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DEF0] safari_dataWithHexString:v8];
    v10 = v9;
    if (lengthCopy && (v11 = [v9 length], v11 != objc_msgSend(lengthCopy, "unsignedLongValue")))
    {
      v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = v14;
        v18 = 138412802;
        v19 = keyCopy;
        v20 = 2048;
        unsignedLongValue = [lengthCopy unsignedLongValue];
        v22 = 2048;
        v23 = [v10 length];
        _os_log_error_impl(&dword_1B8447000, v17, OS_LOG_TYPE_ERROR, "Value for configuration key %@ has unexpected length: %lu != %lu.", &v18, 0x20u);
      }

      v12 = 0;
      self->_errorOccurred = 1;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachConfigurationDictionaryUnpacker dataFromHexStringForKey:expectedLength:];
    }

    v12 = 0;
    self->_errorOccurred = 1;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)optionalBoolForKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  v7 = [(WBSPasswordBreachConfigurationDictionaryUnpacker *)self _valueOfClass:objc_opt_class() forKey:keyCopy required:0];

  if (v7)
  {
    value = [v7 BOOLValue];
  }

  return value;
}

- (void)_valueOfClass:forKey:required:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Value for configuration key %@ is not of expected type %@.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_valueOfClass:forKey:required:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, v0, v1, "Configuration missing required key %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)stringForKey:minimumLength:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Value for configuration key %@ must contain at least %lu characters.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)URLForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, v0, v1, "Value for configuration key %@ is not a valid URL.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sortedUnsignedIntegerArrayForKey:minimumValue:maximumValue:ascending:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, v0, v1, "Value for configuration key %@ contains a non-number.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sortedUnsignedIntegerArrayForKey:minimumValue:maximumValue:ascending:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, v0, v1, "Value for configuration key %@ must be sorted.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dataFromHexStringForKey:expectedLength:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_6(&dword_1B8447000, v0, v1, "Value for configuration key %@ is not a string.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end