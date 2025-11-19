@interface RTKeychainManager
+ (RTKeychainManager)allocWithZone:(_NSZone *)a3;
- (BOOL)_removeItemWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_setKey:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_updateKey:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeEncryptionKeyWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)updateKeyWithIdentifier:(id)a3 keyData:(id)a4 keySize:(int64_t)a5 error:(id *)a6;
- (id)_keyForIdentifier:(id)a3 error:(id *)a4;
- (id)_keySpecifierWithBitSize:(int64_t)a3;
- (id)_randomKeyWithSpecifier:(id)a3 error:(id *)a4;
- (id)createSymmetricKeyWithSize:(int64_t)a3 identifier:(id)a4 storeInKeychain:(BOOL)a5 error:(id *)a6;
- (id)encryptionKeyWithSize:(int64_t)a3 identifier:(id)a4 error:(id *)a5;
- (int)_copySecItemMatchingQuery:(id)a3 result:(id *)a4;
- (void)_shutdownWithHandler:(id)a3;
- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5;
@end

@implementation RTKeychainManager

+ (RTKeychainManager)allocWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___RTKeychainManager;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
}

- (void)_shutdownWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (id)createSymmetricKeyWithSize:(int64_t)a3 identifier:(id)a4 storeInKeychain:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (v10)
  {
    if (a3 < 3)
    {
      v11 = [(RTKeychainManager *)self _keySpecifierWithBitSize:a3];
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

        if (a6)
        {
          v25 = v14;
          v18 = 0;
          *a6 = v14;
          goto LABEL_31;
        }
      }

      else
      {
        if (!v7 || (v29 = 0, v15 = [(RTKeychainManager *)self _setKey:v12 forIdentifier:v10 error:&v29], v16 = v29, v17 = v16, v15) && !v16)
        {
          v18 = [v12 keyData];
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

        if (a6)
        {
          v27 = v17;
          *a6 = v17;
        }
      }

      v18 = 0;
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

    if (a3 < 3)
    {
LABEL_17:
      if (a6)
      {
        v33 = *MEMORY[0x277CCA450];
        v34 = @"Invalid parameter: identifier must be non-nil.";
        v21 = MEMORY[0x277CBEAC0];
        v22 = &v34;
        v23 = &v33;
        goto LABEL_19;
      }

LABEL_20:
      v18 = 0;
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

  if (!v10)
  {
    goto LABEL_17;
  }

  if (!a6)
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
  *a6 = v18 = 0;
LABEL_32:

LABEL_33:

  return v18;
}

- (BOOL)removeEncryptionKeyWithIdentifier:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13 = 0;
    v5 = [(RTKeychainManager *)self _removeItemWithIdentifier:a3 error:&v13];
    v6 = v13;
    v7 = v6;
    v8 = !v5;
    if (v6)
    {
      v8 = 1;
    }

    if (a4 && v8)
    {
      v9 = v6;
      *a4 = v7;
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

    if (!a4)
    {
      return 0;
    }

    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid parameter: identifier must be non-nil.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v7];
    *a4 = v10 = 0;
  }

  return v10;
}

- (id)encryptionKeyWithSize:(int64_t)a3 identifier:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v8)
  {
    if (a3 < 3)
    {
      v20 = 0;
      v9 = [(RTKeychainManager *)self _keyForIdentifier:v8 error:&v20];
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

        if (a5)
        {
          v21 = *MEMORY[0x277CCA7E8];
          v22 = v10;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v12];
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

    if (a3 < 3)
    {
LABEL_17:
      if (a5)
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

  if (!v8)
  {
    goto LABEL_17;
  }

  if (!a5)
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
  *a5 = v13 = 0;
LABEL_23:

LABEL_24:

  return v13;
}

- (BOOL)updateKeyWithIdentifier:(id)a3 keyData:(id)a4 keySize:(int64_t)a5 error:(id *)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!v10)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_23;
    }

    v22 = @"identifier";
    goto LABEL_20;
  }

  if (!v11)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyData", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_23;
    }

    v22 = @"keyData";
LABEL_20:
    _RTErrorInvalidParameterCreate(v22);
    *a6 = v20 = 0;
    goto LABEL_30;
  }

  if (a5 >= 3)
  {
    if (a6)
    {
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"Invalid parameter: unknown key size.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v24];
    }

LABEL_23:
    v20 = 0;
    goto LABEL_30;
  }

  v13 = [(RTKeychainManager *)self _keySpecifierWithBitSize:a5];
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

    if (a6)
    {
      v26 = v16;
      v20 = 0;
      *a6 = v16;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v28 = 0;
    v17 = [(RTKeychainManager *)self _updateKey:v14 forIdentifier:v10 error:&v28];
    v18 = v28;
    v19 = !v17;
    if (v18)
    {
      v19 = 1;
    }

    if (a6 && v19)
    {
      v18 = v18;
      *a6 = v18;
    }

    v20 = v18 == 0;
  }

LABEL_30:
  return v20;
}

- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (int)_copySecItemMatchingQuery:(id)a3 result:(id *)a4
{
  if (!a4)
  {
    return -50;
  }

  result = 0;
  v5 = SecItemCopyMatching(a3, &result);
  v6 = v5;
  v7 = result;
  if (result)
  {
    if (!v5)
    {
      v8 = [MEMORY[0x277CBEA90] dataWithData:?];
      v9 = *a4;
      *a4 = v8;

      v7 = result;
    }

    CFRelease(v7);
  }

  return v6;
}

- (id)_keySpecifierWithBitSize:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x277D4D2E0]) initWithBitSize:a3];

  return v3;
}

- (id)_randomKeyWithSpecifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D4D2D8];
  v6 = a3;
  v7 = [[v5 alloc] initRandomKeyWithSpecifier:v6 error:a4];

  return v7;
}

- (id)_keyForIdentifier:(id)a3 error:(id *)a4
{
  v25[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  v25[4] = v6;
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
      v21 = v6;
      v22 = 1024;
      v23 = v13;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "could not get key for identifier, %@ in keychain, error, %d", buf, 0x12u);
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v13 userInfo:0];
      *a4 = v17 = 0;
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

- (BOOL)_setKey:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v22[6] = *MEMORY[0x277D85DE8];
  v8 = a4;
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
  v12 = [a3 keyData];
  v21[5] = *MEMORY[0x277CDBF28];
  v22[4] = v12;
  v22[5] = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];

  v14 = [(RTKeychainManager *)self _addSecItemWithAttributes:v13 result:0];
  if (v14)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 1024;
      v20 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "could not set key for identifier, %@ in keychain, error, %d", &v17, 0x12u);
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
    }
  }

  return v14 == 0;
}

- (BOOL)_removeItemWithIdentifier:(id)a3 error:(id *)a4
{
  v20[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  v20[4] = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v12 = [(RTKeychainManager *)self _deleteSecItemMatchingQuery:v11];
  if (v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 1024;
      v18 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "could not remove key for identifier, %@ in keychain, error, %d", &v15, 0x12u);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
    }
  }

  return v12 == 0;
}

- (BOOL)_updateKey:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v28[5] = *MEMORY[0x277D85DE8];
  v8 = a4;
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
  v28[4] = v8;
  v13 = MEMORY[0x277CBEAC0];
  v14 = a3;
  v15 = [v13 dictionaryWithObjects:v28 forKeys:v27 count:5];
  v25 = *MEMORY[0x277CDC5E8];
  v16 = [v14 keyData];

  v26 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  v18 = [(RTKeychainManager *)self _updateSecItemMatchingQuery:v15 attributes:v17];
  if (v18)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityKeychain);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412546;
      v22 = v8;
      v23 = 1024;
      v24 = v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "could not update key for identifier, %@ in keychain, error, %d", &v21, 0x12u);
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v18 userInfo:0];
    }
  }

  return v18 == 0;
}

@end