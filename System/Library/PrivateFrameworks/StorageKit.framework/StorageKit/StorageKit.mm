uint64_t sub_26BBB9600()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26BBBD1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BBBE244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_26BBBE40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BBBEA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BBBEBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BBBF728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BBC04E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_sync_exit(v33);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id SKHelperConnectionInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287CA3DC0];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_eraseWithEraser_reply_ argumentIndex:0 ofReply:0];

  v14 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v14 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_eraseWithEraser_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id SKHelperClientInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287CA1788];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v1 setWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_requestWithUUID_didCompleteWithResult_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t schemeToFormat(uint64_t a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 16;
  }

  if (a1 == 1)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t diskTypeToScheme(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kSKDiskTypeGPTWholeDisk[0]])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:kSKDiskTypeMBRWholeDisk[0]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:kSKDiskTypeAPMWholeDisk[0]])
  {
    v2 = 1;
  }

  else
  {
    v2 = 512;
  }

  return v2;
}

uint64_t SKFormatToDIFormat(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_26BBE9208[a1 - 1];
  }
}

void sub_26BBC7530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getPersonalityDict(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:kExtensionAttributesKey];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:kExtensionAttributesKey];

    v4 = v6;
  }

  v7 = [v4 objectForKeyedSubscript:@"FSPersonalities"];
  v8 = [v7 objectForKey:v3];

  return v8;
}

uint64_t getCaseSensitive(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"FSfileObjectsAreCaseSensitive"];
  if (isValidNSNumber(v4))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = [v3 isEqualToString:@"NTFS"];
  }

  v6 = v5;

  return v6;
}

void sub_26BBCA8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BBCE328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BBCF28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    _Block_object_dispose(&a22, 8);
    _Block_object_dispose(&a28, 8);
    objc_begin_catch(exception_object);
    JUMPOUT(0x26BBCF22CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_26BBCFE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = +[SKBaseManager sharedManager];
    [v11 logEvent:@"com.apple.StorageKit.log.fault" eventPayloadBuilder:&__block_literal_global_4];

    v12 = SKGetOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v10;
      _os_log_impl(&dword_26BBB8000, v12, OS_LOG_TYPE_FAULT, "Unhandled exception during attach: %@", &a9, 0xCu);
    }

    [SKError nilWithSKErrorCode:251 error:v9];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x26BBCFE34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __eraseDisk_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEncrypted])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 type];
    v6 = [*(a1 + 32) fsFormat];
    v7 = [v6 type];
    v4 = [v5 isEqualToString:v7];
  }

  return v4;
}

id __eraseDisk_block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"faultCode";
  v0 = base64Encode("SKDiskImage.m", 47);
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void __eraseDisk_block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = SKGetOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_DEFAULT, "Erase on %@ done", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id base64Encode(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", a1, a2];
  v3 = [v2 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

id SKGetOSLog()
{
  if (SKGetOSLog_onceToken != -1)
  {
    SKGetOSLog_cold_1();
  }

  if (logToSys)
  {
    v0 = &osLogInstallObject;
  }

  else
  {
    v0 = &osLogObject;
  }

  v1 = *v0;

  return v1;
}

uint64_t __SKGetOSLog_block_invoke()
{
  v0 = os_log_create("com.apple.storagekit", "general");
  v1 = osLogObject;
  osLogObject = v0;

  osLogInstallObject = os_log_create("com.apple.storagekit", "storagekit-install");

  return MEMORY[0x2821F96F8]();
}

void SKLogSetLogsToConsole()
{
  v0 = SKGetOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26BBB8000, v0, OS_LOG_TYPE_DEFAULT, "SKLogSetLogsToConsole/Std is deprecated. Please remove this call", v1, 2u);
  }
}

void SKLogSetLogsToStd()
{
  v0 = SKGetOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26BBB8000, v0, OS_LOG_TYPE_DEFAULT, "SKLogSetLogsToStd is deprecated. Please remove this call", v1, 2u);
  }
}

void SKLogArrayRedacted(os_log_type_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SKGetOSLog();
  if (os_log_type_enabled(v6, a1))
  {
    *buf = 136315138;
    v21 = a2;
    _os_log_impl(&dword_26BBB8000, v6, a1, "%s", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = SKGetOSLog();
        if (os_log_type_enabled(v13, a1))
        {
          *buf = 138412290;
          v21 = v12;
          _os_log_impl(&dword_26BBB8000, v13, a1, "%@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

id alignResizeLimits(void *a1)
{
  v1 = a1;
  v2 = [v1 minBytes] & 0xFFF;
  v3 = [v1 minBytes];
  if (v2)
  {
    v3 = v3 - ([v1 minBytes] & 0xFFF) + 4096;
  }

  if (v3 <= [v1 currentBytes])
  {
    [v1 setMinBytes:v3];
  }

  v4 = [v1 maxBytes];
  v5 = v4 - ([v1 maxBytes] & 0xFFF);
  if (v5 >= [v1 currentBytes])
  {
    [v1 setMaxBytes:v5];
  }

  return v1;
}

void sub_26BBDBBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void tagQueue(void *a1, const void *a2)
{
  queue = a1;
  v3 = malloc_type_calloc(8uLL, 1uLL, 0x10319707uLL);
  *v3 = 1;
  dispatch_queue_set_specific(queue, a2, v3, MEMORY[0x277D86138]);
}

void *currentQueueIsMainQueue()
{
  if (currentQueueIsMainQueue_once != -1)
  {
    currentQueueIsMainQueue_cold_1();
  }

  result = dispatch_get_specific("isMainQueue");
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t isValidNSNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

BOOL isValidNSString(void *a1)
{
  v1 = a1;
  v2 = v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 length] != 0;

  return v2;
}

uint64_t isValidNSDictionary(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isValidNSArray(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t isValidNSData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t NSNumberToBool(void *a1)
{
  v1 = a1;
  if (isValidNSNumber(v1))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NSNumberToULongLong(void *a1)
{
  v1 = a1;
  if (isValidNSNumber(v1))
  {
    v2 = [v1 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NSStringOrEmpty(void *a1)
{
  v1 = a1;
  if (isValidNSString(v1))
  {
    v2 = v1;
  }

  else
  {
    v2 = &stru_287C8F598;
  }

  v3 = v2;

  return v2;
}

BOOL isStringValidUUID(void *a1)
{
  v1 = a1;
  if (isValidNSString(v1))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v1];
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isOptionalString(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalArray(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalDict(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isOptionalNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

uint64_t isEqualOrBothNil(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id commaSeparatedDiskListFromArray(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndex:v3];
      v5 = [v4 volumeName];

      if (v5)
      {
        [v4 volumeName];
      }

      else
      {
        [v4 diskIdentifier];
      }
      v6 = ;
      [v2 appendString:v6];

      if (v3 != [v1 count] - 1)
      {
        [v2 appendString:{@", "}];
      }

      if (v3 == [v1 count] - 2)
      {
        [v2 appendString:@"and "];
      }

      ++v3;
    }

    while ([v1 count] > v3);
  }

  return v2;
}

id userInfoWithDebugDescription(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = *MEMORY[0x277CCA068];
    v7[0] = a1;
    v1 = MEMORY[0x277CBEAC0];
    v2 = a1;
    v3 = [v1 dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_26BBE0948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BBE28C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26BBE45F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26BBE5188();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26BBE46B4;
  v8[3] = &block_descriptor;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

id sub_26BBE46B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_26BBE4F3C();
    v5 = sub_26BBE5168();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BBE4850(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26BBE4F3C();
  v3 = sub_26BBE5178();

  return v3;
}

uint64_t static SKAnalyticsHub.addSink(_:)()
{
  if (qword_2814C1B30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = swift_unknownObjectRetain();
  MEMORY[0x26D68F5D0](v0);
  if (*((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v2 = *((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_26BBE51B8();
  }

  sub_26BBE51C8();
  return swift_endAccess();
}

id SKAnalyticsHub.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26BBE4BE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_26BBE4C30(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_26BBE4C8C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s10StorageKit14SKAnalyticsHubC9sendEvent4name19eventPayloadBuilderySS_SDySSSo8NSObjectCGSgyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2814C1B30 != -1)
  {
LABEL_16:
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2814C1B38;
  if (qword_2814C1B38 >> 62)
  {
    v6 = sub_26BBE51E8();
  }

  else
  {
    v6 = *((qword_2814C1B38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D68F600](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      v10 = sub_26BBE5188();
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BBE46B4;
      aBlock[3] = &block_descriptor_17;
      v11 = _Block_copy(aBlock);

      [v8 sendEventWithName:v10 eventPayloadBuilder:v11];
      _Block_release(v11);
      swift_unknownObjectRelease();

      ++v7;
    }

    while (v9 != v6);
  }
}

unint64_t sub_26BBE4F3C()
{
  result = qword_2804419E0;
  if (!qword_2804419E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804419E0);
  }

  return result;
}