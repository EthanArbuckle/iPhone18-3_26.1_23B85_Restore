@interface WBSHistoryCrypto
- (NSData)cryptographicKey;
- (WBSHistoryCrypto)initWithCryptographicKey:(id)a3 salt:(id)a4;
- (id)_createCryptographicKey;
- (id)_createOrLoadCryptographicKey;
- (id)decryptDictionary:(id)a3;
- (id)encryptDictionary:(id)a3;
@end

@implementation WBSHistoryCrypto

- (WBSHistoryCrypto)initWithCryptographicKey:(id)a3 salt:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSHistoryCrypto;
  v9 = [(WBSHistoryCrypto *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedCryptographicKey, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_salt, a4);
    }

    else
    {
      arc4random_buf(__buf, 0x40uLL);
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:__buf length:64];
      salt = v10->_salt;
      v10->_salt = v11;
    }

    v13 = v10;
  }

  return v10;
}

- (id)_createCryptographicKey
{
  v5 = *MEMORY[0x1E69E9840];
  arc4random_buf(__buf, 0x20uLL);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:__buf length:32];

  return v2;
}

- (id)_createOrLoadCryptographicKey
{
  v3 = WBSGetKeychainData();
  v4 = 0;
  v5 = v4;
  if (!v3)
  {
    v11 = v4;
    v8 = v11;
    goto LABEL_9;
  }

  v6 = WBSGetKeychainData();
  v7 = 0;
  if (v6)
  {
    v8 = [(WBSHistoryCrypto *)self _createCryptographicKey];

    v9 = _WBSLocalizedString();
    v10 = WBSSetKeychainData();

    v11 = 0;
    v5 = v8;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = _WBSLocalizedString();
    WBSSetKeychainData();

    v8 = v7;
  }

  v11 = v8;
  v8 = v5;
LABEL_8:

LABEL_9:

  return v11;
}

- (NSData)cryptographicKey
{
  cachedCryptographicKey = self->_cachedCryptographicKey;
  if (!cachedCryptographicKey)
  {
    v4 = [(WBSHistoryCrypto *)self _createOrLoadCryptographicKey];
    v5 = self->_cachedCryptographicKey;
    self->_cachedCryptographicKey = v4;

    cachedCryptographicKey = self->_cachedCryptographicKey;
  }

  v6 = cachedCryptographicKey;

  return v6;
}

- (id)encryptDictionary:(id)a3
{
  v17 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v17];
  v5 = v17;
  if (!v4)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(WBSHistoryCrypto *)v13 encryptDictionary:v5];
    }

    goto LABEL_8;
  }

  v16 = 0;
  dataOutAvailable = [v4 length] + 32;
  dataOut = malloc_type_malloc(dataOutAvailable, 0xC313BF5DuLL);
  v8 = [(WBSHistoryCrypto *)self cryptographicKey];
  v9 = [v8 bytes];
  v10 = [(WBSHistoryCrypto *)self cryptographicKey];
  v11 = CCCrypt(0, 0, 1u, v9, [v10 length], 0, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), dataOut, dataOutAvailable, &v16);

  if (v11)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(WBSHistoryCrypto *)v11 encryptDictionary:v12];
    }

    free(dataOut);
LABEL_8:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:dataOut length:v16];
LABEL_10:

  return v14;
}

- (id)decryptDictionary:(id)a3
{
  v22 = 0;
  v4 = a3;
  dataOutAvailable = [v4 length] + 16;
  dataOut = malloc_type_malloc(dataOutAvailable, 0x9D265BDEuLL);
  v7 = [(WBSHistoryCrypto *)self cryptographicKey];
  v8 = [v7 bytes];
  v9 = [(WBSHistoryCrypto *)self cryptographicKey];
  v10 = [v9 length];
  v11 = [v4 bytes];
  v12 = [v4 length];

  v13 = CCCrypt(1u, 0, 1u, v8, v10, 0, v11, v12, dataOut, dataOutAvailable, &v22);
  if (!v13)
  {
    v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:dataOut length:v22];
    v21 = 0;
    v17 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:0 error:&v21];
    v18 = v21;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v17;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(WBSHistoryCrypto *)v19 decryptDictionary:v18];
      }
    }

    v15 = 0;
    goto LABEL_11;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(WBSHistoryCrypto *)v13 decryptDictionary:v14];
  }

  free(dataOut);
  v15 = 0;
LABEL_12:

  return v15;
}

- (void)encryptDictionary:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to encrypt data: %i", v2, 8u);
}

- (void)encryptDictionary:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to serialize dictionary: %{public}@", v7, v8, v9, v10, 2u);
}

- (void)decryptDictionary:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to decrypt data: %i", v2, 8u);
}

- (void)decryptDictionary:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v5, v6, "Failed to deserialize property list: %{public}@", v7, v8, v9, v10, 2u);
}

@end