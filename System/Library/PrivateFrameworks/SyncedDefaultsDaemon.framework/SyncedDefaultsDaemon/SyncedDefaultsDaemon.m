void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_26C385F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id SYDUserPersonaDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    v5 = MEMORY[0x277CCACA8];
    goto LABEL_8;
  }

  v3 = [v1 userPersonaUniqueString];
  v4 = [v2 userPersonaType];
  v5 = MEMORY[0x277CCACA8];
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v6 = @"Universal";
        goto LABEL_9;
      case 5:
        v6 = @"Default";
        goto LABEL_9;
      case 6:
        v6 = @"UMUserPersonaTypeGuest";
        goto LABEL_9;
    }

LABEL_8:
    v6 = @"Invalid";
    goto LABEL_9;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 3)
      {
        v6 = @"System";
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v6 = @"Managed";
  }

  else
  {
    v6 = @"Personal";
  }

LABEL_9:
  v7 = [v5 stringWithFormat:@"%@(%@)", v6, v3];

  return v7;
}

void syd_call_or_dispatch_sync_if_not_key(NSObject *a1, void *key, void *a3)
{
  if (dispatch_get_specific(key))
  {
    v5 = a3[2];

    v5(a3);
  }

  else
  {

    dispatch_sync(a1, a3);
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*result + 8) + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

id SYDContainerID(unint64_t a1, uint64_t a2)
{
  if (a1 <= 3)
  {
    a1 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:off_279D2F538[a1] environment:a2];
  }

  return a1;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_13@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_13_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_8_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id SYDClientSuitableError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = 0;
    goto LABEL_48;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1040;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  if (SYDIsFileProtectionError(v1))
  {
    v52[3] = 5555;
    v3 = v46[5];
    v46[5] = @"Unable to open database file";

    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (SYDIsDiskFullError(v2))
  {
    v52[3] = 4444;
    v6 = v46[5];
    v46[5] = @"Disk is full";

    v7 = v2;
    v4 = v7;
  }

  if (SYDIsDiskCantOpenError(v2))
  {
    v52[3] = 4444;
    v8 = v46[5];
    v46[5] = @"Unable to open database";

    v9 = v2;
    v4 = v9;
  }

  if (SYDIsNetworkError(v2))
  {
    v52[3] = 7777;
    v10 = v46[5];
    v46[5] = @"Network error";

    v11 = v2;
    v4 = v11;
  }

  if (v52[3] != 1040 || ([v2 domain], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CBBF50]), v12, !v13))
  {
    v18 = 0;
    goto LABEL_36;
  }

  v14 = [v2 code];
  if (v14 <= 8)
  {
    if ((v14 - 3) < 2)
    {
      v52[3] = 7777;
      v19 = v46;
      v16 = v46[5];
      v20 = @"Network failure";
      goto LABEL_34;
    }

    if ((v14 - 6) >= 2)
    {
      if (v14 == 2)
      {
        v15 = [v2 userInfo];
        v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 count])
        {
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __SYDClientSuitableError_block_invoke;
          v41[3] = &unk_279D2F468;
          v43 = &v51;
          v44 = &v45;
          v42 = v16;
          [v42 enumerateKeysAndObjectsUsingBlock:v41];
          v17 = v42;
        }

        else
        {
          v52[3] = 1234;
          v17 = v46[5];
          v46[5] = @"Failed to sync with CloudKit (Partial failure with no partial errors)";
        }

        goto LABEL_35;
      }

LABEL_51:
      v52[3] = 1234;
      v37 = v46[5];
      v46[5] = @"Failed to sync with CloudKit";

      v16 = [v2 localizedDescription];
      if (v16)
      {
        v38 = [v46[5] stringByAppendingFormat:@" (%@)", v16];
        v39 = v46[5];
        v46[5] = v38;
      }

      v40 = v2;

      v4 = v40;
      goto LABEL_35;
    }

LABEL_29:
    v52[3] = 9999;
    v19 = v46;
    v16 = v46[5];
    v20 = @"Service unavailable";
LABEL_34:
    v19[5] = v20;
    goto LABEL_35;
  }

  if (v14 <= 24)
  {
    if (v14 == 9)
    {
      v52[3] = 8888;
      v19 = v46;
      v16 = v46[5];
      v20 = @"No account";
      goto LABEL_34;
    }

    if (v14 != 23)
    {
      goto LABEL_51;
    }

    goto LABEL_29;
  }

  if (v14 != 25)
  {
    if (v14 == 110)
    {
      v52[3] = 121212;
      v19 = v46;
      v16 = v46[5];
      v20 = @"End-to-end encryption unavailable";
    }

    else
    {
      if (v14 != 111)
      {
        goto LABEL_51;
      }

      v52[3] = 111111;
      v19 = v46;
      v16 = v46[5];
      v20 = @"Encryption key sync failed";
    }

    goto LABEL_34;
  }

  v52[3] = 6666;
  v21 = [v2 localizedDescription];
  v16 = v46[5];
  v46[5] = v21;
LABEL_35:

  v22 = [v2 userInfo];
  v18 = [v22 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

LABEL_36:
  v23 = [v2 domain];
  v24 = [v23 isEqualToString:@"SyncedDefaults"];

  if (v24)
  {
    v25 = [v2 code];
    v52[3] = v25;
    v26 = [v2 localizedDescription];
    v27 = v46[5];
    v46[5] = v26;

    v28 = [v2 userInfo];
    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v4 = v29;
  }

  if (!v46[5])
  {
    v46[5] = @"Unknown error";
  }

  v30 = objc_opt_new();
  if (!v4)
  {
    goto LABEL_45;
  }

  v31 = v4;
  v32 = [v31 domain];
  v33 = [v32 isEqualToString:@"SyncedDefaults"];

  if (v33)
  {

LABEL_44:
    [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    goto LABEL_45;
  }

  v34 = SYDIsNetworkError(v31);

  if (v34)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v18)
  {
    [v30 setObject:v18 forKeyedSubscript:@"RetryAfter"];
  }

  [v30 setObject:v46[5] forKeyedSubscript:*MEMORY[0x277CCA450]];
  v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SyncedDefaults" code:v52[3] userInfo:v30];
  v5 = SYDSanitizedErrorObjectForXPC(v35);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);
LABEL_48:

  return v5;
}

void sub_26C386CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C386EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SYDIsDataSeparatedPersona()
{
  v0 = [MEMORY[0x277D77C08] currentPersona];
  v1 = [v0 isDataSeparatedPersona];

  return v1;
}

__CFString *SYDStringForStoreType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279D2F4F8[a1];
  }
}

id SYDChangeTokenURL(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = [v4 storeID];
  v6 = [v4 processName];

  v7 = [v5 type];
  if (v7 > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_279D2F4F8[v7];
  }

  v9 = [v3 URLByAppendingPathComponent:@"ChangeTokens" isDirectory:1];

  v10 = [v9 URLByAppendingPathComponent:v8 isDirectory:1];

  v11 = [v10 URLByAppendingPathComponent:v6 isDirectory:1];

  v12 = [v5 identifier];
  v13 = [v5 testConfiguration];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 testServerName];
    v16 = [v14 testDeviceID];
    v17 = [v12 stringByAppendingFormat:@"-%@-%@", v15, v16];

    v12 = v17;
  }

  v18 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v19 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v18];

  v20 = [v11 URLByAppendingPathComponent:v19];
  v21 = SYDGetMiscLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v25 = v8;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v20;
    _os_log_debug_impl(&dword_26C384000, v21, OS_LOG_TYPE_DEBUG, "Created change token URL for type=%@ process=%@ url=%@", buf, 0x20u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

id sub_26C3872E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_26C3BD2B4();

  return v6;
}

uint64_t SYDKeyID.hash.getter()
{
  v1 = v0;
  v2 = [v0 key];
  sub_26C3BD2C4();

  sub_26C387458();
  v3 = sub_26C3BD2E4();

  v4 = [v1 storeIdentifier];
  sub_26C3BD2C4();

  v5 = sub_26C3BD2E4();

  return v5 ^ v3;
}

unint64_t sub_26C387458()
{
  result = qword_2814DB040;
  if (!qword_2814DB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DB040);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

id SYDStoreZoneID(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    SYDStoreZoneID_cold_1();
  }

  v2 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v2 initWithZoneName:v1 ownerName:*MEMORY[0x277CBBF28]];

  return v3;
}

uint64_t SYDKeyID.isEqual(_:)(uint64_t a1)
{
  sub_26C387934(a1, v22);
  if (!v23)
  {
    sub_26C387E14(v22);
    goto LABEL_7;
  }

  type metadata accessor for SYDKeyID();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  v2 = [v21 key];
  v3 = sub_26C3BD2C4();
  v5 = v4;

  v6 = [v1 key];
  v7 = sub_26C3BD2C4();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {

    goto LABEL_9;
  }

  v11 = sub_26C3BD314();

  if ((v11 & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_9:
  v12 = [v21 storeIdentifier];
  v13 = sub_26C3BD2C4();
  v15 = v14;

  v16 = [v1 storeIdentifier];
  v17 = sub_26C3BD2C4();
  v19 = v18;

  if (v13 == v17 && v15 == v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26C3BD314();
  }

  return v10 & 1;
}

uint64_t sub_26C387934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497058, &qword_26C3BF608);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t type metadata accessor for SYDKeyID()
{
  result = qword_2814DB0D0;
  if (!qword_2814DB0D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DB0D0);
  }

  return result;
}

uint64_t sub_26C387E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497058, &qword_26C3BF608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SYDFileProtectionTypeForStoreType(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = MEMORY[0x277CCA1A0];
  }

  else
  {
    v1 = qword_279D2F518[a1];
  }

  return *v1;
}

uint64_t *OUTLINED_FUNCTION_4_0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

uint64_t SYDIsFileProtectionError(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];

  if (v3 && ([v3 integerValue] == 3 || objc_msgSend(v3, "integerValue") == 23))
  {
    goto LABEL_6;
  }

  v4 = [v1 domain];
  if (![v4 isEqualToString:*MEMORY[0x277CCA050]])
  {

    goto LABEL_8;
  }

  v5 = [v1 code];

  if (v5 != 257)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v6 = 1;
LABEL_9:

  return v6;
}

uint64_t SYDIsDiskFullError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CBE2C8];
  v4 = [v2 isEqualToString:*MEMORY[0x277CBE2C8]];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v1 code];

    v7 = [v5 numberWithInteger:v6];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [v1 userInfo];

    v7 = [v8 objectForKeyedSubscript:v3];

    if (!v7)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  if ([v7 integerValue] != 13)
  {
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

uint64_t SYDIsDiskCantOpenError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CBE2C8];
  v4 = [v2 isEqualToString:*MEMORY[0x277CBE2C8]];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v1 code];

    v7 = [v5 numberWithInteger:v6];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [v1 userInfo];

    v7 = [v8 objectForKeyedSubscript:v3];

    if (!v7)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  if ([v7 integerValue] != 14)
  {
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

uint64_t SYDIsNetworkError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v3)
  {
    v4 = [v1 code];

    if ((v4 - 3) < 2)
    {
      return 1;
    }
  }

  else
  {
    v6 = [v1 domain];

    v7 = [v6 isEqualToString:*MEMORY[0x277CCA738]];
    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

id SYDSanitizedErrorObjectForXPC(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!SYDErrorUserInfoClassAllowedOverXPC(v1))
  {
    v7 = 0;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = objc_opt_new();
    if ([v2 count])
    {
      v4 = 0;
      do
      {
        v5 = [v2 objectAtIndexedSubscript:v4];
        v6 = SYDSanitizedErrorObjectForXPC();

        if (v6)
        {
          [v3 addObject:v6];
        }

        ++v4;
      }

      while (v4 < [v2 count]);
    }

    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = objc_opt_new();
    v8 = [v2 allKeys];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if (SYDErrorUserInfoClassAllowedOverXPC(v13))
          {
            v14 = [v2 objectForKeyedSubscript:v13];
            v15 = SYDSanitizedErrorObjectForXPC();

            if (v15)
            {
              [v3 setObject:v15 forKeyedSubscript:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_30;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = v1;
  v7 = v17;
  if (isKindOfClass)
  {
    v18 = [v17 userInfo];
    v19 = SYDSanitizedErrorObjectForXPC();

    v20 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = [v7 domain];
    v22 = [v7 code];

    v7 = [v20 initWithDomain:v21 code:v22 userInfo:v19];
  }

LABEL_31:

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t SYDErrorUserInfoClassAllowedOverXPC(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = SYDErrorUserInfoClasses();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SYDErrorUserInfoClassAllowedOverXPC_block_invoke;
  v6[3] = &unk_279D2F4D8;
  v3 = v1;
  v7 = v3;
  v8 = &v9;
  [v2 enumerateObjectsUsingBlock:v6];

  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_26C388C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SYDErrorUserInfoClasses()
{
  if (SYDErrorUserInfoClasses_onceToken != -1)
  {
    SYDErrorUserInfoClasses_cold_1();
  }

  v1 = SYDErrorUserInfoClasses_sAcceptableClasses;

  return v1;
}

uint64_t __SYDErrorUserInfoClassAllowedOverXPC_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

id SYDKVSDirectory(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  if (SYDKVSDirectory_onceToken != -1)
  {
    SYDKVSDirectory_cold_1();
  }

  os_unfair_lock_lock(&SYDKVSDirectory_lock);
  if (SYDIsDataSeparatedPersona())
  {
    v2 = [MEMORY[0x277D77C08] currentPersona];
    v3 = [v2 userPersonaUniqueString];
    if (!v3)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"No persona identifier when getting KVS directory for data-separated persona. Current persona: uid=%u gid=%u type=%ld", objc_msgSend(v2, "uid"), objc_msgSend(v2, "gid"), objc_msgSend(v2, "userPersonaType")}];
    }
  }

  else
  {
    v3 = @"Persona Non Grata";
  }

  v4 = [SYDKVSDirectory_sKnownDirectories objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
    v6 = SYDGetMiscLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      SYDKVSDirectory_cold_2();
    }

    v7 = 0;
    goto LABEL_42;
  }

  container_query_create();
  container_query_set_class();
  v8 = xpc_string_create("com.apple.kvs");
  container_query_set_identifiers();

  container_query_set_transient();
  container_query_operation_set_flags();
  if (SYDIsDataSeparatedPersona())
  {
    v9 = [MEMORY[0x277D77C08] currentPersona];
    v10 = [v9 userPersonaUniqueString];

    if (v10)
    {
      [v10 UTF8String];
      container_query_set_persona_unique_string();
    }
  }

  else
  {
    v11 = *MEMORY[0x277D85ED0];
    container_query_set_persona_unique_string();
  }

  if (container_query_get_single_result() && (path = container_get_path()) != 0)
  {
    v13 = path;
    v14 = SYDGetMiscLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      SYDKVSDirectory_cold_3();
    }

    last_error = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v13 isDirectory:1 relativeToURL:0];
    v16 = container_copy_sandbox_token();
    v17 = SYDGetMiscLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (!v16)
    {
      if (v18)
      {
        SYDKVSDirectory_cold_6();
      }

      goto LABEL_32;
    }

    if (v18)
    {
      SYDKVSDirectory_cold_4();
    }

    if (sandbox_extension_consume() == -1)
    {
      v17 = SYDGetMiscLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        SYDKVSDirectory_cold_5(v17);
      }

LABEL_32:
      v23 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    last_error = container_query_get_last_error();
    if (last_error)
    {
      v19 = container_error_copy_unlocalized_description();
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v19 length:strlen(v19) encoding:4 freeWhenDone:1];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"containermanager error %llu: %@", container_error_get_type(), v20];

      v21 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = v17;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v23 = [v21 errorWithDomain:@"SyncedDefaults" code:1040 userInfo:v22];

      last_error = 0;
LABEL_33:

      goto LABEL_34;
    }
  }

  v23 = 0;
LABEL_34:
  container_query_free();
  if (v23 || !last_error)
  {
    v24 = SYDGetMiscLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      SYDKVSDirectory_cold_7();
    }
  }

  v25 = v23;

  v7 = v23;
  if (last_error)
  {
    v5 = [last_error URLByAppendingPathComponent:@"com.apple.kvs" isDirectory:1];

    [SYDKVSDirectory_sKnownDirectories setObject:v5 forKeyedSubscript:v3];
    v6 = SYDGetMiscLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      SYDKVSDirectory_cold_8();
    }

LABEL_42:

    if (!a1)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v5 = 0;
  if (a1)
  {
LABEL_43:
    v26 = v7;
    *a1 = v7;
  }

LABEL_44:
  os_unfair_lock_unlock(&SYDKVSDirectory_lock);

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

void SYDKVSDirectory_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9_0(&dword_26C384000, v0, v1, "Returning cached KVS directory for persona %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

id SYDStoreIdentifiersExemptFromQuota()
{
  if (SYDStoreIdentifiersExemptFromQuota_onceToken != -1)
  {
    SYDStoreIdentifiersExemptFromQuota_cold_1();
  }

  v1 = SYDStoreIdentifiersExemptFromQuota_storeIdentifiersExemptFromQuota;

  return v1;
}

id SYDSyncAnchorRecordID(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    SYDSyncAnchorRecordID_cold_1();
  }

  v2 = SYDStoreZoneID(v1);
  v3 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"syncAnchor" zoneID:v2];

  return v3;
}

const __CFDictionary *SYDGetPropertyListAndTimestampAndRemoteValueFromStorage(const __CFDictionary *result, void *a2, const void **a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    Value = CFDictionaryGetValue(v5, @"timestamp");
    v8 = CFDictionaryGetValue(v5, @"value");
    result = 0;
    if (!v8 || !Value)
    {
      return result;
    }

    v9 = CFGetTypeID(Value);
    if (v9 != CFNumberGetTypeID() || !CFNumberGetValue(Value, kCFNumberLongLongType, a2) || !*a2)
    {
      return 0;
    }

    if (a3)
    {
      *a3 = CFDictionaryGetValue(v5, @"remotevalue");
    }

    return v8;
  }

  return result;
}

void __SYDClientSuitableError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = SYDClientSuitableError(a3);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v17 = v6;
  v8 = [v6 code];
  if (v7 == 1040)
  {
    *(*(*(a1 + 40) + 8) + 24) = v8;
    v9 = [v17 localizedDescription];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else if (v7 != v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1234;
    v12 = MEMORY[0x277CCACA8];
    v13 = [*(a1 + 32) description];
    v14 = [v12 stringWithFormat:@"Failed to sync with CloudKit (%@)", v13];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }
}

BOOL SYDIsFileNotFoundError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqual:*MEMORY[0x277CCA050]];

  if (v3)
  {
    v4 = (([v1 code] - 4) & 0xFFFFFFFFFFFFFEFFLL) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __SYDKVSDirectory_block_invoke()
{
  SYDKVSDirectory_sKnownDirectories = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

id SYDOldKVSDirectory(void *a1)
{
  if (SYDIsDataSeparatedPersona())
  {
    v2 = SYDKVSDirectory(a1);
  }

  else
  {
    v3 = getuid();
    v4 = getpwuid(v3);
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4->pw_dir];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [v6 URLByAppendingPathComponent:@"Library" isDirectory:1];

    if (!v7)
    {
LABEL_5:
      v8 = SYDGetMiscLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        SYDOldKVSDirectory_cold_1();
      }

      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = 0;
      v7 = [v9 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v15];
      v10 = v15;

      if (v10)
      {
        v11 = SYDGetMiscLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          SYDOldKVSDirectory_cold_2();
        }
      }

      if (!v7)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Could not find ~/Library directory"];
      }
    }

    v12 = [v7 URLByAppendingPathComponent:@"SyncedPreferences" isDirectory:1];

    v2 = [v12 URLByAppendingPathComponent:@"com.apple.kvs" isDirectory:1];

    if (a1)
    {
      *a1 = 0;
    }

    v13 = SYDGetMiscLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      SYDOldKVSDirectory_cold_3();
    }
  }

  return v2;
}

id SYDDaemonContainerMigrationCompleteFileURL(void *a1)
{
  v1 = SYDKVSDirectory(a1);
  v2 = [v1 URLByAppendingPathComponent:@".container-migration-complete"];

  return v2;
}

uint64_t SYDMigrateToDaemonContainerIfNecessary(void *a1)
{
  v76[1] = *MEMORY[0x277D85DE8];
  v2 = SYDGetMiscLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    SYDMigrateToDaemonContainerIfNecessary_cold_1();
  }

  if (!SYDIsDataSeparatedPersona())
  {
    os_unfair_lock_lock(&SYDMigrateToDaemonContainerIfNecessary_lock);
    v65 = 0;
    v66[0] = &v65;
    v66[1] = 0x3032000000;
    v66[2] = __Block_byref_object_copy_;
    v66[3] = __Block_byref_object_dispose_;
    v67 = 0;
    obj = 0;
    v52 = SYDDaemonContainerMigrationCompleteFileURL(&obj);
    objc_storeStrong(&v67, obj);
    v6 = (v66[0] + 40);
    v5 = *(v66[0] + 40);
    if (v5)
    {
      if (a1)
      {
        *a1 = v5;
      }

      v7 = SYDGetMiscLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        SYDMigrateToDaemonContainerIfNecessary_cold_2(v66);
      }

      os_unfair_lock_unlock(&SYDMigrateToDaemonContainerIfNecessary_lock);
LABEL_15:
      v4 = 0;
LABEL_77:

      _Block_object_dispose(&v65, 8);
      goto LABEL_78;
    }

    v63 = 0;
    v8 = [v52 checkResourceIsReachableAndReturnError:&v63];
    objc_storeStrong(v6, v63);
    if (v8)
    {
      v9 = SYDGetMiscLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        SYDMigrateToDaemonContainerIfNecessary_cold_8();
      }

      v4 = 1;
      goto LABEL_69;
    }

    v10 = v66[0];
    v11 = *(v66[0] + 40);
    if (v11)
    {
      if (!SYDIsFileNotFoundError(v11))
      {
        v9 = SYDGetMiscLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          SYDMigrateToDaemonContainerIfNecessary_cold_3(v66);
        }

        v4 = 0;
        goto LABEL_69;
      }

      v10 = v66[0];
      v12 = *(v66[0] + 40);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 40) = 0;

    v13 = (v66[0] + 40);
    v62 = *(v66[0] + 40);
    v9 = SYDOldKVSDirectory(&v62);
    objc_storeStrong(v13, v62);
    v15 = (v66[0] + 40);
    v14 = *(v66[0] + 40);
    if (v14)
    {
      if (a1)
      {
        *a1 = v14;
      }

      v16 = SYDGetMiscLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        SYDMigrateToDaemonContainerIfNecessary_cold_4(v66);
      }

      os_unfair_lock_unlock(&SYDMigrateToDaemonContainerIfNecessary_lock);
      goto LABEL_15;
    }

    v61 = 0;
    v51 = SYDKVSDirectory(&v61);
    objc_storeStrong(v15, v61);
    v17 = *(v66[0] + 40);
    if (v17)
    {
      if (a1)
      {
        *a1 = v17;
      }

      v18 = SYDGetMiscLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        SYDMigrateToDaemonContainerIfNecessary_cold_5(v66);
      }

      os_unfair_lock_unlock(&SYDMigrateToDaemonContainerIfNecessary_lock);
      goto LABEL_15;
    }

    v19 = SYDGetMiscLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v69 = v51;
      _os_log_impl(&dword_26C384000, v19, OS_LOG_TYPE_INFO, "Migrating to daemon container %@", buf, 0xCu);
    }

    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __SYDMigrateToDaemonContainerIfNecessary_block_invoke;
    v60[3] = &unk_279D2F4B0;
    v60[4] = &v65;
    v47 = [v20 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:5 errorHandler:v60];
    v75 = *MEMORY[0x277CCA1B0];
    v76[0] = *MEMORY[0x277CCA1A0];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    v22 = (v66[0] + 40);
    v59 = *(v66[0] + 40);
    v23 = [v20 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:v21 error:&v59];
    v46 = v21;
    v50 = v20;
    objc_storeStrong(v22, v59);
    if (v23)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v24 = v47;
      v25 = [v24 countByEnumeratingWithState:&v55 objects:v74 count:16];
      if (v25)
      {
        v26 = *v56;
        v48 = *MEMORY[0x277CCA050];
        v49 = v24;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v56 != v26)
            {
              objc_enumerationMutation(v49);
            }

            v28 = *(*(&v55 + 1) + 8 * i);
            v29 = [v28 lastPathComponent];
            v30 = [v51 URLByAppendingPathComponent:v29];

            v31 = SYDGetMiscLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v69 = v28;
              v70 = 2112;
              v71 = v30;
              _os_log_impl(&dword_26C384000, v31, OS_LOG_TYPE_INFO, "Will migrate item to data vault. oldURL=%@ newURL=%@", buf, 0x16u);
            }

            v32 = (v66[0] + 40);
            v54 = *(v66[0] + 40);
            v33 = [v50 moveItemAtURL:v28 toURL:v30 error:&v54];
            objc_storeStrong(v32, v54);
            if ((v33 & 1) == 0)
            {
              v34 = [*(v66[0] + 40) domain];
              if (![v34 isEqual:v48])
              {

LABEL_64:
                v39 = SYDGetMiscLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v45 = *(v66[0] + 40);
                  *buf = 138412802;
                  v69 = v28;
                  v70 = 2112;
                  v71 = v30;
                  v72 = 2112;
                  v73 = v45;
                  _os_log_error_impl(&dword_26C384000, v39, OS_LOG_TYPE_ERROR, "Failed to move file to daemon container oldURL=%@ newURL=%@: %@", buf, 0x20u);
                }

                v4 = 0;
                v38 = v49;
                goto LABEL_67;
              }

              v35 = [*(v66[0] + 40) code] == 516;

              if (!v35)
              {
                goto LABEL_64;
              }

              v36 = SYDGetMiscLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v69 = v28;
                v70 = 2112;
                v71 = v30;
                _os_log_fault_impl(&dword_26C384000, v36, OS_LOG_TYPE_FAULT, "File was already migrated to new directory: oldURL=%@ newURL=%@", buf, 0x16u);
              }

              v37 = *(v66[0] + 40);
              *(v66[0] + 40) = 0;
            }
          }

          v24 = v49;
          v25 = [v49 countByEnumeratingWithState:&v55 objects:v74 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      if (*(v66[0] + 40))
      {
        v4 = 0;
LABEL_68:

LABEL_69:
        if (a1)
        {
          *a1 = *(v66[0] + 40);
        }

        if (*(v66[0] + 40))
        {
          v40 = SYDGetMiscLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            SYDMigrateToDaemonContainerIfNecessary_cold_9(v66);
          }
        }

        else
        {
          v40 = SYDGetMiscLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            SYDMigrateToDaemonContainerIfNecessary_cold_10();
          }
        }

        os_unfair_lock_unlock(&SYDMigrateToDaemonContainerIfNecessary_lock);
        goto LABEL_77;
      }

      v38 = [@"Mischief Managed" dataUsingEncoding:4];
      v43 = (v66[0] + 40);
      v53 = *(v66[0] + 40);
      v4 = [v38 writeToURL:v52 options:0 error:&v53];
      objc_storeStrong(v43, v53);
      if ((v4 & 1) == 0)
      {
        v44 = SYDGetMiscLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          SYDMigrateToDaemonContainerIfNecessary_cold_7(v66);
        }
      }
    }

    else
    {
      v38 = SYDGetMiscLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        SYDMigrateToDaemonContainerIfNecessary_cold_6(v66);
      }

      v4 = 0;
    }

LABEL_67:

    goto LABEL_68;
  }

  v3 = SYDGetMiscLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    SYDMigrateToDaemonContainerIfNecessary_cold_11();
  }

  if (a1)
  {
    *a1 = 0;
  }

  v4 = 1;
LABEL_78:
  v41 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL __SYDMigrateToDaemonContainerIfNecessary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  found = SYDIsFileNotFoundError(v6);
  v8 = SYDGetMiscLog();
  v9 = v8;
  if (found)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26C384000, v9, OS_LOG_TYPE_INFO, "File not found enumerating old directory with URL %@: %@", &v14, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __SYDMigrateToDaemonContainerIfNecessary_block_invoke_cold_1();
    }

    v10 = *(*(a1 + 32) + 8);
    v11 = v6;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return found;
}

id SYDCoreDataStoreURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SYDKVSDirectory(a3);
  v8 = v7;
  if (v6)
  {
    v9 = [v7 URLByAppendingPathComponent:@"TestServers" isDirectory:1];

    v10 = [v6 testServerName];
    v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];

    v12 = [v6 testDeviceID];
    v8 = [v11 URLByAppendingPathComponent:v12];
  }

  v13 = SYDCoreDataStoreFilename(v5);
  v14 = [v8 URLByAppendingPathComponent:v13];

  return v14;
}

id SYDCoreDataStoreFilename(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 containerIdentifier];
  [v2 environment];

  v4 = CKContainerEnvironmentString();
  v5 = [v1 stringWithFormat:@"%@-%@", v3, v4];

  v6 = [v5 stringByAppendingPathExtension:@"sqlite"];

  return v6;
}

id SYDOldCoreDataStoreURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = SYDOldKVSDirectory(a2);
  v5 = SYDCoreDataStoreFilename(v3);

  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

void SYDPerformWithPersona(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SYDGetMiscLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    SYDPerformWithPersona_cold_1();
  }

  v6 = [MEMORY[0x277D77C08] currentPersona];
  v18 = 0;
  v7 = [v6 copyCurrentPersonaContextWithError:&v18];
  v8 = v18;

  if (v8)
  {
    v9 = SYDGetMiscLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SYDPerformWithPersona_cold_2();
    }
  }

  v10 = [MEMORY[0x277D77C08] currentPersona];
  v11 = [v10 generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  v12 = SYDGetMiscLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SYDPerformWithPersona_cold_3();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    SYDPerformWithPersona_cold_4();
  }

  v4[2](v4);
  v14 = [MEMORY[0x277D77C08] currentPersona];
  v15 = [v14 restorePersonaWithSavedPersonaContext:v7];

  v16 = SYDGetMiscLog();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      SYDPerformWithPersona_cold_5();
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    SYDPerformWithPersona_cold_6();
  }
}

id SYDStoreTypesForCurrentPlatform()
{
  if (SYDStoreTypesForCurrentPlatform_onceToken != -1)
  {
    SYDStoreTypesForCurrentPlatform_cold_1();
  }

  v1 = SYDStoreTypesForCurrentPlatform_sStoreTypes;

  return v1;
}

void __SYDStoreTypesForCurrentPlatform_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [&unk_287CF24A8 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v10;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(&unk_287CF24A8);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        [v5 integerValue];
        [v0 addObject:v5];
      }

      v2 = [&unk_287CF24A8 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v2);
  }

  v6 = [v0 copy];
  v7 = SYDStoreTypesForCurrentPlatform_sStoreTypes;
  SYDStoreTypesForCurrentPlatform_sStoreTypes = v6;

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __SYDStoreIdentifiersExemptFromQuota_block_invoke()
{
  SYDStoreIdentifiersExemptFromQuota_storeIdentifiersExemptFromQuota = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.security.cloudkeychainproxy3", @"com.apple.sbd3", @"com.apple.mail.recents", @"com.apple.messages.recents", 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t __SYDErrorUserInfoClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  SYDErrorUserInfoClasses_sAcceptableClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_26C38B59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C38BE70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26C38C354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C38C95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C38D650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C38DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26C38E520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_26C3903EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CloudKitTestingLibraryCore()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CloudKitTestingLibraryCore_frameworkLibrary;
  v6 = CloudKitTestingLibraryCore_frameworkLibrary;
  if (!CloudKitTestingLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_279D2F800;
    v4[3] = _sl_dlopen();
    CloudKitTestingLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_26C391CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CloudKitTestingLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CloudKitTestingLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCKTestServerManagerClass_block_invoke(uint64_t a1)
{
  CloudKitTestingLibraryCore();
  result = objc_getClass("CKTestServerManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKTestServerManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26C3927A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C399BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26C39A05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_26C39A830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26C39AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v13 - 80));
  _Unwind_Resume(a1);
}

void sub_26C39B248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C39C1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C39C384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C39E408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A3138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_26C3A3FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A4750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26C3A5B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A5EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A6214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3A6500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A6944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A6BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A74B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A7914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C3A7C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3A8118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A8F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3A985C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A9B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C3A9D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3A9FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26C3AA1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C3AA3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3AA728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3AADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3AB080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3AB2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3AB550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3ACA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26C3ACF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_26C3ADC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_18(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_26C3AEF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_26C3AF5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3B0E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3B1140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUNMutableNotificationContentClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNMutableNotificationContentClass_block_invoke_cold_1();
  }

  getUNMutableNotificationContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UserNotificationsLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __UserNotificationsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279D30118;
    v3 = 0;
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    UserNotificationsLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUNNotificationRequestClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNNotificationRequestClass_block_invoke_cold_1();
  }

  getUNNotificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUNUserNotificationCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUNUserNotificationCenterClass_block_invoke_cold_1();
  }

  getUNUserNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SYDKeyID.key.getter()
{
  v1 = *(v0 + OBJC_IVAR___SYDKeyID_key);
  v2 = *(v0 + OBJC_IVAR___SYDKeyID_key + 8);

  return v1;
}

uint64_t SYDKeyID.storeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SYDKeyID_storeIdentifier);
  v2 = *(v0 + OBJC_IVAR___SYDKeyID_storeIdentifier + 8);

  return v1;
}

id SYDKeyID.init(key:storeIdentifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26C3BD2B4();

  v2 = sub_26C3BD2B4();

  v3 = [v0 initWithKey:v1 storeIdentifier:v2];

  return v3;
}

id SYDKeyID.init(key:storeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___SYDKeyID_key);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___SYDKeyID_storeIdentifier);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = SYDKeyID;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t SYDKeyID.description.getter()
{
  v1 = v0;
  sub_26C3BD304();

  v2 = [v0 key];
  v3 = sub_26C3BD2C4();
  v5 = v4;

  MEMORY[0x26D69F940](v3, v5);

  MEMORY[0x26D69F940](0xD000000000000011, 0x800000026C3C27B0);
  v6 = [v1 storeIdentifier];
  v7 = sub_26C3BD2C4();
  v9 = v8;

  MEMORY[0x26D69F940](v7, v9);

  MEMORY[0x26D69F940](62, 0xE100000000000000);
  return 0x3D79656B3CLL;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id SYDKeyID.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for SYDKeyID();
  *a1 = v3;

  return v3;
}

id SYDKeyID.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void SYDKVSDirectory_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SYDKVSDirectory_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SYDKVSDirectory_cold_5(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26C384000, a1, OS_LOG_TYPE_ERROR, "Error consuming sandbox token: %s", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void SYDKVSDirectory_cold_6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void SYDKVSDirectory_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to get path from containermanager: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void SYDKVSDirectory_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SYDOldKVSDirectory_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void SYDOldKVSDirectory_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to get Library directory from NSFileManager: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void SYDOldKVSDirectory_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void SYDMigrateToDaemonContainerIfNecessary_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Failed to get the migration complete file URL: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error checking if migration sentinel exists: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Failed to get the old KVS directory: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Failed to get the KVS directory: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Failed to create new KVS directory while migrating: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Failed to write sentinel file: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void SYDMigrateToDaemonContainerIfNecessary_cold_9(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_26C384000, v1, v2, "Failed to migrate to daemon container: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void SYDMigrateToDaemonContainerIfNecessary_cold_10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void SYDMigrateToDaemonContainerIfNecessary_cold_11()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __SYDMigrateToDaemonContainerIfNecessary_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error enumerating old KVS directory for URL %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void SYDStoreZoneID_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CKRecordZoneID *SYDStoreZoneID(NSString *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"SYDUtilities.m" lineNumber:741 description:@"Must specify a store identifier to get a zone ID"];
}

void SYDSyncAnchorRecordID_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CKRecordID *SYDSyncAnchorRecordID(NSString *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"SYDUtilities.m" lineNumber:746 description:@"Must specify a store identifier to get a sync anchor record ID"];
}

void SYDPerformWithPersona_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SYDPerformWithPersona_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error copying current persona context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void SYDPerformWithPersona_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error adopting persona %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void SYDPerformWithPersona_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9_0(&dword_26C384000, v0, v1, "Adopted persona %@ and copied context %@");
  v2 = *MEMORY[0x277D85DE8];
}

void SYDPerformWithPersona_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Error restoring saved persona context %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void SYDPerformWithPersona_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __getUNMutableNotificationContentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNMutableNotificationContentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDUserNotifications.m" lineNumber:21 description:{@"Unable to find class %s", "UNMutableNotificationContent"}];

  __break(1u);
}

void UserNotificationsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYDUserNotifications.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getUNNotificationRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNNotificationRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDUserNotifications.m" lineNumber:22 description:{@"Unable to find class %s", "UNNotificationRequest"}];

  __break(1u);
}

void __getUNUserNotificationCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUNUserNotificationCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDUserNotifications.m" lineNumber:23 description:{@"Unable to find class %s", "UNUserNotificationCenter"}];

  __break(1u);
  sub_26C3BD2B4();
}