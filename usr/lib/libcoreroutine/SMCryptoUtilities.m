@interface SMCryptoUtilities
+ (id)decryptSafetyCache:(id)a3 key:(id)a4 sessionID:(id)a5 role:(id)a6 device:(int64_t)a7 metricsDict:(id *)a8 hashString:(id *)a9;
+ (id)decryptSafetyCache:(id)a3 withKey:(id)a4;
+ (id)encryptSafetyCache:(id)a3 withKey:(id)a4;
+ (id)getDeserializedJsonDict:(id)a3;
+ (id)getRandomBytes:(unint64_t)a3;
+ (id)getSerializedJsonData:(id)a3;
@end

@implementation SMCryptoUtilities

+ (id)getSerializedJsonData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:0 error:&v10];
    v4 = v10;
    if (v4)
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,getSerializedJsonData,failed to serialize dict into JSON,error,%@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
      v5 = [v7 stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];

      v8 = [v5 dataUsingEncoding:4];

      v3 = v8;
      v6 = v3;
    }
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,getSerializedJsonData,dict is nil", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)getDeserializedJsonDict:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:1 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,getDeserializedJsonDict,failed to deserialize json dictionary,error,%@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,getDeserializedJsonDict,jsonData is nil", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)getRandomBytes:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3];
  v5 = SecRandomCopyBytes(*MEMORY[0x277CDC540], a3, [v4 mutableBytes]);
  if (v5)
  {
    v6 = v5;
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,getRandomBytes,failed to generate AES key,error,%d", v10, 8u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

+ (id)encryptSafetyCache:(id)a3 withKey:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v17 = 0;
      goto LABEL_22;
    }

    *buf = 0;
    v14 = "#SafetyCache,SMCU,encryptSafetyCache,data and/or key pointer are nil";
    v15 = v9;
    v16 = 2;
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_12;
  }

  if ([v6 length] != 32)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 67109120;
    v21 = [v7 length];
    v14 = "#SafetyCache,SMCU,encryptSafetyCache,unsupported AES key length,%d";
    v15 = v9;
    v16 = 8;
    goto LABEL_26;
  }

  v8 = [v5 length];
  v9 = [SMCryptoUtilities getRandomBytes:16];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v8 + 32];
    [v10 replaceBytesInRange:0 withBytes:16, [v9 bytes]];
    [v10 mutableBytes];
    [v7 bytes];
    [v7 length];
    [v10 mutableBytes];
    [v5 bytes];
    v11 = CCCryptorGCMOneshotEncrypt();
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "#SafetyCache,SMCU,encryptSafetyCache,successfully encrypted data", buf, 2u);
        }
      }

      v10 = v10;
      v17 = v10;
      goto LABEL_21;
    }

    v12 = v11;
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,encryptSafetyCache,failed to encrypt data,error,%d", buf, 8u);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,encryptSafetyCache,failed to generate IV", buf, 2u);
    }
  }

  v17 = 0;
LABEL_21:

LABEL_22:

  return v17;
}

+ (id)decryptSafetyCache:(id)a3 withKey:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "#SafetyCache,SMCU,decryptSafetyCache,encryptedData and/or key pointer are nil";
      v10 = v8;
      v11 = 2;
      goto LABEL_8;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if ([v5 length] <= 0x20)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = [v5 length];
      v9 = "#SafetyCache,SMCU,decryptSafetyCache,encryptedData is too short,length,%d";
      v10 = v8;
      v11 = 8;
LABEL_8:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v12 = [v5 length] - 32;
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v12];
  [v5 bytes];
  [v7 bytes];
  [v7 length];
  [v8 mutableBytes];
  v13 = CCCryptorGCMOneshotDecrypt();
  if (v13)
  {
    v14 = v13;
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,SMCU,decryptSafetyCache,failed to decrypt data,error,%d", buf, 8u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "#SafetyCache,SMCU,decryptSafetyCache,successfully decrypted data", buf, 2u);
    }
  }

  v8 = v8;
  v16 = v8;
LABEL_14:

  return v16;
}

+ (id)decryptSafetyCache:(id)a3 key:(id)a4 sessionID:(id)a5 role:(id)a6 device:(int64_t)a7 metricsDict:(id *)a8 hashString:(id *)a9
{
  v77 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (!v15)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

LABEL_18:
      v21 = 0;
      goto LABEL_59;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: encryptedData";
LABEL_66:
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
    goto LABEL_17;
  }

  if (!v17)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_66;
  }

  if (v16)
  {
    v19 = [SMCryptoUtilities decryptSafetyCache:v15 withKey:v16];
    v64 = v19;
    if (!v19)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        NSStringFromSelector(a2);
        v54 = v53 = a7;
        *buf = 138413058;
        v66 = v18;
        v67 = 2112;
        v68 = v17;
        v69 = 2112;
        v70 = v52;
        v71 = 2112;
        v72 = v54;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,sessionID:%@,%@,%@,decryption failed", buf, 0x2Au);

        a7 = v53;
      }

      if (a7 == 1 && a8)
      {
        v36 = *a8;
        v37 = @"phoneCacheDecryptionResult";
      }

      else
      {
        v42 = a7;
        v21 = 0;
        if (v42 != 2 || !a8)
        {
          goto LABEL_58;
        }

        v36 = *a8;
        v37 = @"watchCacheDecryptionResult";
      }

      [v36 setValue:&unk_28459E700 forKey:v37];
      v21 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v20 = [SMCryptoUtilities getDeserializedJsonDict:v19];
    if (!v20)
    {
      v29 = 0;
      v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        NSStringFromSelector(a2);
        v58 = v57 = a7;
        *buf = 138413058;
        v66 = v18;
        v67 = 2112;
        v68 = v17;
        v69 = 2112;
        v70 = v56;
        v71 = 2112;
        v72 = v58;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,sessionID:%@,%@,%@,deserialization failed", buf, 0x2Au);

        a7 = v57;
      }

      if (a7 == 1 && a8)
      {
        v40 = *a8;
        v41 = @"phoneCacheDecryptionResult";
      }

      else
      {
        v45 = a7;
        v21 = 0;
        if (v45 != 2 || !a8)
        {
          goto LABEL_57;
        }

        v40 = *a8;
        v41 = @"watchCacheDecryptionResult";
      }

      [v40 setValue:&unk_28459E718 forKey:v41];
      v21 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v63 = a7;
    v62 = v20;
    v21 = [objc_alloc(MEMORY[0x277D4AA70]) initWithDictionary:v20];
    if (!v21)
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = NSStringFromSelector(a2);
        *buf = 138413058;
        v66 = v18;
        v67 = 2112;
        v68 = v17;
        v69 = 2112;
        v70 = v60;
        v71 = 2112;
        v72 = v61;
        _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,sessionID:%@,%@,%@,initialization of SMCache object failed", buf, 0x2Au);
      }

      if (v63 == 1 && a8)
      {
        [*a8 setValue:&unk_28459E730 forKey:@"phoneCacheDecryptionResult"];
        v29 = v62;
      }

      else
      {
        v29 = v62;
        if (v63 == 2 && a8)
        {
          [*a8 setValue:&unk_28459E730 forKey:@"watchCacheDecryptionResult"];
        }
      }

      goto LABEL_52;
    }

    if (a9)
    {
      v22 = [v64 md5];
      *a9 = [v22 hexString];
    }

    v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [v21 identifier];
      *buf = 138413570;
      v66 = v18;
      v67 = 2112;
      v68 = v17;
      v69 = 2112;
      v70 = v25;
      v71 = 2112;
      v72 = v26;
      v73 = 2112;
      v74 = v27;
      v75 = 2048;
      v76 = [v21 identifierHash];
      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,sessionID:%@,%@,%@,successfully decrypted safety cache data,cacheIdentifier %@, hash %lu", buf, 0x3Eu);
    }

    if (v63 == 1 && a8)
    {
      v28 = @"phoneCacheDecryptionResult";
      v29 = v62;
    }

    else
    {
      v29 = v62;
      if (v63 != 2 || !a8)
      {
        goto LABEL_51;
      }

      v28 = @"watchCacheDecryptionResult";
    }

    [*a8 setValue:&unk_28459E748 forKey:v28];
LABEL_51:
    v44 = v21;
LABEL_52:

    goto LABEL_57;
  }

  v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    NSStringFromSelector(a2);
    v50 = v49 = a7;
    *buf = 138413058;
    v66 = v18;
    v67 = 2112;
    v68 = v17;
    v69 = 2112;
    v70 = v48;
    v71 = 2112;
    v72 = v50;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,sessionID:%@,%@,%@,no safety cache key available", buf, 0x2Au);

    a7 = v49;
  }

  if (a7 == 1 && a8)
  {
    v33 = *a8;
    v34 = @"phoneCacheDecryptionResult";
LABEL_32:
    [v33 setValue:&unk_28459E6E8 forKey:v34];
    goto LABEL_18;
  }

  v38 = a7;
  v21 = 0;
  if (v38 == 2 && a8)
  {
    v33 = *a8;
    v34 = @"watchCacheDecryptionResult";
    goto LABEL_32;
  }

LABEL_59:

  return v21;
}

@end