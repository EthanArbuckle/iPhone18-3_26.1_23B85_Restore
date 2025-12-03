@interface RTKeychainManager
+ (RTKeychainManager)allocWithZone:(_NSZone *)zone;
- (BOOL)_removeItemWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_setKey:(id)key forIdentifier:(id)identifier error:(id *)error;
- (BOOL)_updateKey:(id)key forIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeEncryptionKeyWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)updateKeyWithIdentifier:(id)identifier keyData:(id)data keySize:(int64_t)size error:(id *)error;
- (id)_keyForIdentifier:(id)identifier error:(id *)error;
- (id)_keySpecifierWithBitSize:(int64_t)size;
- (id)_randomKeyWithSpecifier:(id)specifier error:(id *)error;
- (id)createSymmetricKeyWithSize:(int64_t)size identifier:(id)identifier storeInKeychain:(BOOL)keychain error:(id *)error;
- (id)encryptionKeyWithSize:(int64_t)size identifier:(id)identifier error:(id *)error;
- (int)_copySecItemMatchingQuery:(id)query result:(id *)result;
- (void)_shutdownWithHandler:(id)handler;
- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler;
@end

@implementation RTKeychainManager

+ (RTKeychainManager)allocWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___RTKeychainManager;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
}

- (void)_shutdownWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (id)createSymmetricKeyWithSize:(int64_t)size identifier:(id)identifier storeInKeychain:(BOOL)keychain error:(id *)error
{
  keychainCopy = keychain;
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (size < 3)
    {
      v11 = [(RTKeychainManager *)self _keySpecifierWithBitSize:size];
      v30 = 0;
      v12 = [(RTKeychainManager *)self _randomKeyWithSpecifier:v11 error:&v30];
      v13 = v30;
      v14 = v13;
      if (!v12 || v13)
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "could not generate key, error, %@", buf, 0xCu);
        }

        if (error)
        {
          v25 = v14;
          keyData = 0;
          *error = v14;
          goto LABEL_31;
        }
      }

      else
      {
        if (!keychainCopy || (v29 = 0, v15 = [(RTKeychainManager *)self _setKey:v12 forIdentifier:identifierCopy error:&v29], v16 = v29, v17 = v16, v15) && !v16)
        {
          keyData = [v12 keyData];
LABEL_31:

          goto LABEL_32;
        }

        v26 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v17;
          _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "could not set key in keychain, error, %@", buf, 0xCu);
        }

        if (error)
        {
          v27 = v17;
          *error = v17;
        }
      }

      keyData = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTKeychainManager createSymmetricKeyWithSize:identifier:storeInKeychain:error:]";
      v37 = 1024;
      v38 = 55;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (size < 3)
    {
LABEL_17:
      if (error)
      {
        v33 = *MEMORY[0x277CCA450];
        v34 = @"Invalid parameter: identifier must be non-nil.";
        v21 = MEMORY[0x277CBEAC0];
        v22 = &v34;
        v23 = &v33;
        goto LABEL_19;
      }

LABEL_20:
      keyData = 0;
      goto LABEL_33;
    }
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTKeychainManager createSymmetricKeyWithSize:identifier:storeInKeychain:error:]";
    v37 = 1024;
    v38 = 56;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "unknown key size (in %s:%d)", buf, 0x12u);
  }

  if (!identifierCopy)
  {
    goto LABEL_17;
  }

  if (!error)
  {
    goto LABEL_20;
  }

  v31 = *MEMORY[0x277CCA450];
  v32 = @"Invalid parameter: unknown key size.";
  v21 = MEMORY[0x277CBEAC0];
  v22 = &v32;
  v23 = &v31;
LABEL_19:
  v14 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
  *error = keyData = 0;
LABEL_32:

LABEL_33:

  return keyData;
}

- (BOOL)removeEncryptionKeyWithIdentifier:(id)identifier error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    v13 = 0;
    v5 = [(RTKeychainManager *)self _removeItemWithIdentifier:identifier error:&v13];
    v6 = v13;
    v7 = v6;
    v8 = !v5;
    if (v6)
    {
      v8 = 1;
    }

    if (error && v8)
    {
      v9 = v6;
      *error = v7;
    }

    v10 = v7 == 0;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[RTKeychainManager removeEncryptionKeyWithIdentifier:error:]";
      v18 = 1024;
      v19 = 122;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (!error)
    {
      return 0;
    }

    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid parameter: identifier must be non-nil.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v7];
    *error = v10 = 0;
  }

  return v10;
}

- (id)encryptionKeyWithSize:(int64_t)size identifier:(id)identifier error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (size < 3)
    {
      v20 = 0;
      v9 = [(RTKeychainManager *)self _keyForIdentifier:identifierCopy error:&v20];
      v10 = v20;
      if (v10)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v10;
          _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "error encountered attempting to fetch AES key from keychain: %@", buf, 0xCu);
        }

        if (error)
        {
          v21 = *MEMORY[0x277CCA7E8];
          v22 = v10;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v12];
        }

        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTKeychainManager encryptionKeyWithSize:identifier:error:]";
      v29 = 1024;
      v30 = 152;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (size < 3)
    {
LABEL_17:
      if (error)
      {
        v25 = *MEMORY[0x277CCA450];
        v26 = @"Invalid parameter: identifier must be non-nil.";
        v16 = MEMORY[0x277CBEAC0];
        v17 = &v26;
        v18 = &v25;
        goto LABEL_19;
      }

LABEL_20:
      v13 = 0;
      goto LABEL_24;
    }
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[RTKeychainManager encryptionKeyWithSize:identifier:error:]";
    v29 = 1024;
    v30 = 153;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "unknown key size (in %s:%d)", buf, 0x12u);
  }

  if (!identifierCopy)
  {
    goto LABEL_17;
  }

  if (!error)
  {
    goto LABEL_20;
  }

  v23 = *MEMORY[0x277CCA450];
  v24 = @"Invalid parameter: unknown key size.";
  v16 = MEMORY[0x277CBEAC0];
  v17 = &v24;
  v18 = &v23;
LABEL_19:
  v10 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
  *error = v13 = 0;
LABEL_23:

LABEL_24:

  return v13;
}

- (BOOL)updateKeyWithIdentifier:(id)identifier keyData:(id)data keySize:(int64_t)size error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  v12 = dataCopy;
  if (!identifierCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_23;
    }

    v22 = @"identifier";
    goto LABEL_20;
  }

  if (!dataCopy)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyData", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_23;
    }

    v22 = @"keyData";
LABEL_20:
    _RTErrorInvalidParameterCreate(v22);
    *error = v20 = 0;
    goto LABEL_30;
  }

  if (size >= 3)
  {
    if (error)
    {
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"Invalid parameter: unknown key size.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v24];
    }

LABEL_23:
    v20 = 0;
    goto LABEL_30;
  }

  v13 = [(RTKeychainManager *)self _keySpecifierWithBitSize:size];
  v29 = 0;
  v14 = [objc_alloc(MEMORY[0x277D4D2D8]) initWithData:v12 specifier:v13 error:&v29];
  v15 = v29;
  v16 = v15;
  if (!v14 || v15)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v16;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "could not generate key, error, %@", buf, 0xCu);
    }

    if (error)
    {
      v26 = v16;
      v20 = 0;
      *error = v16;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v28 = 0;
    v17 = [(RTKeychainManager *)self _updateKey:v14 forIdentifier:identifierCopy error:&v28];
    v18 = v28;
    v19 = !v17;
    if (v18)
    {
      v19 = 1;
    }

    if (error && v19)
    {
      v18 = v18;
      *error = v18;
    }

    v20 = v18 == 0;
  }

LABEL_30:
  return v20;
}

- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (int)_copySecItemMatchingQuery:(id)query result:(id *)result
{
  if (!result)
  {
    return -50;
  }

  result = 0;
  v5 = SecItemCopyMatching(query, &result);
  v6 = v5;
  resultCopy2 = result;
  if (result)
  {
    if (!v5)
    {
      v8 = [MEMORY[0x277CBEA90] dataWithData:?];
      v9 = *result;
      *result = v8;

      resultCopy2 = result;
    }

    CFRelease(resultCopy2);
  }

  return v6;
}

- (id)_keySpecifierWithBitSize:(int64_t)size
{
  v3 = [objc_alloc(MEMORY[0x277D4D2E0]) initWithBitSize:size];

  return v3;
}

- (id)_randomKeyWithSpecifier:(id)specifier error:(id *)error
{
  v5 = MEMORY[0x277D4D2D8];
  specifierCopy = specifier;
  v7 = [[v5 alloc] initRandomKeyWithSpecifier:specifierCopy error:error];

  return v7;
}

- (id)_keyForIdentifier:(id)identifier error:(id *)error
{
  v25[6] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = *MEMORY[0x277CDC250];
  v8 = *MEMORY[0x277CDC5C8];
  v24[0] = *MEMORY[0x277CDC228];
  v24[1] = v8;
  v25[0] = v7;
  v25[1] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277CDBEE0];
  v10 = *MEMORY[0x277CDC140];
  v24[2] = *MEMORY[0x277CDBED8];
  v24[3] = v10;
  v25[2] = v9;
  v25[3] = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277CDC558];
  v24[4] = *MEMORY[0x277CDBF28];
  v24[5] = v11;
  v25[4] = identifierCopy;
  v25[5] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];
  v19 = 0;
  v13 = [(RTKeychainManager *)self _copySecItemMatchingQuery:v12 result:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = identifierCopy;
      v22 = 1024;
      v23 = v13;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "could not get key for identifier, %@ in keychain, error, %d", buf, 0x12u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = v14;
  }

  return v17;
}

- (BOOL)_setKey:(id)key forIdentifier:(id)identifier error:(id *)error
{
  v22[6] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = *MEMORY[0x277CDC250];
  v10 = *MEMORY[0x277CDC5C8];
  v21[0] = *MEMORY[0x277CDC228];
  v21[1] = v10;
  v22[0] = v9;
  v22[1] = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277CDC140];
  v21[2] = *MEMORY[0x277CDBED8];
  v21[3] = v11;
  v22[2] = *MEMORY[0x277CDBEE0];
  v22[3] = MEMORY[0x277CBEC38];
  v21[4] = *MEMORY[0x277CDC5E8];
  keyData = [key keyData];
  v21[5] = *MEMORY[0x277CDBF28];
  v22[4] = keyData;
  v22[5] = identifierCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];

  v14 = [(RTKeychainManager *)self _addSecItemWithAttributes:v13 result:0];
  if (v14)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 1024;
      v20 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "could not set key for identifier, %@ in keychain, error, %d", &v17, 0x12u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
    }
  }

  return v14 == 0;
}

- (BOOL)_removeItemWithIdentifier:(id)identifier error:(id *)error
{
  v20[5] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = *MEMORY[0x277CDC250];
  v8 = *MEMORY[0x277CDC5C8];
  v19[0] = *MEMORY[0x277CDC228];
  v19[1] = v8;
  v20[0] = v7;
  v20[1] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277CDBEE0];
  v10 = *MEMORY[0x277CDC140];
  v19[2] = *MEMORY[0x277CDBED8];
  v19[3] = v10;
  v20[2] = v9;
  v20[3] = MEMORY[0x277CBEC38];
  v19[4] = *MEMORY[0x277CDBF28];
  v20[4] = identifierCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v12 = [(RTKeychainManager *)self _deleteSecItemMatchingQuery:v11];
  if (v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = identifierCopy;
      v17 = 1024;
      v18 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "could not remove key for identifier, %@ in keychain, error, %d", &v15, 0x12u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
    }
  }

  return v12 == 0;
}

- (BOOL)_updateKey:(id)key forIdentifier:(id)identifier error:(id *)error
{
  v28[5] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = *MEMORY[0x277CDC250];
  v10 = *MEMORY[0x277CDC5C8];
  v27[0] = *MEMORY[0x277CDC228];
  v27[1] = v10;
  v28[0] = v9;
  v28[1] = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277CDBEE0];
  v12 = *MEMORY[0x277CDC140];
  v27[2] = *MEMORY[0x277CDBED8];
  v27[3] = v12;
  v28[2] = v11;
  v28[3] = MEMORY[0x277CBEC38];
  v27[4] = *MEMORY[0x277CDBF28];
  v28[4] = identifierCopy;
  v13 = MEMORY[0x277CBEAC0];
  keyCopy = key;
  v15 = [v13 dictionaryWithObjects:v28 forKeys:v27 count:5];
  v25 = *MEMORY[0x277CDC5E8];
  keyData = [keyCopy keyData];

  v26 = keyData;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  v18 = [(RTKeychainManager *)self _updateSecItemMatchingQuery:v15 attributes:v17];
  if (v18)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412546;
      v22 = identifierCopy;
      v23 = 1024;
      v24 = v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "could not update key for identifier, %@ in keychain, error, %d", &v21, 0x12u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v18 userInfo:0];
    }
  }

  return v18 == 0;
}

@end