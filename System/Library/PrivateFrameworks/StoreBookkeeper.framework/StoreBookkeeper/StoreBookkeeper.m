void sub_26BC1C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BC1D3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SBKGenericKeyValuePair *SBKKeyValuePayloadPairWithPreferredClass(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [a1 pairWithKVSKey:v6 kvsPayload:v5];
  }

  else
  {
    v5 = a3;
    v6 = a2;
    v7 = [[SBKGenericKeyValuePair alloc] initWithKVSKey:v6 kvsPayload:v5];
  }

  v8 = v7;

  return v8;
}

void sub_26BC2081C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_26BC20A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26BC20EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

id shortArrayDescription(void *a1)
{
  v1 = MEMORY[0x277CCAB68];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:{32 * objc_msgSend(v2, "count")}];
  objc_msgSend(v3, "appendString:", @"(");
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __shortArrayDescription_block_invoke;
  v6[3] = &unk_279D22A08;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  [v4 appendString:@""]);

  return v4;
}

void __shortArrayDescription_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = @", ";
  }

  else
  {
    v5 = @" ";
  }

  v6 = a2;
  [v4 appendString:v5];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendString:v8];
}

id ErrorInfoWithUnderlyingError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4 && (v5 = *MEMORY[0x277CCA7E8], [v3 objectForKey:*MEMORY[0x277CCA7E8]], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (v3)
    {
      v8 = [v3 mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v7 = v8;
    [v8 setObject:v4 forKey:v5];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id NSStringFromErrorCode(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  if (a1 <= -2002)
  {
    if (a1 > -2008)
    {
      if (a1 > -2005)
      {
        if (a1 == -2004)
        {
          v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeNetworkingBlocked"];
          v3 = v2;
          v4 = 4294965292;
        }

        else if (a1 == -2003)
        {
          v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeUserClamp"];
          v3 = v2;
          v4 = 4294965293;
        }

        else
        {
          v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeServerClamp"];
          v3 = v2;
          v4 = 4294965294;
        }
      }

      else if (a1 == -2007)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeKeyBagKillSwitch"];
        v3 = v2;
        v4 = 4294965289;
      }

      else if (a1 == -2006)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeDisabled"];
        v3 = v2;
        v4 = 4294965290;
      }

      else
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeKillSwitch"];
        v3 = v2;
        v4 = 4294965291;
      }

      goto LABEL_55;
    }

    if (a1 > -3003)
    {
      if (a1 == -3002)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeMissingDomain"];
        v3 = v2;
        v4 = 4294964294;
        goto LABEL_55;
      }

      if (a1 == -3001)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeMissingURL"];
        v3 = v2;
        v4 = 4294964295;
        goto LABEL_55;
      }

      if (a1 != -2008)
      {
        goto LABEL_59;
      }

      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeKeyBagLoadFailure"];
      v3 = v2;
      v4 = 4294965288;
    }

    else
    {
      if (a1 == -4003)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeTimeout"];
        v3 = v2;
        v4 = 4294963293;
        goto LABEL_55;
      }

      if (a1 == -4002)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeDelegateCancelled"];
        v3 = v2;
        v4 = 4294963294;
        goto LABEL_55;
      }

      if (a1 != -4001)
      {
        goto LABEL_59;
      }

      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeCancelled"];
      v3 = v2;
      v4 = 4294963295;
    }

LABEL_55:
    v5 = [v1 stringWithFormat:@"Error Code = %@ (%d)", v2, v4];

    goto LABEL_56;
  }

  if (a1 <= -1004)
  {
    if (a1 > -1007)
    {
      if (a1 == -1006)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeStoreAccountUserCredentials"];
        v3 = v2;
        v4 = 4294966290;
      }

      else if (a1 == -1005)
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeStoreAccountUserCancelSignIn"];
        v3 = v2;
        v4 = 4294966291;
      }

      else
      {
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeStoreAccountSessionExpired"];
        v3 = v2;
        v4 = 4294966292;
      }

      goto LABEL_55;
    }

    if (a1 == -2001)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeAuthenticationClamp"];
      v3 = v2;
      v4 = 4294965295;
      goto LABEL_55;
    }

    if (a1 == -1008)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeValidation"];
      v3 = v2;
      v4 = 4294966288;
      goto LABEL_55;
    }

    if (a1 != -1007)
    {
      goto LABEL_59;
    }

    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeGeneric"];
    v3 = v2;
    v4 = 4294966289;
    goto LABEL_55;
  }

  if (a1 <= -5)
  {
    if (a1 == -1003)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeStoreAccountMismatch"];
      v3 = v2;
      v4 = 4294966293;
      goto LABEL_55;
    }

    if (a1 == -1002)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeStoreAccountLoggedOut"];
      v3 = v2;
      v4 = 4294966294;
      goto LABEL_55;
    }

    if (a1 != -1001)
    {
      goto LABEL_59;
    }

    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeNoStoreAccount"];
    v3 = v2;
    v4 = 4294966295;
    goto LABEL_55;
  }

  if (a1 <= -3)
  {
    if (a1 == -4)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeAuthenticationError"];
      v3 = v2;
      v4 = 4294967292;
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeGenericBookkeeperServiceError"];
      v3 = v2;
      v4 = 4294967293;
    }

    goto LABEL_55;
  }

  if (a1 == -2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeGenericValidationError"];
    v3 = v2;
    v4 = 4294967294;
    goto LABEL_55;
  }

  if (a1 == -1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"SBKStoreErrorCodeUnknown"];
    v3 = v2;
    v4 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

LABEL_59:
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error Code = %lld", a1];
LABEL_56:

  return v5;
}

os_log_t _SBKLogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");

  return v0;
}

os_log_t _SBKLogCategorySync()
{
  v0 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");

  return v0;
}

uint64_t _PreferencesDidChangeNotification(uint64_t a1, void *a2)
{
  CFPreferencesSynchronize(@"com.apple.storebookkeeper", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return [a2 _preferencesDidChange];
}

uint64_t __TimestampStringFromNSTimeInterval_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = TimestampStringFromNSTimeInterval_dateFormatter;
  TimestampStringFromNSTimeInterval_dateFormatter = v0;

  [TimestampStringFromNSTimeInterval_dateFormatter setTimeStyle:3];
  v2 = TimestampStringFromNSTimeInterval_dateFormatter;

  return [v2 setDateStyle:1];
}

id storageItemIdentifierForProperties(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAB68] string];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v20;
  v10 = &selRef_objectForKey_withDefaultValue_;
  while (2)
  {
    v11 = 0;
    v18 = v10[155];
    do
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = [v4 objectForKey:*(*(&v19 + 1) + 8 * v11)];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 absoluteString];
LABEL_8:
        v14 = v13;

        v12 = v14;
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
      {
        v13 = [v12 stringValue];
        goto LABEL_8;
      }

LABEL_12:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 length])
      {

        goto LABEL_19;
      }

      [v5 appendString:v12];

      ++v11;
    }

    while (v8 != v11);
    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v10 = &selRef_objectForKey_withDefaultValue_;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_16:

  if ([v5 length])
  {
    v15 = [MEMORY[0x277CBEA90] SBKStringByMD5HashingString:v5];
  }

  else
  {
LABEL_19:
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id valuesForProperties(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __valuesForProperties_block_invoke;
  v10[3] = &unk_279D22A30;
  v8 = v6;
  v11 = v8;
  [v5 enumerateValuesForProperties:v7 usingBlock:v10];

  return v8;
}

uint64_t __valuesForProperties_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setObject:a3 forKey:a2];
  }

  return result;
}

id ErrorInfoWithUnderlyingError_924(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = *MEMORY[0x277CCA7E8], [0 objectForKey:*MEMORY[0x277CCA7E8]], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v4 setObject:v1 forKey:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_26BC29C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__925(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BC2A0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BC2AA88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_26BC2CC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26BC2E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BC2FB2C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SBKLogProductionKeyBag()
{
  if (SBKLogProductionKeyBag_keybag)
  {
    NSLog(&cfstr_KeyBagContents.isa, SBKLogProductionKeyBag_keybag);
  }

  else
  {
    v0 = MEMORY[0x277D69C88];
    v1 = [MEMORY[0x277D69C90] contextWithBagType:0];
    v2 = [v0 URLBagForContext:v1];

    [v2 loadWithCompletionBlock:&__block_literal_global_1280];
  }
}

void __SBKLogProductionKeyBag_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong(&SBKLogProductionKeyBag_keybag, a2);
  v3 = a2;
  NSLog(&cfstr_KeyBagContents.isa, SBKLogProductionKeyBag_keybag);
}

void sub_26BC32D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BC3333C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1686(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D6917A0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__1889(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___serialGetValue_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

id SBKStoreAccount()
{
  v0 = [MEMORY[0x277D69A20] defaultStore];
  v1 = [v0 activeAccount];

  return v1;
}

id SBKStoreAccountIdentifiers()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v2 = [v1 userIdentitiesForManageableAccountsWithError:0];

  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = MEMORY[0x277CCABB0];
        v8 = [*(*(&v13 + 1) + 8 * i) accountDSID];
        v9 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue")}];
        [v0 addObject:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = [v0 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id SBKStoreAccountIdentifierFromDatabasePath(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v3 = [v2 userIdentitiesForManageableAccountsWithError:0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [MEMORY[0x277D2B5F8] musicLibraryForUserAccount:{v8, v16}];
        v10 = [v9 databasePath];
        v11 = [v10 isEqualToString:v1];

        if (v11)
        {
          v12 = MEMORY[0x277CCABB0];
          v13 = [v8 accountDSID];
          v5 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202960](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202968](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}