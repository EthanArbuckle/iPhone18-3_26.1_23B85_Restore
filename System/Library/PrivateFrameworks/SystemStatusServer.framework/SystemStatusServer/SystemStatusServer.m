id _STExecutableIdentityResolvedIdentityForIdentity(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v36 = 0u;
  v37 = 0u;
  if (v5)
  {
    [v5 auditToken];
  }

  v7 = [v6 hasAuditToken];
  v8 = [v6 executablePath];
  v9 = [v6 bundlePath];
  v10 = [v6 bundleIdentifier];
  v11 = [v6 personaUniqueString];
  if (a2 && v7)
  {
    v34 = v36;
    v35 = v37;
    v12 = BSPIDForAuditToken();
    v13 = MEMORY[0x277D46F48];
    v14 = [MEMORY[0x277D46F50] identifierWithPid:v12];
    v15 = [v13 handleForIdentifier:v14 error:0];

    v16 = [v15 hostProcess];
    v17 = v16;
    if (v16)
    {
      [v16 auditToken];
    }

    else
    {
      v38 = v34;
      v39 = v35;
    }

    v36 = v38;
    v37 = v39;
  }

  if (v7)
  {
    v38 = v36;
    v39 = v37;
    v18 = BSVersionedPIDForAuditToken() < 0xFFFFFFFF00000000;
    if (v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = 0;
    if (v9)
    {
      goto LABEL_18;
    }
  }

  if (v10)
  {
    v19 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 URL];
      v9 = [v21 path];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_18:
  v22 = ((v8 | v9) == 0) & v7;
  if (v8 | v9)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  if (v22 == 1)
  {
    if (v18)
    {
      v38 = v36;
      v39 = v37;
      BSExecutablePathForAuditToken();
    }

    else
    {
      BSPIDForAuditToken();
      BSExecutablePathForPID();
    }
    v23 = ;
  }

  if (v23)
  {
    if (!v9)
    {
      v9 = BSBundlePathForExecutablePath();
      if (!v9)
      {
        if (a3)
        {
          v24 = [v23 rangeOfString:@".framework/"];
          if (v24 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v26 = 0;
            v9 = 0;
            goto LABEL_36;
          }

          v9 = [v23 substringToIndex:v24 + v25];
        }
      }
    }
  }

  v26 = v9 != 0;
  if (!v10 && v9)
  {
    v27 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:v9];
    v10 = [v27 bundleIdentifier];

    v26 = 1;
  }

LABEL_36:
  if (v23 && !v10)
  {
    v10 = BSBundleIDForExecutablePath();
  }

  if (v26)
  {
    v28 = v9;
  }

  else
  {
    v28 = v23;
  }

  v29 = v28;
  if (v29)
  {
    v30 = BSPathExistsOnSystemPartition();
  }

  else
  {
    v30 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  if (v18)
  {
    v38 = v36;
    v39 = v37;
  }

  else if (v6)
  {
    [v6 auditToken];
  }

  v31 = objc_alloc(MEMORY[0x277D6B980]);
  v34 = v38;
  v35 = v39;
  v32 = [v31 initWithAuditToken:&v34 bundlePath:v9 executablePath:v23 bundleIdentifier:v10 personaUniqueString:v11 systemExecutable:v30];

  return v32;
}

id STAttributedEntityResolverLocalizedStringFromTableInCFBundle(void *a1, __CFBundle *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = CFBundleCopyBundleLocalizations(a2);
  v11 = CFBundleCopyLocalizationsForPreferences(v10, v9);

  v12 = [(__CFArray *)v11 firstObject];
  if (!v12 || (v13 = CFBundleCopyLocalizedStringForLocalization()) == 0)
  {
    v13 = CFBundleCopyLocalizedString(a2, v7, v8, @"InfoPlist");
  }

  return v13;
}

id STSystemStatusLogServer()
{
  if (qword_280D435B8 != -1)
  {
    dispatch_once(&qword_280D435B8, &__block_literal_global_0);
  }

  v1 = _MergedGlobals_0;

  return v1;
}

uint64_t __STSystemStatusLogServer_block_invoke()
{
  _MergedGlobals_0 = os_log_create(*MEMORY[0x277D6BF90], "Server");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C4B2E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C4B30C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STSystemStatusLogEntityResolving()
{
  if (qword_280D435C8 != -1)
  {
    dispatch_once(&qword_280D435C8, &__block_literal_global_1);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

uint64_t __STSystemStatusLogEntityResolving_block_invoke()
{
  _MergedGlobals_1 = os_log_create(*MEMORY[0x277D6BF90], "EntityResolving");

  return MEMORY[0x2821F96F8]();
}

void sub_26C4B8ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C4B9010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26C4BA0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C4BB370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id STSystemStatusLogTelephonyState()
{
  if (qword_280D435F8 != -1)
  {
    dispatch_once(&qword_280D435F8, &__block_literal_global_5);
  }

  v1 = _MergedGlobals_3;

  return v1;
}

uint64_t __STSystemStatusLogTelephonyState_block_invoke()
{
  _MergedGlobals_3 = os_log_create(*MEMORY[0x277D6BF90], "TelephonyState");

  return MEMORY[0x2821F96F8]();
}

void sub_26C4BBB70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t STTelephonyRegistrationStatusForStatus(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v3 = *MEMORY[0x277CC3E88];
  if ([v1 isEqualToString:*MEMORY[0x277CC3E88]])
  {

LABEL_5:
    v6 = 1;
    goto LABEL_14;
  }

  v4 = *MEMORY[0x277CC3E80];
  v5 = [v2 isEqualToString:*MEMORY[0x277CC3E80]];

  if (v5)
  {
    goto LABEL_5;
  }

  v7 = v2;
  if (([v7 isEqualToString:*MEMORY[0x277CC3E50]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", v4) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", v3) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CC3E60]))
  {
LABEL_10:

    v8 = *MEMORY[0x277CC3E58];
  }

  else
  {
    v8 = *MEMORY[0x277CC3E58];
    v10 = [v7 isEqualToString:*MEMORY[0x277CC3E58]];

    if (!v10)
    {
      v6 = 2;
      goto LABEL_14;
    }
  }

  if ([v2 isEqualToString:v8])
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

LABEL_14:

  return v6;
}

__CFString *STTelephonyCachedBooleanDebugName(uint64_t a1)
{
  if ((a1 + 2) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_279D35548[a1 + 2];
  }

  return v2;
}

void sub_26C4C1A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C4C26D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 128), 8);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t STTelephonyDataConnectionTypeForIndicatorNameAndRadioTechnology(int a1, int a2)
{
  v2 = a1 - 1;
  result = 3;
  switch(v2)
  {
    case 0:
      if ((a2 - 3) < 3)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      break;
    case 1:
      return result;
    case 2:
      result = 4;
      break;
    case 3:
    case 4:
      result = 5;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 11;
      break;
    case 12:
      result = 10;
      break;
    case 13:
      result = 8;
      break;
    case 14:
      result = 9;
      break;
    case 15:
      result = 12;
      break;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      result = 16;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_26C4C5C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C4C7750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t STStatusDomainNameForEntitlementValue(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D6BEA8]])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEB0]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEB8]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEC0]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEC8]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BED0]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BED8]])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEE0]])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEE8]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BF08]])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BF10]])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BF18]])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BF20]])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEF0]])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BEF8]])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D6BF00]])
  {
    v2 = 15;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

id STEntitledDomainsForEntitlementValue(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31[0] = v1;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v1;
      v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v26;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v26 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v25 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v3 addObject:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = STStatusDomainNameForEntitlementValue(*(*(&v21 + 1) + 8 * j));
        if (v16 != -1)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v16, v21}];
          [v2 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  v18 = [v2 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

__CFString *STTelephonyDataConnectionTypeDebugName(unint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_279D35758[a1];
  }

  return v2;
}

__CFString *STTelephonyRegistrationStatusDebugName(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_279D357E8[a1];
  }

  return v2;
}

__CFString *STTelephonyCallForwardingIndicatorDebugName(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  else
  {
    v2 = off_279D35810[a1];
  }

  return v2;
}