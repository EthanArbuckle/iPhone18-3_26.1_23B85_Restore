uint64_t PTInstallIsAppleInternal()
{
  if (PTInstallIsAppleInternal_onceToken != -1)
  {
    PTInstallIsAppleInternal_cold_1();
  }

  return PTInstallIsAppleInternal_isAppleInternal;
}

uint64_t __PTInstallIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_ui();
  PTInstallIsAppleInternal_isAppleInternal = result;
  return result;
}

id PTLogObjectForTopic(uint64_t a1)
{
  if (PTLogObjectForTopic_onceToken != -1)
  {
    PTLogObjectForTopic_cold_1();
  }

  v2 = PTLogObjectForTopic___logObjects;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void __PTLogObjectForTopic_block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 3; ++i)
  {
    if (i == 1)
    {
      v2 = "domain";
    }

    else
    {
      v2 = "settings";
    }

    if (i == 2)
    {
      v3 = "server";
    }

    else
    {
      v3 = v2;
    }

    v4 = os_log_create("PrototypeTools", v3);
    if (v4)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      [v0 setObject:v4 forKey:v5];
    }
  }

  v6 = PTLogObjectForTopic___logObjects;
  PTLogObjectForTopic___logObjects = v0;
}

id _NSStringFromRuntimeString(const char *a1)
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:a1 length:strlen(a1) encoding:4 freeWhenDone:0];

  return v1;
}

void _handlePrototypingIsActiveNotification(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___handlePrototypingIsActiveNotification_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_21E62539C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, void *a15)
{
  v22 = v16;
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    v18 = PTLogObjectForTopic(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(v15 + 32) _domainID];
      v20 = *(v15 + 40);
      v21 = [v17 reason];
      LODWORD(buf) = 138412802;
      *(&buf + 4) = v19;
      WORD6(buf) = 2112;
      *(&buf + 14) = v20;
      a14 = 2112;
      a15 = v21;
      _os_log_impl(&dword_21E61D000, v18, OS_LOG_TYPE_DEFAULT, "Domain %@: can't invoke outlet at keypath %@ (%@)", &buf, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x21E62535CLL);
  }

  _Unwind_Resume(a1);
}

void sub_21E626334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return NSRequestConcreteImplementation();
}

void PTTransactionBegin(void *a1)
{
  v1 = a1;
  v2 = _TransactionQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __PTTransactionBegin_block_invoke;
  block[3] = &unk_27835ED38;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

id _TransactionQueue()
{
  if (_TransactionQueue_onceToken != -1)
  {
    _TransactionQueue_cold_1();
  }

  v1 = _TransactionQueue___queue;

  return v1;
}

void __PTTransactionBegin_block_invoke(uint64_t a1)
{
  v2 = _TransactionsByReason();
  v5 = [v2 objectForKey:*(a1 + 32)];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = _TransactionsByReason();
    [v3 setObject:v5 forKey:*(a1 + 32)];
  }

  [*(a1 + 32) UTF8String];
  v4 = os_transaction_create();
  [v5 addObject:v4];
}

id _TransactionsByReason()
{
  if (_TransactionsByReason_onceToken != -1)
  {
    _TransactionsByReason_cold_1();
  }

  v1 = _TransactionsByReason___transactions;

  return v1;
}

void PTTransactionEnd(void *a1)
{
  v1 = a1;
  v2 = _TransactionQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __PTTransactionEnd_block_invoke;
  block[3] = &unk_27835ED38;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __PTTransactionEnd_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _TransactionsByReason();
  v3 = [v2 objectForKey:*(a1 + 32)];

  if ([v3 count])
  {
    [v3 removeLastObject];
  }

  else
  {
    v4 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_21E61D000, v4, OS_LOG_TYPE_DEFAULT, "****** imbalanced transactions for reason '%@' -- please file a radar on PEP PrototypeTools ******", &v6, 0xCu);
    }
  }
}

void PTDisableFileProtection(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v5 = *MEMORY[0x277CCA1B0];
  v6[0] = *MEMORY[0x277CCA1B8];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 setAttributes:v4 ofItemAtPath:v2 error:0];
}

id PTHomeDirectory()
{
  v0 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = NSHomeDirectory();
  }

  v3 = v2;

  return v3;
}

id PTPrototypeDirectory()
{
  if (PTPrototypeDirectory_onceToken != -1)
  {
    PTPrototypeDirectory_cold_1();
  }

  v1 = PTPrototypeDirectory___path;

  return v1;
}

void __PTPrototypeDirectory_block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = PTHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/Prototyping"];
  v2 = PTPrototypeDirectory___path;
  PTPrototypeDirectory___path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = PTPrototypeDirectory___path;
  v6 = *MEMORY[0x277CCA160];
  v7[0] = @"mobile";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v5 error:0];

  PTDisableFileProtection(PTPrototypeDirectory___path);
}

uint64_t PTObjectIsRecursivelyPlistable(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 bs_isPlistableType])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v17;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v17 != v5)
            {
              objc_enumerationMutation(v2);
            }

            if (!PTObjectIsRecursivelyPlistable(*(*(&v16 + 1) + 8 * i)))
            {

LABEL_26:
              goto LABEL_27;
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [v2 allKeys];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * j);
            v13 = [v2 objectForKey:v12];
            if (!PTObjectIsRecursivelyPlistable(v12) || !PTObjectIsRecursivelyPlistable(v13))
            {

              goto LABEL_26;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v14 = 1;
  }

  else
  {
LABEL_27:
    v14 = 0;
  }

  return v14;
}

id PTPlistableClasses()
{
  if (PTPlistableClasses_onceToken != -1)
  {
    PTPlistableClasses_cold_1();
  }

  v1 = PTPlistableClasses_classes;

  return v1;
}

uint64_t __PTPlistableClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = PTPlistableClasses_classes;
  PTPlistableClasses_classes = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

uint64_t PTValidateDictionary(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v8 = [v2 objectForKeyedSubscript:{v7, v12}];
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              continue;
            }
          }

          v10 = 0;
          goto LABEL_15;
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v10 = 1;
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_15:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t PTValidateArray(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = 0;
            goto LABEL_13;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t PTValidateSet(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = 0;
            goto LABEL_13;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t PTValidatePredicate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 _allowsEvaluation])
    {
      v3 = 1;
    }

    else
    {
      v5 = [_PTPredicateValidator validatorWithPredicate:v2];
      v3 = [(_PTPredicateValidator *)v5 evaluate];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PTRowClassIsWhitelistedForRemoteEditing(void *a1)
{
  if (_RowWhitelist_onceToken != -1)
  {
    PTRowClassIsWhitelistedForRemoteEditing_cold_1();
  }

  v2 = _RowWhitelist_whitelist;

  return _ClassIsCodableAndWhitelisted(a1, v2);
}

uint64_t _ClassIsCodableAndWhitelisted(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 containsObject:a1];
  v4 = [a1 conformsToProtocol:&unk_282FB0378];
  v5 = v4;
  result = v3 & v4;
  if (v3 && (v5 & 1) == 0)
  {
    v7 = PTLogObjectForTopic(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "%@ is whitelisted for remote editing, but does not conform to NSSecureCoding", &v8, 0xCu);
    }

    return 0;
  }

  return result;
}

uint64_t PTRowActionClassIsWhitelistedForRemoteEditing(void *a1)
{
  if (_RowActionWhitelist_onceToken != -1)
  {
    PTRowActionClassIsWhitelistedForRemoteEditing_cold_1();
  }

  v2 = _RowActionWhitelist_whitelist;

  return _ClassIsCodableAndWhitelisted(a1, v2);
}

__CFString *PTPrototypingEventName(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27835EE70[a1];
  }
}

__CFString *PTPrototypingEventShortName(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27835EE98[a1];
  }
}

uint64_t PTPrototypingEventAvailable(uint64_t a1)
{
  if (PTPrototypingEventAvailable_onceToken != -1)
  {
    PTPrototypingEventAvailable_cold_1();
  }

  v2 = PTPrototypingEventAvailable___availableEvents;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __PTPrototypingEventAvailable_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = PTPrototypingEventAvailable___availableEvents;
  PTPrototypingEventAvailable___availableEvents = v0;

  if (MGGetBoolAnswer())
  {
    [PTPrototypingEventAvailable___availableEvents addObject:&unk_282FAE050];
    [PTPrototypingEventAvailable___availableEvents addObject:&unk_282FAE068];
  }

  if (MGGetBoolAnswer())
  {
    [PTPrototypingEventAvailable___availableEvents addObject:&unk_282FAE080];
  }

  result = MGGetBoolAnswer();
  if (result)
  {
    v3 = PTPrototypingEventAvailable___availableEvents;

    return [v3 addObject:&unk_282FAE098];
  }

  return result;
}

void PTPrototypingEnumerateHardwareEventsWithBlock(void *a1)
{
  v1 = a1;
  v2 = 0;
  v1[2](v1, 1, &v2);
  if ((v2 & 1) == 0)
  {
    v1[2](v1, 2, &v2);
    if ((v2 & 1) == 0)
    {
      v1[2](v1, 3, &v2);
      if ((v2 & 1) == 0)
      {
        v1[2](v1, 4, &v2);
      }
    }
  }
}

__CFString *PTPrototypingEventsDescription(void *a1)
{
  v1 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __PTPrototypingEventsDescription_block_invoke;
  v13[3] = &unk_27835EE28;
  v2 = v1;
  v14 = v2;
  v15 = &v16;
  PTPrototypingEnumerateHardwareEventsWithBlock(v13);
  if (v17[3])
  {
    v3 = [MEMORY[0x277CCAB68] string];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = v17[3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __PTPrototypingEventsDescription_block_invoke_2;
    v8[3] = &unk_27835EE50;
    v9 = v2;
    v4 = v3;
    v10 = v4;
    v11 = v12;
    PTPrototypingEnumerateHardwareEventsWithBlock(v8);
    v5 = v10;
    v6 = v4;

    _Block_object_dispose(v12, 8);
  }

  else
  {
    v6 = @"no events";
  }

  _Block_object_dispose(&v16, 8);

  return v6;
}

void sub_21E62B4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __PTPrototypingEventsDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

uint64_t __PTPrototypingEventsDescription_block_invoke_2(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    if (a2 > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = off_27835EE98[a2];
    }

    [*(a1 + 40) appendString:v7];
    v8 = --*(*(*(a1 + 48) + 8) + 24);
    if (v8 < 2)
    {
      v9 = *(a1 + 40);
      if (v8 != 1)
      {
        result = [v9 appendString:@" events"];
        *a3 = 1;
        return result;
      }

      v10 = @" and ";
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = @", ";
    }

    return [v9 appendString:v10];
  }

  return result;
}

id _ParameterRecordsPath()
{
  v0 = PTPrototypeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"ParameterRecords.archive"];

  return v1;
}

void sub_21E62F154(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _ProxyDefinitionDirectory()
{
  if (_ProxyDefinitionDirectory_onceToken != -1)
  {
    _ProxyDefinitionDirectory_cold_1();
  }

  v1 = _ProxyDefinitionDirectory___path;

  return v1;
}

id _SettingsArchiveDirectory()
{
  if (_SettingsArchiveDirectory_onceToken != -1)
  {
    _SettingsArchiveDirectory_cold_1();
  }

  v1 = _SettingsArchiveDirectory___path;

  return v1;
}

id _DomainInfoPath()
{
  v0 = PTPrototypeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"DomainInfo.archive"];

  return v1;
}

id _TestRecipeInfoPath()
{
  v0 = PTPrototypeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"TestRecipeInfo.archive"];

  return v1;
}

id _ProxyDefinitionPath(void *a1)
{
  v1 = [a1 stringByAppendingPathExtension:@"archive"];
  v2 = _ProxyDefinitionDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  return v3;
}

id _SettingsArchivePath(void *a1)
{
  v1 = [a1 stringByAppendingPathExtension:@"settings"];
  v2 = _SettingsArchiveDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  return v3;
}

void _ValidateUnarchivedDictionary(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Dictionary validation failed: putative dictionary is a %@", objc_opt_class()}];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ValidateUnarchivedDictionary_block_invoke;
  v6[3] = &__block_descriptor_48_e15_v32__0_8_16_B24lu32l8u40l8;
  v6[4] = a2;
  v6[5] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

id _ReadInfo(void *a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v21 = a3;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), a2, 0}];
    v22 = 0;
    v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v12 fromData:v6 error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = objc_opt_class();
      _ValidateUnarchivedDictionary(v13, v15, a2);

      v16 = [v13 mutableCopy];
      goto LABEL_11;
    }

    v18 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_21E61D000, v18, OS_LOG_TYPE_DEFAULT, "Error unarchiving persisted %@: %@", buf, 0x16u);
    }

    v19 = [MEMORY[0x277CCAA00] defaultManager];
    [v19 removeItemAtPath:v5 error:0];
  }

  else
  {
    v17 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v21;
      _os_log_impl(&dword_21E61D000, v17, OS_LOG_TYPE_DEFAULT, "No persisted %@", buf, 0xCu);
    }
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
LABEL_11:

  return v16;
}

void sub_21E62FAB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(a1);
    v19 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412546;
      *(&buf + 4) = a15;
      WORD6(buf) = 2112;
      *(&buf + 14) = v18;
      _os_log_impl(&dword_21E61D000, v19, OS_LOG_TYPE_DEFAULT, "Error reading persisted %@: %@@", &buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCAA00] defaultManager];
    [v20 removeItemAtPath:v17 error:0];

    objc_end_catch();
    JUMPOUT(0x21E62FA3CLL);
  }

  _Unwind_Resume(a1);
}

id _PTReadDomainInfo()
{
  v0 = _DomainInfoPath();
  v1 = objc_opt_class();
  v2 = _ReadInfo(v0, v1, @"domain info");

  return v2;
}

void _PTWriteDomainInfo(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v10];
  v2 = v10;
  if (!v1 || (_DomainInfoPath(), v3 = objc_claimAutoreleasedReturnValue(), v9 = v2, v4 = [v1 writeToFile:v3 options:1 error:&v9], v5 = v9, v2, v3, v2 = v5, (v4 & 1) == 0))
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _DomainInfoPath();
      v8 = [v2 localizedDescription];
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Unable to write domain dictionary to file %@: %@", buf, 0x16u);
    }
  }
}

id _PTReadTestRecipeInfo()
{
  v0 = _TestRecipeInfoPath();
  v1 = objc_opt_class();
  v2 = _ReadInfo(v0, v1, @"test recipe info");

  return v2;
}

void _PTWriteTestRecipeInfo(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v10];
  v2 = v10;
  if (!v1 || (_DomainInfoPath(), v3 = objc_claimAutoreleasedReturnValue(), v9 = v2, v4 = [v1 writeToFile:v3 options:1 error:&v9], v5 = v9, v2, v3, v2 = v5, (v4 & 1) == 0))
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _DomainInfoPath();
      v8 = [v2 localizedDescription];
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Unable to write test recipe dictionary to file %@: %@", buf, 0x16u);
    }
  }
}

id _PTReadSettingsProxyDefinition(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = _ProxyDefinitionPath(a1);
  v11 = 0;
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1 options:0 error:&v11];
  v3 = v11;
  if (v2)
  {
    v10 = v3;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v10];
    v5 = v10;

    if (v4)
    {
      v4 = v4;
      v6 = v4;
    }

    else
    {
      v7 = PTLogObjectForTopic(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "Error unarchiving persisted proxy definition: %@", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 removeItemAtPath:v1 error:0];

      v6 = 0;
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 removeItemAtPath:v1 error:0];
    v6 = 0;
    v5 = v3;
  }

  return v6;
}

void _PTWriteSettingsProxyDefinition(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v7];
  v5 = v7;
  if (v4)
  {
    v6 = _ProxyDefinitionPath(v3);
    [v4 writeToFile:v6 atomically:1];
  }

  else
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Unable to archive proxy definition: %@", buf, 0xCu);
    }
  }
}

id _PTReadSettingsArchive(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = _SettingsArchivePath(a1);
  v12 = 0;
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1 options:0 error:&v12];
  v3 = v12;
  if (v2)
  {
    v11 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v2 options:1 format:0 error:&v11];
    v5 = v11;

    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v4;
        v6 = v4;
        goto LABEL_11;
      }

      v7 = PTLogObjectForTopic(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v1;
        _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "Non-dictionary archive at path %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = PTLogObjectForTopic(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 localizedDescription];
        *buf = 138412546;
        v14 = v1;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_21E61D000, v7, OS_LOG_TYPE_DEFAULT, "Unable to deserialize settings archive at path %@: %@", buf, 0x16u);
      }
    }

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    [v9 removeItemAtPath:v1 error:0];

    v6 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 removeItemAtPath:v1 error:0];
    v6 = 0;
    v5 = v3;
  }

LABEL_11:

  return v6;
}

void _PTWriteSettingsArchive(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a1 format:200 options:0 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = _SettingsArchivePath(v3);
    v12 = v5;
    v7 = [v4 writeToFile:v6 options:1 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = PTLogObjectForTopic(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 localizedDescription];
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_21E61D000, v9, OS_LOG_TYPE_DEFAULT, "Unable to write settings archive data to path %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 localizedDescription];
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Unable to serialize settings archive for domain %@: %@", buf, 0x16u);
    }

    v8 = v5;
  }
}

void _PTClearSettingsArchive(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v4 = [v1 defaultManager];
  v3 = _SettingsArchivePath(v2);

  [v4 removeItemAtPath:v3 error:0];
}

void _PTMigrateIfNecessary()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = +[PTDefaults sharedInstance];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v0 shouldClearPrototypeCachesForMigration])
  {
    [v0 setShouldClearPrototypeCachesForMigration:0];
    v2 = _DomainInfoPath();
    [v1 removeItemAtPath:v2 error:0];

    v3 = _TestRecipeInfoPath();
    [v1 removeItemAtPath:v3 error:0];
  }

  if ([v0 shouldClearSettingsArchivesForMigration])
  {
    [v0 setShouldClearSettingsArchivesForMigration:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = _SettingsArchiveDirectory();
    v5 = [v1 contentsOfDirectoryAtPath:v4 error:{0, 0}];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = _SettingsArchiveDirectory();
          v12 = [v11 stringByAppendingPathComponent:v10];
          [v1 removeItemAtPath:v12 error:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E634BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E635254(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}