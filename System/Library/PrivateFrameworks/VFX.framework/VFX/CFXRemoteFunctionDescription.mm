@interface CFXRemoteFunctionDescription
- (BOOL)isEqual:(id)equal;
- (CFXRemoteFunctionDescription)initWithCoder:(id)coder;
- (unint64_t)stableHashForDictionary:(id)dictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CFXRemoteFunctionDescription

- (BOOL)isEqual:(id)equal
{
  isEqualToString = objc_msgSend_isEqualToString_(self->_functionName, a2, *(equal + 1), v3);
  if (isEqualToString)
  {
    functionConstantValues = self->_functionConstantValues;
    v10 = *(equal + 2);

    LOBYTE(isEqualToString) = objc_msgSend_isEqual_(functionConstantValues, v7, v10, v8);
  }

  return isEqualToString;
}

- (unint64_t)stableHashForDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(dictionary, a2, &v21, v25, 16);
  if (!v4)
  {
    return 0;
  }

  v8 = v4;
  v9 = 0;
  v10 = *v22;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(dictionary);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      v13 = objc_msgSend_hash(v12, v5, v6, v7);
      v16 = objc_msgSend_objectForKeyedSubscript_(dictionary, v14, v12, v15);
      v9 ^= v13 ^ objc_msgSend_hash(v16, v17, v18, v19);
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(dictionary, v5, &v21, v25, 16);
  }

  while (v8);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  functionName = self->_functionName;
  if (functionName)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, functionName, @"functionName");
  }

  functionConstantValues = self->_functionConstantValues;
  if (functionConstantValues)
  {

    objc_msgSend_encodeObject_forKey_(coder, a2, functionConstantValues, @"constants");
  }
}

- (CFXRemoteFunctionDescription)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CFXRemoteFunctionDescription;
  v4 = [(CFXRemoteFunctionDescription *)&v21 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"functionName");
    objc_msgSend_setFunctionName_(v4, v8, v7, v9);
    v10 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v22, 2);
    v15 = objc_msgSend_setWithArray_(v10, v13, v12, v14);
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v16, v15, @"constants");
    objc_msgSend_setFunctionConstantValues_(v4, v18, v17, v19);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXRemoteFunctionDescription;
  [(CFXRemoteFunctionDescription *)&v3 dealloc];
}

@end