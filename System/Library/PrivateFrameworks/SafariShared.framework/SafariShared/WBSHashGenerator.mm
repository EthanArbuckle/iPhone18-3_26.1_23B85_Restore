@interface WBSHashGenerator
- (WBSHashGenerator)init;
- (WBSHashGenerator)initWithCoder:(id)coder;
- (WBSHashGenerator)initWithKey:(id)key keyID:(id)d;
- (id)_createEncryptionKeyData;
- (id)_createEncryptionKeyIDDataUsingKey:(id)key;
- (id)generateHashStringWithComponents:(id)components;
- (id)generateHashWithComponents:(id)components;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHashGenerator

- (WBSHashGenerator)init
{
  _createEncryptionKeyData = [(WBSHashGenerator *)self _createEncryptionKeyData];
  v4 = [(WBSHashGenerator *)self _createEncryptionKeyIDDataUsingKey:_createEncryptionKeyData];
  v5 = [(WBSHashGenerator *)self initWithKey:_createEncryptionKeyData keyID:v4];

  return v5;
}

- (WBSHashGenerator)initWithKey:(id)key keyID:(id)d
{
  keyCopy = key;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = WBSHashGenerator;
  v8 = [(WBSHashGenerator *)&v15 init];
  if (v8 && [keyCopy length] && objc_msgSend(dCopy, "length") && objc_msgSend(dCopy, "length") >= 4)
  {
    v11 = [keyCopy copy];
    key = v8->_key;
    v8->_key = v11;

    v13 = [dCopy copy];
    keyID = v8->_keyID;
    v8->_keyID = v13;

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)generateHashStringWithComponents:(id)components
{
  v3 = [(WBSHashGenerator *)self generateHashWithComponents:components];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)generateHashWithComponents:(id)components
{
  v41 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  if ([componentsCopy safari_containsObjectPassingTest:&__block_literal_global_57])
  {
    memset(&ctx, 0, sizeof(ctx));
    p_key = &self->_key;
    CCHmacInit(&ctx, 2u, [(NSData *)self->_key bytes], [(NSData *)self->_key length]);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = componentsCopy;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          if ([v12 length])
          {
            if (v10)
            {
              v13 = v12;
            }

            else
            {
              v13 = [@"/" stringByAppendingString:v12];
            }

            v14 = v13;
            uTF8String = [v13 UTF8String];
            v16 = strlen(uTF8String);
            CCHmacUpdate(&ctx, uTF8String, v16);
          }

          v10 = 0;
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
        v10 = 0;
      }

      while (v8);
    }

    CCHmacFinal(&ctx, macOut);
    v17 = [MEMORY[0x1E695DF88] dataWithBytes:macOut length:32];
    keyID = self->_keyID;
    p_keyID = &self->_keyID;
    [v17 appendBytes:-[NSData bytes](keyID length:{"bytes") + -[NSData length](*p_keyID, "length") - 4, 4}];
    if (![v17 length])
    {
      v20 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(WBSHashGenerator *)p_key generateHashWithComponents:v20, p_keyID];
      }

      v21 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = v21;
        v23 = [v6 componentsJoinedByString:{@", "}];
        safari_descriptionWithoutSpaces = [*p_key safari_descriptionWithoutSpaces];
        safari_descriptionWithoutSpaces2 = [(NSData *)*p_keyID safari_descriptionWithoutSpaces];
        *buf = 138478339;
        v34 = v23;
        v35 = 2114;
        v36 = safari_descriptionWithoutSpaces;
        v37 = 2114;
        v38 = safari_descriptionWithoutSpaces2;
        _os_log_debug_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_DEBUG, "Could not generate IdentityHash for components %{private}@, with key %{public}@, keyID %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v26 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [WBSHashGenerator generateHashWithComponents:v26];
    }

    v17 = 0;
  }

  return v17;
}

- (id)_createEncryptionKeyData
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = 0;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [uUID getUUIDBytes:v5];

  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:16];

  return v3;
}

- (id)_createEncryptionKeyIDDataUsingKey:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  uTF8String = [@"Safari" UTF8String];
  bytes = [keyCopy bytes];
  v6 = [keyCopy length];

  v7 = strlen(uTF8String);
  CCHmac(2u, bytes, v6, uTF8String, v7, macOut);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:32];

  return v8;
}

- (WBSHashGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeyID"];

  v7 = [(WBSHashGenerator *)self initWithKey:v5 keyID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"Key"];
  [coderCopy encodeObject:self->_keyID forKey:@"KeyID"];
}

- (void)generateHashWithComponents:(id *)a3 .cold.2(void **a1, void *a2, id *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = [v4 safari_descriptionWithoutSpaces];
  v7 = [*a3 safari_descriptionWithoutSpaces];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Could not generate IdentityHash with key %{public}@, keyID %{public}@", &v8, 0x16u);
}

@end