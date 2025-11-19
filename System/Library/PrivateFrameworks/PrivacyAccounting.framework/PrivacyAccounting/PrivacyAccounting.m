id logger()
{
  if (logger_onceToken != -1)
  {
    logger_cold_1();
  }

  v1 = logger_log;

  return v1;
}

id logger_0()
{
  if (logger_onceToken_0 != -1)
  {
    logger_cold_1_0();
  }

  v1 = logger_log_0;

  return v1;
}

id logger_1()
{
  if (logger_onceToken_1 != -1)
  {
    logger_cold_1_1();
  }

  v1 = logger_log_1;

  return v1;
}

id logger_2()
{
  if (logger_onceToken_2 != -1)
  {
    logger_cold_1_2();
  }

  v1 = logger_log_2;

  return v1;
}

void sub_1DF25CB30()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

    qword_1ED5EC898 = greenTeaDeviceCapability;
  }

  else
  {
    __break(1u);
  }
}

void PARegisterUserInfoValueProviderForPAErrorDomain()
{
  if (PARegisterUserInfoValueProviderForPAErrorDomain_registerOnce != -1)
  {
    PARegisterUserInfoValueProviderForPAErrorDomain_cold_1();
  }
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

uint64_t __logger_block_invoke()
{
  logger_log = os_log_create("com.apple.PrivacyAccounting", "PATCCAccess");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logger_block_invoke_0()
{
  logger_log_0 = os_log_create("com.apple.PrivacyAccounting", "PAAccessReader");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logger_block_invoke_1()
{
  logger_log_1 = os_log_create("com.apple.PrivacyAccounting", "PACoalescingIntervalTracker");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __logger_block_invoke_2()
{
  logger_log_2 = os_log_create("com.apple.PrivacyAccounting", "PALSUtils");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF25E218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PADefaultBundleRecordRetriever()
{
  if (PADefaultBundleRecordRetriever_once != -1)
  {
    PADefaultBundleRecordRetriever_cold_1();
  }

  v0 = _Block_copy(PADefaultBundleRecordRetriever_result);

  return v0;
}

uint64_t __PADefaultBundleRecordRetriever_block_invoke()
{
  PADefaultBundleRecordRetriever_result = [&__block_literal_global_91 copy];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF25E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessRecord.Timing(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF25E9D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessRecord.Timing(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF25EA78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DF25F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF262180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id implicitIdentityForEntitlementDictionary(void *a1, void *a2, char *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.app-store-app.usage-reporting-only.implicitly-assumed-identity"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.app-store-app.usage-reporting-only.implicitly-assumed-identity"];
    v9 = v6;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 hasPrefix:@"/"];
        [v8 UTF8String];
        v14 = tcc_identity_create();
LABEL_14:

LABEL_15:
        v15 = 1;
        if (!a3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v12 = logger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        implicitIdentityForEntitlementDictionary_cold_1();
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  v10 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.usage-reporting-only.implicitly-assumed-identity"];

  if (v10)
  {
    v11 = @"com.apple.private.attribution.usage-reporting-only.implicitly-assumed-identity";
LABEL_13:
    v8 = [v5 objectForKeyedSubscript:v11];
    v14 = implicitIdentityEntryToTCCIdentity(v8, v6);
    goto LABEL_15;
  }

  v13 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.implicitly-assumed-identity"];

  if (v13)
  {
    v11 = @"com.apple.private.attribution.implicitly-assumed-identity";
    goto LABEL_13;
  }

  v15 = 0;
  v14 = 0;
  if (a3)
  {
LABEL_16:
    *a3 = v15;
  }

LABEL_17:

  return v14;
}

id PAImplicitClientIdentityForBundle(void *a1)
{
  v1 = a1;
  v2 = [v1 infoDictionary];
  v3 = [v1 bundlePath];

  v4 = implicitIdentityForEntitlementDictionary(v2, v3, 0);

  return v4;
}

BOOL PAEntitlementDictionaryBelongsToSystemProcess(void *a1)
{
  v1 = implicitIdentityForEntitlementDictionary(a1, @"<anonymous entitlement dictionary>", 0);
  if (v1)
  {
    v2 = tcc_identity_get_type() != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL PABundleRecordBelongsToSystemProcess(void *a1)
{
  v1 = [a1 entitlements];
  v2 = [v1 objectForKey:@"com.apple.private.attribution.implicitly-assumed-identity" ofClass:objc_opt_class()];

  if (v2)
  {
    v3 = tcc_identity_get_type() != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PAAuthenticatedClientIdentity(_OWORD *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v3;
  v4 = *MEMORY[0x1E695E480];
  v5 = a2;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = @"com.apple.private.attribution.explicitly-assumed-identities";
    *&token.val[2] = @"com.apple.private.attribution.implicitly-assumed-identity";
    *&token.val[4] = @"com.apple.private.attribution.usage-reporting-only.implicitly-assumed-identity";
    *&token.val[6] = @"com.apple.private.attribution.app-store-app.usage-reporting-only.implicitly-assumed-identity";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&token count:4];
    error = 0;
    v9 = SecTaskCopyValuesForEntitlements(v7, v8, &error);
    v10 = error;
    v11 = v10;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      v13 = logger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        PAAuthenticatedClientIdentity_cold_1(v11, v13);
      }
    }

    CFRelease(v7);
  }

  else
  {
    v8 = logger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&dword_1DF25B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create SecTaskRef for audit token", &token, 2u);
    }

    v9 = 0;
  }

  v14 = [PALazyAuditTokenBasedClientIdentity alloc];
  v15 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v15;
  v16 = [(PALazyAuditTokenBasedClientIdentity *)v14 initWithAuditToken:&token];
  v17 = PAAuthenticatedClientIdentityWithClientProperties(v9, v16, v5);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id PAAuthenticatedClientIdentityWithClientProperties(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v50 = 0;
  v8 = implicitIdentityForEntitlementDictionary(v5, v6, &v50);
  v9 = v8;
  if (v50 == 1 && v8 == 0)
  {
    goto LABEL_36;
  }

  if (!v8)
  {
    if (v7)
    {
LABEL_14:
      v15 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.explicitly-assumed-identities"];
      v49 = v7;
      v16 = v15;
      v47 = v6;
      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          obj = v16;
          v48 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v48)
          {
            v43 = v6;
            v42 = v16;
            v44 = v7;
            v45 = v5;
            v17 = *v52;
            v18 = v47;
            while (2)
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v52 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v51 + 1) + 8 * i);
                v21 = v49;
                v22 = v20;
                v23 = v18;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v17;
                  v25 = [v22 objectForKeyedSubscript:@"type"];
                  v26 = [v22 objectForKeyedSubscript:@"value"];
                  type = tcc_identity_get_type();
                  v28 = type;
                  if (type >= 4)
                  {
                    v31 = logger();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                    {
                      buf = 134217984;
                      v57 = v28;
                      _os_log_fault_impl(&dword_1DF25B000, v31, OS_LOG_TYPE_FAULT, "Unexpected tcc_identity_type_t: %llu", &buf, 0xCu);
                    }

                    v29 = 0;
                  }

                  else
                  {
                    v29 = off_1E86ABEF8[type];
                  }

                  if ([v25 isEqual:v29])
                  {
                    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
                    v33 = [v26 isEqual:v32];

                    if (v33)
                    {

LABEL_51:
                      v36 = v21;
                      v7 = v44;
                      v5 = v45;
                      v6 = v43;
                      goto LABEL_39;
                    }
                  }

                  v34 = [v25 isEqual:@"wildcard"];

                  v18 = v47;
                  v17 = v24;
                  if (v34)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  v30 = logger();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                  {
                    buf = 138543618;
                    v57 = v18;
                    v58 = 2114;
                    v59 = v22;
                    _os_log_fault_impl(&dword_1DF25B000, v30, OS_LOG_TYPE_FAULT, "BUG IN %{public}@! They have a malformed explicitly assumed identity entitlement. Each entry should be a dictionary describing an identity, but we got %{public}@", &buf, 0x16u);
                  }
                }
              }

              v48 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }

            v7 = v44;
            v5 = v45;
            v16 = v42;
            v6 = v43;
          }
        }

        else
        {
          obj = logger();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
          {
            PAAuthenticatedClientIdentityWithClientProperties_cold_2();
          }
        }
      }

      v39 = [v47 identity];
      v40 = areTCCIdentitiesEqual(v49, v39);

      if (v40)
      {
        v35 = v47;
      }

      else
      {
        v41 = logger();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          PAAuthenticatedClientIdentityWithClientProperties_cold_3();
        }

        v35 = v47;
      }

      goto LABEL_37;
    }

LABEL_36:
    v35 = v6;
LABEL_37:
    v14 = [v35 identity];
    goto LABEL_38;
  }

  if (v7 && !areTCCIdentitiesEqual(v8, v7))
  {
    v11 = [v5 objectForKeyedSubscript:@"com.apple.private.attribution.permit-mixed-identities"];
    v12 = [v11 isEqual:MEMORY[0x1E695E118]];

    if ((v12 & 1) == 0)
    {
      v13 = logger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        PAAuthenticatedClientIdentityWithClientProperties_cold_1();
      }

      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_12:
  v14 = v9;
LABEL_38:
  v36 = v14;
LABEL_39:

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

uint64_t areTCCIdentitiesEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_9;
  }

  if ((v3 != 0) == (v4 == 0))
  {
    goto LABEL_8;
  }

  type = tcc_identity_get_type();
  if (type != tcc_identity_get_type())
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  v9 = [v7 isEqual:v8];

  if (!v9 || (verifier_type = tcc_identity_get_verifier_type(), verifier_type != tcc_identity_get_verifier_type()))
  {
LABEL_8:
    v13 = 0;
    goto LABEL_10;
  }

  if (!verifier_type)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_verifier_code_requirement_string()];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_verifier_code_requirement_string()];
  v13 = [v11 isEqual:v12];

LABEL_10:
  return v13 & 1;
}

void __lookupTCCIdentity_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v7 = logger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __lookupTCCIdentity_block_invoke_cold_1(a3, v7);
    }
  }
}

id implicitIdentityEntryToTCCIdentity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = logger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      implicitIdentityEntryToTCCIdentity_cold_1();
    }

    v8 = 0;
    goto LABEL_19;
  }

  v5 = [v3 objectForKeyedSubscript:@"type"];
  if (tccIdentityTypeForIdentityTypeString_once != -1)
  {
    implicitIdentityEntryToTCCIdentity_cold_2();
  }

  v6 = [tccIdentityTypeForIdentityTypeString_mapping objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = logger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      implicitIdentityEntryToTCCIdentity_cold_4(v4, v3);
    }

    goto LABEL_17;
  }

  [v6 intValue];
  v7 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = logger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      implicitIdentityEntryToTCCIdentity_cold_3();
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  [v7 UTF8String];
  v8 = tcc_identity_create();
LABEL_18:

LABEL_19:
LABEL_20:

  return v8;
}

void __tccIdentityTypeForIdentityTypeString_block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"bundleID";
  v3[1] = @"path";
  v4[0] = &unk_1F5A580A0;
  v4[1] = &unk_1F5A580B8;
  v3[2] = @"hostedUUID";
  v3[3] = @"fileProviderID";
  v4[2] = &unk_1F5A580D0;
  v4[3] = &unk_1F5A580E8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = tccIdentityTypeForIdentityTypeString_mapping;
  tccIdentityTypeForIdentityTypeString_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t PAPBReplayKitAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PAPBApplication);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !PAPBApplicationReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF26499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF264D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF2652B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF265610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DF265D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF265EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1DF2669B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1DF267F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF268138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DF2683F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL writeBytesToStream(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = a1;
  if (a3)
  {
    v8 = 0;
    v9 = 512;
    v10 = a3;
    while (1)
    {
      v11 = [v7 write:a2 + v8 maxLength:v10];
      if (v11 < 0)
      {
        break;
      }

      if (!v11)
      {
        v9 = 640;
        break;
      }

      v10 -= v11;
      if (v10)
      {
        v8 += v11;
        if (v8 < a3)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v9 userInfo:0];
    v12 = v13 != 0;
    if (a4 && v13)
    {
      v13 = v13;
      *a4 = v13;
      v12 = 1;
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
    v13 = 0;
  }

  return !v12;
}

uint64_t PAPBTCCAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PAPBAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36[0] & 0x7F) << v5;
        if ((v36[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 52) |= 1u;
            v36[0] = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v36[0];
            goto LABEL_65;
          case 5:
            v27 = PBReaderReadData();
            if (v27)
            {
              [a1 addAssetIdentifiers:v27];
            }

LABEL_53:

            goto LABEL_65;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v36[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v36[0] & 0x7F) << v21;
              if ((v36[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_61:
            v32 = 16;
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = objc_alloc_init(PAPBApplication);
            objc_storeStrong((a1 + 24), v27);
            v36[0] = 0;
            v36[1] = 0;
            if (!PBReaderPlaceMark() || !PAPBApplicationReadFrom(v27, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_53;
          case 2:
            v30 = PBReaderReadData();
            v31 = *(a1 + 40);
            *(a1 + 40) = v30;

            goto LABEL_65;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v36[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v36[0] & 0x7F) << v14;
              if ((v36[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_57:
            v32 = 48;
LABEL_62:
            *(a1 + v32) = v20;
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF26B2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1DF26B620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PABundleRecordIsVisibleApplication(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F5A5DE90])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appTags];
    if ([v5 containsObject:@"hidden"])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v4 bundleIdentifier];
      v6 = [v7 isEqualToString:@"com.apple.springboard"] ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PAAssociatedBundleIdentifiersForApplication(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __PAAssociatedBundleIdentifiersForApplication_block_invoke;
    aBlock[3] = &unk_1E86AC230;
    v3 = v2;
    v20 = v3;
    v4 = _Block_copy(aBlock);
    v5 = [v1 bundleIdentifier];
    v4[2](v4, v5);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v1 applicationExtensionRecords];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) bundleIdentifier];
          v4[2](v4, v11);
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = v3;
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __PAAssociatedBundleIdentifiersForApplication_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

id __PADefaultBundleRecordRetriever_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifierType];
  if (v3 == 2)
  {
    v8 = MEMORY[0x1E6963620];
    if (v2)
    {
      [v2 auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v11 = 0;
    v6 = [v8 bundleRecordForAuditToken:v12 error:&v11];
    v7 = v11;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3)
    {
      v7 = logger_2();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __PADefaultBundleRecordRetriever_block_invoke_2_cold_2(v2, v7);
      }

      goto LABEL_14;
    }

    v4 = MEMORY[0x1E6963620];
    v5 = [v2 bundleID];
    *&v12[0] = 0;
    v6 = [v4 bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:v12];
    v7 = *&v12[0];

    if (v6)
    {
      goto LABEL_15;
    }
  }

  v9 = logger_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __PADefaultBundleRecordRetriever_block_invoke_2_cold_1(v2, v7, v9);
  }

LABEL_14:
  v6 = 0;
LABEL_15:

  return v6;
}

void sub_1DF26C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id coalesceGroupedRecordsToRepublish(void *a1, char a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 count] < 2)
        {
          v18 = [v10 firstObject];
        }

        else
        {
          v11 = [v10 lastObject];
          v12 = [v11 access];

          if (a2)
          {
            v13 = [v10 lastObject];
            [v13 startTime];
            v15 = v14;

            v16 = [v10 valueForKeyPath:@"@max.endTime"];
            [v16 doubleValue];
          }

          else
          {
            v19 = [v10 valueForKeyPath:@"@min.startTime"];
            [v19 doubleValue];
            v15 = v20;

            v16 = [v10 lastObject];
            [v16 endTime];
          }

          v21 = v17;

          v18 = -[PACoalescedAccessRecord initWithAccess:startTime:endTime:count:]([PACoalescedAccessRecord alloc], "initWithAccess:startTime:endTime:count:", v12, [v10 count], v15, v21);
        }

        [v4 addObject:v18];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __coalesceGroupedRecordsToRepublish_block_invoke;
  v25[3] = &__block_descriptor_33_e59_q24__0__PACompleteAccessRecord_8__PACompleteAccessRecord_16l;
  v26 = a2;
  [v4 sortUsingComparator:v25];
  v22 = [v4 copy];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t __coalesceGroupedRecordsToRepublish_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) == 1)
  {
    [v5 startTime];
    v8 = v7;
    [v6 startTime];
    if (v8 >= v9)
    {
      [v5 startTime];
      v15 = v14;
      [v6 startTime];
      if (v15 <= v16)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    [v5 endTime];
    v12 = v11;
    [v6 endTime];
    if (v12 >= v13)
    {
      [v5 endTime];
      v18 = v17;
      [v6 endTime];
      v10 = v18 > v19;
    }

    else
    {
      v10 = -1;
    }
  }

  return v10;
}

uint64_t PAPBOutOfProcessPickerAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PAPBLocationAccessReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PAPBAccess);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !PAPBAccessReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PAApplicationIdentifierTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E86AC4E0[a1];
  }
}

uint64_t PAPBApplicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PAErrorBoolValueForUserInfoKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 userInfo];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (_NSIsNSNumber())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1DF271C18()
{
  if (qword_1ED5EC7D8 != -1)
  {
    swift_once();
  }

  return qword_1ED5EC898;
}

id _PALoggingOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PALoggingOptions.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PALoggingOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _PALoggingOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PALoggingOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for PAAccessCategory()
{
  if (!qword_1ECE2EFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECE2EFD0);
    }
  }
}

uint64_t sub_1DF271DEC(uint64_t a1, id *a2)
{
  result = sub_1DF27BB18();
  *a2 = 0;
  return result;
}

uint64_t sub_1DF271E64(uint64_t a1, id *a2)
{
  v3 = sub_1DF27BB28();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DF271EE4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF27BB38();
  v2 = sub_1DF27BB08();

  *a1 = v2;
  return result;
}

uint64_t sub_1DF271F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF27BB08();

  *a2 = v5;
  return result;
}

uint64_t sub_1DF271F70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DF27BB38();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DF271F9C(uint64_t a1)
{
  v2 = sub_1DF27225C(&qword_1ECE2EFF0);
  v3 = sub_1DF27225C(&qword_1ECE2EFF8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF27209C()
{
  v1 = *v0;
  v2 = sub_1DF27BB38();
  v3 = MEMORY[0x1E12D0DD0](v2);

  return v3;
}

uint64_t sub_1DF2720D8()
{
  v1 = *v0;
  sub_1DF27BB38();
  sub_1DF27BB48();
}

uint64_t sub_1DF27212C()
{
  v1 = *v0;
  sub_1DF27BB38();
  sub_1DF27BCC8();
  sub_1DF27BB48();
  v2 = sub_1DF27BCE8();

  return v2;
}

uint64_t sub_1DF2721A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DF27BB38();
  v6 = v5;
  if (v4 == sub_1DF27BB38() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF27BCA8();
  }

  return v9 & 1;
}

uint64_t sub_1DF27225C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PAAccessCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id InitialSwift.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InitialSwift.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitialSwift();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InitialSwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitialSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AccessHistory.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v7[0] = *v1;
  v7[1] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F000, &qword_1DF27ECB0);
  v4 = sub_1DF2724BC();
  a1[3] = v3;
  a1[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v3 - 8) + 32))(boxed_opaque_existential_1, v7, v3);
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

unint64_t sub_1DF2724BC()
{
  result = qword_1ECE2F008;
  if (!qword_1ECE2F008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE2F000, &qword_1DF27ECB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE2F008);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DF272568@<X0>(uint64_t *a1@<X8>)
{
  AccessHistory.makeIterator()(a1);
  v2 = *v1;
}

uint64_t sub_1DF2725A4()
{
  v1 = sub_1DF27959C();
  v2 = *v0;

  return v1;
}

uint64_t static AccessHistory<>.forReport.getter@<X0>(void *a1@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F010, &qword_1DF27ECB8);
  v2 = *(*(v32 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v32, v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - v8;
  v10 = sub_1DF27BA98();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v29 - v18;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  v20 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v21);
  v23 = &v29 - v22;
  sub_1DF27BA48();
  sub_1DF27BA58();
  sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
  result = sub_1DF27BAF8();
  if (result)
  {
    v30 = a1;
    v25 = v11[4];
    v25(v9, v19, v10);
    v26 = v6;
    v27 = v32;
    v25(&v9[*(v32 + 48)], v16, v10);
    sub_1DF27AC44(v9, v26, &qword_1ECE2F010, &qword_1DF27ECB8);
    v29 = *(v27 + 48);
    v25(v23, v26, v10);
    v28 = v11[1];
    v28(v26 + v29, v10);
    sub_1DF27AA68(v9, v26, &qword_1ECE2F010, &qword_1DF27ECB8);
    v25(&v23[*(v31 + 36)], (v26 + *(v27 + 48)), v10);
    v28(v26, v10);
    static AccessHistory<>.forReport(in:)(v23, v30);
    return sub_1DF27AAD0(v23, &qword_1ECE2F018, &qword_1DF27ECC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AccessHistory<>.forReport(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v15 - v7;
  sub_1DF27AC44(a1, v15 - v7, &qword_1ECE2F018, &qword_1DF27ECC0);
  v9 = [objc_opt_self() sharedInstance];
  v15[0] = 0;
  v10 = [v9 publisherForReportWithError_];

  if (v10)
  {
    v11 = v15[0];
    result = sub_1DF272AB0(v8, v10, a2);
  }

  else
  {
    v13 = v15[0];
    sub_1DF27AAD0(v8, &qword_1ECE2F018, &qword_1DF27ECC0);
    sub_1DF27BA28();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF272AB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v38 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F210, &qword_1DF27EFC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v37 - v11;
  v44 = type metadata accessor for AccessRecord(0);
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44, v14);
  v43 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v50 = nullsub_1;
  v51 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1DF274418;
  v49 = &block_descriptor;
  v17 = _Block_copy(&aBlock);
  v50 = sub_1DF27ACD4;
  v51 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1DF27452C;
  v49 = &block_descriptor_38;
  v18 = _Block_copy(&aBlock);
  v19 = a2;

  v20 = [v19 sinkWithCompletion:v17 shouldContinue:v18];
  v37 = v19;

  _Block_release(v18);
  _Block_release(v17);

  swift_beginAccess();
  v21 = *(v16 + 16);

  if (v21 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF27BC68())
  {
    v23 = 0;
    v24 = (v42 + 48);
    v25 = MEMORY[0x1E69E7CC0];
    v41 = i;
    while ((v21 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E12D0E80](v23, v21);
      v28 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_1DF272FEC(v27, v12);
      if ((*v24)(v12, 1, v44) == 1)
      {
        sub_1DF27AAD0(v12, &qword_1ECE2F210, &qword_1DF27EFC0);
      }

      else
      {
        sub_1DF27AB30(v12, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1DF2755BC(0, v25[2] + 1, 1, v25);
        }

        v30 = v25[2];
        v29 = v25[3];
        if (v30 >= v29 >> 1)
        {
          v25 = sub_1DF2755BC(v29 > 1, v30 + 1, 1, v25);
        }

        v25[2] = v30 + 1;
        sub_1DF27AB30(v43, v25 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v30);
        i = v41;
      }

      ++v23;
      if (v28 == i)
      {
        goto LABEL_21;
      }
    }

    if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v26 = *(v21 + 8 * v23 + 32);
    v27 = swift_unknownObjectRetain();
    v28 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v32 = v38;
  v31 = v39;
  v33 = sub_1DF27AC44(v39, v38, &qword_1ECE2F018, &qword_1DF27ECC0);
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v37 - 2) = v32;
  v45 = sub_1DF273C00(sub_1DF27ACDC, (&v37 - 4), v25);

  sub_1DF27598C(&v45);

  sub_1DF27AAD0(v31, &qword_1ECE2F018, &qword_1DF27ECC0);
  v35 = v45;
  result = sub_1DF27AAD0(v32, &qword_1ECE2F018, &qword_1DF27ECC0);
  *v40 = v35;
  return result;
}

uint64_t sub_1DF272FEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF27BAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessRecord(0);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v52 = a2;
  if (v15)
  {
    v16 = v15;
    [v15 startTime];
    v18 = v17;
    [v16 endTime];
    if (v18 == v19)
    {
      v20 = *(v10 + 28);
      [v16 startTime];
      sub_1DF27BA38();
      type metadata accessor for AccessRecord.Timing(0);
    }

    else
    {
      [v16 endTime];
      v24 = v23;
      [v16 startTime];
      v26 = v14 + *(v10 + 28);
      if (v24 - v25 >= 60.0)
      {
        v51[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
        [v16 startTime];
        sub_1DF27BA38();
      }

      [v16 endTime];
      sub_1DF27BA38();
      type metadata accessor for AccessRecord.Timing(0);
    }

    goto LABEL_11;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = *(v10 + 28);
    [v21 startTime];
    sub_1DF27BA38();
    type metadata accessor for AccessRecord.Timing(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    v29 = [a1 access];
    v30 = [v29 identifier];

    sub_1DF27BAB8();
    v31 = sub_1DF27BAA8();
    v33 = v32;
    (*(v5 + 8))(v9, v4);
    *v14 = v31;
    v14[1] = v33;
    v34 = [a1 access];
    v35 = [v34 accessor];

    v36 = [v35 bundleID];
    v37 = sub_1DF27BB38();
    v39 = v38;

    v14[2] = v37;
    v14[3] = v39;
    v40 = [a1 access];
    v41 = [v40 category];

    v14[4] = v41;
    v42 = [a1 access];
    v43 = [v42 accessCount];

    if (v43)
    {
      v44 = [a1 access];
      v45 = [v44 accessCount];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v45 = 0;
    }

    v46 = v14 + *(v10 + 32);
    *v46 = v45;
    v46[8] = v43 == 0;
    v47 = v52;
    sub_1DF27AB30(v14, v52);
    return (*(v53 + 56))(v47, 0, 1, v10);
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = *(v10 + 28);
    [v27 endTime];
    sub_1DF27BA38();
    type metadata accessor for AccessRecord.Timing(0);
    goto LABEL_11;
  }

  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  result = swift_unknownObjectRelease();
  if (v49)
  {
    __break(1u);
  }

  else
  {
    v50 = *(v53 + 56);

    return v50(a2, 1, 1, v10);
  }

  return result;
}

uint64_t sub_1DF273558(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for AccessRecord.Timing(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DF27BA98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v44 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v40 - v21;
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v40 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v43 = &v40 - v28;
  v29 = *(type metadata accessor for AccessRecord(0) + 28);
  v42 = a1;
  sub_1DF27AB94(a1 + v29, v12, type metadata accessor for AccessRecord.Timing);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
    v30 = *(v14 + 32);
    v30(v22, v12, v13);
    (*(v14 + 8))(&v12[v41], v13);
  }

  else
  {
    v30 = *(v14 + 32);
    v30(v22, v12, v13);
  }

  v30(v26, v22, v13);
  v31 = v43;
  v30(v43, v26, v13);
  sub_1DF2739CC(v7);
  v32 = *(v14 + 48);
  v33 = v32(v7, 1, v13);
  v34 = v44;
  if (v33 == 1)
  {
    sub_1DF27BA58();
    if (v32(v7, 1, v13) != 1)
    {
      sub_1DF27AAD0(v7, &qword_1ECE2F200, &qword_1DF27EFB0);
    }
  }

  else
  {
    v30(v44, v7, v13);
  }

  sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
  if (sub_1DF27BAE8() & 1) != 0 && (v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0) + 36), (sub_1DF27BAF8()))
  {
    v36 = 1;
  }

  else if (sub_1DF27BAE8())
  {
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0) + 36);
    v36 = sub_1DF27BAF8();
  }

  else
  {
    v36 = 0;
  }

  v38 = *(v14 + 8);
  v38(v34, v13);
  v38(v31, v13);
  return v36 & 1;
}

uint64_t sub_1DF2739CC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessRecord.Timing(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF27BA98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF27AB94(v2, v8, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 56))(a1, 1, 1, v9);
      return sub_1DF27AA08(v8, type metadata accessor for AccessRecord.Timing);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v17 = *(v10 + 32);
    v17(v14, &v8[*(v18 + 48)], v9);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v17 = *(v10 + 32);
    v17(v14, v8, v9);
  }

  v17(a1, v14, v9);
  return (*(v10 + 56))(a1, 0, 1, v9);
}

uint64_t sub_1DF273C00(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AccessRecord(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v27 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v24 - v14;
  v26 = *(a3 + 16);
  if (v26)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v24[1] = a2;
    v25 = a3;
    v24[0] = a1;
    while (v16 < *(a3 + 16))
    {
      v18 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v19 = *(v28 + 72);
      sub_1DF27AB94(a3 + v18 + v19 * v16, v15, type metadata accessor for AccessRecord);
      v20 = a1(v15);
      if (v3)
      {
        sub_1DF27AA08(v15, type metadata accessor for AccessRecord);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_1DF27AB30(v15, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF275794(0, *(v17 + 16) + 1, 1);
          v17 = v29;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DF275794(v22 > 1, v23 + 1, 1);
          v17 = v29;
        }

        *(v17 + 16) = v23 + 1;
        result = sub_1DF27AB30(v27, v17 + v18 + v23 * v19);
        a3 = v25;
        a1 = v24[0];
      }

      else
      {
        result = sub_1DF27AA08(v15, type metadata accessor for AccessRecord);
      }

      if (v26 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v17;
  }

  return result;
}

uint64_t AccessIterator.next()()
{
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  return sub_1DF27BBE8();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t AccessRecord.identifier.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_1DF27BBF8();
}

uint64_t AccessRecord.accessorID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t static AccessRecord.AccessorID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF27BCA8();
  }
}

uint64_t AccessRecord.AccessorID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E12D0F50](0);

  return sub_1DF27BB48();
}

uint64_t AccessRecord.AccessorID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF27BCC8();
  MEMORY[0x1E12D0F50](0);
  sub_1DF27BB48();
  return sub_1DF27BCE8();
}

uint64_t sub_1DF274044()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF27BCC8();
  MEMORY[0x1E12D0F50](0);
  sub_1DF27BB48();
  return sub_1DF27BCE8();
}

uint64_t sub_1DF2740A4()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E12D0F50](0);

  return sub_1DF27BB48();
}

uint64_t sub_1DF2740F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF27BCC8();
  MEMORY[0x1E12D0F50](0);
  sub_1DF27BB48();
  return sub_1DF27BCE8();
}

uint64_t sub_1DF274154(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF27BCA8();
  }
}

uint64_t AccessRecord.accessCount.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessRecord(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void sub_1DF274418(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1DF274480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();
  MEMORY[0x1E12D0E00](v3);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DF27BBA8();
  }

  sub_1DF27BBC8();
  swift_endAccess();
  return 1;
}

uint64_t sub_1DF27452C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1DF274598(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v3 = type metadata accessor for AccessRecord.Timing(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v46 - v18;
  v20 = sub_1DF27BA98();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v46 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v46 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v49 = &v46 - v31;
  v32 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(a2 + *(v32 + 28), v7, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v21 + 56))(v16, 1, 1, v20);
      sub_1DF27AA08(v7, type metadata accessor for AccessRecord.Timing);
      goto LABEL_7;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v34 = *(v21 + 32);
    v34(v29, &v7[*(v35 + 48)], v20);
    (*(v21 + 8))(v7, v20);
  }

  else
  {
    v34 = *(v21 + 32);
    v34(v29, v7, v20);
  }

  v34(v16, v29, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
LABEL_7:
  sub_1DF27AA68(v16, v19, &qword_1ECE2F200, &qword_1DF27EFB0);
  v36 = *(v21 + 48);
  v37 = v36(v19, 1, v20);
  v38 = v49;
  if (v37 == 1)
  {
    sub_1DF27AAD0(v19, &qword_1ECE2F200, &qword_1DF27EFB0);
    v39 = 0;
  }

  else
  {
    v40 = *(v21 + 32);
    v40(v49, v19, v20);
    v41 = v47;
    sub_1DF2739CC(v47);
    if (v36(v41, 1, v20) == 1)
    {
      (*(v21 + 8))(v38, v20);
      sub_1DF27AAD0(v41, &qword_1ECE2F200, &qword_1DF27EFB0);
      v39 = 1;
    }

    else
    {
      v42 = v46;
      v40(v46, v41, v20);
      sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
      v43 = sub_1DF27BAD8();
      v44 = *(v21 + 8);
      v44(v42, v20);
      v44(v38, v20);
      v39 = v43 ^ 1;
    }
  }

  return v39 & 1;
}

uint64_t sub_1DF274CD8@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for AccessRecord.Timing(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF27BA98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v15 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(v14 + *(v15 + 28), v7, type metadata accessor for AccessRecord.Timing);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
    v16 = *(v9 + 32);
    v16(v13, v7, v8);
    (*(v9 + 8))(&v7[v17], v8);
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v13, v7, v8);
  }

  v16(a1, v13, v8);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

id sub_1DF274EF8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v17 - v8;
  v10 = a1;
  a3();

  v11 = sub_1DF27BA98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1DF27BA68();
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  return v14;
}

uint64_t sub_1DF275028@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for AccessRecord.Timing(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF27BA98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record;
  v15 = type metadata accessor for AccessRecord(0);
  sub_1DF27AB94(v14 + *(v15 + 28), v7, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 56))(a1, 1, 1, v8);
      return sub_1DF27AA08(v7, type metadata accessor for AccessRecord.Timing);
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v18 = *(v9 + 32);
    v18(v13, &v7[*(v19 + 48)], v8);
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    v18 = *(v9 + 32);
    v18(v13, v7, v8);
  }

  v18(a1, v13, v8);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

id sub_1DF275318()
{
  v2.receiver = v0;
  v2.super_class = _s18AccessRecordObjectCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DF275388(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DF27BCC8();
  sub_1DF27BB48();
  v6 = sub_1DF27BCE8();

  return sub_1DF275400(a1, a2, v6);
}

unint64_t sub_1DF275400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF27BCA8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1DF2754B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F238, &qword_1DF27EFE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1DF2755BC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE2F240, &unk_1DF27EFF0);
  v10 = *(type metadata accessor for AccessRecord(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccessRecord(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1DF275794(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF2757B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF2757B4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE2F240, &unk_1DF27EFF0);
  v10 = *(type metadata accessor for AccessRecord(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccessRecord(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DF27598C(void **a1)
{
  v2 = *(type metadata accessor for AccessRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DF278FBC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1DF275A34(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1DF275A34(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1DF27BC98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AccessRecord(0);
        v6 = sub_1DF27BBB8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AccessRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DF276488(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DF275B60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF275B60(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v112 = a1;
  v110 = type metadata accessor for AccessRecord.Timing(0);
  v7 = *(*(v110 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v110, v8);
  v105 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v85[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v99 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v102 = &v85[-v21];
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v85[-v23];
  v25 = sub_1DF27BA98();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v31 = &v85[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v92 = &v85[-v34];
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v85[-v37];
  MEMORY[0x1EEE9AC00](v36, v39);
  v104 = &v85[-v40];
  v106 = type metadata accessor for AccessRecord(0);
  v41 = *(*(v106 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v106, v42);
  v97 = &v85[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v111 = &v85[-v47];
  result = MEMORY[0x1EEE9AC00](v46, v48);
  v113 = &v85[-v51];
  v87 = a2;
  if (a3 != a2)
  {
    v52 = *a4;
    v53 = *(v50 + 72);
    v54 = (v26 + 32);
    v103 = (v26 + 8);
    v109 = (v26 + 56);
    v108 = (v26 + 48);
    v55 = v52 + v53 * (a3 - 1);
    v95 = -v53;
    v96 = v52;
    v56 = &v112[-a3];
    v86 = v53;
    v57 = v52 + v53 * a3;
    v100 = v24;
    v101 = v13;
    v93 = v38;
    v94 = v31;
    v58 = v54;
    v112 = v54;
LABEL_6:
    v91 = a3;
    v88 = v57;
    v89 = v56;
    v59 = v56;
    v90 = v55;
    while (1)
    {
      v107 = v59;
      sub_1DF27AB94(v57, v113, type metadata accessor for AccessRecord);
      v60 = v111;
      sub_1DF27AB94(v55, v111, type metadata accessor for AccessRecord);
      v61 = *(v106 + 28);
      sub_1DF27AB94(&v60[v61], v13, type metadata accessor for AccessRecord.Timing);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v63 = *v109;
          v64 = v102;
          (*v109)(v102, 1, 1, v25);
          v65 = v13;
          v66 = v64;
          sub_1DF27AA08(v65, type metadata accessor for AccessRecord.Timing);
          goto LABEL_13;
        }

        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v67 = *v58;
        (*v58)(v38, &v13[*(v68 + 48)], v25);
        (*v103)(v13, v25);
      }

      else
      {
        v67 = *v58;
        (*v58)(v38, v13, v25);
      }

      v66 = v102;
      v67(v102, v38, v25);
      v63 = *v109;
      (*v109)(v66, 0, 1, v25);
LABEL_13:
      v69 = v100;
      sub_1DF27AA68(v66, v100, &qword_1ECE2F200, &qword_1DF27EFB0);
      v70 = *v108;
      if ((*v108)(v69, 1, v25) == 1)
      {
        sub_1DF27AAD0(v69, &qword_1ECE2F200, &qword_1DF27EFB0);
        sub_1DF27AA08(v111, type metadata accessor for AccessRecord);
        result = sub_1DF27AA08(v113, type metadata accessor for AccessRecord);
        v13 = v101;
        v58 = v112;
LABEL_5:
        a3 = v91 + 1;
        v55 = v90 + v86;
        v56 = v89 - 1;
        v57 = v88 + v86;
        if (v91 + 1 == v87)
        {
          return result;
        }

        goto LABEL_6;
      }

      v71 = v69;
      v72 = *v112;
      (*v112)(v104, v71, v25);
      sub_1DF27AB94(&v113[v61], v105, type metadata accessor for AccessRecord.Timing);
      v73 = swift_getEnumCaseMultiPayload();
      if (v73)
      {
        if (v73 == 1)
        {
          v74 = v99;
          v63(v99, 1, 1, v25);
          sub_1DF27AA08(v105, type metadata accessor for AccessRecord.Timing);
          goto LABEL_20;
        }

        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v77 = v105;
        v75 = v94;
        v72(v94, &v105[*(v76 + 48)], v25);
        (*v103)(v77, v25);
      }

      else
      {
        v75 = v94;
        v72(v94, v105, v25);
      }

      v74 = v99;
      v72(v99, v75, v25);
      v63(v74, 0, 1, v25);
      v38 = v93;
LABEL_20:
      if (v70(v74, 1, v25) == 1)
      {
        (*v103)(v104, v25);
        sub_1DF27AAD0(v74, &qword_1ECE2F200, &qword_1DF27EFB0);
        sub_1DF27AA08(v111, type metadata accessor for AccessRecord);
        result = sub_1DF27AA08(v113, type metadata accessor for AccessRecord);
        v13 = v101;
        v58 = v112;
        v78 = v107;
      }

      else
      {
        v79 = v92;
        v80 = v112;
        v72(v92, v74, v25);
        sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
        v81 = v104;
        v98 = sub_1DF27BAD8();
        v82 = *v103;
        (*v103)(v79, v25);
        v82(v81, v25);
        sub_1DF27AA08(v111, type metadata accessor for AccessRecord);
        v58 = v80;
        result = sub_1DF27AA08(v113, type metadata accessor for AccessRecord);
        v13 = v101;
        v78 = v107;
        if (v98)
        {
          goto LABEL_5;
        }
      }

      if (!v96)
      {
        __break(1u);
        return result;
      }

      v83 = v97;
      sub_1DF27AB30(v57, v97);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF27AB30(v83, v55);
      v55 += v95;
      v57 += v95;
      v84 = __CFADD__(v78, 1);
      v59 = v78 + 1;
      if (v84)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1DF276488(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), int64_t a4)
{
  v219 = a1;
  v262 = type metadata accessor for AccessRecord.Timing(0);
  v6 = *(*(v262 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v262, v7);
  v256 = &v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v259 = &v216 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v234 = &v216 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v239 = &v216 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v249 = &v216 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v216 - v25;
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v216 - v29;
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v224 = &v216 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v216 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v216 - v39;
  v41 = sub_1DF27BA98();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v45 = MEMORY[0x1EEE9AC00](v41, v44);
  v248 = &v216 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v243 = &v216 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v251 = &v216 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v255 = &v216 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v223 = &v216 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v220 = &v216 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  v227 = &v216 - v64;
  MEMORY[0x1EEE9AC00](v63, v65);
  v233 = &v216 - v66;
  v253 = type metadata accessor for AccessRecord(0);
  v237 = *(v253 - 8);
  v67 = *(v237 + 64);
  v69 = MEMORY[0x1EEE9AC00](v253, v68);
  v225 = &v216 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v247 = &v216 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v258 = &v216 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75, v77);
  v263 = &v216 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78, v80);
  v83 = &v216 - v82;
  v85 = MEMORY[0x1EEE9AC00](v81, v84);
  v242 = &v216 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v216 = &v216 - v89;
  result = MEMORY[0x1EEE9AC00](v88, v90);
  v217 = &v216 - v92;
  v238 = a3;
  if (a3[1] < 1)
  {
    v95 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v94 = *v219;
    if (!*v219)
    {
      goto LABEL_175;
    }

    v42 = v95;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v241;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v42;
    }

    else
    {
LABEL_169:
      result = sub_1DF278EC4(v42);
    }

    v265 = result;
    v42 = *(result + 16);
    if (v42 >= 2)
    {
      while (*v238)
      {
        v212 = *(result + 16 * v42);
        v213 = result;
        v214 = *(result + 16 * (v42 - 1) + 40);
        sub_1DF277C60(*v238 + *(v237 + 72) * v212, *v238 + *(v237 + 72) * *(result + 16 * (v42 - 1) + 32), *v238 + *(v237 + 72) * v214, v94);
        if (a4)
        {
        }

        if (v214 < v212)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v213 = sub_1DF278EC4(v213);
        }

        if (v42 - 2 >= *(v213 + 2))
        {
          goto LABEL_163;
        }

        v215 = &v213[16 * v42];
        *v215 = v212;
        *(v215 + 1) = v214;
        v265 = v213;
        sub_1DF278E38(v42 - 1);
        result = v265;
        v42 = *(v265 + 16);
        if (v42 <= 1)
        {
        }
      }

      goto LABEL_173;
    }
  }

  v93 = a3[1];
  v94 = 0;
  v264 = v42 + 32;
  v254 = (v42 + 8);
  v260 = (v42 + 48);
  v261 = (v42 + 56);
  v95 = MEMORY[0x1E69E7CC0];
  v218 = a4;
  v252 = v26;
  v250 = v30;
  v232 = v37;
  v231 = v40;
  v96 = v253;
  v235 = v83;
  v97 = v93;
  while (1)
  {
    v244 = v264 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v226 = v95;
    v221 = v94;
    if (v94 + 1 >= v97)
    {
      v97 = v94 + 1;
      goto LABEL_42;
    }

    v98 = *v238;
    v42 = *(v237 + 72);
    v99 = *v238 + v42 * (v94 + 1);
    v246 = type metadata accessor for AccessRecord;
    v257 = v99;
    v100 = v217;
    sub_1DF27AB94(v99, v217, type metadata accessor for AccessRecord);
    v245 = v98;
    v101 = v98 + v42 * v94;
    v102 = v216;
    sub_1DF27AB94(v101, v216, v246);
    v103 = v241;
    LODWORD(v236) = sub_1DF274598(v100, v102);
    if (v103)
    {
      sub_1DF27AA08(v102, type metadata accessor for AccessRecord);
      sub_1DF27AA08(v217, type metadata accessor for AccessRecord);
    }

    v241 = 0;
    sub_1DF27AA08(v102, type metadata accessor for AccessRecord);
    result = sub_1DF27AA08(v217, type metadata accessor for AccessRecord);
    v104 = v94 + 2;
    v105 = v245 + v42 * (v94 + 2);
    v240 = v97;
    v245 = v42;
    v94 = v257;
    while (v97 != v104)
    {
      sub_1DF27AB94(v105, v242, type metadata accessor for AccessRecord);
      v257 = v94;
      sub_1DF27AB94(v94, v83, type metadata accessor for AccessRecord);
      v109 = *(v96 + 28);
      sub_1DF27AB94(&v83[v109], v239, type metadata accessor for AccessRecord.Timing);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v111 = v232;
          v246 = *v261;
          (v246)(v232, 1, 1, v41);
          sub_1DF27AA08(v239, type metadata accessor for AccessRecord.Timing);
          goto LABEL_16;
        }

        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v112 = *v264;
        v115 = v239;
        v116 = v227;
        (*v264)(v227, v239 + *(v114 + 48), v41);
        v117 = v115;
        v113 = v116;
        (*v254)(v117, v41);
      }

      else
      {
        v112 = *v264;
        v113 = v227;
        (*v264)(v227, v239, v41);
      }

      v111 = v232;
      v112(v232, v113, v41);
      v246 = *v261;
      (v246)(v111, 0, 1, v41);
LABEL_16:
      v118 = v231;
      sub_1DF27AA68(v111, v231, &qword_1ECE2F200, &qword_1DF27EFB0);
      v119 = *v260;
      if ((*v260)(v118, 1, v41) != 1)
      {
        v120 = *v264;
        (*v264)(v233, v118, v41);
        sub_1DF27AB94(v242 + v109, v234, type metadata accessor for AccessRecord.Timing);
        v121 = swift_getEnumCaseMultiPayload();
        if (v121)
        {
          v122 = v223;
          if (v121 == 1)
          {
            v123 = v224;
            (v246)(v224, 1, 1, v41);
            sub_1DF27AA08(v234, type metadata accessor for AccessRecord.Timing);
            goto LABEL_23;
          }

          v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
          v125 = v234;
          v120(v122, v234 + *(v124 + 48), v41);
          (*v254)(v125, v41);
        }

        else
        {
          v122 = v223;
          v120(v223, v234, v41);
        }

        v123 = v224;
        v120(v224, v122, v41);
        (v246)(v123, 0, 1, v41);
LABEL_23:
        if (v119(v123, 1, v41) == 1)
        {
          (*v254)(v233, v41);
          sub_1DF27AAD0(v123, &qword_1ECE2F200, &qword_1DF27EFB0);
          v106 = 0;
        }

        else
        {
          v126 = v220;
          v120(v220, v123, v41);
          sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
          v127 = v233;
          v106 = sub_1DF27BAD8();
          v128 = *v254;
          (*v254)(v126, v41);
          v128(v127, v41);
        }

        goto LABEL_8;
      }

      sub_1DF27AAD0(v118, &qword_1ECE2F200, &qword_1DF27EFB0);
      v106 = 1;
LABEL_8:
      v83 = v235;
      v97 = v240;
      v107 = v257;
      sub_1DF27AA08(v235, type metadata accessor for AccessRecord);
      result = sub_1DF27AA08(v242, type metadata accessor for AccessRecord);
      v108 = v236 ^ v106;
      ++v104;
      v42 = v245;
      v105 += v245;
      v94 = v107 + v245;
      v96 = v253;
      if ((v108 & 1) == 0)
      {
        v97 = v104 - 1;
        break;
      }
    }

    a4 = v218;
    if ((v236 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (v97 < v221)
    {
      goto LABEL_168;
    }

    if (v221 < v97)
    {
      v94 = v42 * (v97 - 1);
      v129 = v97;
      v130 = v97 * v42;
      v240 = v129;
      v131 = v221;
      v132 = v221 * v42;
      do
      {
        if (v131 != --v129)
        {
          v133 = *v238;
          if (!*v238)
          {
            goto LABEL_172;
          }

          sub_1DF27AB30(v133 + v132, v225);
          if (v132 < v94 || v133 + v132 >= v133 + v130)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v132 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1DF27AB30(v225, v133 + v94);
          v26 = v252;
          v42 = v245;
        }

        ++v131;
        v94 -= v42;
        v130 -= v42;
        v132 += v42;
      }

      while (v131 < v129);
      v96 = v253;
      v83 = v235;
      v97 = v240;
    }

LABEL_42:
    v134 = v238[1];
    if (v97 >= v134)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v97, v221))
    {
      goto LABEL_165;
    }

    if (v97 - v221 >= a4)
    {
LABEL_52:
      v94 = v97;
      goto LABEL_53;
    }

    v135 = v221 + a4;
    if (__OFADD__(v221, a4))
    {
      goto LABEL_166;
    }

    a4 = v221;
    if (v135 >= v134)
    {
      v94 = v238[1];
    }

    else
    {
      v94 = v135;
    }

    if (v94 < v221)
    {
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    if (v97 == v94)
    {
      v94 = v97;
      goto LABEL_54;
    }

    v182 = *v238;
    v183 = *(v237 + 72);
    v184 = *v238 + v183 * (v97 - 1);
    v245 = -v183;
    v246 = v182;
    v185 = v221 - v97;
    v222 = v183;
    v186 = v182 + v97 * v183;
    v187 = v251;
    v228 = v94;
LABEL_108:
    v240 = v97;
    v229 = v186;
    v188 = v186;
    v230 = v185;
    v42 = v185;
    v236 = v184;
    v189 = v184;
LABEL_109:
    v257 = v42;
    sub_1DF27AB94(v188, v263, type metadata accessor for AccessRecord);
    v190 = v258;
    sub_1DF27AB94(v189, v258, type metadata accessor for AccessRecord);
    v191 = *(v96 + 28);
    sub_1DF27AB94(v190 + v191, v259, type metadata accessor for AccessRecord.Timing);
    v192 = swift_getEnumCaseMultiPayload();
    if (v192)
    {
      if (v192 == 1)
      {
        v193 = *v261;
        (*v261)(v26, 1, 1, v41);
        sub_1DF27AA08(v259, type metadata accessor for AccessRecord.Timing);
        goto LABEL_115;
      }

      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
      v194 = *v264;
      v196 = v259;
      (*v264)(v187, v259 + *(v195 + 48), v41);
      (*v254)(v196, v41);
    }

    else
    {
      v194 = *v264;
      (*v264)(v187, v259, v41);
    }

    v194(v26, v187, v41);
    v193 = *v261;
    (*v261)(v26, 0, 1, v41);
LABEL_115:
    v197 = v250;
    sub_1DF27AA68(v26, v250, &qword_1ECE2F200, &qword_1DF27EFB0);
    v198 = *v260;
    if ((*v260)(v197, 1, v41) != 1)
    {
      break;
    }

    sub_1DF27AAD0(v197, &qword_1ECE2F200, &qword_1DF27EFB0);
    v42 = type metadata accessor for AccessRecord;
    sub_1DF27AA08(v258, type metadata accessor for AccessRecord);
    sub_1DF27AA08(v263, type metadata accessor for AccessRecord);
    v187 = v251;
    v96 = v253;
LABEL_107:
    v97 = v240 + 1;
    v184 = v236 + v222;
    v185 = v230 - 1;
    v186 = &v229[v222];
    v94 = v228;
    if (v240 + 1 != v228)
    {
      goto LABEL_108;
    }

    v83 = v235;
LABEL_53:
    a4 = v221;
LABEL_54:
    if (v94 < a4)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v228 = v94;
    if (result)
    {
      v95 = v226;
    }

    else
    {
      result = sub_1DF2754B8(0, *(v226 + 2) + 1, 1, v226);
      v95 = result;
    }

    v94 = *(v95 + 2);
    v136 = *(v95 + 3);
    v42 = v94 + 1;
    if (v94 >= v136 >> 1)
    {
      result = sub_1DF2754B8((v136 > 1), v94 + 1, 1, v95);
      v95 = result;
    }

    *(v95 + 2) = v42;
    v137 = &v95[16 * v94];
    v138 = v228;
    *(v137 + 4) = a4;
    *(v137 + 5) = v138;
    v139 = *v219;
    if (!*v219)
    {
      goto LABEL_174;
    }

    if (v94)
    {
      while (2)
      {
        a4 = v42 - 1;
        if (v42 >= 4)
        {
          v144 = &v95[16 * v42 + 32];
          v145 = *(v144 - 64);
          v146 = *(v144 - 56);
          v150 = __OFSUB__(v146, v145);
          v147 = v146 - v145;
          if (v150)
          {
            goto LABEL_151;
          }

          v149 = *(v144 - 48);
          v148 = *(v144 - 40);
          v150 = __OFSUB__(v148, v149);
          v142 = v148 - v149;
          v143 = v150;
          if (v150)
          {
            goto LABEL_152;
          }

          v151 = &v95[16 * v42];
          v153 = *v151;
          v152 = *(v151 + 1);
          v150 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v150)
          {
            goto LABEL_154;
          }

          v150 = __OFADD__(v142, v154);
          v155 = v142 + v154;
          if (v150)
          {
            goto LABEL_157;
          }

          if (v155 >= v147)
          {
            v173 = &v95[16 * a4 + 32];
            v175 = *v173;
            v174 = *(v173 + 1);
            v150 = __OFSUB__(v174, v175);
            v176 = v174 - v175;
            if (v150)
            {
              goto LABEL_161;
            }

            if (v142 < v176)
            {
              a4 = v42 - 2;
            }
          }

          else
          {
LABEL_74:
            if (v143)
            {
              goto LABEL_153;
            }

            v156 = &v95[16 * v42];
            v158 = *v156;
            v157 = *(v156 + 1);
            v159 = __OFSUB__(v157, v158);
            v160 = v157 - v158;
            v161 = v159;
            if (v159)
            {
              goto LABEL_156;
            }

            v162 = &v95[16 * a4 + 32];
            v164 = *v162;
            v163 = *(v162 + 1);
            v150 = __OFSUB__(v163, v164);
            v165 = v163 - v164;
            if (v150)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v160, v165))
            {
              goto LABEL_160;
            }

            if (v160 + v165 < v142)
            {
              goto LABEL_88;
            }

            if (v142 < v165)
            {
              a4 = v42 - 2;
            }
          }
        }

        else
        {
          if (v42 == 3)
          {
            v140 = *(v95 + 4);
            v141 = *(v95 + 5);
            v150 = __OFSUB__(v141, v140);
            v142 = v141 - v140;
            v143 = v150;
            goto LABEL_74;
          }

          v166 = &v95[16 * v42];
          v168 = *v166;
          v167 = *(v166 + 1);
          v150 = __OFSUB__(v167, v168);
          v160 = v167 - v168;
          v161 = v150;
LABEL_88:
          if (v161)
          {
            goto LABEL_155;
          }

          v169 = &v95[16 * a4];
          v171 = *(v169 + 4);
          v170 = *(v169 + 5);
          v150 = __OFSUB__(v170, v171);
          v172 = v170 - v171;
          if (v150)
          {
            goto LABEL_158;
          }

          if (v172 < v160)
          {
            break;
          }
        }

        v94 = a4 - 1;
        if (a4 - 1 >= v42)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!*v238)
        {
          goto LABEL_171;
        }

        v177 = v95;
        v42 = *&v95[16 * v94 + 32];
        v178 = *&v95[16 * a4 + 40];
        v179 = v241;
        sub_1DF277C60(*v238 + *(v237 + 72) * v42, *v238 + *(v237 + 72) * *&v95[16 * a4 + 32], *v238 + *(v237 + 72) * v178, v139);
        v241 = v179;
        if (v179)
        {
        }

        if (v178 < v42)
        {
          goto LABEL_149;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v180 = v177;
        }

        else
        {
          v180 = sub_1DF278EC4(v177);
        }

        v96 = v253;
        if (v94 >= *(v180 + 2))
        {
          goto LABEL_150;
        }

        v181 = &v180[16 * v94];
        *(v181 + 4) = v42;
        *(v181 + 5) = v178;
        v265 = v180;
        result = sub_1DF278E38(a4);
        v95 = v265;
        v42 = *(v265 + 16);
        if (v42 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v97 = v238[1];
    v94 = v228;
    a4 = v218;
    if (v228 >= v97)
    {
      goto LABEL_133;
    }
  }

  v199 = *v264;
  (*v264)(v255, v197, v41);
  sub_1DF27AB94(v263 + v191, v256, type metadata accessor for AccessRecord.Timing);
  v200 = swift_getEnumCaseMultiPayload();
  if (v200)
  {
    v201 = v248;
    if (v200 == 1)
    {
      v202 = v249;
      (v193)(v249, 1, 1, v41);
      sub_1DF27AA08(v256, type metadata accessor for AccessRecord.Timing);
      goto LABEL_122;
    }

    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v204 = v256;
    v199(v201, v256 + *(v203 + 48), v41);
    (*v254)(v204, v41);
  }

  else
  {
    v201 = v248;
    v199(v248, v256, v41);
  }

  v202 = v249;
  v199(v249, v201, v41);
  (v193)(v202, 0, 1, v41);
LABEL_122:
  if (v198(v202, 1, v41) == 1)
  {
    (*v254)(v255, v41);
    sub_1DF27AAD0(v202, &qword_1ECE2F200, &qword_1DF27EFB0);
    sub_1DF27AA08(v258, type metadata accessor for AccessRecord);
    result = sub_1DF27AA08(v263, type metadata accessor for AccessRecord);
    v187 = v251;
    v26 = v252;
    v96 = v253;
  }

  else
  {
    v205 = v243;
    v199(v243, v202, v41);
    sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
    v206 = v255;
    v42 = sub_1DF27BAD8();
    v207 = *v254;
    (*v254)(v205, v41);
    v207(v206, v41);
    sub_1DF27AA08(v258, type metadata accessor for AccessRecord);
    result = sub_1DF27AA08(v263, type metadata accessor for AccessRecord);
    v187 = v251;
    v26 = v252;
    v96 = v253;
    if (v42)
    {
      goto LABEL_107;
    }
  }

  v208 = v257;
  if (v246)
  {
    v209 = v247;
    sub_1DF27AB30(v188, v247);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF27AB30(v209, v189);
    v189 += v245;
    v188 += v245;
    v210 = __CFADD__(v208, 1);
    v42 = v208 + 1;
    if (v210)
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  return result;
}

uint64_t sub_1DF277C60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v163 = type metadata accessor for AccessRecord.Timing(0);
  v8 = *(*(v163 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v163, v9);
  v152 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v158 = (&v140 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v155 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v162 = (&v140 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v145 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v151 = &v140 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v149 = &v140 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v140 - v33;
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v154 = &v140 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v160 = &v140 - v39;
  v40 = sub_1DF27BA98();
  v141 = *(v40 - 8);
  v41 = *(v141 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v45 = &v140 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v43, v46);
  v143 = &v140 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v147 = &v140 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v148 = &v140 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53, v55);
  v58 = &v140 - v57;
  v60 = MEMORY[0x1EEE9AC00](v56, v59);
  v144 = &v140 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  v150 = &v140 - v64;
  MEMORY[0x1EEE9AC00](v63, v65);
  v153 = &v140 - v66;
  v167 = type metadata accessor for AccessRecord(0);
  v67 = *(*(v167 - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](v167, v68);
  v156 = &v140 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v159 = (&v140 - v73);
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v161 = (&v140 - v76);
  result = MEMORY[0x1EEE9AC00](v75, v77);
  v164 = &v140 - v79;
  v157 = *(v80 + 72);
  if (!v157)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (a2 - a1 == 0x8000000000000000 && v157 == -1)
  {
    goto LABEL_95;
  }

  v81 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v157 != -1)
  {
    v82 = (a2 - a1) / v157;
    v170 = a1;
    v169 = a4;
    if (v82 < v81 / v157)
    {
      v83 = v82 * v157;
      if (a4 < a1 || a1 + v83 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v156 = a4 + v83;
      v168 = a4 + v83;
      v152 = a3;
      v86 = v83 < 1 || a2 >= a3;
      v87 = v160;
      if (!v86)
      {
        v88 = (v141 + 32);
        v151 = (v141 + 8);
        v158 = (v141 + 48);
        v159 = (v141 + 56);
        v149 = (v141 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v148 = v58;
        v146 = v34;
        while (1)
        {
          sub_1DF27AB94(a2, v164, type metadata accessor for AccessRecord);
          v89 = v161;
          sub_1DF27AB94(a4, v161, type metadata accessor for AccessRecord);
          v90 = *(v167 + 28);
          sub_1DF27AB94(v89 + v90, v162, type metadata accessor for AccessRecord.Timing);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v165 = a4;
          v166 = a2;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v92 = *v159;
              v93 = v154;
              (*v159)(v154, 1, 1, v40);
              sub_1DF27AA08(v162, type metadata accessor for AccessRecord.Timing);
              goto LABEL_27;
            }

            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
            v94 = *v88;
            v97 = v162;
            v95 = v150;
            (*v88)(v150, v162 + *(v96 + 48), v40);
            (*v151)(v97, v40);
          }

          else
          {
            v94 = *v88;
            v95 = v150;
            (*v88)(v150, v162, v40);
          }

          v93 = v154;
          v94(v154, v95, v40);
          v92 = *v159;
          (*v159)(v93, 0, 1, v40);
          v87 = v160;
LABEL_27:
          sub_1DF27AA68(v93, v87, &qword_1ECE2F200, &qword_1DF27EFB0);
          v98 = *v158;
          if ((*v158)(v87, 1, v40) == 1)
          {
            sub_1DF27AAD0(v87, &qword_1ECE2F200, &qword_1DF27EFB0);
            sub_1DF27AA08(v161, type metadata accessor for AccessRecord);
            sub_1DF27AA08(v164, type metadata accessor for AccessRecord);
            a2 = v166;
            v99 = v157;
            goto LABEL_29;
          }

          v100 = v87;
          v101 = *v88;
          (*v88)(v153, v100, v40);
          sub_1DF27AB94(v164 + v90, v155, type metadata accessor for AccessRecord.Timing);
          v102 = swift_getEnumCaseMultiPayload();
          if (!v102)
          {
            v104 = v148;
            v101(v148, v155, v40);
LABEL_40:
            v103 = v146;
            v101(v146, v104, v40);
            v92(v103, 0, 1, v40);
            goto LABEL_41;
          }

          if (v102 != 1)
          {
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
            v106 = v155;
            v104 = v148;
            v101(v148, &v155[*(v105 + 48)], v40);
            (*v151)(v106, v40);
            goto LABEL_40;
          }

          v103 = v146;
          v92(v146, 1, 1, v40);
          sub_1DF27AA08(v155, type metadata accessor for AccessRecord.Timing);
LABEL_41:
          if (v98(v103, 1, v40) == 1)
          {
            (*v151)(v153, v40);
            sub_1DF27AAD0(v103, &qword_1ECE2F200, &qword_1DF27EFB0);
            sub_1DF27AA08(v161, type metadata accessor for AccessRecord);
            sub_1DF27AA08(v164, type metadata accessor for AccessRecord);
            a2 = v166;
            v99 = v157;
LABEL_44:
            a4 = v165;
            if (a1 < a2 || a1 >= a2 + v99)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v99;
            goto LABEL_50;
          }

          v107 = v144;
          v101(v144, v103, v40);
          sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
          v108 = v153;
          v109 = sub_1DF27BAD8();
          v110 = *v151;
          (*v151)(v107, v40);
          v110(v108, v40);
          sub_1DF27AA08(v161, type metadata accessor for AccessRecord);
          sub_1DF27AA08(v164, type metadata accessor for AccessRecord);
          a2 = v166;
          v99 = v157;
          if ((v109 & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_29:
          a4 = v165 + v99;
          if (a1 < v165 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v165)
          {
            swift_arrayInitWithTakeBackToFront();
            v169 = a4;
            goto LABEL_50;
          }

          v169 = a4;
LABEL_50:
          a1 += v99;
          v170 = a1;
          v87 = v160;
          if (a4 >= v156 || a2 >= v152)
          {
            goto LABEL_93;
          }
        }
      }

      goto LABEL_93;
    }

    v84 = v81 / v157 * v157;
    v85 = v157;
    if (a4 < a2 || a2 + v84 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v166 = a2;
    v111 = a4 + v84;
    if (v84 < 1)
    {
LABEL_92:
      v170 = v166;
      v168 = v111;
LABEL_93:
      sub_1DF278ED8(&v170, &v169, &v168);
      return 1;
    }

    v142 = v45;
    v112 = -v85;
    v155 = (v141 + 8);
    v160 = (v141 + 48);
    v161 = (v141 + 56);
    v146 = (v141 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v113 = a4 + v84;
    v153 = v112;
    v154 = a1;
    v165 = a4;
    v162 = (v141 + 32);
LABEL_56:
    v141 = v111;
    v114 = v166;
    v166 += v112;
    v157 = v114;
    while (1)
    {
      if (v114 <= a1)
      {
        v170 = v114;
        v168 = v141;
        goto LABEL_93;
      }

      v115 = a3;
      v150 = v111;
      v164 = &v112[v113];
      sub_1DF27AB94(&v112[v113], v159, type metadata accessor for AccessRecord);
      v116 = v156;
      sub_1DF27AB94(v166, v156, type metadata accessor for AccessRecord);
      v117 = *(v167 + 28);
      sub_1DF27AB94(v116 + v117, v158, type metadata accessor for AccessRecord.Timing);
      v118 = swift_getEnumCaseMultiPayload();
      if (v118)
      {
        if (v118 == 1)
        {
          v119 = v113;
          v120 = *v161;
          v121 = v151;
          (*v161)(v151, 1, 1, v40);
          sub_1DF27AA08(v158, type metadata accessor for AccessRecord.Timing);
          goto LABEL_66;
        }

        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v122 = *v162;
        v125 = v158;
        v123 = v147;
        (*v162)(v147, v158 + *(v124 + 48), v40);
        (*v155)(v125, v40);
      }

      else
      {
        v122 = *v162;
        v123 = v147;
        (*v162)(v147, v158, v40);
      }

      v121 = v151;
      v119 = v113;
      v122(v151, v123, v40);
      v120 = *v161;
      (*v161)(v121, 0, 1, v40);
LABEL_66:
      v126 = v149;
      sub_1DF27AA68(v121, v149, &qword_1ECE2F200, &qword_1DF27EFB0);
      v127 = *v160;
      if ((*v160)(v126, 1, v40) == 1)
      {
        sub_1DF27AAD0(v126, &qword_1ECE2F200, &qword_1DF27EFB0);
        v128 = 0;
        v113 = v119;
        v112 = v153;
        a1 = v154;
        goto LABEL_78;
      }

      v129 = v126;
      v130 = *v162;
      (*v162)(v148, v129, v40);
      sub_1DF27AB94(v159 + v117, v152, type metadata accessor for AccessRecord.Timing);
      v131 = swift_getEnumCaseMultiPayload();
      if (!v131)
      {
        v144 = v115;
        v133 = v142;
        v130(v142, v152, v40);
        v113 = v119;
LABEL_73:
        a1 = v154;
        v132 = v145;
        v130(v145, v133, v40);
        v120(v132, 0, 1, v40);
        v115 = v144;
        goto LABEL_74;
      }

      v113 = v119;
      if (v131 != 1)
      {
        v144 = v115;
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
        v135 = v152;
        v133 = v142;
        v130(v142, v152 + *(v134 + 48), v40);
        (*v155)(v135, v40);
        goto LABEL_73;
      }

      v132 = v145;
      v120(v145, 1, 1, v40);
      sub_1DF27AA08(v152, type metadata accessor for AccessRecord.Timing);
      a1 = v154;
LABEL_74:
      if (v127(v132, 1, v40) == 1)
      {
        (*v155)(v148, v40);
        sub_1DF27AAD0(v132, &qword_1ECE2F200, &qword_1DF27EFB0);
        v128 = 1;
      }

      else
      {
        v136 = v143;
        v130(v143, v132, v40);
        sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
        v137 = v148;
        v138 = sub_1DF27BAD8();
        v139 = *v155;
        (*v155)(v136, v40);
        v139(v137, v40);
        v128 = v138 ^ 1;
      }

      v112 = v153;
LABEL_78:
      v114 = v157;
      a3 = &v112[v115];
      sub_1DF27AA08(v156, type metadata accessor for AccessRecord);
      sub_1DF27AA08(v159, type metadata accessor for AccessRecord);
      if (v128)
      {
        if (v115 < v114 || a3 >= v114)
        {
          swift_arrayInitWithTakeFrontToBack();
          v111 = v150;
        }

        else
        {
          v111 = v150;
          if (v115 != v114)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v113 <= v165)
        {
          goto LABEL_92;
        }

        goto LABEL_56;
      }

      v111 = v164;
      if (v115 < v113 || a3 >= v113)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v115 != v113)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v113 = v111;
      if (v164 <= v165)
      {
        v166 = v114;
        goto LABEL_92;
      }
    }
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1DF278E38(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF278EC4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DF278ED8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AccessRecord(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t _s17PrivacyAccounting12AccessRecordV6TimingO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_1DF27BA98();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v65 = &v64 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v66 = &v64 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v64 - v19;
  v21 = type metadata accessor for AccessRecord.Timing(0);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F208, &qword_1DF27EFB8);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v39 = &v64 - v38;
  v40 = &v64 + *(v37 + 56) - v38;
  sub_1DF27AB94(a1, &v64 - v38, type metadata accessor for AccessRecord.Timing);
  sub_1DF27AB94(v69, v40, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1DF27AB94(v39, v33, type metadata accessor for AccessRecord.Timing);
    if (!swift_getEnumCaseMultiPayload())
    {
      v61 = v67;
      v60 = v68;
      (*(v67 + 32))(v20, v40, v68);
      v44 = sub_1DF27BA78();
      v62 = *(v61 + 8);
      v62(v20, v60);
      v62(v33, v60);
      goto LABEL_16;
    }

    (*(v67 + 8))(v33, v68);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1DF27AB94(v39, v30, type metadata accessor for AccessRecord.Timing);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v67;
      v42 = v68;
      (*(v67 + 32))(v17, v40, v68);
      v44 = sub_1DF27BA78();
      v45 = *(v43 + 8);
      v45(v17, v42);
      v45(v30, v42);
LABEL_16:
      sub_1DF27AA08(v39, type metadata accessor for AccessRecord.Timing);
      return v44 & 1;
    }

    (*(v67 + 8))(v30, v68);
    goto LABEL_13;
  }

  sub_1DF27AB94(v39, v26, type metadata accessor for AccessRecord.Timing);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v57 = *(v67 + 8);
    v58 = &v26[v46];
    v59 = v68;
    v57(v58, v68);
    v57(v26, v59);
LABEL_13:
    sub_1DF27AAD0(v39, &qword_1ECE2F208, &qword_1DF27EFB8);
    goto LABEL_14;
  }

  v48 = v66;
  v47 = v67;
  v49 = *(v67 + 32);
  v50 = v68;
  v49(v66, v40, v68);
  v51 = v65;
  v49(v65, &v26[v46], v50);
  v52 = &v40[v46];
  v53 = v64;
  v49(v64, v52, v50);
  v54 = sub_1DF27BA78();
  v55 = *(v47 + 8);
  v55(v26, v50);
  if (v54)
  {
    v56 = v51;
    v44 = sub_1DF27BA78();
    v55(v53, v50);
    v55(v56, v50);
    v55(v48, v50);
    goto LABEL_16;
  }

  v55(v53, v50);
  v55(v51, v50);
  v55(v48, v50);
  sub_1DF27AA08(v39, type metadata accessor for AccessRecord.Timing);
LABEL_14:
  v44 = 0;
  return v44 & 1;
}

unint64_t sub_1DF2795A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F228, &qword_1DF27EFD0);
    v3 = sub_1DF27BC78();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF27AC44(v4, &v13, &qword_1ECE2F230, &unk_1DF27EFD8);
      v5 = v13;
      v6 = v14;
      result = sub_1DF275388(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF27ACAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DF2796D0(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = sub_1DF27B9F8();
  v62 = *(v64 - 8);
  v3 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v64, v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F210, &qword_1DF27EFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for AccessRecord(0);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v55 = &v55 - v18;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F010, &qword_1DF27ECB8);
  v19 = *(*(v59 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v59, v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v55 - v25;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F018, &qword_1DF27ECC0);
  v27 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57, v28);
  v58 = &v55 - v29;
  v30 = sub_1DF27BA98();
  sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
  v31 = a2;
  v32 = v63;
  if (sub_1DF27BAD8())
  {
    LODWORD(v66[0]) = 22;
    sub_1DF2795A0(MEMORY[0x1E69E7CC0]);
    sub_1DF27ABFC(&qword_1ECE2F220, MEMORY[0x1E6967EB8]);
    v33 = v61;
    v34 = v64;
    sub_1DF27BA08();
    sub_1DF27B9E8();
    (*(v62 + 1))(v33, v34);
    return swift_willThrow();
  }

  else
  {
    result = sub_1DF27BAF8();
    if (result)
    {
      v61 = v16;
      v62 = v10;
      v64 = v11;
      v36 = *(v30 - 8);
      v37 = v36[2];
      v37(v26, v32, v30);
      v38 = v59;
      v37(&v26[*(v59 + 48)], v31, v30);
      sub_1DF27AC44(v26, v23, &qword_1ECE2F010, &qword_1DF27ECB8);
      v63 = *(v38 + 48);
      v39 = v36[4];
      v40 = v58;
      v39(v58, v23, v30);
      v41 = v36[1];
      v41(&v23[v63], v30);
      sub_1DF27AA68(v26, v23, &qword_1ECE2F010, &qword_1DF27ECB8);
      v39((v40 + *(v57 + 36)), &v23[*(v38 + 48)], v30);
      v41(v23, v30);
      v42 = v60;
      static AccessHistory<>.forReport(in:)(v40, &v70);
      result = sub_1DF27AAD0(v40, &qword_1ECE2F018, &qword_1DF27ECC0);
      if (!v42)
      {
        v63 = 0;
        v43 = v70;
        v69 = MEMORY[0x1E69E7CC0];
        sub_1DF27BC38();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F000, &qword_1DF27ECB0);
        v67 = v44;
        v68 = sub_1DF2724BC();
        v66[0] = v43;
        v66[1] = 0;
        v60 = v43;

        __swift_mutable_project_boxed_opaque_existential_1(v66, v44);
        v45 = v62;
        sub_1DF27BBE8();
        v46 = (v56 + 48);
        v47 = (*(v56 + 48))(v45, 1, v64);
        v48 = v61;
        v49 = v55;
        if (v47 != 1)
        {
          do
          {
            sub_1DF27AB30(v45, v49);
            sub_1DF27AB94(v49, v48, type metadata accessor for AccessRecord);
            v50 = _s18AccessRecordObjectCMa(0);
            v51 = objc_allocWithZone(v50);
            sub_1DF27AB94(v48, v51 + OBJC_IVAR____TtCFE17PrivacyAccountingCSo14PAAccessReader23_accessRecordsForReportFzT4fromV10Foundation4Date2toS2__CSo12NSEnumeratorL_18AccessRecordObject_record, type metadata accessor for AccessRecord);
            v65.receiver = v51;
            v65.super_class = v50;
            objc_msgSendSuper2(&v65, sel_init);
            sub_1DF27AA08(v48, type metadata accessor for AccessRecord);
            sub_1DF27AA08(v49, type metadata accessor for AccessRecord);
            sub_1DF27BC18();
            v52 = *(v69 + 16);
            sub_1DF27BC48();
            sub_1DF27BC58();
            sub_1DF27BC28();
            __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
            sub_1DF27BBE8();
          }

          while ((*v46)(v45, 1, v64) != 1);
        }

        sub_1DF27AAD0(v66, &qword_1ECE2F218, &qword_1DF27EFC8);
        sub_1DF27AAD0(v45, &qword_1ECE2F210, &qword_1DF27EFC0);
        _s18AccessRecordObjectCMa(0);
        v53 = sub_1DF27BB98();

        v54 = [v53 objectEnumerator];

        return v54;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s17PrivacyAccounting20ReverseChronologicalO15isOrderedBeforeySbAA12AccessRecordV6TimingO_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v44[1] = a1;
  v3 = type metadata accessor for AccessRecord.Timing(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F200, &qword_1DF27EFB0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v44 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v44 - v19;
  v21 = sub_1DF27BA98();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v44[0] = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = v44 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = v44 - v32;
  sub_1DF27AB94(a2, v7, type metadata accessor for AccessRecord.Timing);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v22 + 56))(v17, 1, 1, v21);
      sub_1DF27AA08(v7, type metadata accessor for AccessRecord.Timing);
      goto LABEL_7;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE2F1F8, &qword_1DF27EFA8);
    v35 = *(v22 + 32);
    v35(v30, &v7[*(v36 + 48)], v21);
    (*(v22 + 8))(v7, v21);
  }

  else
  {
    v35 = *(v22 + 32);
    v35(v30, v7, v21);
  }

  v35(v17, v30, v21);
  (*(v22 + 56))(v17, 0, 1, v21);
LABEL_7:
  sub_1DF27AA68(v17, v20, &qword_1ECE2F200, &qword_1DF27EFB0);
  v37 = *(v22 + 48);
  if (v37(v20, 1, v21) == 1)
  {
    sub_1DF27AAD0(v20, &qword_1ECE2F200, &qword_1DF27EFB0);
    v38 = 0;
  }

  else
  {
    v39 = *(v22 + 32);
    v39(v33, v20, v21);
    sub_1DF2739CC(v13);
    if (v37(v13, 1, v21) == 1)
    {
      (*(v22 + 8))(v33, v21);
      sub_1DF27AAD0(v13, &qword_1ECE2F200, &qword_1DF27EFB0);
      v38 = 1;
    }

    else
    {
      v40 = v44[0];
      v39(v44[0], v13, v21);
      sub_1DF27ABFC(&qword_1ECE2F020, MEMORY[0x1E6969530]);
      v41 = sub_1DF27BAD8();
      v42 = *(v22 + 8);
      v42(v40, v21);
      v42(v33, v21);
      v38 = v41 ^ 1;
    }
  }

  return v38 & 1;
}

unint64_t sub_1DF27A2E4()
{
  result = qword_1ECE2F028[0];
  if (!qword_1ECE2F028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE2F028);
  }

  return result;
}

uint64_t sub_1DF27A338()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF27A38C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF27A3D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF27A428()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF27A478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF27A4C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF27A548()
{
  type metadata accessor for PAAccessCategory();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessRecord.Timing(319);
    if (v1 <= 0x3F)
    {
      sub_1DF27A5FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF27A5FC()
{
  if (!qword_1ECE2F148)
  {
    v0 = sub_1DF27BBD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE2F148);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF27A658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF27A6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF27A744()
{
  sub_1DF27BA98();
  if (v0 <= 0x3F)
  {
    sub_1DF27A7B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DF27A7B8()
{
  if (!qword_1ECE2F168)
  {
    sub_1DF27BA98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE2F168);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReverseChronological(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ReverseChronological(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DF27A940(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF27A978()
{
  result = type metadata accessor for AccessRecord(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF27AA08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF27AA68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF27AAD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DF27AB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF27AB94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF27ABFC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF27AC44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1DF27ACAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void implicitIdentityForEntitlementDictionary_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF25B000, v0, v1, "BUG IN %{public}@! Encountered malformed implicitly assumed identity (app store app version) entitlement. The value is not a string %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void PAAuthenticatedClientIdentity_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve entitlements for process.  Got %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void PAAuthenticatedClientIdentityWithClientProperties_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = tcc_object_copy_description();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DF25B000, v1, v2, "BUG IN %{public}@! They attempted to provide a runtime-determined identity (%{public}@) while using the assumed-identity entitlement", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void PAAuthenticatedClientIdentityWithClientProperties_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF25B000, v0, v1, "BUG IN %{public}@! They have a malformed explicitly assumed identity entitlement. The value is not an array: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void PAAuthenticatedClientIdentityWithClientProperties_cold_3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = tcc_object_copy_description();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DF25B000, v1, v2, "BUG IN %@! They are attempting to assume an identity that they aren't entitled to: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

void __lookupTCCIdentity_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_ERROR, "TCC attribution for client failed with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void implicitIdentityEntryToTCCIdentity_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF25B000, v0, v1, "BUG IN %{public}@! Encountered malformed implicitly assumed identity entitlement. The value is not a dictionary describing the identity: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void implicitIdentityEntryToTCCIdentity_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DF25B000, v0, v1, "BUG IN %{public}@! Encountered malformed implicitly assumed identity entitlement. Bad identity value: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void implicitIdentityEntryToTCCIdentity_cold_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a2 objectForKeyedSubscript:@"type"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1DF25B000, v3, v4, "BUG IN %{public}@! Encountered malformed implicitly assumed identity entitlement. Bad identity type: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __PADefaultBundleRecordRetriever_block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1DF25B000, log, OS_LOG_TYPE_ERROR, "Failed to fetch LS record for application=%{public}@ with error=%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __PADefaultBundleRecordRetriever_block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF25B000, a2, OS_LOG_TYPE_DEBUG, "Skipping LS lookup for application=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}