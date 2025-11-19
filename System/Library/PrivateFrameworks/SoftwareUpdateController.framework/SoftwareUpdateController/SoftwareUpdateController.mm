__CFString *SUControllerStringForManagerState(uint64_t a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CA8530[a1 - 1];
  }
}

void SUControllerIPCEncodeObject(uint64_t a1, void *a2, const char *a3, void *a4)
{
  xdict = a2;
  v7 = a4;
  if (xdict && a3 && v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v8 encodeObject:v7 forKey:*MEMORY[0x277CCA308]];
    v9 = [v8 encodedData];
    v10 = v9;
    if (v9)
    {
      xpc_dictionary_set_data(xdict, a3, [v9 bytes], objc_msgSend(v9, "length"));
    }

    else
    {
      v14 = +[SUControllerLogger sharedLogger];
      [v14 logAtLevel:0 label:"SUControllerIPCEncodeObject" format:@"{SUControllerIPCEncodeObject} failed to encode using archiver"];
    }
  }

  else
  {
    v11 = +[SUControllerLogger sharedLogger];
    v8 = v11;
    v12 = "MISSING";
    if (a3)
    {
      v12 = a3;
    }

    v13 = @"PROVIDED";
    if (!v7)
    {
      v13 = @"MISSING";
    }

    [v11 logAtLevel:0 label:"SUControllerIPCEncodeObject" format:{@"{SUControllerIPCEncodeObject} missing required parameter(s): message:PROVIDED(%s), key:%s, object:%@", a1, v12, v13}];
  }
}

id _SUControllerIPCDecodeObjectForKey(uint64_t a1, xpc_object_t xdict, char *key, uint64_t a4, int a5)
{
  if (!xdict || !key)
  {
    v15 = +[SUControllerLogger sharedLogger];
    v16 = v15;
    v17 = "MISSING";
    if (key)
    {
      v17 = key;
    }

    [v15 logAtLevel:0 label:"_SUControllerIPCDecodeObjectForKey" format:{@"{_SUControllerIPCDecodeObjectForKey} missing required parameter(s): message:PROVIDED(%s), key:%s", a1, v17}];

    goto LABEL_8;
  }

  length = 0;
  data = xpc_dictionary_get_data(xdict, key, &length);
  if (!data)
  {
    if (a5)
    {
      v13 = +[SUControllerLogger sharedLogger];
      [v13 logAtLevel:0 label:"_SUControllerIPCDecodeObjectForKey" format:{@"{SUControllerIPCDecodeObjectForKey} unable to get data for key:%s", key}];
      v14 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_12;
  }

  v10 = data;
  v11 = objc_alloc(MEMORY[0x277CCAAC8]);
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:length];
  v13 = [v11 initForReadingFromData:v12 error:0];

  v14 = [v13 decodeObjectOfClass:a4 forKey:*MEMORY[0x277CCA308]];
  [v13 finishDecoding];
LABEL_11:

LABEL_12:

  return v14;
}

BOOL SUControllerIPCDecodeBooleanForKey(uint64_t a1, xpc_object_t xdict, char *key)
{
  if (xdict && key)
  {

    return xpc_dictionary_get_BOOL(xdict, key);
  }

  else
  {
    v6 = +[SUControllerLogger sharedLogger];
    v7 = v6;
    v8 = "MISSING";
    if (key)
    {
      v8 = key;
    }

    [v6 logAtLevel:0 label:"SUControllerIPCDecodeBooleanForKey" format:{@"{SUControllerIPCDecodeBooleanForKey} missing required parameter(s): message:PROVIDED(%s), key:%s", a1, v8}];

    return 0;
  }
}

id SUControllerIPCDecodeStringForKey(uint64_t a1, xpc_object_t xdict, char *key)
{
  if (xdict && key)
  {
    string = xpc_dictionary_get_string(xdict, key);
    if (string)
    {
      string = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    }
  }

  else
  {
    v6 = +[SUControllerLogger sharedLogger];
    v7 = v6;
    v8 = "MISSING";
    if (key)
    {
      v8 = key;
    }

    [v6 logAtLevel:0 label:"SUControllerIPCDecodeStringForKey" format:{@"{SUControllerIPCDecodeStringForKey} missing required parameter(s): message:PROVIDED(%s), key:%s", a1, v8}];

    string = 0;
  }

  return string;
}

BOOL SUControllerIPCClientIsEntitled()
{
  error = 0;
  v13 = 0u;
  v14 = 0u;
  xpc_connection_get_audit_token();
  v0 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v1 = SecTaskCreateWithAuditToken(v0, &token);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.allow-SUController", &error);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFBooleanGetTypeID())
      {
        v6 = CFBooleanGetValue(v4) != 0;
      }

      else
      {
        v9 = +[SUControllerLogger sharedLogger];
        [v9 logAtLevel:0 label:"SUControllerIPCClientIsEntitled" format:@"entitlement has wrong type"];

        v6 = 0;
      }

      CFRelease(v2);
      v2 = v4;
    }

    else
    {
      v7 = error;
      v8 = +[SUControllerLogger sharedLogger];
      if (v7)
      {
        [v8 logAtLevel:0 label:"SUControllerIPCClientIsEntitled" format:{@"unable to look up client entitlement: %ld", CFErrorGetCode(error)}];
      }

      else
      {
        [v8 logAtLevel:0 label:"SUControllerIPCClientIsEntitled" format:{@"client is not entitled", v11}];
      }

      v6 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v6 = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  return v6;
}

id SUControllerIPCDictionaryToXPC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __SUControllerIPCDictionaryToXPC_block_invoke;
  v9[3] = &unk_279CA85C8;
  v7 = v6;
  v10 = v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __SUControllerIPCDictionaryToXPC_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_string_create([v7 UTF8String]);
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_data_create([v7 bytes], objc_msgSend(v7, "length"));
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = xpc_int64_create([v7 integerValue]);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:
  v10 = *(a1 + 32);
  v11 = v12;
  xpc_dictionary_set_value(v10, [v12 UTF8String], v9);
  *a4 = 0;
}

id SUControllerIPCXPCToDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && MEMORY[0x26D667FF0](v1) == MEMORY[0x277D86468])
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __SUControllerIPCXPCToDictionary_block_invoke;
    applier[3] = &unk_279CA85F0;
    v3 = v4;
    v7 = v3;
    xpc_dictionary_apply(v2, applier);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __SUControllerIPCXPCToDictionary_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x26D667FF0]();
  if (v6 == MEMORY[0x277D864C0])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  }

  else if (v6 == MEMORY[0x277D86458])
  {
    v8 = MEMORY[0x277CBEA90];
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    v7 = [v8 dataWithBytes:bytes_ptr length:xpc_data_get_length(v5)];
  }

  else
  {
    if (v6 != MEMORY[0x277D86498])
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(v5)];
  }

  v10 = v7;
  if (v7)
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    [v11 setObject:v10 forKey:v12];
  }

LABEL_9:

  return 1;
}

id SUControllerArchive(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v2 encodeObject:v1 forKey:*MEMORY[0x277CCA308]];
    v3 = [v2 encodedData];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  return v3;
}

id SUControllerUnarchive(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKey:v6];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = v7;
  v9 = [v5 objectForKey:v6];
  v10 = [MEMORY[0x277CBEB68] null];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277CCAAC8]);
    v14 = [v5 objectForKey:v6];
    v15 = [v13 initForReadingFromData:v14 error:0];

    v12 = [v15 decodeObjectOfClass:a3 forKey:*MEMORY[0x277CCA308]];
    [v15 finishDecoding];
  }

  else
  {
LABEL_3:
    v12 = 0;
  }

  return v12;
}

id SUControllerError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = SUControllerErrorUserInfoV(a1, a2, 0, a3, a4, &a9);

  return v9;
}

id SUControllerErrorUserInfoV(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    v15 = [v12 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = v15;
  if (v14)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:a6];
    if (v17)
    {
      [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCA450]];
    }
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a2 userInfo:v16];

  return v18;
}

id SUControllerErrorUserInfo(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = SUControllerErrorUserInfoV(a1, a2, a3, a4, a5, &a9);

  return v9;
}

uint64_t doStringsMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToString:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t updateRequiresDocAsset()
{
  v0 = [MEMORY[0x277D64418] sharedDevice];
  v1 = [v0 deviceClass];
  v2 = [v1 isEqualToString:@"AppleTV"];

  if (v2)
  {
    return 0;
  }

  else
  {
    return os_variant_is_darwinos() ^ 1;
  }
}

void sub_26AB20524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB20730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26AB208F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}