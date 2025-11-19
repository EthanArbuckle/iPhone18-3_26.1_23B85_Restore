void sub_26F354040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *TRAStringFromTraitsPreferencesType(unint64_t a1)
{
  if (a1 >= 4)
  {
    TRAStringFromTraitsPreferencesType_cold_1();
  }

  return off_279DD48F0[a1];
}

id TRALogCommon()
{
  if (TRALogCommon_onceToken != -1)
  {
    TRALogCommon_cold_1();
  }

  v1 = TRALogCommon___logObj;

  return v1;
}

void preOrder(void *a1, void *a2, void *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v7)
  {
    [v9 addObject:v7];
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
  v12 = v11;
  if (a4 == 1)
  {
    [v11 sortUsingComparator:&__block_literal_global_251];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        v19 = [v18 children];
        preOrder(v18, v19, v10, a4);
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __preOrder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 children];
  v7 = [v6 count];
  v8 = [v5 children];
  v9 = [v8 count];

  if (v7 <= v9)
  {
    v11 = [v4 children];
    v12 = [v11 count];
    v13 = [v5 children];
    v14 = [v13 count];

    if (v12 >= v14)
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

  return v10;
}

void sub_26F3574E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26F3583C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void appendDescription(void *a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = v13;
  v53 = v11;
  if (v11 && [v13 length])
  {
    [v14 appendString:@"\n"];
  }

  if (a4 >= 1)
  {
    v15 = a4;
    do
    {
      [v14 appendString:@"\t"];
      if (v15 == 1)
      {
        [v14 appendString:@"⎿ "];
      }

      --v15;
    }

    while (v15);
  }

  if (v53)
  {
    v52 = v12;
    v16 = [v53 participant];
    v17 = [v16 currentSettings];
    v18 = [v17 zOrderLevelSettings];
    v19 = [v18 description];

    v20 = [v53 participant];
    v21 = [v20 currentSettings];
    v22 = [v21 orientationSettings];
    v23 = [v22 description];

    v50 = v23;
    v51 = v19;
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v19, v23];
    v24 = MEMORY[0x277CCACA8];
    v25 = [v53 participant];
    v26 = [v25 orientationPreferences];
    v27 = TRAStringForBSInterfaceOrientationMask([v26 supportedOrientations]);
    v28 = [v24 stringWithFormat:@"supported: %@", v27];

    if ([v53 debugLastSettingsWereValidated])
    {
      v29 = &stru_287F70690;
      v30 = 0x277CCA000;
    }

    else
    {
      v31 = MEMORY[0x277CCACA8];
      v32 = [v53 debugLastOrientationSettingsValidationFailureReason];
      v29 = [v31 stringWithFormat:@", last validation failed: %@", v32];

      v30 = 0x277CCA000uLL;
    }

    v33 = *(v30 + 3240);
    v34 = [v53 participant];
    v35 = [v34 uniqueIdentifier];
    v36 = [v33 stringWithFormat:@"%@, %@, %@%@", v35, v49, v28, v29];
    [v14 appendString:v36];

    v12 = v52;
  }

  if (v12 && a6)
  {
    v37 = [v12 sortedArrayUsingComparator:&__block_literal_global_244];

    v12 = v37;
  }

  else if (a5 == 1)
  {
    v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"children.@count" ascending:1];
    v59[0] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
    v40 = [v12 sortedArrayUsingDescriptors:v39];

    v12 = v40;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v41 = v12;
  v42 = [v41 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v55;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v54 + 1) + 8 * i);
        v47 = [v46 children];
        appendDescription(v46, v47, v14, (a4 + 1), a5, a6);
      }

      v43 = [v41 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v43);
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __appendDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 currentZOrderLevel];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 currentZOrderLevel];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

__CFString *TRAStringForBSDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_279DD49B0[a1 - 1];
  }
}

__CFString *TRAStringForBSInterfaceOrientation(uint64_t a1)
{
  if (a1)
  {
    v2 = TRAStringForBSInterfaceOrientationMask((1 << a1) & 0x1E);
  }

  else
  {
    v2 = @"unknown";
  }

  return v2;
}

__CFString *TRAStringForBSInterfaceOrientationMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"none";
    goto LABEL_11;
  }

  v1 = a1;
  if (a1 == 30)
  {
    v2 = @"All";
    goto LABEL_11;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if ((v1 & 2) != 0)
  {
    [v3 addObject:@"Pu"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      [v4 addObject:@"Lr"];
      if ((v1 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"Ll"];
  if ((v1 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
LABEL_9:
    [v4 addObject:@"Pd"];
  }

LABEL_10:
  v2 = [v4 componentsJoinedByString:{@", "}];

LABEL_11:

  return v2;
}

void sub_26F360268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t __TRALogCommon_block_invoke()
{
  TRALogCommon___logObj = os_log_create(TRALoggingSubsystem, "Common");

  return MEMORY[0x2821F96F8]();
}