@interface PPDataDetectors
+ (BOOL)isValidDataDetectorsMatch:(__DDResult *)a3 addressComponents:(id *)a4;
+ (id)addressComponentsFromString:(id)a3 extractedAddress:(id *)a4 locale:(id)a5;
+ (uint64_t)_components:(void *)a3 haveHongKongAtKey:;
+ (void)addAddressComponentsInResult:(__DDResult *)a3 toDictionary:(id)a4;
+ (void)scanString:(id)a3 inRange:(id)a4 withScanner:(__DDScanner *)a5 options:(int64_t)a6 block:(id)a7;
@end

@implementation PPDataDetectors

+ (BOOL)isValidDataDetectorsMatch:(__DDResult *)a3 addressComponents:(id *)a4
{
  v7 = objc_opt_new();
  [PPDataDetectors addAddressComponentsInResult:a3 toDictionary:v7];
  if (a4)
  {
    v8 = v7;
    *a4 = v7;
  }

  v9 = *MEMORY[0x277CCA6B0];
  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA6B0]];

  if (!v10)
  {
    v11 = *MEMORY[0x277CCA6B8];
    if (([(PPDataDetectors *)a1 _components:v7 haveHongKongAtKey:*MEMORY[0x277CCA6B8]]& 1) != 0 || (v11 = *MEMORY[0x277CCA6E0], [(PPDataDetectors *)a1 _components:v7 haveHongKongAtKey:*MEMORY[0x277CCA6E0]]))
    {
      v12 = [v7 objectForKeyedSubscript:v11];
      [v7 setObject:v12 forKeyedSubscript:v9];

      [v7 removeObjectForKey:v11];
    }
  }

  v13 = v7;
  objc_opt_self();
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA6E8]];
  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:v9];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v17 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA6F0]];
      v16 = v17 != 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (uint64_t)_components:(void *)a3 haveHongKongAtKey:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 objectForKeyedSubscript:v4];

  if ([v6 isEqualToString:@"香港"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"香港省") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HongKong"))
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEqualToString:@"Hong Kong"];
  }

  return v7;
}

+ (id)addressComponentsFromString:(id)a3 extractedAddress:(id *)a4 locale:(id)a5
{
  v9 = a3;
  v10 = a5;
  if ([v9 length])
  {
    if (v10)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"PPDataDetectors.m" lineNumber:110 description:@"overriding locale for PPDataDetectors +addressComponentsFromString is for unit tests only"];
    }

    if (addressComponentsFromString_extractedAddress_locale___pasOnceToken2 != -1)
    {
      dispatch_once(&addressComponentsFromString_extractedAddress_locale___pasOnceToken2, &__block_literal_global_31);
    }

    v11 = addressComponentsFromString_extractedAddress_locale___pasExprOnceResult;
    v12 = [v11 result];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4338;
    v25 = __Block_byref_object_dispose__4339;
    v26 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__PPDataDetectors_addressComponentsFromString_extractedAddress_locale___block_invoke_47;
    v16[3] = &unk_278972BD8;
    v19 = a1;
    v20 = a4;
    v17 = v9;
    v18 = &v21;
    [v12 runWithLockAcquired:v16];
    v13 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __71__PPDataDetectors_addressComponentsFromString_extractedAddress_locale___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = *(a1 + 32);
  v7 = [v6 length];
  v8 = *MEMORY[0x277D041E8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PPDataDetectors_addressComponentsFromString_extractedAddress_locale___block_invoke_2_48;
  v11[3] = &unk_278972BB0;
  v9 = *(a1 + 32);
  v14 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v10 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [v5 scanString:v6 inRange:0 withScanner:v7 options:v4 block:{v8, v11}];
}

BOOL __71__PPDataDetectors_addressComponentsFromString_extractedAddress_locale___block_invoke_2_48(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 3)
  {
    Range = DDResultGetRange();
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = [*(a1 + 32) substringWithRange:{Range, v8}];
    objc_autoreleasePoolPop(v9);
    if (*(a1 + 48))
    {
      v11 = v10;
      **(a1 + 48) = v10;
    }

    v12 = *(a1 + 56);
    v13 = objc_opt_class();
    v14 = *(*(a1 + 40) + 8);
    obj = *(v14 + 40);
    v15 = [v13 isValidDataDetectorsMatch:a2 addressComponents:&obj];
    objc_storeStrong((v14 + 40), obj);
    if ((v15 & 1) == 0)
    {
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;
    }
  }

  return a3 != 3;
}

void __71__PPDataDetectors_addressComponentsFromString_extractedAddress_locale___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_35 idleTimeout:1.0];
  v2 = addressComponentsFromString_extractedAddress_locale___pasExprOnceResult;
  addressComponentsFromString_extractedAddress_locale___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __71__PPDataDetectors_addressComponentsFromString_extractedAddress_locale___block_invoke_2()
{
  v0 = DDScannerCreate();
  if (!v0)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PPDataDetectors addressComponentsFromString:extractedAddress:locale:]_block_invoke_2"];
    [v3 handleFailureInFunction:v4 file:@"PPDataDetectors.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"newScanner"}];
  }

  v1 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v0];

  return v1;
}

+ (void)addAddressComponentsInResult:(__DDResult *)a3 toDictionary:(id)a4
{
  v15 = a4;
  if (addAddressComponentsInResult_toDictionary__onceToken != -1)
  {
    dispatch_once(&addAddressComponentsInResult_toDictionary__onceToken, &__block_literal_global_4356);
  }

  SubResults = DDResultGetSubResults();
  if (SubResults)
  {
    v5 = SubResults;
    Count = CFArrayGetCount(SubResults);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        v10 = DDResultGetType();
        v11 = [addAddressComponentsInResult_toDictionary__subTypesToKeysDictionary objectForKeyedSubscript:v10];
        if (v11)
        {
          Value = DDResultGetValue();
          if (Value)
          {
            v13 = Value;
            TypeID = CFStringGetTypeID();
            if (TypeID == CFGetTypeID(v13))
            {
              [v15 setObject:v13 forKeyedSubscript:v11];
            }
          }
        }

        [objc_opt_class() addAddressComponentsInResult:ValueAtIndex toDictionary:v15];
      }
    }
  }
}

void __61__PPDataDetectors_addAddressComponentsInResult_toDictionary___block_invoke()
{
  v9[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCA6D8];
  v8[0] = @"CompanyName";
  v8[1] = @"Street";
  v1 = *MEMORY[0x277CCA6E8];
  v9[0] = v0;
  v9[1] = v1;
  v2 = *MEMORY[0x277CCA6B0];
  v8[2] = @"City";
  v8[3] = @"State";
  v3 = *MEMORY[0x277CCA6E0];
  v9[2] = v2;
  v9[3] = v3;
  v8[4] = @"ZipCode";
  v8[5] = @"Country";
  v4 = *MEMORY[0x277CCA6B8];
  v9[4] = *MEMORY[0x277CCA6F0];
  v9[5] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v6 = addAddressComponentsInResult_toDictionary__subTypesToKeysDictionary;
  addAddressComponentsInResult_toDictionary__subTypesToKeysDictionary = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)scanString:(id)a3 inRange:(id)a4 withScanner:(__DDScanner *)a5 options:(int64_t)a6 block:(id)a7
{
  v15 = a7;
  if (DDScannerScanStringWithRange())
  {
    v7 = DDScannerCopyResultsWithOptions();
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      v10 = Count - 1;
      if (Count >= 1)
      {
        v11 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
          Category = DDResultGetCategory();
          if (v15[2](v15, ValueAtIndex, Category))
          {
            v14 = v10 == v11;
          }

          else
          {
            v14 = 1;
          }

          ++v11;
        }

        while (!v14);
      }

      CFRelease(v8);
    }
  }
}

@end