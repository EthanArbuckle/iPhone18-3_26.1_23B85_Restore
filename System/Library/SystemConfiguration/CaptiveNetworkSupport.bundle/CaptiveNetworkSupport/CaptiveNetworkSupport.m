void UIAllowedNetworkingAppCheck(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (a1 && NotifyGet(a1, &v6))
  {
    v1 = v6 & 1;
  }

  else
  {
    v1 = 0;
  }

  if (S_networking_app_in_foreground != v1)
  {
    S_networking_app_in_foreground = v1;
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      v4 = "not ";
      if (S_networking_app_in_foreground)
      {
        v4 = "";
      }

      *buf = 136315394;
      v8 = "UIAllowedNetworkingAppCheck";
      v9 = 2080;
      v10 = v4;
      _os_log_impl(&dword_277237000, logger, v3, "%s: Networking App %sin foreground", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t NotifyCFCallback(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && a3 >= 0x18)
  {
    v4 = (a4 + 8);
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (*(a2 + 20) == *(v4 + 8))
      {
        return (v4[2])(v4[3], v4);
      }
    }
  }

  return result;
}

void UIAllowedNetworkingAppNotify(uint64_t a1, uint64_t a2)
{
  v2 = (S_wifi_suppressed & 1) == 0 && ((S_networking_app_in_foreground & 1) != 0 || S_wifi_settings_in_foreground == 1);
  UIAllowedNetworkingAppCheck(a2);

  UIAllowedInvokeCallback(v2);
}

os_log_t mysyslog_get_logger()
{
  result = S_captive_logger;
  if (!S_captive_logger)
  {
    result = os_log_create("com.apple.captive", "Framework");
    S_captive_logger = result;
  }

  return result;
}

void UIAllowedInvokeCallback(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (S_wifi_suppressed & 1) == 0 && ((S_networking_app_in_foreground & 1) != 0 || (S_wifi_settings_in_foreground))
  {
    if (a1)
    {
      goto LABEL_14;
    }

    v1 = 1;
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_14;
    }

    v1 = 0;
  }

  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    v4 = "false";
    if (v1)
    {
      v4 = "true";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_277237000, logger, v3, "uiallowed: %s", &v6, 0xCu);
  }

  if (S_callback)
  {
    S_callback(v1);
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
}

void CaptiveHandleUIAllowedChange(int a1)
{
  if (a1)
  {
    for (i = S_stateHeadStorage; i; i = *i)
    {
      if (*(i + 260) == 1)
      {
        CaptiveInteract(i);
      }
    }
  }
}

uint64_t my_CFArrayCopyIntersectionArray(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (a1 && a2)
  {
    v6 = MEMORY[0x277CBEB40];
    v7 = a2;
    v8 = [v6 orderedSetWithArray:a1];
    v9 = [MEMORY[0x277CBEB40] orderedSetWithArray:v7];

    [v8 intersectOrderedSet:v9];
    v5 = [v8 array];
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void *CopySIMStatus()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:0];
  v2 = v1;
  if (!v1)
  {
    v6 = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v6, v9, "failed to get the CoreTelephonyClient instance", buf, 2u);
    }

    goto LABEL_9;
  }

  v3 = GetUserPreferredSubscriptionContext(v1);
  if (v3)
  {
    v12 = 0;
    v4 = [v2 getSIMStatus:v3 error:&v12];
    v5 = v12;
    if (!v5)
    {
      v6 = v4;

      v3 = v6;
      goto LABEL_10;
    }

    v6 = v5;
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_277237000, v7, v8, "getSIMStatus failed with error: %@", buf, 0xCu);
    }

LABEL_9:
    v3 = 0;
LABEL_10:
  }

  objc_autoreleasePoolPop(v0);
  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

id GetUserPreferredSubscriptionContext(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v1 = [a1 getSubscriptionInfoWithError:&v28];
  v2 = v28;
  if (v2)
  {
    v3 = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v3, v4))
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }

    *buf = 138412290;
    v31 = v2;
    v5 = "CoreTelephonyClient.getSubscriptionInfoWithError failed with error: %@";
    v6 = v3;
    v7 = v4;
    v8 = 12;
LABEL_4:
    _os_log_impl(&dword_277237000, v6, v7, v5, buf, v8);
    goto LABEL_5;
  }

  if (!v1)
  {
    v19 = [0 subscriptions];
    if (!v19 || (v20 = v19, [0 subscriptions], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, !v22))
    {
      v3 = mysyslog_get_logger();
      v23 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v3, v23))
      {
        goto LABEL_5;
      }

      *buf = 0;
      v5 = "failed to get the subscription contexts";
      v6 = v3;
      v7 = v23;
      v8 = 2;
      goto LABEL_4;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [v1 subscriptions];
  v9 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v3);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (v14)
        {
          v15 = [*(*(&v24 + 1) + 8 * i) userDataPreferred];
          if (v15)
          {
            v16 = v15;
            v17 = [v14 userDataPreferred];
            v18 = [v17 BOOLValue];

            if (v18)
            {
              v9 = v14;
              goto LABEL_6;
            }
          }
        }
      }

      v9 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t CopyPhoneNumber()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:0];
  v2 = v1;
  if (v1)
  {
    v3 = GetUserPreferredSubscriptionContext(v1);
    if (!v3)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = v3;
    v5 = [v3 phoneNumber];
  }

  else
  {
    v4 = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v4, v6))
    {
      *v8 = 0;
      _os_log_impl(&dword_277237000, v4, v6, "failed to get the CoreTelephonyClient instance", v8, 2u);
    }

    v5 = 0;
  }

LABEL_9:
  objc_autoreleasePoolPop(v0);
  return v5;
}

id CopyRATSelection()
{
  v0 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v1 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:0];
  v2 = v1;
  if (!v1)
  {
    v3 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v3, v10, "failed to get the CoreTelephonyClient instance", buf, 2u);
    }

    v9 = 0;
    goto LABEL_13;
  }

  v3 = GetUserPreferredSubscriptionContext(v1);
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __CopyRATSelection_block_invoke;
    v12[3] = &unk_27A714220;
    v14 = &v16;
    v5 = v4;
    v13 = v5;
    [v2 getRatSelection:v3 completion:v12];
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = mysyslog_get_logger();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, v7, v8, "timed out while waiting for getting RAT selection", buf, 2u);
      }

      v9 = 0;
    }

    else
    {
      v9 = v17[5];
    }

LABEL_13:
    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v0);
  return v9;
}

void sub_277239354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __CopyRATSelection_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_277237000, v9, v10, "getRatSelection failed with error: %@", &v12, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

id CopyMobileEquipmentInfo()
{
  v39 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v1 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:0];
  v2 = v1;
  if (!v1)
  {
    v3 = mysyslog_get_logger();
    v11 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v3, v11, "failed to get the CoreTelephonyClient instance", buf, 2u);
    }

    goto LABEL_10;
  }

  v3 = GetUserPreferredSubscriptionContext(v1);
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __CopyMobileEquipmentInfo_block_invoke;
    v28[3] = &unk_27A714248;
    v30 = &v32;
    v5 = v4;
    v29 = v5;
    [v2 copyMobileEquipmentInfo:v28];
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = mysyslog_get_logger();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, v7, v8, "timed out while waiting for copying mobile equipment info list", buf, 2u);
      }

      v9 = 0;
      v10 = 0;
LABEL_7:

      goto LABEL_24;
    }

    v12 = v33[5];
    if (!v12 || ![v12 count])
    {
      v9 = 0;
      v10 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v33[5];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v14)
    {
      v15 = *v25;
LABEL_16:
      v16 = 0;
      while (1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = [v17 slotId];
        if (v18 == [v3 slotID])
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
          if (v14)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v10 = v17;

      if (!v10)
      {
        goto LABEL_32;
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = [v10 MEID];

      if (v21)
      {
        v22 = [v10 MEID];
        [v9 setObject:v22 forKeyedSubscript:*MEMORY[0x277CC3B20]];
      }

      v23 = [v10 EUIMID];

      if (v23)
      {
        v7 = [v10 EUIMID];
        [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CC3B18]];
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_22:

LABEL_32:
LABEL_10:
    v9 = 0;
    v10 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
LABEL_26:

  _Block_object_dispose(&v32, 8);
  objc_autoreleasePoolPop(v0);
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_277239894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CopyMobileEquipmentInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_277237000, v6, v7, "copyMobileEquipmentInfo failed with error: %@", &v12, 0xCu);
    }
  }

  else
  {
    v8 = [a2 meInfoList];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t CopyCarrierAccountSettings(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v3 = [objc_alloc(MEMORY[0x277CC37B8]) initWithQueue:0];
  v4 = v3;
  if (!v3)
  {
    v5 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v5, v10, "failed to get the CoreTelephonyClient instance", buf, 2u);
    }

    goto LABEL_10;
  }

  v5 = GetUserPreferredSubscriptionContext(v3);
  if (!v5)
  {
LABEL_13:
    v11 = v22[3];
    goto LABEL_14;
  }

  v6 = [objc_alloc(MEMORY[0x277CC3618]) initWithBundleType:1];
  if (!v6)
  {
LABEL_12:

    goto LABEL_13;
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __CopyCarrierAccountSettings_block_invoke;
  v14[3] = &unk_27A714270;
  v14[4] = &v21;
  v14[5] = buf;
  [v4 copyCarrierBundleValue:v5 key:a1 bundleType:v6 completion:v14];
  v7 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(*(v16 + 5), v7))
  {
    _Block_object_dispose(buf, 8);

    goto LABEL_12;
  }

  v8 = mysyslog_get_logger();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    *v13 = 0;
    _os_log_impl(&dword_277237000, v8, v9, "timed out while waiting for copying carrier settings", v13, 2u);
  }

  _Block_object_dispose(buf, 8);
LABEL_10:
  v11 = 0;
LABEL_14:

  _Block_object_dispose(&v21, 8);
  objc_autoreleasePoolPop(v2);
  return v11;
}

void sub_277239C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __CopyCarrierAccountSettings_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v8 = mysyslog_get_logger();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v8, v9))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_277237000, v8, v9, "copyCarrierBundleValue failed with error: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 32) + 8) + 24) = v5;
      CFRetain(*(*(*(a1 + 32) + 8) + 24));
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));

  v10 = *MEMORY[0x277D85DE8];
}

CarrierSettingsStatusIndicator *_CBAccessConnectionCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(CarrierSettingsStatusIndicator);
  [(CarrierSettingsStatusIndicator *)v7 createConnection];
  [(CarrierSettingsStatusIndicator *)v7 setCallback:a1];
  [(CarrierSettingsStatusIndicator *)v7 setRunloop:a2];
  [(CarrierSettingsStatusIndicator *)v7 setRunloopMode:a3];
  objc_autoreleasePoolPop(v6);
  return v7;
}

void *captive_agent_send_probe(const void *a1, const __CFString *a2, int a3, __CFString *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x277D85DE8];
  v15 = malloc_type_malloc(0x38uLL, 0x10A0040D4AB39ECuLL);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_49;
  }

  *(v15 + 6) = 0;
  v15[1] = 0u;
  v15[2] = 0u;
  *v15 = 0u;
  create_connection(v15);
  v16[4] = a6;
  *v16 = a8;
  v16[1] = a7;
  *(v16 + 7) = 0;
  v17 = CaptiveCopyProbeSettings();
  v18 = v17;
  if (v17)
  {
    Value = CFDictionaryGetValue(v17, @"ProbeURL");
    if (Value)
    {
      v20 = Value;
      v21 = CFGetTypeID(Value);
      if (v21 == CFStringGetTypeID())
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v27 = CFDictionaryGetValue(v18, @"UserAgent");
    v26 = @"wispr";
    if (v27)
    {
      v28 = v27;
      v29 = CFGetTypeID(v27);
      if (v29 == CFStringGetTypeID())
      {
        v26 = v28;
      }
    }

    if (a1 && (v30 = CFDictionaryGetValue(v18, @"SSIDExceptions")) != 0 && (v31 = v30, v32 = CFGetTypeID(v30), v32 == CFDictionaryGetTypeID()) && (v33 = CFDictionaryGetValue(v31, a1)) != 0 && (v34 = v33, v35 = CFGetTypeID(v33), v35 == CFDictionaryGetTypeID()))
    {
      v36 = CFDictionaryGetValue(v34, @"ProbeURL");
      if (v36)
      {
        v37 = v36;
        v38 = CFGetTypeID(v36);
        if (v38 == CFStringGetTypeID())
        {
          v25 = v37;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v55 = CFDictionaryGetValue(v34, @"UserAgent");
      if (v55)
      {
        v56 = v55;
        v57 = CFGetTypeID(v55);
        if (v57 == CFStringGetTypeID())
        {
          v26 = v56;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    logger = mysyslog_get_logger();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v24))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v24, "Unable to open settings file, using default values", buf, 2u);
    }

    v25 = 0;
    v22 = 0;
    v26 = @"wispr";
  }

  if (a4)
  {
    CFRetain(a4);
    if (!a3)
    {
      goto LABEL_56;
    }

LABEL_29:
    v39 = @"NetworkCTS";
    goto LABEL_30;
  }

  if (a3)
  {
    a4 = @"http://netcts.cdn-apple.com";
    CFRetain(@"http://netcts.cdn-apple.com");
    goto LABEL_29;
  }

  v53 = @"http://captive.apple.com/hotspot-detect.html";
  if (v22)
  {
    v53 = v22;
  }

  if (v25)
  {
    a4 = v25;
  }

  else
  {
    a4 = v53;
  }

  CFRetain(a4);
LABEL_56:
  v54 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s %@", "CaptiveNetworkSupport-514.0.0.0.1", v26);
  if (!v54)
  {
    v39 = @"CaptiveNetworkSupport-??? wispr";
LABEL_30:
    CFRetain(v39);
    if (!v18)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v39 = v54;
  if (v18)
  {
LABEL_31:
    CFRelease(v18);
  }

LABEL_32:
  v40 = mysyslog_get_logger();
  v41 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v40, v41))
  {
    *buf = 138412546;
    v61 = v39;
    v62 = 2112;
    v63 = a4;
    _os_log_impl(&dword_277237000, v40, v41, "user-agent:%@ url:%@", buf, 0x16u);
  }

  v42 = copy_cstring(a2);
  if (v42)
  {
    v43 = v42;
    v44 = copy_cstring(a4);
    if (v44)
    {
      v45 = v44;
      v46 = copy_cstring(v39);
      if (v46)
      {
        v47 = xpc_dictionary_create(0, 0, 0);
        v48 = v47;
        if (v47)
        {
          xpc_dictionary_set_uint64(v47, "MessageType", 0);
          xpc_dictionary_set_string(v48, "ProbeURL", v45);
          xpc_dictionary_set_string(v48, "InterfaceName", v43);
          xpc_dictionary_set_string(v48, "UserAgent", v46);
          xpc_dictionary_set_uint64(v48, "ProbeTimeout", a5);
        }
      }

      else
      {
        v48 = 0;
      }

      v49 = *MEMORY[0x277CBECE8];
      CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v43);
      CFAllocatorDeallocate(v49, v45);
      if (v46)
      {
        CFAllocatorDeallocate(v49, v46);
      }

      goto LABEL_44;
    }

    CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v43);
  }

  v48 = 0;
LABEL_44:
  CFRelease(a4);
  CFRelease(v39);
  if (v48)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __captive_agent_send_probe_block_invoke;
    block[3] = &__block_descriptor_tmp;
    block[4] = v16;
    block[5] = v48;
    dispatch_sync(g_queue, block);
    xpc_release(v48);
  }

  else
  {
    v50 = v16[2];
    if (v50)
    {
      xpc_release(v50);
    }

    free(v16);
    v16 = 0;
  }

LABEL_49:
  v51 = *MEMORY[0x277D85DE8];
  return v16;
}

void create_connection(uint64_t a1)
{
  if (create_connection_client_init != -1)
  {
    create_connection_cold_1();
  }

  mach_service = xpc_connection_create_mach_service("com.apple.captiveagent", g_queue, 2uLL);
  *(a1 + 16) = mach_service;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __create_connection_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_89;
  handler[4] = a1;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(*(a1 + 16));
}

void __captive_agent_send_probe_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = g_connections;
  *(v1 + 40) = g_connections;
  if (v2)
  {
    *(v2 + 48) = v1 + 40;
  }

  g_connections = v1;
  *(v1 + 48) = &g_connections;
  send_message(*(a1 + 40), *(a1 + 32));
}

void send_message(void *a1, uint64_t a2)
{
  if (CaptiveIsDebug())
  {
    xpc_dictionary_set_BOOL(a1, "EnableDebug", 1);
  }

  v4 = *(a2 + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __send_message_block_invoke;
  handler[3] = &__block_descriptor_tmp_97;
  handler[4] = a2;
  xpc_connection_send_message_with_reply(v4, a1, g_queue, handler);
}

void captive_agent_abort_probe(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __captive_agent_abort_probe_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = a1;
  dispatch_sync(g_queue, block);
  *a1 = 0;
}

void __captive_agent_abort_probe_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(v1 + 24) = 1;
    xpc_connection_cancel(*(v1 + 16));
  }
}

_BYTE *captive_agent_login(const __CFDictionary *a1, const __CFString *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = malloc_type_malloc(0x38uLL, 0x10A0040D4AB39ECuLL);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_24;
  }

  *(v12 + 6) = 0;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  create_connection(v12);
  v13[24] = 0;
  *(v13 + 4) = a5;
  *(v13 + 7) = 1;
  *v13 = a4;
  *(v13 + 1) = a6;
  Value = CFDictionaryGetValue(a1, kWISPrLoginURL[0]);
  v15 = CFDictionaryGetValue(a1, kUserAgent[0]);
  if (!a3 || (MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3)) == 0)
  {
    v17 = 0;
    v18 = Value == 0;
    v19 = v15 == 0;
    v21 = 1;
LABEL_11:
    logger = mysyslog_get_logger();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v23))
    {
      v24 = "";
      v25 = " url";
      if (!v18)
      {
        v25 = "";
      }

      v26 = " agent";
      if (!v19)
      {
        v26 = "";
      }

      *buf = 136315650;
      v49 = v25;
      v50 = 2080;
      v51 = v26;
      if (v21)
      {
        v24 = " POST variables";
      }

      v52 = 2080;
      v53 = v24;
      _os_log_impl(&dword_277237000, logger, v23, "wispr dictionary does not contain%s%s%s", buf, 0x20u);
    }

    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v17 = MutableCopy;
  CFDictionaryAddValue(MutableCopy, @"OriginatingServer", @"http://www.apple.com/");
  CFDictionaryAddValue(v17, @"button", @"Login");
  CFDictionaryAddValue(v17, @"FNAME", @"0");
  v18 = Value == 0;
  v19 = v15 == 0;
  if (Value)
  {
    v20 = v15 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
    goto LABEL_11;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v31 = Mutable;
    CFDictionaryApplyFunction(v17, add_post_variable, Mutable);
    v32 = *MEMORY[0x277CBECE8];
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x277CBECE8], v31, 0x8000100u, 0);
    CFRelease(v31);
    if (ExternalRepresentation)
    {
      Length = CFDataGetLength(ExternalRepresentation);
      v35 = malloc_type_malloc(Length, 0xF8832B04uLL);
      if (v35)
      {
        v55.length = CFDataGetLength(ExternalRepresentation);
        v55.location = 0;
        CFDataGetBytes(ExternalRepresentation, v55, v35);
        v36 = copy_cstring(a2);
        if (v36)
        {
          v37 = copy_cstring(Value);
          if (v37)
          {
            v38 = copy_cstring(v15);
            if (v38)
            {
              v39 = xpc_dictionary_create(0, 0, 0);
              if (v39)
              {
                v40 = v39;
                xpc_dictionary_set_uint64(v39, "MessageType", 2uLL);
                xpc_dictionary_set_string(v40, "LoginURL", v37);
                xpc_dictionary_set_string(v40, "InterfaceName", v36);
                xpc_dictionary_set_string(v40, "UserAgent", v38);
                v41 = CFDataGetLength(ExternalRepresentation);
                xpc_dictionary_set_data(v40, "LoginBody", v35, v41);
                CFRelease(v17);
                CFRelease(ExternalRepresentation);
LABEL_41:
                free(v35);
                v46 = v40;
LABEL_42:
                if (v36)
                {
                  CFAllocatorDeallocate(v32, v36);
                }

                if (v37)
                {
                  CFAllocatorDeallocate(v32, v37);
                }

                if (v38)
                {
                  CFAllocatorDeallocate(v32, v38);
                }

                if (v46)
                {
                  v47[0] = MEMORY[0x277D85DD0];
                  v47[1] = 0x40000000;
                  v47[2] = __captive_agent_login_block_invoke;
                  v47[3] = &__block_descriptor_tmp_2;
                  v47[4] = v13;
                  v47[5] = v46;
                  dispatch_sync(g_queue, v47);
                  xpc_release(v46);
                  goto LABEL_24;
                }

                goto LABEL_21;
              }
            }

LABEL_40:
            CFRelease(v17);
            CFRelease(ExternalRepresentation);
            v40 = 0;
            v46 = 0;
            if (!v35)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_39:
          v38 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v36 = 0;
      }

      v37 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    v42 = mysyslog_get_logger();
    v43 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v42, v43))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v42, v43, "CFStringCreateMutable failed", buf, 2u);
    }
  }

  v44 = mysyslog_get_logger();
  v45 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v44, v45))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v44, v45, "create_login_body() failed", buf, 2u);
  }

LABEL_20:
  CFRelease(v17);
LABEL_21:
  v27 = *(v13 + 2);
  if (v27)
  {
    xpc_release(v27);
  }

  free(v13);
  v13 = 0;
LABEL_24:
  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

void __captive_agent_login_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = g_connections;
  *(v1 + 40) = g_connections;
  if (v2)
  {
    *(v2 + 48) = v1 + 40;
  }

  g_connections = v1;
  *(v1 + 48) = &g_connections;
  send_message(*(a1 + 40), *(a1 + 32));
}

void captive_agent_abort_login(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __captive_agent_abort_login_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = a1;
  dispatch_sync(g_queue, block);
  *a1 = 0;
}

void __captive_agent_abort_login_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(v1 + 24) = 1;
    xpc_connection_cancel(*(v1 + 16));
  }
}

void *captive_agent_token_login(const __CFString *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = malloc_type_malloc(0x38uLL, 0x10A0040D4AB39ECuLL);
  v13 = v12;
  if (v12)
  {
    v12[6] = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    create_connection(v12);
    *(v13 + 24) = 0;
    v13[4] = a5;
    *(v13 + 7) = 5;
    *v13 = a4;
    v13[1] = a6;
    Value = CFDictionaryGetValue(a2, kTokenAuthLoginURL[0]);
    v15 = CFDictionaryGetValue(a2, @"Password");
    TypeID = CFStringGetTypeID();
    if (!v15)
    {
      return 0;
    }

    if (CFGetTypeID(v15) != TypeID)
    {
      return 0;
    }

    v17 = *MEMORY[0x277CBECE8];
    ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x277CBECE8], v15, 0x8000100u, 0);
    if (!ExternalRepresentation)
    {
      return 0;
    }

    v19 = ExternalRepresentation;
    v20 = copy_cstring(a1);
    if (!v20)
    {
      CFRelease(v19);
      return 0;
    }

    v21 = v20;
    v22 = CFStringGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == v22)
      {
        Value = copy_cstring(Value);
        if (!Value)
        {
          v23 = 0;
          Value = v21;
          goto LABEL_17;
        }
      }

      else
      {
        Value = 0;
      }
    }

    v24 = xpc_dictionary_create(0, 0, 0);
    v23 = v24;
    if (v24)
    {
      xpc_dictionary_set_uint64(v24, "MessageType", 0xAuLL);
      if (Value)
      {
        xpc_dictionary_set_string(v23, "TokenAuthURL", Value);
      }

      xpc_dictionary_set_string(v23, "InterfaceName", v21);
      xpc_dictionary_set_string(v23, "UserAgent", "CaptiveNetworkSupport-514.0.0.0.1");
      xpc_dictionary_set_uint64(v23, "TokenAuthTimeout", a3);
      BytePtr = CFDataGetBytePtr(v19);
      Length = CFDataGetLength(v19);
      xpc_dictionary_set_data(v23, "TokenAuthCredential", BytePtr, Length);
    }

    CFAllocatorDeallocate(v17, v21);
    if (!Value)
    {
LABEL_18:
      CFRelease(v19);
      if (v23)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 0x40000000;
        v28[2] = __captive_agent_token_login_block_invoke;
        v28[3] = &__block_descriptor_tmp_4;
        v28[4] = v13;
        v28[5] = v23;
        dispatch_sync(g_queue, v28);
        xpc_release(v23);
        return v13;
      }

      return 0;
    }

LABEL_17:
    CFAllocatorDeallocate(v17, Value);
    goto LABEL_18;
  }

  return v13;
}

void __captive_agent_token_login_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = g_connections;
  *(v1 + 40) = g_connections;
  if (v2)
  {
    *(v2 + 48) = v1 + 40;
  }

  g_connections = v1;
  *(v1 + 48) = &g_connections;
  send_message(*(a1 + 40), *(a1 + 32));
}

void captive_agent_abort_token_auth(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __captive_agent_abort_token_auth_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = a1;
  dispatch_sync(g_queue, block);
  *a1 = 0;
}

void __captive_agent_abort_token_auth_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(v1 + 24) = 1;
    xpc_connection_cancel(*(v1 + 16));
  }
}

void *captive_agent_logout(const __CFDictionary *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(a1, kWISPrLogoffURL[0]);
  if (!Value)
  {
    logger = mysyslog_get_logger();
    v27 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v27, "login result dictionary does not contain logout URL", buf, 2u);
    }

    return 0;
  }

  v11 = Value;
  v12 = CFDictionaryGetValue(a1, kUserAgent[0]);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"CaptiveNetworkSupport-??? wispr";
  }

  v14 = malloc_type_malloc(0x38uLL, 0x10A0040D4AB39ECuLL);
  v15 = v14;
  if (v14)
  {
    *(v14 + 6) = 0;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    create_connection(v14);
    v15[4] = a4;
    *v15 = a3;
    v15[1] = a5;
    *(v15 + 7) = 2;
    v16 = xpc_dictionary_create(0, 0, 0);
    if (v16)
    {
      v17 = v16;
      v18 = copy_cstring(v11);
      if (v18)
      {
        v19 = v18;
        v20 = copy_cstring(a2);
        if (v20)
        {
          v21 = v20;
          v22 = copy_cstring(v13);
          if (v22)
          {
            xpc_dictionary_set_uint64(v17, "MessageType", 4uLL);
            xpc_dictionary_set_string(v17, "LogoffURL", v19);
            xpc_dictionary_set_string(v17, "InterfaceName", v21);
            xpc_dictionary_set_string(v17, "UserAgent", v22);
          }

          v23 = *MEMORY[0x277CBECE8];
          CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v19);
          CFAllocatorDeallocate(v23, v21);
          if (!v22)
          {
            goto LABEL_21;
          }

          v24 = v23;
          v25 = v22;
        }

        else
        {
          v24 = *MEMORY[0x277CBECE8];
          v25 = v19;
        }

        CFAllocatorDeallocate(v24, v25);
      }

LABEL_21:
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 0x40000000;
      v30[2] = __captive_agent_logout_block_invoke;
      v30[3] = &__block_descriptor_tmp_7;
      v30[4] = v15;
      v30[5] = v17;
      dispatch_sync(g_queue, v30);
      xpc_release(v17);
      return v15;
    }

    v28 = v15[2];
    if (v28)
    {
      xpc_release(v28);
    }

    free(v15);
    return 0;
  }

  return v15;
}

void __captive_agent_logout_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = g_connections;
  *(v1 + 40) = g_connections;
  if (v2)
  {
    *(v2 + 48) = v1 + 40;
  }

  g_connections = v1;
  *(v1 + 48) = &g_connections;
  send_message(*(a1 + 40), *(a1 + 32));
}

void captive_agent_abort_logout(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __captive_agent_abort_logout_block_invoke;
  block[3] = &__block_descriptor_tmp_8;
  block[4] = a1;
  dispatch_sync(g_queue, block);
  *a1 = 0;
}

void __captive_agent_abort_logout_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(v1 + 24) = 1;
    xpc_connection_cancel(*(v1 + 16));
  }
}

void *captive_agent_query_api(uint64_t a1, const __CFString *a2, const __CFString *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = malloc_type_malloc(0x38uLL, 0x10A0040D4AB39ECuLL);
  v14 = v13;
  if (v13)
  {
    *(v13 + 6) = 0;
    v13[1] = 0u;
    v13[2] = 0u;
    *v13 = 0u;
    create_connection(v13);
    v14[4] = a5;
    *v14 = a7;
    v14[1] = a6;
    *(v14 + 7) = 4;
    v15 = copy_cstring(a2);
    if (v15)
    {
      v16 = v15;
      v17 = copy_cstring(a3);
      if (v17)
      {
        v18 = v17;
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          v20 = v19;
          xpc_dictionary_set_uint64(v19, "MessageType", 8uLL);
          xpc_dictionary_set_string(v20, "PortalAPIURI", v18);
          xpc_dictionary_set_string(v20, "InterfaceName", v16);
          xpc_dictionary_set_string(v20, "UserAgent", "CaptiveNetworkSupport-514.0.0.0.1");
          xpc_dictionary_set_uint64(v20, "ProbeTimeout", a4);
          v21 = *MEMORY[0x277CBECE8];
          CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v16);
          CFAllocatorDeallocate(v21, v18);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 0x40000000;
          v27[2] = __captive_agent_query_api_block_invoke;
          v27[3] = &__block_descriptor_tmp_9;
          v27[4] = v14;
          v27[5] = v20;
          dispatch_sync(g_queue, v27);
          xpc_release(v20);
          return v14;
        }

        v24 = *MEMORY[0x277CBECE8];
        CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v16);
        v22 = v24;
        v23 = v18;
      }

      else
      {
        v22 = *MEMORY[0x277CBECE8];
        v23 = v16;
      }

      CFAllocatorDeallocate(v22, v23);
    }

    v25 = v14[2];
    if (v25)
    {
      xpc_release(v25);
    }

    free(v14);
    return 0;
  }

  return v14;
}

void __captive_agent_query_api_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = g_connections;
  *(v1 + 40) = g_connections;
  if (v2)
  {
    *(v2 + 48) = v1 + 40;
  }

  g_connections = v1;
  *(v1 + 48) = &g_connections;
  send_message(*(a1 + 40), *(a1 + 32));
}

void captive_agent_abort_query(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __captive_agent_abort_query_block_invoke;
  block[3] = &__block_descriptor_tmp_10;
  block[4] = a1;
  dispatch_sync(g_queue, block);
  *a1 = 0;
}

void __captive_agent_abort_query_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(v1 + 24) = 1;
    xpc_connection_cancel(*(v1 + 16));
  }
}

void *captive_agent_get_credentials(const __CFString *a1, const __CFString *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = malloc_type_malloc(0x38uLL, 0x10A0040D4AB39ECuLL);
  v14 = v13;
  if (v13)
  {
    *(v13 + 6) = 0;
    v13[1] = 0u;
    v13[2] = 0u;
    *v13 = 0u;
    create_connection(v13);
    v14[4] = a5;
    *v14 = a7;
    v14[1] = a6;
    *(v14 + 7) = 3;
    v15 = xpc_dictionary_create(0, 0, 0);
    if (v15)
    {
      v16 = v15;
      v17 = copy_cstring(a1);
      if (v17)
      {
        v18 = v17;
        v19 = copy_cstring(a2);
        if (v19)
        {
          v20 = v19;
          v21 = copy_cstring(@"CaptiveNetworkSupport-514.0.0.0.1");
          if (v21)
          {
            xpc_dictionary_set_uint64(v16, "MessageType", 6uLL);
            xpc_dictionary_set_string(v16, "CredentialsURL", v18);
            xpc_dictionary_set_string(v16, "UserAgent", v21);
            xpc_dictionary_set_string(v16, "ServiceType", v20);
            xpc_dictionary_set_uint64(v16, "ProbeTimeout", a4);
          }

          v22 = *MEMORY[0x277CBECE8];
          CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v18);
          CFAllocatorDeallocate(v22, v20);
          if (!v21)
          {
            goto LABEL_14;
          }

          v23 = v22;
          v24 = v21;
        }

        else
        {
          v23 = *MEMORY[0x277CBECE8];
          v24 = v18;
        }

        CFAllocatorDeallocate(v23, v24);
      }

LABEL_14:
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 0x40000000;
      v27[2] = __captive_agent_get_credentials_block_invoke;
      v27[3] = &__block_descriptor_tmp_14;
      v27[4] = v14;
      v27[5] = v16;
      dispatch_sync(g_queue, v27);
      xpc_release(v16);
      return v14;
    }

    v25 = v14[2];
    if (v25)
    {
      xpc_release(v25);
    }

    free(v14);
    return 0;
  }

  return v14;
}

void __captive_agent_get_credentials_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = g_connections;
  *(v1 + 40) = g_connections;
  if (v2)
  {
    *(v2 + 48) = v1 + 40;
  }

  g_connections = v1;
  *(v1 + 48) = &g_connections;
  send_message(*(a1 + 40), *(a1 + 32));
}

void captive_agent_get_credentials_abort(void *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __captive_agent_get_credentials_abort_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = a1;
  dispatch_sync(g_queue, block);
  *a1 = 0;
}

void __captive_agent_get_credentials_abort_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(v1 + 24) = 1;
    xpc_connection_cancel(*(v1 + 16));
  }
}

void *copy_cstring(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = *MEMORY[0x277CBECE8];
  v5 = MEMORY[0x277CAA770](*MEMORY[0x277CBECE8], MaximumSizeForEncoding, 0x100004077774924, 0);
  if (v5 && !CFStringGetCString(a1, v5, MaximumSizeForEncoding, 0x8000100u))
  {
    CFAllocatorDeallocate(v4, v5);
    return 0;
  }

  return v5;
}

void add_post_variable(CFStringRef originalString, const __CFString *a2, __CFString *a3)
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], originalString, 0, 0, 0x8000100u);
  TypeID = CFStringGetTypeID();
  if (a2)
  {
    if (CFGetTypeID(a2) == TypeID)
    {
      a2 = CFURLCreateStringByAddingPercentEscapes(v5, a2, 0, 0, 0x8000100u);
    }

    else
    {
      CFRetain(a2);
    }
  }

  if (CFStringGetLength(a3) >= 1)
  {
    CFStringAppend(a3, @"&");
  }

  if (v6)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CFStringAppendFormat(a3, 0, @"%@=%@", v6, a2);
    goto LABEL_17;
  }

  if (v6)
  {
LABEL_17:
    CFRelease(v6);
    if (!a2)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    return;
  }

LABEL_14:

  CFRelease(a2);
}

dispatch_queue_t __create_connection_block_invoke()
{
  result = dispatch_queue_create("com.apple.captiveagent", 0);
  g_queue = result;
  g_connections = 0;
  return result;
}

void __create_connection_block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 && MEMORY[0x277CABCE0](a2) == MEMORY[0x277D86480])
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
      LODWORD(v15) = 136315138;
      *(&v15 + 4) = string;
      _os_log_impl(&dword_277237000, logger, v6, "xpc event handler block got an error on the XPC connection: %s", &v15, 0xCu);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = g_connections;
      if (g_connections)
      {
        while (v9 != v8)
        {
          v9 = *(v9 + 40);
          if (!v9)
          {
            goto LABEL_3;
          }
        }

        if (*(v8 + 24))
        {
          cleanup_context(*(a1 + 32));
        }

        else
        {
          v10 = *(v8 + 28);
          if (v10 <= 1)
          {
            if (v10)
            {
              if (v10 == 1)
              {
                schedule_login_response_handler(*(v8 + 32), *(a1 + 32), *v8, *(v8 + 8), 0);
              }
            }

            else
            {
              schedule_probe_response_handler(*(v8 + 32), *(a1 + 32), *v8, *(v8 + 8), 13, 0);
            }
          }

          else
          {
            switch(v10)
            {
              case 2:
                v11 = *(v8 + 32);
                v13 = *v8;
                v12 = *(v8 + 8);
                v14 = *MEMORY[0x277CBF058];
                *&v15 = MEMORY[0x277D85DD0];
                *(&v15 + 1) = 0x40000000;
                v16 = __schedule_logout_response_handler_block_invoke;
                v17 = &__block_descriptor_tmp_95;
                v18 = v8;
                v19 = v11;
                v20 = v12;
                v21 = 13;
                CFRunLoopPerformBlock(v13, v14, &v15);
                CFRunLoopWakeUp(v13);
                break;
              case 3:
                schedule_get_creds_response_handler(*(v8 + 32), *(a1 + 32), *v8, *(v8 + 8), 13, 0);
                break;
              case 4:
                schedule_query_api_response_handler(*(v8 + 32), *(a1 + 32), *v8, *(v8 + 8), 13, 0);
                break;
            }
          }
        }
      }
    }
  }

LABEL_3:
  v4 = *MEMORY[0x277D85DE8];
}

void cleanup_context(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  if (v2)
  {
    *(v2 + 48) = v3;
  }

  *v3 = v2;
  v4 = a1[2];
  if (v4)
  {
    xpc_release(v4);
  }

  free(a1);
}

void schedule_probe_response_handler(uint64_t a1, uint64_t a2, CFRunLoopRef rl, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __schedule_probe_response_handler_block_invoke;
  block[3] = &__block_descriptor_tmp_90;
  block[4] = a2;
  block[5] = a1;
  v9 = a5;
  block[6] = a4;
  block[7] = a6;
  CFRunLoopPerformBlock(rl, v7, block);
  CFRunLoopWakeUp(rl);
}

void schedule_query_api_response_handler(uint64_t a1, uint64_t a2, CFRunLoopRef rl, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __schedule_query_api_response_handler_block_invoke;
  block[3] = &__block_descriptor_tmp_92;
  block[4] = a2;
  block[5] = a1;
  v9 = a5;
  block[6] = a4;
  block[7] = a6;
  CFRunLoopPerformBlock(rl, v7, block);
  CFRunLoopWakeUp(rl);
}

void schedule_login_response_handler(uint64_t a1, uint64_t a2, CFRunLoopRef rl, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277CBF058];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = __schedule_login_response_handler_block_invoke;
  v7[3] = &__block_descriptor_tmp_93;
  v7[4] = a2;
  v7[5] = a1;
  v7[6] = a4;
  v7[7] = a5;
  CFRunLoopPerformBlock(rl, v6, v7);
  CFRunLoopWakeUp(rl);
}

void schedule_get_creds_response_handler(uint64_t a1, uint64_t a2, CFRunLoopRef rl, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __schedule_get_creds_response_handler_block_invoke;
  block[3] = &__block_descriptor_tmp_94;
  block[4] = a2;
  block[5] = a1;
  v9 = a5;
  block[6] = a4;
  block[7] = a6;
  CFRunLoopPerformBlock(rl, v7, block);
  CFRunLoopWakeUp(rl);
}

void __schedule_probe_response_handler_block_invoke(uint64_t a1)
{
  if (should_process_response(*(a1 + 32)))
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t should_process_response(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __should_process_response_block_invoke;
  v3[3] = &unk_27A7144A0;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(g_queue, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __should_process_response_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = g_connections;
  if (v1)
  {
    v3 = g_connections == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    while (v2 != v1)
    {
      v2 = *(v2 + 40);
      if (!v2)
      {
        return;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = *(v1 + 24) == 0;
    cleanup_context(*(a1 + 40));
  }
}

void __schedule_query_api_response_handler_block_invoke(uint64_t a1)
{
  if (should_process_response(*(a1 + 32)))
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __schedule_login_response_handler_block_invoke(uint64_t a1)
{
  if (should_process_response(*(a1 + 32)))
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 56));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __schedule_get_creds_response_handler_block_invoke(uint64_t a1)
{
  if (should_process_response(*(a1 + 32)))
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __schedule_logout_response_handler_block_invoke(uint64_t a1)
{
  result = should_process_response(*(a1 + 32));
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 56);

    return v4(v3, v5);
  }

  return result;
}

void __send_message_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (MEMORY[0x277CABCE0](a2) == MEMORY[0x277D86468])
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = g_connections;
        if (g_connections)
        {
          while (v5 != v4)
          {
            v5 = *(v5 + 40);
            if (!v5)
            {
              return;
            }
          }

          if (*(v4 + 24))
          {

            cleanup_context(v4);
          }

          else
          {
            uint64 = xpc_dictionary_get_uint64(a2, "MessageType");
            if (uint64 <= 6)
            {
              if (uint64 == 1)
              {
                v27 = *(v4 + 32);
                v29 = *v4;
                v28 = *(v4 + 8);
                v30 = xpc_dictionary_get_uint64(a2, "ResultCode");
                if (xpc_dictionary_get_value(a2, "ProbeResultDict"))
                {
                  v31 = _CFXPCCreateCFObjectFromXPCObject();
                }

                else
                {
                  v31 = 0;
                }

                schedule_probe_response_handler(v27, v4, v29, v28, v30, v31);
              }

              else if (uint64 == 3)
              {
                v13 = *(v4 + 32);
                v15 = *v4;
                v14 = *(v4 + 8);
                if (xpc_dictionary_get_value(a2, "LoginResultDict"))
                {
                  v16 = _CFXPCCreateCFObjectFromXPCObject();
                }

                else
                {
                  v16 = 0;
                }

                schedule_login_response_handler(v13, v4, v15, v14, v16);
              }
            }

            else
            {
              switch(uint64)
              {
                case 7:
                  v17 = *(v4 + 32);
                  v19 = *v4;
                  v18 = *(v4 + 8);
                  v20 = xpc_dictionary_get_uint64(a2, "ResultCode");
                  if (xpc_dictionary_get_value(a2, "GetCredsResultDict"))
                  {
                    v21 = _CFXPCCreateCFObjectFromXPCObject();
                  }

                  else
                  {
                    v21 = 0;
                  }

                  schedule_get_creds_response_handler(v17, v4, v19, v18, v20, v21);
                  break;
                case 9:
                  v22 = *(v4 + 32);
                  v24 = *v4;
                  v23 = *(v4 + 8);
                  v25 = xpc_dictionary_get_uint64(a2, "ResultCode");
                  if (xpc_dictionary_get_value(a2, "APIResultDict"))
                  {
                    v26 = _CFXPCCreateCFObjectFromXPCObject();
                  }

                  else
                  {
                    v26 = 0;
                  }

                  schedule_query_api_response_handler(v22, v4, v24, v23, v25, v26);
                  break;
                case 11:
                  v7 = *(v4 + 32);
                  v8 = *v4;
                  v9 = *(v4 + 8);
                  v10 = xpc_dictionary_get_uint64(a2, "ResultCode");
                  value = xpc_dictionary_get_value(a2, "TokenAuthResultDict");
                  if (value)
                  {
                    value = _CFXPCCreateCFObjectFromXPCObject();
                  }

                  v12 = *MEMORY[0x277CBF058];
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 0x40000000;
                  block[2] = __schedule_token_auth_response_handler_block_invoke;
                  block[3] = &__block_descriptor_tmp_104;
                  block[4] = v4;
                  block[5] = v7;
                  v33 = v10;
                  block[6] = v9;
                  block[7] = value;
                  CFRunLoopPerformBlock(v8, v12, block);
                  CFRunLoopWakeUp(v8);
                  break;
              }
            }
          }
        }
      }
    }
  }
}

void __schedule_token_auth_response_handler_block_invoke(uint64_t a1)
{
  if (should_process_response(*(a1 + 32)))
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

BOOL is_internal_install()
{
  v0 = is_internal_install_isInternal;
  if (is_internal_install_isInternal == -1)
  {
    v1 = open("/AppleInternal", 0);
    if (v1 == -1)
    {
      v0 = 0;
      is_internal_install_isInternal = 0;
    }

    else
    {
      is_internal_install_isInternal = 1;
      close(v1);
      v0 = is_internal_install_isInternal;
    }
  }

  return v0 == 1;
}

uint64_t CaptiveCopyInterfaceSSIDData(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  while (!CFEqual(v2[4], cf2));
  v3 = v2[7];
  if (v3)
  {
    CFRetain(v2[7]);
  }

  return v3;
}

uint64_t CaptiveCopyInterfaceSSID(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  while (!CFEqual(v2[4], cf2));
  v3 = v2[6];
  if (v3)
  {
    CFRetain(v2[6]);
  }

  return v3;
}

uint64_t CaptiveCopyInitialURL(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  while (!CFEqual(v2[4], cf2));
  v3 = v2[14];
  if (v3)
  {
    CFRetain(v2[14]);
  }

  return v3;
}

uint64_t CaptiveCopyPortalURL(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  while (!CFEqual(v2[4], cf2));
  v3 = v2[15];
  if (v3)
  {
    CFRetain(v2[15]);
  }

  return v3;
}

void CaptiveUpdateAPIState(CFTypeRef cf2, const void *a2)
{
  v4 = &S_stateHeadStorage;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (CFEqual(v4[4], cf2))
    {

      my_FieldSetRetainedCFType(v4 + 19, a2);
      return;
    }
  }
}

uint64_t CaptiveGetRedirectForInterface(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (CFEqual(v2[4], cf2))
    {
      return v2[17];
    }
  }

  return 0;
}

uint64_t CaptiveGetAuthReplyForInterface(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (CFEqual(v2[4], cf2))
    {
      return v2[18];
    }
  }

  return 0;
}

void CaptiveDumpStates()
{
  v65 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, logger, v1, "Captive states:", buf, 2u);
  }

  for (i = S_stateHeadStorage; i; i = *i)
  {
    v3 = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 134217984;
      v64 = i;
      _os_log_impl(&dword_277237000, v3, v4, "State %p:", buf, 0xCu);
    }

    v5 = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(i + 32);
      *buf = 138412290;
      v64 = v7;
      _os_log_impl(&dword_277237000, v5, v6, "  interface:   %@", buf, 0xCu);
    }

    v8 = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(i + 64);
      *buf = 138412290;
      v64 = v10;
      _os_log_impl(&dword_277237000, v8, v9, "  stage:       %@", buf, 0xCu);
    }

    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(i + 72);
      *buf = 134217984;
      v64 = v13;
      _os_log_impl(&dword_277237000, v11, v12, "  detect_ref:  %p", buf, 0xCu);
    }

    v14 = mysyslog_get_logger();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(i + 88);
      *buf = 134217984;
      v64 = v16;
      _os_log_impl(&dword_277237000, v14, v15, "  query_ref:   %p", buf, 0xCu);
    }

    v17 = mysyslog_get_logger();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(i + 80);
      *buf = 134217984;
      v64 = v19;
      _os_log_impl(&dword_277237000, v17, v18, "  login_ref:   %p", buf, 0xCu);
    }

    v20 = mysyslog_get_logger();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(i + 40);
      *buf = 134217984;
      v64 = v22;
      _os_log_impl(&dword_277237000, v20, v21, "  thirdParty:  %p", buf, 0xCu);
    }

    v23 = mysyslog_get_logger();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(i + 48);
      *buf = 138412290;
      v64 = v25;
      _os_log_impl(&dword_277237000, v23, v24, "  ssid:        %@", buf, 0xCu);
    }

    v26 = mysyslog_get_logger();
    v27 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(i + 232);
      *buf = 134217984;
      v64 = v28;
      _os_log_impl(&dword_277237000, v26, v27, "  websheet:    %p", buf, 0xCu);
    }

    v29 = mysyslog_get_logger();
    v30 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(i + 152);
      *buf = 138412290;
      v64 = v31;
      _os_log_impl(&dword_277237000, v29, v30, "  api:         %@", buf, 0xCu);
    }

    v32 = mysyslog_get_logger();
    v33 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(i + 160);
      *buf = 138412290;
      v64 = v34;
      _os_log_impl(&dword_277237000, v32, v33, "  token_auth_result:         %@", buf, 0xCu);
    }

    v35 = mysyslog_get_logger();
    v36 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(i + 240);
      *buf = 138412290;
      v64 = v37;
      _os_log_impl(&dword_277237000, v35, v36, "  name:        %@", buf, 0xCu);
    }

    v38 = mysyslog_get_logger();
    v39 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = "!NULL";
      if (!*(i + 248))
      {
        v40 = "NULL";
      }

      *buf = 136315138;
      v64 = v40;
      _os_log_impl(&dword_277237000, v38, v39, "  pass:        %s", buf, 0xCu);
    }

    v41 = mysyslog_get_logger();
    v42 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = "FALSE";
      if (*(i + 260))
      {
        v43 = "TRUE";
      }

      *buf = 136315138;
      v64 = v43;
      _os_log_impl(&dword_277237000, v41, v42, "  waitingonu:  %s", buf, 0xCu);
    }

    v44 = mysyslog_get_logger();
    v45 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v44, v45))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v44, v45, "  redirect:", buf, 2u);
    }

    v46 = mysyslog_get_logger();
    v47 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(i + 136);
      *buf = 138412290;
      v64 = v48;
      _os_log_impl(&dword_277237000, v46, v47, "    %@", buf, 0xCu);
    }

    v49 = mysyslog_get_logger();
    v50 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v49, v50))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v49, v50, "  authreply", buf, 2u);
    }

    v51 = mysyslog_get_logger();
    v52 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(i + 144);
      *buf = 138412290;
      v64 = v53;
      _os_log_impl(&dword_277237000, v51, v52, "    %@", buf, 0xCu);
    }

    v54 = mysyslog_get_logger();
    v55 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(i + 176);
      *buf = 67109120;
      LODWORD(v64) = v56;
      _os_log_impl(&dword_277237000, v54, v55, "  accountOn:   %d", buf, 8u);
    }

    v57 = mysyslog_get_logger();
    v58 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v57, v58))
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, v57, v58, "  matchingAccounts:", buf, 2u);
    }

    v59 = mysyslog_get_logger();
    v60 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(i + 168);
      *buf = 138412290;
      v64 = v61;
      _os_log_impl(&dword_277237000, v59, v60, "    %@", buf, 0xCu);
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

uint64_t CaptiveAuthenticateUsing(CFTypeRef cf2, const __CFString *a2, int a3)
{
  v6 = &S_stateHeadStorage;
  do
  {
    v6 = *v6;
    if (!v6)
    {
      return 22;
    }
  }

  while (!CFEqual(v6[4], cf2));
  if (v6[24] || v6[8] != kStage_WebSheet)
  {
    return 16;
  }

  CaptiveSetStage(v6, kStage_CredQuery);
  *(v6 + 50) = a3;
  v8 = v6[23];
  if (v8)
  {
    CFRelease(v8);
    v6[23] = 0;
  }

  v6[23] = a2;
  CFRetain(a2);
  Start = CNAccountsCredentialsQueryStart(a2, v6[6], v6[4], v6[17], CaptiveHandleCredentials, v6);
  v6[24] = Start;
  if (Start)
  {
    return 0;
  }

  *(v6 + 50) = 0;
  return 0xFFFFFFFFLL;
}

void CaptiveSetStage(uint64_t a1, __CFString *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) != a2)
  {
    *(a1 + 64) = a2;
    if (kStage_WebSheet != a2 && kStage_UIRequired[0] != a2)
    {
      *(a1 + 260) = 0;
    }

    v4 = *MEMORY[0x277CBECE8];
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], *(a1 + 32), *MEMORY[0x277CF8030]);
    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    logger = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v8))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 64);
      *buf = 138412546;
      *&buf[4] = v9;
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_277237000, logger, v8, "%@ - %@", buf, 0x16u);
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x277CF8040], *(a1 + 64));
    v11 = MEMORY[0x277CBED28];
    if (!*(a1 + 260))
    {
      v11 = MEMORY[0x277CBED10];
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x277CF8050], *v11);
    v12 = *(a1 + 136);
    if (v12)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF8038], v12);
    }

    v13 = *(a1 + 144);
    if (v13)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF8028], v13);
    }

    v14 = *(a1 + 152);
    if (v14)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF8020], v14);
    }

    v15 = *(a1 + 160);
    if (v15)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF8048], v15);
    }

    v16 = NetIFGetStore();
    if (!SCDynamicStoreSetValue(v16, NetworkInterfaceEntity, Mutable))
    {
      v17 = mysyslog_get_logger();
      v18 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = SCError();
        v20 = SCErrorString(v19);
        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&dword_277237000, v17, v18, "Failed to update dynamic store, %s", buf, 0xCu);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (NetworkInterfaceEntity)
    {
      CFRelease(NetworkInterfaceEntity);
    }

    if (*(a1 + 152))
    {
      v21 = NetIFCopyCurrentWiFiNetwork(*(a1 + 32));
      if (v21)
      {
        v22 = v21;
        Value = CFDictionaryGetValue(*(a1 + 152), kCAPPORTUserPortalURL[0]);
        v24 = CFDictionaryGetValue(*(a1 + 152), kCAPPORTVenueInfoURL[0]);
        v25 = CFDictionaryGetValue(*(a1 + 152), kCAPPORTCanExtendSession[0]);
        v26 = CFDictionaryGetValue(*(a1 + 152), kCAPPORTSecondsRemaining[0]);
        v27 = CFDictionaryGetValue(*(a1 + 152), kCAPPORTClientAuthenticationURL[0]);
        TypeID = CFNumberGetTypeID();
        if (v26)
        {
          if (CFGetTypeID(v26) == TypeID)
          {
            *buf = 0;
            CFNumberGetValue(v26, kCFNumberDoubleType, buf);
            v26 = 0;
            if (*buf > 0.0)
            {
              valuePtr = CFAbsoluteTimeGetCurrent() + *buf;
              v26 = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
            }
          }

          else
          {
            v26 = 0;
          }
        }

        if (Value)
        {
          v32 = mysyslog_get_logger();
          v33 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = *(a1 + 32);
            *buf = 138412546;
            *&buf[4] = Value;
            v50 = 2112;
            v51 = v34;
            _os_log_impl(&dword_277237000, v32, v33, "Setting UserPortalURL to %@ for interface %@", buf, 0x16u);
          }

          NetIFWiFiNetworkSetCaptivePortalUserPortalURL(v22, Value);
        }

        if (v24)
        {
          v35 = mysyslog_get_logger();
          v36 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = *(a1 + 32);
            *buf = 138412546;
            *&buf[4] = v24;
            v50 = 2112;
            v51 = v37;
            _os_log_impl(&dword_277237000, v35, v36, "Setting VenueInfoURL to %@ for interface %@", buf, 0x16u);
          }

          NetIFWiFiNetworkSetCaptivePortalVenueInfoURL(v22, v24);
        }

        if (v25)
        {
          v38 = mysyslog_get_logger();
          v39 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = *(a1 + 32);
            *buf = 138412546;
            *&buf[4] = v25;
            v50 = 2112;
            v51 = v40;
            _os_log_impl(&dword_277237000, v38, v39, "Setting CanExtendSession to %@ for interface %@", buf, 0x16u);
          }

          NetIFWiFiNetworkSetCaptivePortalCanExtendSession(v22, v25);
        }

        if (v26)
        {
          v41 = mysyslog_get_logger();
          v42 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = *(a1 + 32);
            *buf = 138412546;
            *&buf[4] = v26;
            v50 = 2112;
            v51 = v43;
            _os_log_impl(&dword_277237000, v41, v42, "Setting SessionExpiration to %@ for interface %@", buf, 0x16u);
          }

          NetIFWiFiNetworkSetCaptivePortalSessionExpiration(v22, v26);
        }

        if (v27)
        {
          v44 = mysyslog_get_logger();
          v45 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = *(a1 + 32);
            *buf = 138412546;
            *&buf[4] = v27;
            v50 = 2112;
            v51 = v46;
            _os_log_impl(&dword_277237000, v44, v45, "Setting ClientAuthenticationURL to %@ for interface %@", buf, 0x16u);
          }

          NetIFWiFiNetworkSetCaptivePortalClientAuthURL(v22, v27);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        CFRelease(v22);
      }

      else
      {
        v29 = mysyslog_get_logger();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = *(a1 + 32);
          *buf = 138412290;
          *&buf[4] = v31;
          _os_log_impl(&dword_277237000, v29, v30, "NetIFCopyCurrentWiFiNetwork returned NULL for interface %@ ", buf, 0xCu);
        }
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void CaptiveHandleCredentials(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 192) = 0;
  CaptiveSetStage(a1, kStage_Login);
  if (a2)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 32);
    Current = CFRunLoopGetCurrent();
    v7 = captive_agent_login(v4, v5, a2, Current, CaptiveHandleAuthenticateResult, a1);
    *(a1 + 80) = v7;
    if (v7)
    {
LABEL_3:
      v19.version = 0;
      memset(&v19.retain, 0, 24);
      v19.info = a1;
      v8 = *(a1 + 216);
      if (v8)
      {
        CFRunLoopTimerInvalidate(v8);
        CFRelease(*(a1 + 216));
      }

      v9 = *MEMORY[0x277CBECE8];
      v10 = CFAbsoluteTimeGetCurrent();
      v11 = CFRunLoopTimerCreate(v9, v10 + 15.0, 0.0, 0, 0, CaptiveAuthTimerCallback, &v19);
      *(a1 + 216) = v11;
      if (v11)
      {
        v12 = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(v12, *(a1 + 216), *MEMORY[0x277CBF048]);
      }

      logger = mysyslog_get_logger();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v14))
      {
        LOWORD(v19.version) = 0;
        _os_log_impl(&dword_277237000, logger, v14, "Authenticating...", &v19, 2u);
      }

      return;
    }
  }

  else if (*(a1 + 80))
  {
    goto LABEL_3;
  }

  v15 = *(a1 + 200);
  if (v15)
  {
    AuthenticateUsingReply(v15, -1);
    *(a1 + 200) = 0;
  }

  else
  {
    v16 = *(a1 + 264);
    ++*(a1 + 176);
    if ((CaptiveTryNextAccount(a1) & 1) == 0 && v16)
    {
      CaptiveSetStage(a1, kStage_UIRequired[0]);
      v17 = ResponseDictCreate(v16, 2);
      CNBuiltinPluginProvideResponse(v17);
      CFRelease(v17);
      v18 = kStage_UIRequired[0];

      CaptiveSetStage(a1, v18);
    }
  }
}

uint64_t CaptiveAuthenticateUsingToken(CFTypeRef cf2, const __CFString *a2, int a3)
{
  v6 = &S_stateHeadStorage;
  do
  {
    v6 = *v6;
    if (!v6)
    {
      return 22;
    }
  }

  while (!CFEqual(v6[4], cf2));
  if (v6[24])
  {
    return 16;
  }

  CaptiveSetStage(v6, kStage_CredQuery);
  *(v6 + 50) = a3;
  v8 = v6[23];
  if (v8)
  {
    CFRelease(v8);
    v6[23] = 0;
  }

  if (!a2)
  {
    a2 = v6[6];
  }

  Start = CNAccountsCredentialsQueryStart(0, a2, v6[4], v6[17], CaptiveHandleTokenCredentials, v6);
  v6[24] = Start;
  if (Start)
  {
    return 0;
  }

  *(v6 + 50) = 0;
  return 0xFFFFFFFFLL;
}

void CaptiveHandleTokenCredentials(uint64_t a1, const __CFDictionary *MutableCopy)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = *(a1 + 128);
  }

  else
  {
    v4 = 0;
  }

  logger = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v6))
  {
    v7 = "is";
    if (!v4)
    {
      v7 = "is not";
    }

    v20 = 136315138;
    v21 = v7;
    _os_log_impl(&dword_277237000, logger, v6, "client authentication URL %s available", &v20, 0xCu);
  }

  v8 = 1;
  if (MutableCopy && v4)
  {
    if (CFDictionaryContainsKey(MutableCopy, kTokenAuthLoginURL[0]))
    {
      Value = CFDictionaryGetValue(MutableCopy, kTokenAuthLoginURL[0]);
      if (CFStringCompare(Value, v4, 0))
      {
        v10 = mysyslog_get_logger();
        v11 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v10, v11))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_277237000, v10, v11, "unable to proceed with token authentication as the login URLs don't match", &v20, 2u);
        }

        *(a1 + 80) = 0;
        goto LABEL_20;
      }

      v8 = 1;
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
      CFDictionaryAddValue(MutableCopy, kTokenAuthLoginURL[0], v4);
      v8 = 0;
    }
  }

  *(a1 + 192) = 0;
  CaptiveSetStage(a1, kStage_Login);
  if (MutableCopy)
  {
    v12 = *(a1 + 32);
    Current = CFRunLoopGetCurrent();
    *(a1 + 80) = captive_agent_token_login(v12, MutableCopy, 0x1EuLL, Current, CaptiveHandleTokenAuthResponse, a1);
    if ((v8 & 1) == 0)
    {
      CFRelease(MutableCopy);
    }
  }

LABEL_20:
  if (*(a1 + 80))
  {
    v14 = mysyslog_get_logger();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_277237000, v14, v15, "Authenticating using token...", &v20, 2u);
    }
  }

  else
  {
    v16 = *(a1 + 200);
    if (v16)
    {
      AuthenticateUsingReply(v16, -1);
      *(a1 + 200) = 0;
    }

    else
    {
      v17 = *(a1 + 264);
      if (v17)
      {
        CaptiveSetStage(a1, kStage_UIRequired[0]);
        v18 = ResponseDictCreate(v17, 2);
        CNBuiltinPluginProvideResponse(v18);
        CFRelease(v18);
        CaptiveSetStage(a1, kStage_UIRequired[0]);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

BOOL CaptiveIsUIRequired(CFTypeRef cf2)
{
  v2 = &S_stateHeadStorage;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (CFEqual(v2[4], cf2))
    {
      return WebSheetStateGetIsUIRequired(v2[29]) != 0;
    }
  }

  return 0;
}

BOOL CaptiveIsWebSheetStagePending()
{
  v0 = &S_stateHeadStorage;
  while (1)
  {
    v0 = *v0;
    if (!v0)
    {
      break;
    }

    if (v0[8] == kStage_WebSheet)
    {
      logger = mysyslog_get_logger();
      v2 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v2))
      {
        *v4 = 0;
        _os_log_impl(&dword_277237000, logger, v2, "WebSheetStagePending == TRUE", v4, 2u);
      }

      return v0 != 0;
    }
  }

  return v0 != 0;
}

void start()
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(&v11, 0, sizeof(v11));
  sConfigdRunLoop = CFRunLoopGetCurrent();
  if (CNSRegisterServer())
  {
    if (pthread_attr_init(&v11))
    {
      logger = mysyslog_get_logger();
      v1 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v1))
      {
        *buf = 0;
        v2 = "pthread_attr_init failed";
LABEL_7:
        _os_log_impl(&dword_277237000, logger, v1, v2, buf, 2u);
      }
    }

    else
    {
      if (pthread_attr_setdetachstate(&v11, 2))
      {
        logger = mysyslog_get_logger();
        v1 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(logger, v1))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v2 = "pthread_attr_setdetachstate failed";
        goto LABEL_7;
      }

      if (pthread_create(&v8, &v11, captived_thread, 0))
      {
        logger = mysyslog_get_logger();
        v1 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(logger, v1))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v2 = "pthread_create failed";
        goto LABEL_7;
      }

      pthread_mutex_lock(&sLock);
      while (!sStopThreadSource)
      {
        v4 = pthread_cond_wait(&sCond, &sLock);
        if (v4)
        {
          v5 = v4;
          v6 = mysyslog_get_logger();
          v7 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v6, v7))
          {
            *buf = 67109120;
            v10 = v5;
            _os_log_impl(&dword_277237000, v6, v7, "pthread_cond_wait failed: %d", buf, 8u);
          }
        }
      }

      pthread_mutex_unlock(&sLock);
      pthread_attr_destroy(&v11);
    }
  }

  else
  {
    logger = mysyslog_get_logger();
    v1 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v1))
    {
      *buf = 0;
      v2 = "CNSRegisterServer failed";
      goto LABEL_7;
    }
  }

LABEL_8:
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t captived_thread()
{
  memset(&v1, 0, 72);
  v1.perform = captived_thread_stop;
  pthread_mutex_lock(&sLock);
  gThreadRunLoop = CFRunLoopGetCurrent();
  sStopThreadSource = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v1);
  CFRunLoopAddSource(gThreadRunLoop, sStopThreadSource, *MEMORY[0x277CBF048]);
  pthread_mutex_unlock(&sLock);
  pthread_cond_signal(&sCond);
  S_stateHeadStorage = 0;
  CaptivePrefsInit(gThreadRunLoop, prefs_changed);
  mysyslog_init_logger(0);
  CaptiveCheckPreferences(1);
  if (gActive)
  {
    UIAllowedRegisterForCallbacks(CaptiveHandleUIAllowedChange);
    WebSheetHandlerInitialize(CaptiveWebsheetDone);
    CNPluginHandlerInitialize(CaptiveBuiltinPluginProcessCommand);
  }

  CNSStartServer();
  CFRunLoopRun();
  pthread_mutex_lock(&sLock);
  gThreadRunLoop = 0;
  sStopThreadSource = 0;
  if (sStopConfigdSource)
  {
    CFRunLoopSourceSignal(sStopConfigdSource);
    CFRunLoopWakeUp(sConfigdRunLoop);
  }

  pthread_mutex_unlock(&sLock);
  CNSShutdownServer();
  return 0;
}

uint64_t stop(__CFRunLoopSource *a1)
{
  pthread_mutex_lock(&sLock);
  if (sStopThreadSource)
  {
    sStopConfigdSource = a1;
    CFRunLoopSourceSignal(sStopThreadSource);
    CFRunLoopWakeUp(gThreadRunLoop);
  }

  else
  {
    CFRunLoopSourceSignal(a1);
  }

  return pthread_mutex_unlock(&sLock);
}

void CaptiveHandleAuthenticateResult(uint64_t a1, CFDictionaryRef theDict)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 264);
  *(a1 + 80) = 0;
  if (!v2)
  {
    goto LABEL_73;
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    CFRunLoopTimerInvalidate(v5);
    v6 = *(a1 + 216);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 216) = 0;
    }
  }

  if (!theDict)
  {
    logger = mysyslog_get_logger();
    v19 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(logger, v19))
    {
      goto LABEL_49;
    }

    *v68 = 0;
    v20 = "Login attempt failed, no response.";
    v21 = logger;
    v22 = v19;
    v23 = 2;
LABEL_16:
    _os_log_impl(&dword_277237000, v21, v22, v20, v68, v23);
    goto LABEL_49;
  }

  Value = CFDictionaryGetValue(theDict, kWISPrMessageType[0]);
  IntValue = CFStringGetIntValue(Value);
  if (IntValue != 120)
  {
    v9 = IntValue;
    if (IntValue != 140)
    {
      v24 = mysyslog_get_logger();
      v25 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_49;
      }

      *v68 = 0x7804000300;
      *&v68[8] = 1024;
      *&v68[10] = 140;
      *&v68[14] = 1024;
      *&v68[16] = v9;
      v20 = "Expected AuthNotify message (%d) or AuthPollReply message (%d), received %d";
      v21 = v24;
      v22 = v25;
      v23 = 20;
      goto LABEL_16;
    }
  }

  v10 = CFDictionaryGetValue(theDict, kWISPrResponseCode[0]);
  v11 = CFStringGetIntValue(v10);
  v12 = CFDictionaryGetValue(theDict, kWISPrReplyMessage[0]);
  v13 = mysyslog_get_logger();
  v14 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v13, v14))
  {
    *v68 = 67109378;
    *&v68[4] = v11;
    *&v68[8] = 2112;
    *&v68[10] = v12;
    _os_log_impl(&dword_277237000, v13, v14, "AuthNotify responseCode=%d, reply message=%@", v68, 0x12u);
  }

  v15 = *(a1 + 168);
  if (v15)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, *(a1 + 176));
    v17 = CNAccountsIsCarrierCredential(ValueAtIndex);
  }

  else
  {
    v17 = 0;
    ValueAtIndex = 0;
  }

  if (v11 != 50)
  {
    v47 = *(a1 + 200);
    if (v47)
    {
      AuthenticateUsingReply(v47, v11);
      *(a1 + 200) = 0;
    }

    else
    {
      if (v11 == 100)
      {
        CNAccountsRejected(ValueAtIndex, *(a1 + 48), *(a1 + 136), theDict);
      }

      if (v17)
      {
        ++*(a1 + 256);
        v48 = mysyslog_get_logger();
        v49 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = *(a1 + 256);
          *v68 = 67109634;
          *&v68[4] = v50;
          *&v68[8] = 1024;
          *&v68[10] = 3;
          *&v68[14] = 2112;
          *&v68[16] = v12;
          _os_log_impl(&dword_277237000, v48, v49, "Carrier login attempt (%d of %d) failed: %@", v68, 0x18u);
        }

        v51 = *(a1 + 208);
        if (v51)
        {
          CFRunLoopTimerInvalidate(v51);
          CFRelease(*(a1 + 208));
        }

        if (*(a1 + 256) <= 2)
        {
          *v68 = 0;
          *&v68[16] = 0u;
          *v69 = 0;
          *&v68[8] = a1;
          v52 = *MEMORY[0x277CBECE8];
          Current = CFAbsoluteTimeGetCurrent();
          v54 = CFRunLoopTimerCreate(v52, Current + 1.0, 0.0, 0, 0, CaptiveRetryCarrierCredentials, v68);
          *(a1 + 208) = v54;
          if (v54)
          {
            v55 = CFRunLoopGetCurrent();
            CFRunLoopAddTimer(v55, *(a1 + 208), *MEMORY[0x277CBF048]);
            goto LABEL_73;
          }
        }
      }

      ++*(a1 + 176);
      if (CaptiveTryNextAccount(a1))
      {
        goto LABEL_73;
      }
    }

LABEL_49:
    CaptiveSetStage(a1, kStage_UIRequired[0]);
    v56 = ResponseDictCreate(v2, 2);
    CNBuiltinPluginProvideResponse(v56);
    CFRelease(v56);
    goto LABEL_73;
  }

  v26 = mysyslog_get_logger();
  v27 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(a1 + 32);
    v29 = *(a1 + 48);
    *v68 = 138412546;
    *&v68[4] = v28;
    *&v68[12] = 2112;
    *&v68[14] = v29;
    _os_log_impl(&dword_277237000, v26, v27, "%@: Login succeeded on '%@'", v68, 0x16u);
  }

  v30 = *(a1 + 144);
  if (v30)
  {
    CFRelease(v30);
  }

  *(a1 + 144) = theDict;
  CFRetain(theDict);
  v31 = *(a1 + 200);
  if (v31)
  {
    AuthenticateUsingReply(v31, 0);
    *(a1 + 200) = 0;
    v32 = *(a1 + 184);
    v33 = *(a1 + 48);
    v34 = CFDictionaryGetValue(*(a1 + 136), kWISPrLoginURL[0]);
    CNAccountsAddInternal(v32, 0, v33, v34, 1, 0);
  }

  v35 = CFDictionaryGetValue(*(a1 + 144), kWISPrLogoffURL[0]);
  v36 = CFDictionaryGetValue(*(a1 + 144), kWISPrRedirectionURL[0]);
  if (!v36)
  {
    goto LABEL_52;
  }

  v37 = CaptiveCopyCarrierSettings(*(a1 + 48));
  if (v37)
  {
    v38 = v37;
    v39 = CFDictionaryGetValue(v37, @"LandingPageURLHostNameMatchList");
    TypeID = CFArrayGetTypeID();
    if (v39 && CFGetTypeID(v39) == TypeID && (v41 = URLStringCopyHostName(v36)) != 0)
    {
      v42 = v41;
      v75.length = CFArrayGetCount(v39);
      v75.location = 0;
      v43 = CFArrayContainsValue(v39, v75, v42);
      v44 = mysyslog_get_logger();
      v45 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = "";
        if (!v43)
        {
          v46 = " not";
        }

        *v68 = 138412546;
        *&v68[4] = v42;
        *&v68[12] = 2080;
        *&v68[14] = v46;
        _os_log_impl(&dword_277237000, v44, v45, "%@ is%s in the LandingPageURLHostNameMatchList", v68, 0x16u);
      }

      CFRelease(v42);
      CFRelease(v38);
      if (v43)
      {
        goto LABEL_52;
      }
    }

    else
    {
      CFRelease(v38);
    }
  }

  v36 = 0;
LABEL_52:
  v57 = mysyslog_get_logger();
  v58 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = " (LogoffURL=";
    *v68 = 136316418;
    v60 = "";
    if (!v35)
    {
      v59 = "";
    }

    *&v68[4] = v59;
    v61 = &stru_28865E0D8;
    if (v35)
    {
      v62 = v35;
    }

    else
    {
      v62 = &stru_28865E0D8;
    }

    *&v68[12] = 2112;
    *&v68[14] = v62;
    if (v35)
    {
      v63 = ")";
    }

    else
    {
      v63 = "";
    }

    *&v68[22] = 2080;
    *&v68[24] = v63;
    v64 = " (RedirectionURL=";
    *v69 = 2080;
    if (!v36)
    {
      v64 = "";
    }

    *&v69[2] = v64;
    if (v36)
    {
      v61 = v36;
    }

    v70 = 2112;
    if (v36)
    {
      v60 = ")";
    }

    v71 = v61;
    v72 = 2080;
    v73 = v60;
    _os_log_impl(&dword_277237000, v57, v58, "Online%s%@%s%s%@%s", v68, 0x3Eu);
  }

  v65 = ResponseDictCreate(v2, 0);
  if (v36)
  {
    *v68 = mach_absolute_time();
    v66 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, v68);
    CFDictionarySetValue(v65, @"RedirectionURL", v36);
    CFDictionarySetValue(v65, @"RedirectionURLGenerationID", v66);
    CFRelease(v66);
  }

  if (v35)
  {
    CFDictionarySetValue(v65, @"LogoffURL", v35);
  }

  CFDictionarySetValue(v65, @"WISPrLoginUsed", *MEMORY[0x277CBED28]);
  CNBuiltinPluginProvideResponse(v65);
  CFRelease(v65);
  CaptiveSetStage(a1, kStage_Online[0]);
LABEL_73:
  v67 = *MEMORY[0x277D85DE8];
}

uint64_t CaptiveTryNextAccount(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  result = *(a1 + 168);
  if (result)
  {
    v3 = *(a1 + 176);
    if (CFArrayGetCount(result) <= v3)
    {
      result = 0;
    }

    else
    {
      CaptiveSetStage(a1, kStage_CredQuery);
      v4 = *(a1 + 176);
      if (CFArrayGetCount(*(a1 + 168)) <= v4)
      {
LABEL_14:
        v13 = *(a1 + 168);
        if (v13)
        {
          CFRelease(v13);
          *(a1 + 168) = 0;
        }

        result = 0;
        *(a1 + 176) = 0;
      }

      else
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), *(a1 + 176));
          logger = mysyslog_get_logger();
          v7 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v7))
          {
            *buf = 138412290;
            v16 = ValueAtIndex;
            _os_log_impl(&dword_277237000, logger, v7, "Resolving account %@", buf, 0xCu);
          }

          v8 = *(a1 + 276);
          v9 = v8 == 2 ? CaptiveHandleTokenCredentials : CaptiveHandleCredentials;
          v10 = v8 == 2 ? 0 : ValueAtIndex;
          Start = CNAccountsCredentialsQueryStart(v10, *(a1 + 48), *(a1 + 32), *(a1 + 136), v9, a1);
          *(a1 + 192) = Start;
          if (Start)
          {
            break;
          }

          *(a1 + 256) = 0;
          v12 = *(a1 + 176);
          *(a1 + 176) = v12 + 1;
          if (CFArrayGetCount(*(a1 + 168)) <= v12 + 1)
          {
            goto LABEL_14;
          }
        }

        result = 1;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

__CFDictionary *ResponseDictCreate(const void *a1, int a2)
{
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"UniqueID", a1);
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"Result", v4);
  CFRelease(v4);
  return Mutable;
}

void CaptiveRetryCarrierCredentials(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 208);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 208) = 0;
  }

  v4 = *(a2 + 112);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 112) = 0;
  }

  v5 = *(a2 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 136) = 0;
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 144) = 0;
  }

  v7 = *(a2 + 240);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 240) = 0;
  }

  v8 = *(a2 + 248);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 248) = 0;
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 40) = 0;
  }

  logger = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v11))
  {
    v12 = *(a2 + 32);
    v20 = 138412290;
    v21 = v12;
    _os_log_impl(&dword_277237000, logger, v11, "%@: Retrying probe for carrier login", &v20, 0xCu);
  }

  v13 = captive_agent_send_probe(*(a2 + 48), *(a2 + 32), 0, *(a2 + 112), 0x28u, CaptiveHandleRedirect, a2, gThreadRunLoop);
  *(a2 + 72) = v13;
  if (!v13)
  {
    v14 = *(a2 + 264);
    v15 = mysyslog_get_logger();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_277237000, v15, v16, "Probe: captive_agent_send_probe failed", &v20, 2u);
    }

    if (v14)
    {
      v17 = kStage_UIRequired;
      CaptiveSetStage(a2, kStage_UIRequired[0]);
      v18 = ResponseDictCreate(v14, 2);
      CNBuiltinPluginProvideResponse(v18);
      CFRelease(v18);
    }

    else
    {
      v17 = &kStage_Unknown;
    }

    CaptiveSetStage(a2, *v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

CFMutableDictionaryRef CaptiveCopyCarrierSettings(const void *a1)
{
  if (!sCarrierBundleChangedRef)
  {
    CNAccountsImportCarrierCredentials();
    Current = CFRunLoopGetCurrent();
    sCarrierBundleChangedRef = _CBAccessConnectionCreate(CaptiveSIMChanged, Current, *MEMORY[0x277CBF058]);
    if (!sCarrierBundleChangedRef)
    {
      logger = mysyslog_get_logger();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v4))
      {
        *v12 = 0;
        _os_log_impl(&dword_277237000, logger, v4, "_CBAccessConnectionCreate() returned NULL", v12, 2u);
      }
    }
  }

  v5 = CopyCarrierAccountSettings(@"CaptiveSettings");
  v6 = CopyCarrierAccountSettings(@"CaptiveSettingsBySSID");
  TypeID = CFDictionaryGetTypeID();
  if (!v6)
  {
    return v5;
  }

  if (CFGetTypeID(v6) != TypeID)
  {
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v6, a1);
  v9 = CFDictionaryGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == v9)
    {
      CFRetain(Value);
      goto LABEL_11;
    }

LABEL_10:
    Value = 0;
  }

LABEL_11:
  CFRelease(v6);
  if (v5 && Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(v5, CaptiveMergeDictionaryApplier, MutableCopy);
    }

    CFRelease(Value);
    CFRelease(v5);
  }

  else if (Value)
  {
    return Value;
  }

  else
  {
    return v5;
  }

  return MutableCopy;
}

void CaptiveSIMChanged()
{
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_277237000, logger, v1, "Detected updated carrier settings", v2, 2u);
  }

  CNAccountsImportCarrierCredentials();
}

void CaptiveHandleRedirect(uint64_t a1, int a2, const __CFDictionary *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 264);
  *(a1 + 72) = 0;
  if (v3)
  {
    v5 = a2;
    if (a2 > 0xF)
    {
      goto LABEL_17;
    }

    v7 = 1;
    if (((1 << a2) & 0x2D80) != 0)
    {
      goto LABEL_4;
    }

    if (a2 == 14)
    {
      logger = mysyslog_get_logger();
      v31 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v31))
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 48);
        *buf = 138412546;
        *v91 = v32;
        *&v91[8] = 2112;
        v92 = v33;
        _os_log_impl(&dword_277237000, logger, v31, "%@: received TLS connection abort on '%@'", buf, 0x16u);
      }

      v7 = 0;
      v8 = 1;
      goto LABEL_33;
    }

    if (a2 == 15)
    {
      v12 = mysyslog_get_logger();
      v13 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v12, v13))
      {
LABEL_21:
        v8 = 0;
        v7 = 0;
LABEL_33:
        v5 = 3;
        goto LABEL_34;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      *buf = 138412546;
      *v91 = v14;
      *&v91[8] = 2112;
      v92 = v15;
      v16 = "%@: failed to trust the server certificate chain on '%@'";
    }

    else
    {
LABEL_17:
      if (a2 != 4)
      {
        v7 = 0;
LABEL_4:
        v8 = 1;
        if (a2 > 10)
        {
          if (a2 == 11)
          {
            v9 = "Unknown state: Assuming not captive";
          }

          else
          {
            if (a2 != 12)
            {
              goto LABEL_34;
            }

            v9 = "Probe whitelist detected: Marking as not captive";
          }
        }

        else
        {
          if (a2)
          {
            if (a2 == 9)
            {
              v9 = "Web proxy detected: Assuming not captive";
              goto LABEL_24;
            }

LABEL_34:
            if (*(a1 + 64) == kStage_Login)
            {
              v7 = 2;
            }

            if ((v5 & 0xFFFFFFFE) == 2)
            {
              v34 = mysyslog_get_logger();
              v35 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = *(a1 + 32);
                v37 = "WISPr";
                v38 = *(a1 + 48);
                if (v5 == 3)
                {
                  v37 = "Redirect";
                }

                *buf = 138412802;
                *v91 = v36;
                *&v91[8] = 2080;
                v92 = v37;
                v93 = 2112;
                v94 = v38;
                _os_log_impl(&dword_277237000, v34, v35, "%@: %s detected on '%@'", buf, 0x20u);
              }

              if (*(a1 + 64) == kStage_Maintain)
              {
                v7 = 4;
              }

              v26 = 1;
            }

            else
            {
              v26 = 0;
            }

            switch(v5)
            {
              case 3u:
                if (a3)
                {
                  v39 = mysyslog_get_logger();
                  v40 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v39, v40))
                  {
                    v41 = *(a1 + 32);
                    *buf = 138412546;
                    *v91 = v41;
                    *&v91[8] = 2112;
                    v92 = a3;
                    _os_log_impl(&dword_277237000, v39, v40, "%@: detected HTTP redirect %@", buf, 0x16u);
                  }

                  Value = CFDictionaryGetValue(a3, kInitialURL[0]);
                  v23 = CFDictionaryGetValue(a3, kRedirectHostname[0]);
                  if (Value)
                  {
                    my_FieldSetRetainedCFType((a1 + 112), Value);
                    v43 = mysyslog_get_logger();
                    v44 = _SC_syslog_os_log_mapping();
                    if (os_log_type_enabled(v43, v44))
                    {
                      v45 = *(a1 + 112);
                      *buf = 138412290;
                      *v91 = v45;
                      _os_log_impl(&dword_277237000, v43, v44, "InitialURL: %@:", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  if ((v8 & 1) == 0)
                  {
                    v50 = CaptiveCopyProbeSettings();
                    if (v50)
                    {
                      v51 = v50;
                      v52 = CFDictionaryGetValue(v50, @"ProbeURL");
                      if (isA_CFString(v52))
                      {
                        my_FieldSetRetainedCFType((a1 + 112), v52);
                        v53 = mysyslog_get_logger();
                        v54 = _SC_syslog_os_log_mapping();
                        if (os_log_type_enabled(v53, v54))
                        {
                          v55 = *(a1 + 112);
                          *buf = 138412290;
                          *v91 = v55;
                          _os_log_impl(&dword_277237000, v53, v54, "InitialURL: %@:", buf, 0xCu);
                        }
                      }

                      CFRelease(v51);
                    }
                  }

                  v23 = 0;
                }

                if (_os_feature_enabled_impl())
                {
                  v56 = mysyslog_get_logger();
                  v57 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v56, v57))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_277237000, v56, v57, "AirPlay/SetupAssistantCaptivePortalMitigation feature is enabled", buf, 2u);
                  }

                  ConfidenceFromAccounts = GetConfidenceFromAccounts(a1);
                  if (ConfidenceFromAccounts)
                  {
                    v27 = 4 * (*(a1 + 276) == 2);
                    goto LABEL_81;
                  }

                  CaptiveSetStage(a1, kStage_UIRequired[0]);
                }

                else
                {
                  CaptiveSetStage(a1, kStage_UIRequired[0]);
                  ConfidenceFromAccounts = 0;
                }

                v27 = 1;
LABEL_81:
                if (v7 != 1)
                {
LABEL_103:
                  v28 = v26;
LABEL_104:
                  if ((*(a1 + 262) & 1) == 0)
                  {
                    v85 = ResponseDictCreate(v3, v7);
                    v86 = v85;
                    if (!v7)
                    {
                      ResponseDictSetIsCaptiveAndConfidence(v85, v28, ConfidenceFromAccounts, v27);
                    }

                    goto LABEL_112;
                  }

                  goto LABEL_105;
                }

LABEL_82:
                CaptiveAnalyticsSessionPostInconclusiveEvent(v5);
                if ((*(a1 + 262) & 1) == 0)
                {
                  v68 = v3;
                  v69 = 1;
                  goto LABEL_110;
                }

                v7 = 1;
LABEL_105:
                if ((v5 & 0xFFFFFFFE) == 2)
                {
                  v84 = CaptiveCopyAuthenticationResult(a1, 0, v3);
LABEL_111:
                  v86 = v84;
LABEL_112:
                  if (v86)
                  {
                    if (v23)
                    {
                      CFDictionarySetValue(v86, @"RedirectHostname", v23);
                    }

                    CNBuiltinPluginProvideResponse(v86);
                    CFRelease(v86);
                  }

                  goto LABEL_116;
                }

                v68 = v3;
                v69 = v7;
LABEL_110:
                v84 = ResponseDictCreate(v68, v69);
                goto LABEL_111;
              case 6u:
                v58 = mysyslog_get_logger();
                v59 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v58, v59))
                {
                  v60 = *(a1 + 32);
                  v61 = *(a1 + 48);
                  *buf = 138412546;
                  *v91 = v60;
                  *&v91[8] = 2112;
                  v92 = v61;
                  v62 = "Timed out on %@ (%@), assuming online";
                  v63 = v58;
                  v64 = v59;
                  v65 = 22;
LABEL_77:
                  _os_log_impl(&dword_277237000, v63, v64, v62, buf, v65);
                }

                break;
              case 2u:
                if (a3)
                {
                  v46 = mysyslog_get_logger();
                  v47 = _SC_syslog_os_log_mapping();
                  if (os_log_type_enabled(v46, v47))
                  {
                    v48 = *(a1 + 32);
                    *buf = 138412546;
                    *v91 = v48;
                    *&v91[8] = 2112;
                    v92 = a3;
                    _os_log_impl(&dword_277237000, v46, v47, "%@: detected WISPr %@", buf, 0x16u);
                  }

                  v49 = CFDictionaryGetValue(a3, kWISPrMessageType[0]);
                  if (v49)
                  {
                    log = CFStringGetIntValue(v49);
                  }

                  else
                  {
                    log = 0;
                  }

                  v23 = CFDictionaryGetValue(a3, kRedirectHostname[0]);
                  v71 = CFDictionaryGetValue(a3, kInitialURL[0]);
                  if (v71)
                  {
                    my_FieldSetRetainedCFType((a1 + 112), v71);
                    v72 = mysyslog_get_logger();
                    v73 = _SC_syslog_os_log_mapping();
                    if (os_log_type_enabled(v72, v73))
                    {
                      v74 = *(a1 + 112);
                      *buf = 138412290;
                      *v91 = v74;
                      _os_log_impl(&dword_277237000, v72, v73, "InitialURL: %@:", buf, 0xCu);
                    }
                  }

                  v70 = log;
                  if (log == 100)
                  {
                    v75 = CFDictionaryGetValue(a3, kLocationURL[0]);
                    if (v75)
                    {
                      v76 = v75;
                      v77 = mysyslog_get_logger();
                      v78 = _SC_syslog_os_log_mapping();
                      loga = v77;
                      v79 = v77;
                      v80 = v78;
                      if (os_log_type_enabled(v79, v78))
                      {
                        *buf = 138412290;
                        *v91 = v76;
                        _os_log_impl(&dword_277237000, loga, v80, "LocationURL: %@:", buf, 0xCu);
                      }
                    }

                    v81 = *(a1 + 136);
                    if (v81)
                    {
                      CFRelease(v81);
                    }

                    *(a1 + 136) = a3;
                    CFRetain(a3);
                    if (*(a1 + 64) == kStage_Login)
                    {
                      if (CaptiveTryNextAccount(a1))
                      {
                        goto LABEL_116;
                      }

                      CaptiveSetStage(a1, kStage_UIRequired[0]);
                      ConfidenceFromAccounts = 0;
                    }

                    else
                    {
                      ConfidenceFromAccounts = GetConfidenceFromAccounts(a1);
                      if (!ConfidenceFromAccounts)
                      {
                        CaptiveSetStage(a1, kStage_UIRequired[0]);
                      }
                    }

                    v27 = 2;
                    goto LABEL_81;
                  }
                }

                else
                {
                  v23 = 0;
                  v70 = 0;
                }

                v82 = mysyslog_get_logger();
                v83 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v82, v83))
                {
                  *buf = 67109376;
                  *v91 = v70;
                  *&v91[4] = 1024;
                  *&v91[6] = 100;
                  _os_log_impl(&dword_277237000, v82, v83, "Received message type %d, expected kWISPrMsg_Redirect (%d)", buf, 0xEu);
                }

                v5 = 2;
                v25 = kStage_UIRequired;
LABEL_102:
                CaptiveSetStage(a1, *v25);
                v27 = 0;
                ConfidenceFromAccounts = 0;
                goto LABEL_103;
              default:
                v66 = mysyslog_get_logger();
                v67 = _SC_syslog_os_log_mapping();
                if (os_log_type_enabled(v66, v67))
                {
                  *buf = 67109120;
                  *v91 = v5;
                  v62 = "Unknown result value: %d, assuming online";
                  v63 = v66;
                  v64 = v67;
                  v65 = 8;
                  goto LABEL_77;
                }

                break;
            }

            v23 = 0;
            goto LABEL_82;
          }

          v9 = "No redirect detected";
        }

LABEL_24:
        v19 = mysyslog_get_logger();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = *(a1 + 32);
          v22 = *(a1 + 48);
          *buf = 136315650;
          *v91 = v9;
          *&v91[8] = 2112;
          v92 = v21;
          v93 = 2112;
          v94 = v22;
          _os_log_impl(&dword_277237000, v19, v20, "%s on %@ (%@)", buf, 0x20u);
        }

        v23 = 0;
        v24 = *(a1 + 64);
        v25 = kStage_Online;
        if (v24 == kStage_Maintain)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          ConfidenceFromAccounts = 0;
          if (v24 != kStage_Login)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_102;
      }

      v12 = mysyslog_get_logger();
      v13 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_21;
      }

      v17 = *(a1 + 32);
      v18 = *(a1 + 48);
      *buf = 138412546;
      *v91 = v17;
      *&v91[8] = 2112;
      v92 = v18;
      v16 = "%@: received too big html document on '%@'";
    }

    _os_log_impl(&dword_277237000, v12, v13, v16, buf, 0x16u);
    goto LABEL_21;
  }

  v10 = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v10, v11, "no command to be processed", buf, 2u);
  }

LABEL_116:
  v87 = *MEMORY[0x277D85DE8];
}

const void *isA_CFString(const void *a1)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

uint64_t GetConfidenceFromAccounts(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (!v2)
  {
    v2 = CNAccountsCopyMatching(*(a1 + 48), *(a1 + 136));
    *(a1 + 168) = v2;
    *(a1 + 176) = 0;
    if (!v2)
    {
      return 0;
    }
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  LODWORD(v6) = 0;
  while (1)
  {
    v10 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), v5);
    v8 = CNAccountsLookupPasswordType(ValueAtIndex);
    if (CNAccountsLookupAuthType(ValueAtIndex, &v10) == 1)
    {
      *(a1 + 276) = v10;
    }

    if (CFStringCompare(v8, @"Keychain", 0))
    {
      break;
    }

    ++v5;
    v6 = 1;
    if (v4 == v5)
    {
      return v6;
    }
  }

  if (CNAccountsCredentialsValidate(ValueAtIndex) == 1)
  {
    return 2;
  }

  else
  {
    return v6;
  }
}

__CFDictionary *CaptiveCopyAuthenticationResult(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  if (CaptiveBypass(a2, *(a1 + 48), &v10))
  {
    CaptiveSetStage(a1, kStage_Online[0]);
    v7 = ResponseDictCreate(a3, 0);
    CFDictionarySetValue(v7, @"DisableMaintaining", *MEMORY[0x277CBED28]);
    return v7;
  }

  v9 = kStage_UIRequired[0];
  if (*(a1 + 64) != kStage_UIRequired[0])
  {
    if (CaptiveTryNextAccount(a1))
    {
      my_FieldSetRetainedCFType((a1 + 264), a3);
      return 0;
    }

    v9 = kStage_UIRequired[0];
  }

  CaptiveSetStage(a1, v9);

  return ResponseDictCreate(a3, 2);
}

void ResponseDictSetIsCaptiveAndConfidence(__CFDictionary *a1, int a2, int a3, int a4)
{
  v12 = a4;
  valuePtr = a3;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  v9 = MEMORY[0x277CBED28];
  if (!a2)
  {
    v9 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, @"IsCaptive", *v9);
  if (a2)
  {
    v10 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v8, @"Confidence", v10);
    CFRelease(v10);
    v11 = CFNumberCreate(v6, kCFNumberSInt32Type, &v12);
    CFDictionarySetValue(v8, @"DetectionType", v11);
    CFRelease(v11);
  }

  CFDictionarySetValue(a1, @"Network", v8);
  CFRelease(v8);
}

uint64_t CaptiveBypass(const void *a1, const void *a2, _BYTE *a3)
{
  v6 = CaptiveCarPlayAndInternetMode(a1);
  TypeID = CFDictionaryGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      Value = CFDictionaryGetValue(a1, @"CaptiveBypass");
      v9 = CFBooleanGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v9 && CFBooleanGetValue(Value) && !v6)
        {
          *a3 = 0;
          return 1;
        }
      }
    }
  }

  if (a2)
  {
    result = CaptiveCopyCarrierSettings(a2);
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = CFDictionaryGetValue(result, @"Bypass");
    v13 = CFBooleanGetTypeID();
    if (v12 && CFGetTypeID(v12) == v13)
    {
      v14 = CFBooleanGetValue(v12);
      CFRelease(v11);
      if (v14)
      {
        result = 1;
        *a3 = 1;
        return result;
      }
    }

    else
    {
      CFRelease(v11);
    }
  }

  return 0;
}

uint64_t CaptiveCarPlayAndInternetMode(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"CarPlayAndInternet");
  v4 = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != v4)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

void CaptiveAuthTimerCallback(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v4))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_277237000, logger, v4, "Authentication timed out", &v10, 2u);
  }

  if (*(a2 + 64) == kStage_Login)
  {
    CaptiveSetStage(a2, kStage_WebSheet);
    v8 = *(a2 + 200);
    if (v8)
    {
      AuthenticateUsingReply(v8, -1);
      *(a2 + 200) = 0;
    }

    else
    {
      CaptiveInteract(a2);
    }
  }

  else
  {
    v5 = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(a2 + 64);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_277237000, v5, v6, "Authentication Timed out in incorrect stage=%@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void CaptiveInteract(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!UIAllowed())
  {
    if ((*(a1 + 260) & 1) == 0)
    {
      logger = mysyslog_get_logger();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v12))
      {
        v13 = *(a1 + 32);
        LODWORD(buf.version) = 138412290;
        *(&buf.version + 4) = v13;
        _os_log_impl(&dword_277237000, logger, v12, "%@ waiting for UI", &buf, 0xCu);
      }

      *(a1 + 260) = 1;
    }

    goto LABEL_39;
  }

  *(a1 + 260) = 0;
  if (*(a1 + 112))
  {
    v2 = *(a1 + 112);
  }

  else
  {
    v2 = @"http://www.apple.com/";
  }

  v3 = *(a1 + 232);
  v4 = mysyslog_get_logger();
  if (!v3)
  {
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v4, v14))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      LODWORD(buf.version) = 138412802;
      *(&buf.version + 4) = v15;
      WORD2(buf.info) = 2112;
      *(&buf.info + 6) = v16;
      HIWORD(buf.retain) = 2112;
      buf.release = v2;
      _os_log_impl(&dword_277237000, v4, v14, "%@: Launching Websheet on SSID %@ with URL %@", &buf, 0x20u);
    }

    v17 = WebSheetStateLaunchApplication(a1, *(a1 + 32), v2, *(a1 + 48), *(a1 + 273));
    *(a1 + 232) = v17;
    if (!v17)
    {
      v22 = *(a1 + 264);
      v23 = mysyslog_get_logger();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(a1 + 32);
        LODWORD(buf.version) = 138412290;
        *(&buf.version + 4) = v25;
        _os_log_impl(&dword_277237000, v23, v24, "%@: Unknown (websheet failed)", &buf, 0xCu);
      }

      CaptiveSetStage(a1, kStage_Unknown);
      if (v22)
      {
        v26 = ResponseDictCreate(v22, 0);
        CNBuiltinPluginProvideResponse(v26);
        CFRelease(v26);
        goto LABEL_39;
      }

      v27 = mysyslog_get_logger();
      v28 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_39;
      }

      LOWORD(buf.version) = 0;
      v7 = "no uniqueID";
      v8 = v27;
      v9 = v28;
      v10 = 2;
      goto LABEL_8;
    }

    WebSheetStateSetIsAllowed(v17, 1);
    CaptiveSetStage(a1, kStage_WebSheet);
    if (!IsWebSheetRestrictionEnabled() || !*(a1 + 232) || *(a1 + 64) != kStage_WebSheet)
    {
      goto LABEL_38;
    }

    v18 = *(a1 + 224);
    if (v18)
    {
      CFRunLoopTimerInvalidate(v18);
      v19 = *(a1 + 224);
      if (v19)
      {
        CFRelease(v19);
        *(a1 + 224) = 0;
      }
    }

    if (ApplyWebSheetRunTimeRestriction_retry > 3)
    {
LABEL_38:
      WebSheetStateSetIsUIRequired(*(a1 + 232), 1);
      goto LABEL_39;
    }

    buf.version = 0;
    memset(&buf.retain, 0, 24);
    buf.info = a1;
    v20 = *&S_WebSheetInSetupDismissalInterval;
    if (ApplyWebSheetRunTimeRestriction_retry == 3)
    {
      v21 = 0.333333333;
    }

    else
    {
      if (ApplyWebSheetRunTimeRestriction_retry != 2)
      {
LABEL_34:
        Current = CFAbsoluteTimeGetCurrent();
        *(a1 + 224) = CFRunLoopTimerCreate(*MEMORY[0x277CBECE8], v20 + Current, 0.0, 0, 0, WebSheetDismissalTimerCallback, &buf);
        v30 = mysyslog_get_logger();
        v31 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v30, v31))
        {
          v34 = 134217984;
          v35 = v20;
          _os_log_impl(&dword_277237000, v30, v31, "scheduling WebSheet dismissal after %g seconds", &v34, 0xCu);
        }

        v32 = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(v32, *(a1 + 224), *MEMORY[0x277CBF048]);
        if (++ApplyWebSheetRunTimeRestriction_retry == 4)
        {
          S_canLaunchWebSheetInSetupAssistantMode = 1;
        }

        goto LABEL_38;
      }

      v21 = 0.666666667;
    }

    v20 = *&S_WebSheetInSetupDismissalInterval * v21;
    goto LABEL_34;
  }

  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 32);
    LODWORD(buf.version) = 138412546;
    *(&buf.version + 4) = v6;
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = v2;
    v7 = "%@: Websheet already exists, urlstr = %@";
    v8 = v4;
    v9 = v5;
    v10 = 22;
LABEL_8:
    _os_log_impl(&dword_277237000, v8, v9, v7, &buf, v10);
  }

LABEL_39:
  v33 = *MEMORY[0x277D85DE8];
}

BOOL IsWebSheetRestrictionEnabled()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = _AMIsDeviceSetupCompleted();
  logger = mysyslog_get_logger();
  v2 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v2))
  {
    v3 = "completed";
    if (!v0)
    {
      v3 = "not completed";
    }

    v9 = 136315138;
    v10 = v3;
    _os_log_impl(&dword_277237000, logger, v2, "device setup is %s", &v9, 0xCu);
  }

  if (v0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v6 = _AMIsDeviceActivated();
  v7 = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (!result)
    {
      goto LABEL_7;
    }

    LOWORD(v9) = 0;
    _os_log_impl(&dword_277237000, v7, v8, "device activation is completed", &v9, 2u);
    goto LABEL_6;
  }

  if (result)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_277237000, v7, v8, "device activation is not completed", &v9, 2u);
  }

  result = 1;
LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void WebSheetDismissalTimerCallback(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 64) == kStage_WebSheet && *(a2 + 232))
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      *v6 = 0;
      _os_log_impl(&dword_277237000, logger, v4, "dismissing WebSheet and tearing down Wi-Fi association ...", v6, 2u);
    }

    WebSheetStateIssueExitCommand(*(a2 + 232));
    WebSheetStateSetIsAllowed(*(a2 + 232), 0);
    *(a2 + 232) = 0;
    v5 = ResponseDictCreate(*(a2 + 264), 1);
    CNBuiltinPluginProvideResponse(v5);
    CFRelease(v5);
    CaptiveSetStage(a2, kStage_Unknown);
  }
}

void CaptiveHandleTokenAuthResponse(uint64_t a1, unsigned int a2, const void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 264);
  logger = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v8))
  {
    v38 = 67109378;
    *v39 = a2;
    *&v39[4] = 2114;
    *&v39[6] = a3;
    _os_log_impl(&dword_277237000, logger, v8, "received token authentication result with code:[%d], result: %{public}@", &v38, 0x12u);
  }

  *(a1 + 96) = 0;
  if (v6)
  {
    v9 = *(a1 + 216);
    if (v9)
    {
      CFRunLoopTimerInvalidate(v9);
      v10 = *(a1 + 216);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 216) = 0;
      }
    }

    v11 = 0;
    v12 = 1;
    if (a2 > 0x13)
    {
      LODWORD(v18) = 0;
      v19 = 0;
      goto LABEL_19;
    }

    if (((1 << a2) & 0xEEDC2) != 0)
    {
      v13 = mysyslog_get_logger();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        v38 = 67109120;
        *v39 = a2;
        _os_log_impl(&dword_277237000, v13, v14, "Token Authentication failed, result: %d", &v38, 8u);
      }

      if (a2 - 17 > 2)
      {
        v11 = 0;
        LODWORD(v18) = 0;
        v12 = 0;
        v19 = 1;
        goto LABEL_19;
      }

      CNAccountsPurgeSSID(*(a1 + 48));
      v15 = mysyslog_get_logger();
      v16 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(a1 + 48);
        v38 = 138412290;
        *v39 = v17;
        _os_log_impl(&dword_277237000, v15, v16, "purged account record for SSID: [%@]", &v38, 0xCu);
      }

      v11 = 0;
      LODWORD(v18) = 1;
    }

    else
    {
      LODWORD(v18) = 0;
      v19 = 0;
      if (a2)
      {
        goto LABEL_19;
      }

      v26 = mysyslog_get_logger();
      v27 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v26, v27))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_277237000, v26, v27, "Token Authentication was successful", &v38, 2u);
      }

      if (a3)
      {
        v28 = mysyslog_get_logger();
        v29 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = *(a1 + 32);
          v38 = 138412546;
          *v39 = v30;
          *&v39[8] = 2112;
          *&v39[10] = a3;
          _os_log_impl(&dword_277237000, v28, v29, "%@: received Token Authentication state %@", &v38, 0x16u);
        }

        my_FieldSetRetainedCFType((a1 + 160), a3);
        Value = CFDictionaryGetValue(a3, kTokenAuthWebSheetRequired[0]);
        v18 = Value;
        if (Value)
        {
          v32 = CFGetTypeID(Value);
          if (v32 == CFBooleanGetTypeID())
          {
            LODWORD(v18) = CFBooleanGetValue(v18);
          }

          else
          {
            LODWORD(v18) = 0;
          }
        }

        v33 = CFDictionaryGetValue(a3, kTokenAuthAccessTokenUsed[0]);
        if (v33 && (v34 = v33, v35 = CFGetTypeID(v33), v35 == CFBooleanGetTypeID()) && CFBooleanGetValue(v34))
        {
          v36 = CFDictionaryGetValue(a3, kTokenAuthAccessToken[0]);
        }

        else
        {
          v36 = 0;
        }

        v37 = CFDictionaryGetValue(a3, kTokenAuthLoginURL[0]);
        v11 = 2;
        CNAccountsAddInternal(0, v36, *(a1 + 48), v37, 2, 0);
      }

      else
      {
        LODWORD(v18) = 0;
        v11 = 0;
      }

      if (*(a1 + 120) && *(a1 + 128))
      {
        v12 = 0;
        *(a1 + 262) = 1;
        v19 = 7;
        goto LABEL_19;
      }

      if (!v18)
      {
        CaptiveSetStage(a1, kStage_Online[0]);
        v19 = 0;
        goto LABEL_19;
      }
    }

    CaptiveSetStage(a1, kStage_UIRequired[0]);
    v12 = 0;
    v19 = 2;
LABEL_19:
    v22 = *(a1 + 200);
    if (v22)
    {
      AuthenticateUsingReply(v22, a2);
      *(a1 + 200) = 0;
    }

    v23 = ResponseDictCreate(v6, v19);
    v24 = v23;
    if (v12)
    {
      ResponseDictSetIsCaptiveAndConfidence(v23, v18, v11, 4);
    }

    if (v24)
    {
      CNBuiltinPluginProvideResponse(v24);
      CFRelease(v24);
    }

    goto LABEL_25;
  }

  v20 = mysyslog_get_logger();
  v21 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v20, v21))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_277237000, v20, v21, "no command to be processed", &v38, 2u);
  }

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
}

void CaptiveWebsheetDone(uint64_t *a1, int a2, uint64_t a3)
{
  v4 = a2;
  v29 = *MEMORY[0x277D85DE8];
  v5 = &S_stateHeadStorage;
  do
  {
    v5 = *v5;
    if (v5)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }
  }

  while (!v6);
  if (!v5)
  {
    goto LABEL_44;
  }

  if (a2)
  {
    v5[29] = 0;
    if (a2 == 6)
    {
      goto LABEL_44;
    }
  }

  logger = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v8))
  {
    *buf = 67109378;
    *v28 = v4;
    *&v28[4] = 2112;
    *&v28[6] = a3;
    _os_log_impl(&dword_277237000, logger, v8, "WebSheet Complete, result=%d, options: %@", buf, 0x12u);
  }

  v9 = v5[33];
  if (v9)
  {
    v10 = kStage_Offline;
    if (v4 > 2)
    {
      switch(v4)
      {
        case 3:
          v26 = 0;
          v12 = 0;
          v4 = 6;
          v11 = 1;
          v13 = 1;
          v14 = "timed out";
          goto LABEL_31;
        case 4:
          v11 = 0;
          v4 = 6;
          v12 = 1;
          v26 = 2;
          v13 = 1;
          v14 = "closed";
          goto LABEL_31;
        case 5:
          v11 = 0;
          v13 = 0;
          v4 = 0;
          v10 = kStage_Unknown;
          v12 = 1;
          v14 = "remain associated";
          v26 = 3;
          goto LABEL_31;
      }
    }

    else
    {
      switch(v4)
      {
        case 0:
          v26 = 0;
          v12 = 0;
          v10 = kStage_Online[0];
          v11 = 1;
          v13 = 1;
          v14 = "success";
          goto LABEL_31;
        case 1:
          v11 = 0;
          v12 = 1;
          v26 = 4;
          v13 = 1;
          v14 = "cancelled";
          goto LABEL_31;
        case 2:
          v11 = 0;
          v12 = 0;
          v4 = 6;
          v13 = 1;
          v26 = 2;
          v14 = "died";
LABEL_31:
          v19 = mysyslog_get_logger();
          v20 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v19, v20))
          {
            *buf = 138412546;
            *v28 = v10;
            *&v28[8] = 2080;
            *&v28[10] = v14;
            _os_log_impl(&dword_277237000, v19, v20, "%@ (websheet: %s)", buf, 0x16u);
          }

          if ((v11 & 1) == 0)
          {
            CaptiveAnalyticsSessionPostIncompleteEvent(v26);
          }

LABEL_35:
          *(v5 + 261) = v12;
          CaptiveSetStage(v5, v10);
          v21 = ResponseDictCreate(v9, v4);
          v22 = v21;
          v23 = MEMORY[0x277CBED28];
          if (*(v5 + 261) == 1)
          {
            CFDictionarySetValue(v21, @"DisableMaintaining", *MEMORY[0x277CBED28]);
          }

          if ((v13 & 1) == 0)
          {
            CFDictionarySetValue(v22, @"DisableAutologin", *v23);
          }

          if (v10 == kStage_Online[0])
          {
            CFDictionarySetValue(v22, @"UpdateWebSheetLoginDate", *v23);
          }

          APIStateSecondsRemaining = CaptiveGetAPIStateSecondsRemaining(v5);
          if (APIStateSecondsRemaining)
          {
            CFDictionarySetValue(v22, @"APIStateSecondsRemaining", APIStateSecondsRemaining);
          }

          CNBuiltinPluginProvideResponse(v22);
          CFRelease(v22);
          goto LABEL_44;
      }
    }

    v17 = mysyslog_get_logger();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 138412546;
      *v28 = v10;
      *&v28[8] = 1024;
      *&v28[10] = v4;
      _os_log_impl(&dword_277237000, v17, v18, "%@ (websheet: result %d)", buf, 0x12u);
    }

    v12 = 0;
    v4 = 6;
    v13 = 1;
    goto LABEL_35;
  }

  v15 = mysyslog_get_logger();
  v16 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 0;
    _os_log_impl(&dword_277237000, v15, v16, "no uniqueID", buf, 2u);
  }

LABEL_44:
  v25 = *MEMORY[0x277D85DE8];
}

void CaptiveBuiltinPluginProcessCommand(const __CFDictionary *a1)
{
  v113 = *MEMORY[0x277D85DE8];
  v105 = 0;
  Value = CFDictionaryGetValue(a1, @"Type");
  TypeID = CFNumberGetTypeID();
  if (!Value)
  {
    goto LABEL_93;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_93;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    goto LABEL_93;
  }

  v4 = CFDictionaryGetValue(a1, @"UniqueID");
  v5 = CFDictionaryGetValue(a1, @"InterfaceName");
  v6 = CFDictionaryGetValue(a1, @"Network");
  v7 = v6;
  if (v6)
  {
    v8 = CFDictionaryGetValue(v6, @"SSIDString");
    v9 = CFDictionaryGetValue(v7, @"SSID");
    cf = CFDictionaryGetValue(v7, @"BecameCaptive");
    v10 = CFDictionaryGetValue(v7, @"QuickProbeRequired");
    v11 = CFDictionaryGetValue(v7, @"PortalURL");
    if (v11)
    {
      v12 = v11;
      if (CFStringHasPrefix(v11, @"https://"))
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v10 = 0;
    cf = 0;
    v13 = 0;
    v9 = 0;
    v8 = 0;
  }

  v14 = &S_stateHeadStorage;
  while (1)
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    if (CFEqual(v14[4], v5))
    {
      goto LABEL_18;
    }
  }

  v14 = malloc_type_malloc(0x118uLL, 0x10E00404C85BA76uLL);
  *v14 = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  *(v14 + 7) = 0u;
  *(v14 + 8) = 0u;
  *(v14 + 9) = 0u;
  *(v14 + 10) = 0u;
  *(v14 + 11) = 0u;
  *(v14 + 12) = 0u;
  *(v14 + 13) = 0u;
  *(v14 + 14) = 0u;
  *(v14 + 15) = 0u;
  *(v14 + 16) = 0u;
  v14[34] = 0;
  *(v14 + 1) = 0u;
  v14[4] = CFRetain(v5);
  CFStringGetCString(v5, v14 + 16, 16, 0x600u);
  v15 = S_stateHeadStorage;
  *v14 = S_stateHeadStorage;
  if (v15)
  {
    *(v15 + 8) = v14;
  }

  S_stateHeadStorage = v14;
  v14[1] = &S_stateHeadStorage;
LABEL_18:
  if (valuePtr > 2)
  {
    if (valuePtr != 3)
    {
      if (valuePtr != 4)
      {
        if (valuePtr == 5)
        {
          logger = mysyslog_get_logger();
          v17 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v17))
          {
            v18 = v14[4];
            *buf = 138412802;
            v108 = v18;
            v109 = 2112;
            v110 = v4;
            v111 = 2112;
            v112 = v13;
            _os_log_impl(&dword_277237000, logger, v17, "%@ Maintain %@ portal url: [%@]", buf, 0x20u);
          }

          if (v14[8] != kStage_Online[0] || v7 && my_CFDictionaryGetBooleanValue(v7, @"WasJustJoined", 0))
          {
            CaptiveStateCleanup(v14, 0);
          }

          *(v14 + 262) = 0;
          my_FieldSetRetainedCFType(v14 + 33, 0);
          my_FieldSetRetainedCFType(v14 + 7, v9);
          my_FieldSetRetainedCFType(v14 + 6, v8);
          my_FieldSetRetainedCFType(v14 + 15, v13);
          v19 = CaptiveCarPlayAndInternetMode(v7) != 0;
          v20 = v14[9];
          *(v14 + 273) = v19;
          if (v20)
          {
            captive_agent_abort_probe(v14 + 9);
          }

          if (v14[10])
          {
            captive_agent_abort_login(v14 + 10);
          }

          if (v14[11])
          {
            captive_agent_abort_query(v14 + 11);
          }

          if (v14[12])
          {
            captive_agent_abort_token_auth(v14 + 12);
          }

          if (v8 && v9)
          {
            if (CaptiveBypass(v7, v8, &v105))
            {
              v21 = mysyslog_get_logger();
              v22 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v21, v22))
              {
                v23 = v14[4];
                if (v105)
                {
                  v24 = @"disabled by carrier";
                }

                else
                {
                  v24 = @"disabled by user";
                }

                *buf = 138412802;
                v108 = v23;
                v109 = 2112;
                v110 = v8;
                v111 = 2112;
                v112 = v24;
                _os_log_impl(&dword_277237000, v21, v22, "%@: Not probing '%@' (%@)", buf, 0x20u);
              }

              v25 = ResponseDictCreate(v4, 0);
              CFDictionarySetValue(v25, @"DisableMaintaining", *MEMORY[0x277CBED28]);
LABEL_117:
              v84 = kStage_Online[0];
LABEL_118:
              CaptiveSetStage(v14, v84);
              goto LABEL_90;
            }

            if (*(v14 + 261) == 1)
            {
              v81 = mysyslog_get_logger();
              v82 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v81, v82))
              {
                v83 = v14[4];
                *buf = 138412546;
                v108 = v83;
                v109 = 2112;
                v110 = v8;
                _os_log_impl(&dword_277237000, v81, v82, "%@: Not probing '%@' (ignoring until next association)", buf, 0x16u);
              }

              v25 = ResponseDictCreate(v4, 0);
              goto LABEL_117;
            }

            v50 = kStage_Maintain;
            if (!v13)
            {
              goto LABEL_112;
            }

            goto LABEL_137;
          }

          v65 = mysyslog_get_logger();
          v66 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v65, v66))
          {
            goto LABEL_87;
          }

          v67 = v14[4];
          *buf = 138412290;
          v108 = v67;
          goto LABEL_86;
        }

LABEL_80:
        v59 = v4;
        v60 = 3;
LABEL_88:
        started = ResponseDictCreate(v59, v60);
        goto LABEL_89;
      }

      v54 = mysyslog_get_logger();
      v55 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v14[4];
        *buf = 138412546;
        v108 = v56;
        v109 = 2112;
        v110 = v4;
        _os_log_impl(&dword_277237000, v54, v55, "%@ PresentUI %@", buf, 0x16u);
      }

      my_FieldSetRetainedCFType(v14 + 33, 0);
      if (v14[8] != kStage_UIRequired[0])
      {
        v57 = mysyslog_get_logger();
        v58 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v57, v58))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v57, v58, "PresentUI command not expected (not in Websheet stage)", buf, 2u);
        }

        v59 = v4;
        v60 = 0;
        goto LABEL_88;
      }

      v71 = NetIFCopyCurrentWiFiNetwork(v14[4]);
      if (!v71)
      {
        v88 = mysyslog_get_logger();
        v89 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = v14[4];
          *buf = 138412290;
          v108 = v90;
          _os_log_impl(&dword_277237000, v88, v89, "NetIFCopyCurrentWiFiNetwork returned NULL for interface %@ ", buf, 0xCu);
        }

        goto LABEL_155;
      }

      v72 = v71;
      if (IsWebSheetRestrictionEnabled() && S_canLaunchWebSheetInSetupAssistantMode)
      {
        v73 = v14[28];
        if (v73)
        {
          CFRunLoopTimerInvalidate(v73);
          v74 = v14[28];
          if (v74)
          {
            CFRelease(v74);
            v14[28] = 0;
          }
        }

        v75 = mysyslog_get_logger();
        v76 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v75, v76))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v75, v76, "The device ran out of retries to login to captive network while running in setup assistant mode", buf, 2u);
        }

        v77 = 0;
        v78 = "WebSheet cannot be used in setup assistant mode anymore";
        goto LABEL_103;
      }

      if (NetIFWiFiNetworkWasAutoJoined(v72))
      {
        if (!NetIFWiFiNetworkIsCarPlayAndInternet())
        {
          v91 = CFBooleanGetTypeID();
          if (cf && CFGetTypeID(cf) == v91 && CFBooleanGetValue(cf))
          {
            v77 = 0;
            v78 = "this network has become captive";
            goto LABEL_103;
          }

          LastWebSheetLoginDate = NetIFWiFiNetworkGetLastWebSheetLoginDate();
          if (LastWebSheetLoginDate)
          {
            v98 = LastWebSheetLoginDate;
            Current = CFAbsoluteTimeGetCurrent();
            v100 = CFDateCreate(0, Current);
            v101 = mysyslog_get_logger();
            v102 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v101, v102))
            {
              *buf = 138412546;
              v108 = v100;
              v109 = 2112;
              v110 = v98;
              _os_log_impl(&dword_277237000, v101, v102, "Current time : [%@], Last WebSheet Login time: [%@]", buf, 0x16u);
            }

            TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v100, v98);
            v77 = TimeIntervalSinceDate <= *&S_WebSheetLoginValidityInterval;
            if (TimeIntervalSinceDate > *&S_WebSheetLoginValidityInterval)
            {
              v78 = "last WebSheet login is older than configured time period";
            }

            else
            {
              v78 = 0;
            }

            if (v100)
            {
              CFRelease(v100);
            }

LABEL_103:
            CFRelease(v72);
            if (!v77 && v78)
            {
              v79 = mysyslog_get_logger();
              v80 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v79, v80))
              {
                *buf = 136315394;
                v108 = v78;
                v109 = 2112;
                v110 = v8;
                _os_log_impl(&dword_277237000, v79, v80, "Unable to launch WebSheet because %s, blacklisting network [%@]", buf, 0x16u);
              }

              v69 = ResponseDictCreate(v4, 6);
              v25 = v69;
              goto LABEL_92;
            }

LABEL_155:
            my_FieldSetRetainedCFType(v14 + 33, v4);
            CaptiveInteract(v14);
            goto LABEL_93;
          }
        }
      }

      else
      {
        v92 = mysyslog_get_logger();
        v93 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v92, v93))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v92, v93, "It's a manual join so no further checks required", buf, 2u);
        }
      }

      CFRelease(v72);
      goto LABEL_155;
    }

    v43 = mysyslog_get_logger();
    v44 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v14[4];
      v46 = v14[8];
      *buf = 138412802;
      v108 = v45;
      v109 = 2112;
      v110 = v4;
      v111 = 2112;
      v112 = v46;
      _os_log_impl(&dword_277237000, v43, v44, "%@ Authenticate %@ %@", buf, 0x20u);
    }

    if (*(v14 + 262) != 1)
    {
      my_FieldSetRetainedCFType(v14 + 33, 0);
      started = CaptiveCopyAuthenticationResult(v14, v7, v4);
LABEL_89:
      v25 = started;
      goto LABEL_90;
    }

    v47 = v14[15];
    if (v47)
    {
      v48 = mysyslog_get_logger();
      v49 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v48, v49))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, v48, v49, "re-sending API query", buf, 2u);
      }

      v50 = kStage_Evaluate;
      v51 = v14;
      v52 = v4;
      v53 = v47;
      goto LABEL_138;
    }

    v50 = kStage_Evaluate;
LABEL_112:
    started = CaptiveStartProbe(v14, v4, v50);
    goto LABEL_89;
  }

  if (!valuePtr)
  {
    v61 = mysyslog_get_logger();
    v62 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v14[4];
      *buf = 138412546;
      v108 = v63;
      v109 = 2112;
      v110 = v4;
      _os_log_impl(&dword_277237000, v61, v62, "%@ None(Cleanup) %@", buf, 0x16u);
    }

    CaptiveStateCleanup(v14, 1);
    goto LABEL_93;
  }

  if (valuePtr != 2)
  {
    goto LABEL_80;
  }

  v26 = mysyslog_get_logger();
  v27 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v14[4];
    *buf = 138412546;
    v108 = v28;
    v109 = 2112;
    v110 = v4;
    _os_log_impl(&dword_277237000, v26, v27, "%@ Evaluate %@", buf, 0x16u);
  }

  CaptiveStateCleanup(v14, 1);
  my_FieldSetRetainedCFType(v14 + 33, 0);
  my_FieldSetRetainedCFType(v14 + 7, v9);
  my_FieldSetRetainedCFType(v14 + 6, v8);
  my_FieldSetRetainedCFType(v14 + 15, v13);
  *(v14 + 273) = CaptiveCarPlayAndInternetMode(v7) != 0;
  v29 = CFBooleanGetTypeID();
  if (v10)
  {
    if (CFGetTypeID(v10) == v29)
    {
      *(v14 + 272) = CFBooleanGetValue(v10) != 0;
      v30 = mysyslog_get_logger();
      v31 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v14[4];
        v33 = "is not";
        if (*(v14 + 272))
        {
          v33 = "is";
        }

        *buf = 138412546;
        v108 = v32;
        v109 = 2080;
        v110 = v33;
        _os_log_impl(&dword_277237000, v30, v31, "%@ quick probe %s required", buf, 0x16u);
      }
    }
  }

  v34 = mysyslog_get_logger();
  v35 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v14[4];
    *buf = 138412546;
    v108 = v36;
    v109 = 2112;
    v110 = v13;
    _os_log_impl(&dword_277237000, v34, v35, "%@ Evaluate found portal url %@", buf, 0x16u);
  }

  if (!v8 || !v9)
  {
    v65 = mysyslog_get_logger();
    v66 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v65, v66))
    {
LABEL_87:
      CaptiveSetStage(v14, kStage_Unknown);
      v59 = v4;
      v60 = 1;
      goto LABEL_88;
    }

    v68 = v14[4];
    *buf = 138412290;
    v108 = v68;
LABEL_86:
    _os_log_impl(&dword_277237000, v65, v66, "%@: ssid is NULL", buf, 0xCu);
    goto LABEL_87;
  }

  if (CaptiveBypass(v7, v8, &v105))
  {
    v37 = mysyslog_get_logger();
    v38 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v14[4];
      if (v105)
      {
        v40 = @"disabled by carrier";
      }

      else
      {
        v40 = @"disabled by user";
      }

      *buf = 138412802;
      v108 = v39;
      v109 = 2112;
      v110 = v8;
      v111 = 2112;
      v112 = v40;
      _os_log_impl(&dword_277237000, v37, v38, "%@: Not probing '%@' (%@)", buf, 0x20u);
    }

    v41 = ResponseDictCreate(v4, 0);
    v25 = v41;
    ConfidenceFromAccounts = 1;
  }

  else
  {
    if (v7 && !my_CFDictionaryGetBooleanValue(v7, @"WasCaptive", 0) && my_CFDictionaryGetBooleanValue(v7, @"IsCached", 0) && (v14[34] & 1) == 0)
    {
      v94 = mysyslog_get_logger();
      v95 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = v14[4];
        *buf = 138412546;
        v108 = v96;
        v109 = 2112;
        v110 = v8;
        _os_log_impl(&dword_277237000, v94, v95, "%@: Not probing '%@' (cache indicates not captive)", buf, 0x16u);
      }

      v25 = ResponseDictCreate(v4, 0);
      ResponseDictSetIsCaptiveAndConfidence(v25, 0, 0, 0);
      v84 = kStage_Unknown;
      goto LABEL_118;
    }

    if (!CNAccountsIsCarrierSSID(v8))
    {
      SendEvaluateAck(v4);
      v50 = kStage_Evaluate;
      if (v13)
      {
LABEL_137:
        v51 = v14;
        v52 = v4;
        v53 = v13;
LABEL_138:
        started = CaptiveQueryAPI(v51, v52, v50, v53);
        goto LABEL_89;
      }

      goto LABEL_112;
    }

    v85 = mysyslog_get_logger();
    v86 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = v14[4];
      *buf = 138412546;
      v108 = v87;
      v109 = 2112;
      v110 = v8;
      _os_log_impl(&dword_277237000, v85, v86, "%@: Found carrier network '%@'", buf, 0x16u);
    }

    *(v14 + 262) = 1;
    v25 = ResponseDictCreate(v4, 0);
    ConfidenceFromAccounts = GetConfidenceFromAccounts(v14);
    v41 = v25;
  }

  ResponseDictSetIsCaptiveAndConfidence(v41, 1, ConfidenceFromAccounts, 0);
LABEL_90:
  if (v25)
  {
    v69 = v25;
LABEL_92:
    CNBuiltinPluginProvideResponse(v69);
    CFRelease(v25);
  }

LABEL_93:
  v70 = *MEMORY[0x277D85DE8];
}

void CaptiveCheckPreferences(int a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = gDebug;
  v3 = gVerbose;
  CaptivePrefsRefresh();
  if (a1)
  {
    gActive = CaptivePrefsIsActive();
  }

  gVerbose = CaptivePrefsIsVerbose();
  gDebug = CaptivePrefsIsDebug();
  v4 = gVerbose;
  if (v3 != gVerbose)
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    v7 = os_log_type_enabled(logger, v6);
    if (v4 == 1)
    {
      if (v7)
      {
        LOWORD(v17) = 0;
        v8 = "Verbose mode enabled";
LABEL_9:
        _os_log_impl(&dword_277237000, logger, v6, v8, &v17, 2u);
      }
    }

    else if (v7)
    {
      LOWORD(v17) = 0;
      v8 = "Verbose mode disabled";
      goto LABEL_9;
    }
  }

  if (v2 != gDebug)
  {
    v9 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = "disabled";
      if (!v2)
      {
        v11 = "enabled";
      }

      v17 = 136315138;
      v18 = v11;
      _os_log_impl(&dword_277237000, v9, v10, "Debug mode %s", &v17, 0xCu);
    }
  }

  CNPluginHandlerCheckPreferences();
  S_WebSheetLoginValidityInterval = CCPGetWebSheetLoginValidityInterval();
  v12 = mysyslog_get_logger();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v12, v13))
  {
    v17 = 134217984;
    v18 = S_WebSheetLoginValidityInterval;
    _os_log_impl(&dword_277237000, v12, v13, "WebSheetLoginValidityInterval = %g", &v17, 0xCu);
  }

  S_WebSheetInSetupDismissalInterval = CCPGetWebSheetInSetupDismissalInterval();
  v14 = mysyslog_get_logger();
  v15 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v14, v15))
  {
    v17 = 134217984;
    v18 = S_WebSheetInSetupDismissalInterval;
    _os_log_impl(&dword_277237000, v14, v15, "WebSheetInSetupDismissalInterval = %g", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

const __CFDictionary *CaptiveGetAPIStateSecondsRemaining(const __CFDictionary *result)
{
  if (result)
  {
    result = *(result + 19);
    if (result)
    {
      Value = CFDictionaryGetValue(result, kCAPPORTSecondsRemaining[0]);
      TypeID = CFNumberGetTypeID();
      if (Value && CFGetTypeID(Value) == TypeID)
      {
        valuePtr = 0.0;
        CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
        if (valuePtr <= 0.0)
        {
          return 0;
        }

        else
        {
          return Value;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void CaptiveStateCleanup(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v6 = *(a1 + 64);
    v23 = 138412290;
    v24 = v6;
    _os_log_impl(&dword_277237000, logger, v5, "cancelling operations for built-in plugin in stage: [%@]", &v23, 0xCu);
  }

  if ((a2 == 1 || *(a1 + 64) == kStage_WebSheet) && *(a1 + 232))
  {
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = "WebSheetStagePending == TRUE. Make Old State Go Away.";
      if (a2 == 1)
      {
        v9 = "Make Stale WebSheet Go Away.";
      }

      v23 = 136315138;
      v24 = v9;
      _os_log_impl(&dword_277237000, v7, v8, "%s", &v23, 0xCu);
    }

    WebSheetStateIssueExitCommand(*(a1 + 232));
    WebSheetStateSetIsAllowed(*(a1 + 232), 0);
    *(a1 + 232) = 0;
  }

  my_FieldSetRetainedCFType((a1 + 264), 0);
  if (*(a1 + 72))
  {
    captive_agent_abort_probe((a1 + 72));
  }

  if (*(a1 + 80))
  {
    captive_agent_abort_login((a1 + 80));
  }

  if (*(a1 + 88))
  {
    captive_agent_abort_query((a1 + 88));
  }

  if (*(a1 + 96))
  {
    captive_agent_abort_token_auth((a1 + 96));
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 112) = 0;
  }

  v11 = *(a1 + 136);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 136) = 0;
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 144) = 0;
  }

  my_FieldSetRetainedCFType((a1 + 152), 0);
  my_FieldSetRetainedCFType((a1 + 160), 0);
  my_FieldSetRetainedCFType((a1 + 120), 0);
  my_FieldSetRetainedCFType((a1 + 128), 0);
  v13 = *(a1 + 168);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 168) = 0;
  }

  *(a1 + 176) = 0;
  v14 = *(a1 + 184);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 184) = 0;
  }

  v15 = *(a1 + 192);
  if (v15)
  {
    CNAccountsCredentialsQueryAbort(v15);
    *(a1 + 192) = 0;
  }

  *(a1 + 200) = 0;
  v16 = *(a1 + 208);
  if (v16)
  {
    CFRunLoopTimerInvalidate(v16);
    v17 = *(a1 + 208);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 208) = 0;
    }
  }

  v18 = *(a1 + 216);
  if (v18)
  {
    CFRunLoopTimerInvalidate(v18);
    v19 = *(a1 + 216);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 216) = 0;
    }
  }

  v20 = *(a1 + 240);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 240) = 0;
  }

  v21 = *(a1 + 248);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 248) = 0;
  }

  *(a1 + 256) = 0;
  *(a1 + 260) = 0;
  my_FieldSetRetainedCFType((a1 + 48), 0);
  my_FieldSetRetainedCFType((a1 + 56), 0);
  my_FieldSetRetainedCFType((a1 + 120), 0);
  my_FieldSetRetainedCFType((a1 + 128), 0);
  my_FieldSetRetainedCFType((a1 + 152), 0);
  *(a1 + 261) = 0;
  *(a1 + 272) = 0;
  v22 = *MEMORY[0x277D85DE8];
}

void SendEvaluateAck(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  valuePtr = 2;
  v2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  *keys = xmmword_27A714580;
  values[0] = a1;
  values[1] = v2;
  v3 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CNBuiltinPluginAckEvaluateCommand(v3);
  CFRelease(v2);
  CFRelease(v3);
  v4 = *MEMORY[0x277D85DE8];
}

__CFDictionary *CaptiveQueryAPI(uint64_t a1, const void *a2, __CFString *cf1, const __CFString *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = CFEqual(cf1, kStage_Maintain);
  logger = mysyslog_get_logger();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v10))
  {
    v11 = *(a1 + 32);
    v12 = @"Maintaining";
    v13 = *(a1 + 48);
    if (!v8)
    {
      v12 = @"Evaluating API";
    }

    v21 = 138412802;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_277237000, logger, v10, "%@: %@ '%@'", &v21, 0x20u);
    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    v14 = *(a1 + 48);
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  api = captive_agent_query_api(v14, *(a1 + 32), a4, 0xAu, CaptiveHandleAPIResponse, a1, gThreadRunLoop);
  *(a1 + 88) = api;
  if (api)
  {
    CaptiveSetStage(a1, cf1);
    my_FieldSetRetainedCFType((a1 + 264), a2);
    v16 = 0;
  }

  else
  {
    v17 = mysyslog_get_logger();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_277237000, v17, v18, "captive_agent_query_api failed", &v21, 2u);
    }

    v16 = ResponseDictCreate(a2, 1);
    CaptiveSetStage(a1, kStage_Unknown);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

__CFDictionary *CaptiveStartProbe(uint64_t a1, const void *a2, __CFString *cf1)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = @"Probing";
  if (!CFEqual(cf1, kStage_Evaluate) && CFEqual(cf1, kStage_Maintain))
  {
    v6 = @"Maintaining";
  }

  v7 = 40;
  logger = mysyslog_get_logger();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v9))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v20 = 138412802;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_277237000, logger, v9, "%@: %@ '%@'", &v20, 0x20u);
  }

  if (*(a1 + 272) == 1)
  {
    v12 = mysyslog_get_logger();
    v13 = _SC_syslog_os_log_mapping();
    v7 = 5;
    if (os_log_type_enabled(v12, v13))
    {
      v20 = 67109120;
      LODWORD(v21) = 5;
      _os_log_impl(&dword_277237000, v12, v13, "quick probe is requested, setting timeout to %d seconds", &v20, 8u);
    }
  }

  v14 = captive_agent_send_probe(*(a1 + 48), *(a1 + 32), 0, *(a1 + 112), v7, CaptiveHandleRedirect, a1, gThreadRunLoop);
  *(a1 + 72) = v14;
  if (v14)
  {
    CaptiveSetStage(a1, cf1);
    my_FieldSetRetainedCFType((a1 + 264), a2);
    v15 = 0;
  }

  else
  {
    v16 = mysyslog_get_logger();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_277237000, v16, v17, "captive_agent_send_probe failed", &v20, 2u);
    }

    v15 = ResponseDictCreate(a2, 1);
    CaptiveSetStage(a1, kStage_Unknown);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void CaptiveHandleAPIResponse(uint64_t a1, int a2, const void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 264);
  logger = mysyslog_get_logger();
  v8 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v8))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_277237000, logger, v8, "received API query response", &v31, 2u);
  }

  *(a1 + 88) = 0;
  if (v6)
  {
    if ((a2 - 6) > 9)
    {
      v9 = 0;
      if (!a2)
      {
LABEL_6:
        if (!a3)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v9 = dword_27726ABF0[a2 - 6];
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    if (a2 != 16)
    {
      LODWORD(a3) = 0;
LABEL_21:
      LODWORD(v16) = 0;
      goto LABEL_36;
    }

    if (*(a1 + 64) == kStage_Maintain)
    {
      v9 = 4;
    }

    if (!a3)
    {
      goto LABEL_21;
    }

LABEL_15:
    v12 = mysyslog_get_logger();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(a1 + 32);
      v31 = 138412546;
      v32 = v14;
      v33 = 2112;
      v34 = a3;
      _os_log_impl(&dword_277237000, v12, v13, "%@: received Captive API state %@", &v31, 0x16u);
    }

    my_FieldSetRetainedCFType((a1 + 152), a3);
    Value = CFDictionaryGetValue(a3, kCAPPORTCaptiveFlag[0]);
    v16 = Value;
    if (Value)
    {
      v17 = CFGetTypeID(Value);
      if (v17 == CFBooleanGetTypeID())
      {
        LODWORD(v16) = CFBooleanGetValue(v16);
      }

      else
      {
        LODWORD(v16) = 0;
      }
    }

    v18 = CFDictionaryGetValue(a3, kCAPPORTUserPortalURL[0]);
    if (v18)
    {
      my_FieldSetRetainedCFType((a1 + 112), v18);
      v19 = mysyslog_get_logger();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(a1 + 112);
        v31 = 138412290;
        v32 = v21;
        _os_log_impl(&dword_277237000, v19, v20, "InitialURL: %@:", &v31, 0xCu);
      }
    }

    v22 = CFDictionaryGetValue(a3, kCAPPORTClientAuthenticationURL[0]);
    if (v22)
    {
      my_FieldSetRetainedCFType((a1 + 128), v22);
      v23 = mysyslog_get_logger();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(a1 + 128);
        v31 = 138412290;
        v32 = v25;
        _os_log_impl(&dword_277237000, v23, v24, "ClientAuthenticationURL: %@:", &v31, 0xCu);
      }
    }

    if (v16)
    {
      LODWORD(a3) = GetConfidenceFromAccounts(a1);
      if (a3)
      {
        if (*(a1 + 262) == 1)
        {
          *(a1 + 262) = 0;
          CaptiveSetStage(a1, kStage_UIRequired[0]);
          v26 = ResponseDictCreate(v6, 2);
          goto LABEL_42;
        }

LABEL_36:
        v28 = ResponseDictCreate(v6, v9);
        v26 = v28;
        if (v9)
        {
          if (!v16)
          {
LABEL_40:
            APIStateSecondsRemaining = CaptiveGetAPIStateSecondsRemaining(a1);
            if (APIStateSecondsRemaining)
            {
              CFDictionarySetValue(v26, @"APIStateSecondsRemaining", APIStateSecondsRemaining);
            }
          }
        }

        else
        {
          ResponseDictSetIsCaptiveAndConfidence(v28, v16, a3, 3);
          if (!v16)
          {
            goto LABEL_40;
          }
        }

LABEL_42:
        if (v26)
        {
          CNBuiltinPluginProvideResponse(v26);
          CFRelease(v26);
        }

        goto LABEL_44;
      }

      v27 = kStage_UIRequired;
    }

    else
    {
      LODWORD(a3) = 2;
      v27 = kStage_Online;
    }

    CaptiveSetStage(a1, *v27);
    goto LABEL_36;
  }

  v10 = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v10, v11))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_277237000, v10, v11, "no command to be processed", &v31, 2u);
  }

LABEL_44:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t CNSServerParsePost(uint64_t a1, char a2, const char *a3, const char *a4, const char *a5, const char *a6, _DWORD *a7)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!CaptiveIsActive())
  {
    *a7 = 6;
    goto LABEL_78;
  }

  v13 = is_internal_install();
  if ((a2 & 1) == 0 || v13)
  {
    *a7 = 1;
    theString = 0;
    v62 = 0;
    v14 = *MEMORY[0x277CBECE8];
    v15 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a3, 0x8000100u);
    v16 = CFStringCreateWithCString(v14, a5, 0x8000100u);
    v17 = CFStringCreateWithCString(v14, a4, 0x8000100u);
    v18 = CFStringCreateWithCString(v14, a6, 0x8000100u);
    v19 = v18;
    if (v15)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20 || v16 == 0 || v18 == 0)
    {
      v23 = 0;
      v24 = 0;
      if (!v16)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (!CaptivePostDataToUserNameAndPassword(v16, v18, &v62, &theString))
    {
      if (a2)
      {
        v23 = 0;
        LODWORD(ExternalRepresentation) = 2;
      }

      else
      {
        v28 = v17;
        logger = mysyslog_get_logger();
        v30 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v30))
        {
          *buf = 0;
          LODWORD(ExternalRepresentation) = 2;
          _os_log_impl(&dword_277237000, logger, v30, "failed to scrape credentials", buf, 2u);
          v23 = 0;
        }

        else
        {
          v23 = 0;
          LODWORD(ExternalRepresentation) = 2;
        }

        v17 = v28;
      }

      goto LABEL_64;
    }

    RedirectForInterface = CaptiveGetRedirectForInterface(v15);
    v59 = v17;
    if (RedirectForInterface)
    {
      v26 = RedirectForInterface;
      v27 = CFGetTypeID(RedirectForInterface);
      if (v27 == CFDictionaryGetTypeID())
      {
        URLString = CFDictionaryGetValue(v26, kWISPrLoginURL[0]);
      }

      else
      {
        URLString = 0;
      }

      v17 = v59;
    }

    else
    {
      URLString = 0;
    }

    v58 = CaptiveCopyInterfaceSSID(v15);
    if (!v58 || !URLString)
    {
LABEL_54:
      v43 = mysyslog_get_logger();
      v44 = _SC_syslog_os_log_mapping();
      theString2b = v43;
      v45 = os_log_type_enabled(v43, v44);
      v23 = v58;
      if (URLString && v58)
      {
        if (!v45)
        {
          goto LABEL_61;
        }

        *buf = 138412802;
        v64 = URLString;
        v65 = 2080;
        v66 = a4;
        v67 = 2112;
        v68 = v62;
        v46 = "login URL %@ does not match post url %s, not storing credentials for %@";
        v47 = theString2b;
        v48 = v44;
        v49 = 32;
      }

      else
      {
        if (!v45)
        {
          goto LABEL_61;
        }

        *buf = 136315394;
        v64 = a3;
        v65 = 2112;
        v66 = v62;
        v46 = "Couldn't determine login URL or ssid for %s, not storing credentials for %@";
        v47 = theString2b;
        v48 = v44;
        v49 = 22;
      }

      _os_log_impl(&dword_277237000, v47, v48, v46, buf, v49);
LABEL_61:
      if (a2)
      {
        LODWORD(ExternalRepresentation) = 0;
      }

      else
      {
        LODWORD(ExternalRepresentation) = 3;
      }

LABEL_64:
      *a7 = ExternalRepresentation;
LABEL_65:
      CFRelease(v16);
      v24 = v23;
LABEL_66:
      if (v15)
      {
        CFRelease(v15);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v62)
      {
        CFRelease(v62);
        v62 = 0;
      }

      if (theString)
      {
        CFRelease(theString);
        theString = 0;
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      goto LABEL_78;
    }

    v32 = CFURLCreateWithString(v14, URLString, 0);
    v33 = CFURLCreateWithString(v14, v17, 0);
    cf = v33;
    if (v32 && v33)
    {
      v34 = v33;
      theString2 = CFURLCopyHostName(v32);
      v35 = CFURLCopyHostName(v34);
    }

    else
    {
      v35 = 0;
      theString2 = 0;
      v36 = 0;
      v37 = 0;
      if (!v32)
      {
        goto LABEL_38;
      }
    }

    v38 = v35;
    CFRelease(v32);
    v36 = v38;
    v37 = theString2;
LABEL_38:
    theString2a = v36;
    if (cf)
    {
      CFRelease(cf);
      v36 = theString2a;
    }

    if (v37 && v36)
    {
      v39 = CFStringCompare(v37, v36, 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      if (!v37)
      {
        goto LABEL_45;
      }
    }

    v40 = v39;
    CFRelease(v37);
LABEL_45:
    if (theString2a)
    {
      CFRelease(theString2a);
    }

    v17 = v59;
    if (v40)
    {
      if (a2)
      {
        v52 = mysyslog_get_logger();
        v53 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v52, v53))
        {
          *buf = 138412290;
          v64 = v62;
          _os_log_impl(&dword_277237000, v52, v53, "Parsed credentails for user %@. Hostnames match, would store.", buf, 0xCu);
        }

        LODWORD(ExternalRepresentation) = 0;
        v23 = v58;
        v17 = v59;
      }

      else
      {
        ExternalRepresentation = CFStringCreateExternalRepresentation(v14, theString, 0x8000100u, 0);
        v41 = mysyslog_get_logger();
        v42 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v41, v42))
        {
          *buf = 138412290;
          v64 = v62;
          _os_log_impl(&dword_277237000, v41, v42, "storing credentials for user %@", buf, 0xCu);
        }

        v23 = v58;
        CNAccountsAddInternal(v62, ExternalRepresentation, v58, URLString, 1, 1);
        if (ExternalRepresentation)
        {
          CFRelease(ExternalRepresentation);
          LODWORD(ExternalRepresentation) = 0;
        }

        v17 = v59;
      }

      goto LABEL_64;
    }

    goto LABEL_54;
  }

LABEL_78:
  v50 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CNSServerLogoff(uint64_t a1, int a2, const char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (CaptiveIsActive())
  {
    v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a3, 0x8000100u);
    logger = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v7))
    {
      v14 = 136315138;
      v15 = a3;
      _os_log_impl(&dword_277237000, logger, v7, "logging out of %s", &v14, 0xCu);
    }

    if (v5)
    {
      AuthReplyForInterface = CaptiveGetAuthReplyForInterface(v5);
      if (AuthReplyForInterface)
      {
        v9 = AuthReplyForInterface;
        v10 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
        *v10 = a2;
        Current = CFRunLoopGetCurrent();
        v10[1] = captive_agent_logout(v9, v5, Current, CNSLogoutComplete, v10);
        CFRelease(v5);
        if (!v10[1])
        {
          free(v10);
        }
      }

      else
      {
        CFRelease(v5);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void CNSLogoutComplete(mach_port_t *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v5))
  {
    v10 = 67109120;
    v11 = a2;
    _os_log_impl(&dword_277237000, logger, v5, "logout complete: %d", &v10, 8u);
  }

  if (a2 == 150)
  {
    v6 = 0;
  }

  else
  {
    v7 = mysyslog_get_logger();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      v10 = 67109120;
      v11 = a2;
      _os_log_impl(&dword_277237000, v7, v8, "unexpected result %d", &v10, 8u);
    }

    v6 = 5;
  }

  LogoffReply(*a1, v6);
  free(a1);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t CNSServerForgetNetwork(int a1, const UInt8 *a2, CFIndex length)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFDataCreate(*MEMORY[0x277CBECE8], a2, length);
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateFromExternalRepresentation(v3, v4, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      logger = mysyslog_get_logger();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v9))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_277237000, logger, v9, "Forgetting SSID '%@'", &v12, 0xCu);
      }

      CNAccountsPurgeSSID(v7);
      CNPluginHandlerForgetSSID();
      CFRelease(v7);
    }

    CFRelease(v5);
    result = 0;
  }

  else
  {
    result = 5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CNSServerPurgeAccountRecord(int a1, const UInt8 *a2, CFIndex length)
{
  v14 = *MEMORY[0x277D85DE8];
  result = 5;
  if (a2 && length)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFDataCreate(*MEMORY[0x277CBECE8], a2, length);
    if (v5)
    {
      v6 = v5;
      v7 = CFStringCreateFromExternalRepresentation(v4, v5, 0x8000100u);
      if (v7)
      {
        v8 = v7;
        logger = mysyslog_get_logger();
        v10 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(logger, v10))
        {
          v12 = 138412290;
          v13 = v8;
          _os_log_impl(&dword_277237000, logger, v10, "Purging account record for SSID [%@]", &v12, 0xCu);
        }

        CNAccountsPurgeSSID(v8);
        CFRelease(v8);
      }

      CFRelease(v6);
      result = 0;
    }

    else
    {
      result = 5;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CNSServerDumpState()
{
  if (CaptiveIsActive())
  {
    CaptiveDumpStates();
  }

  return 0;
}

uint64_t CNSServerUserInteractionIsRequired(uint64_t a1, int *a2, _DWORD *a3, _OWORD *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!CaptiveIsActive())
  {
    goto LABEL_7;
  }

  v7 = a4[1];
  v16[0] = *a4;
  v16[1] = v7;
  if (!audit_token_has_BOOLean_entitlement(v16, @"com.apple.captive.private"))
  {
    logger = mysyslog_get_logger();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v13))
    {
      LODWORD(v16[0]) = 136315138;
      *(v16 + 4) = "com.apple.captive.private";
      _os_log_impl(&dword_277237000, logger, v13, "calling procss does not have [%s] entitlement", v16, 0xCu);
    }

    v11 = 1;
    goto LABEL_11;
  }

  v8 = CNPluginHandlerCopyInterfaceList();
  if (!v8)
  {
LABEL_7:
    v11 = 6;
LABEL_11:
    *a2 = v11;
    goto LABEL_12;
  }

  v9 = v8;
  if (CFArrayGetCount(v8) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v9, 0)) != 0)
  {
    *a2 = 0;
    *a3 = CaptiveIsUIRequired(ValueAtIndex);
  }

  else
  {
    *a2 = 6;
  }

  CFRelease(v9);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CNSServerCopySupportedInterfaces(uint64_t a1, vm_offset_t *a2, mach_msg_type_number_t *a3, _DWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  if (CaptiveIsActive())
  {
    *a4 = 1;
    v7 = CNPluginHandlerCopyInterfaceList();
    if (v7)
    {
      v8 = v7;
      *a4 = 0;
      MIGSerialize(v7, a2, a3);
      CFRelease(v8);
    }
  }

  else
  {
    *a4 = 6;
  }

  return 0;
}

uint64_t CNSServerCopyCurrentNetworkInfo(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  *a6 = 0;
  *a4 = 0;
  *a5 = 0;
  return 0;
}

uint64_t CNSServerAuthenticateUsing(uint64_t a1, const char *a2, const char *a3, int *a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (CaptiveIsActive())
  {
    v9 = *MEMORY[0x277CBECE8];
    v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
    v11 = CFStringCreateWithCString(v9, a3, 0x8000100u);
    v12 = v11;
    *a4 = 12;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!v10)
      {
        if (!v11)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      logger = mysyslog_get_logger();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v15))
      {
        v23 = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_277237000, logger, v15, "Authenticating using %@ on %@", &v23, 0x16u);
      }

      v17 = CaptiveAuthenticateUsing(v10, v12, a5);
      *a4 = v17;
      if (v17)
      {
        v18 = mysyslog_get_logger();
        v19 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = *a4;
          v23 = 67109120;
          LODWORD(v24) = v20;
          _os_log_impl(&dword_277237000, v18, v19, "AuthenticateUsing failed: %d", &v23, 8u);
        }
      }
    }

    CFRelease(v10);
    if (v12)
    {
LABEL_17:
      CFRelease(v12);
    }
  }

  else
  {
    *a4 = 6;
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CNSServerAuthenticateUsingToken(uint64_t a1, const char *a2, const UInt8 *a3, unsigned int a4, int *a5, int a6, _OWORD *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!CaptiveIsActive())
  {
    v20 = 6;
LABEL_17:
    *a5 = v20;
    goto LABEL_18;
  }

  v13 = a7[1];
  *v32 = *a7;
  *&v32[16] = v13;
  if (!audit_token_has_BOOLean_entitlement(v32, @"com.apple.captive.private"))
  {
    logger = mysyslog_get_logger();
    v22 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v22))
    {
      *v32 = 136315138;
      *&v32[4] = "com.apple.captive.private";
      _os_log_impl(&dword_277237000, logger, v22, "calling procss does not have [%s] entitlement", v32, 0xCu);
    }

    v20 = 1;
    goto LABEL_17;
  }

  v14 = *MEMORY[0x277CBECE8];
  v15 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  v16 = CFDataCreate(v14, a3, a4);
  v17 = CFStringCreateFromExternalRepresentation(v14, v16, 0x8000100u);
  v18 = v17;
  *a5 = 12;
  if (v15)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (!v15)
    {
      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = mysyslog_get_logger();
    v26 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v25, v26))
    {
      *v32 = 138412546;
      *&v32[4] = v18;
      *&v32[12] = 2112;
      *&v32[14] = v15;
      _os_log_impl(&dword_277237000, v25, v26, "Token Authentication using %@ on %@", v32, 0x16u);
    }

    v28 = CaptiveAuthenticateUsingToken(v15, v18, a6);
    *a5 = v28;
    if (v28)
    {
      v29 = mysyslog_get_logger();
      v30 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *a5;
        *v32 = 67109120;
        *&v32[4] = v31;
        _os_log_impl(&dword_277237000, v29, v30, "CaptiveAuthenticateUsingToken failed: %d", v32, 8u);
      }
    }
  }

  CFRelease(v15);
  if (v16)
  {
LABEL_10:
    CFRelease(v16);
  }

LABEL_11:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CNSServerCopyAccountList(uint64_t a1, vm_offset_t *a2, mach_msg_type_number_t *a3, _DWORD *a4)
{
  *a2 = 0;
  *a3 = 0;
  if (CaptiveIsActive())
  {
    v7 = CNAccountsCopyMatching(0, 0);
    if (v7)
    {
      v8 = v7;
      MIGSerialize(v7, a2, a3);
      CFRelease(v8);
    }
  }

  else
  {
    *a4 = 6;
  }

  return 0;
}

uint64_t CNSServerAddAccount(uint64_t a1, const char *a2, const UInt8 *a3, unsigned int a4, const char *a5, const char *a6, int a7, int *a8, _OWORD *a9)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!CaptiveIsActive())
  {
    result = 0;
    v22 = 6;
LABEL_12:
    *a8 = v22;
    goto LABEL_13;
  }

  v16 = a9[1];
  v28[0] = *a9;
  v28[1] = v16;
  if (!audit_token_has_BOOLean_entitlement(v28, @"com.apple.captive.private"))
  {
    logger = mysyslog_get_logger();
    v24 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v24))
    {
      LODWORD(v28[0]) = 136315138;
      *(v28 + 4) = "com.apple.captive.private";
      _os_log_impl(&dword_277237000, logger, v24, "calling procss does not have [%s] entitlement", v28, 0xCu);
    }

    result = 0;
    v22 = 1;
    goto LABEL_12;
  }

  result = 5;
  if (a3 && a4)
  {
    v18 = *MEMORY[0x277CBECE8];
    v19 = CFDataCreate(*MEMORY[0x277CBECE8], a3, a4);
    if (v19)
    {
      v20 = v19;
      if (*a2)
      {
        v21 = CFStringCreateWithCString(v18, a2, 0x8000100u);
      }

      else
      {
        v21 = 0;
      }

      if (*a5)
      {
        v26 = CFStringCreateWithCString(v18, a5, 0x8000100u);
      }

      else
      {
        v26 = 0;
      }

      if (*a6)
      {
        v27 = CFStringCreateWithCString(v18, a6, 0x8000100u);
      }

      else
      {
        v27 = 0;
      }

      CNAccountsAddInternal(v21, v20, v26, v27, a7, 0);
      *a8 = 0;
      if (v21)
      {
        CFRelease(v21);
      }

      CFRelease(v20);
      if (v26)
      {
        CFRelease(v26);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      result = 0;
    }

    else
    {
      result = 5;
    }
  }

LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CNSServerResolveAccount(uint64_t a1, uint64_t a2, int *a3)
{
  if (CaptiveIsActive())
  {
    v4 = -1;
  }

  else
  {
    v4 = 6;
  }

  *a3 = v4;
  return 0;
}

uint64_t CNSServerCopyLandingPageURL(uint64_t a1, void *a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  LandingPageURL = CNPluginHandlerGetLandingPageURL(a4);
  if (LandingPageURL)
  {
    LandingPageURL = my_CFPropertyListCreateVMData(LandingPageURL, a3);
  }

  else
  {
    *a3 = 0;
  }

  *a2 = LandingPageURL;
  *a5 = 2 * (LandingPageURL == 0);
  return 0;
}

BOOL CNSRegisterServer()
{
  v8 = *MEMORY[0x277D85DE8];
  sp = 0;
  CNSRegisterServer_sCaptiveNetworkServerParameters = CNSServer_server;
  dword_281368DB0 = dword_28865D4D8;
  v0 = bootstrap_check_in(*MEMORY[0x277D85F18], "com.apple.networking.captivenetworksupport", &sp);
  if (v0)
  {
    logger = mysyslog_get_logger();
    v2 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v2))
    {
      *buf = 67109120;
      v7 = v0;
      _os_log_impl(&dword_277237000, logger, v2, "bootstrap_check_in failed: 0x%x", buf, 8u);
    }
  }

  else
  {
    notify_post("com.apple.networking.captivenetworksupport.startserver");
    gServerMachPort = _SC_CFMachPortCreateWithPort();
  }

  result = v0 == 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void CNSStartServer()
{
  if (gServerMachPort)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], gServerMachPort, 0);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF048]);
    if (RunLoopSource)
    {

      CFRelease(RunLoopSource);
    }
  }
}

void CNSShutdownServer()
{
  if (gServerMachPort)
  {
    CFMachPortInvalidate(gServerMachPort);
    if (gServerMachPort)
    {
      CFRelease(gServerMachPort);
      gServerMachPort = 0;
    }
  }
}

void MachServerCallback(uint64_t a1, mach_msg_header_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277CAA770](*MEMORY[0x277CBECE8], *(a4 + 8), 3502231575, 0);
  (*a4)(a2, v6);
  if ((v6->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = v6[1].msgh_remote_port;
    if (msgh_remote_port == -305)
    {
      goto LABEL_11;
    }

    if (msgh_remote_port)
    {
      a2->msgh_remote_port = 0;
      mach_msg_destroy(a2);
    }
  }

  if (v6->msgh_remote_port)
  {
    if ((v6->msgh_bits & 0x1F) == 0x12)
    {
      v8 = 17;
    }

    else
    {
      v8 = 1;
    }

    if ((mach_msg(v6, v8, v6->msgh_size, 0, 0, 0, 0) - 268435459) > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v6->msgh_bits & 0x80000000) != 0)
  {
LABEL_10:
    mach_msg_destroy(v6);
  }

LABEL_11:

  CFAllocatorDeallocate(0, v6);
}

CFTypeRef MIGCFPropertyListCreateBinaryData(CFAllocatorRef bufferAllocator, const void *a2)
{
  v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFWriteStreamOpen(v3))
  {
    CFPropertyListWrite(a2, v4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFWriteStreamClose(v4);
    v5 = CFWriteStreamCopyProperty(v4, *MEMORY[0x277CBF068]);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

CFPropertyListRef MIGUnserializeAndVMDealloc(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  if (bytes && length)
  {
    v4 = *MEMORY[0x277CBECE8];
    v5 = length;
    v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], bytes, length, *MEMORY[0x277CBED00]);
    if (v6)
    {
      v7 = v6;
      v2 = CFPropertyListCreateWithData(v4, v6, 0, 0, 0);
      CFRelease(v7);
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x277CABBC0](*MEMORY[0x277D85F48], bytes, v5);
  }

  return v2;
}

const __CFData *MIGSerialize(const void *a1, vm_offset_t *a2, mach_msg_type_number_t *a3)
{
  result = MIGCFPropertyListCreateBinaryData(*MEMORY[0x277CBECE8], a1);
  if (result)
  {
    v6 = result;
    dataCnt = 0;
    *a3 = CFDataGetLength(result);
    v7 = *MEMORY[0x277D85F48];
    BytePtr = CFDataGetBytePtr(v6);
    v9 = vm_read(v7, BytePtr, *a3, a2, &dataCnt);
    CFRelease(v6);
    result = (v9 == 0);
    if (v9)
    {
      *a2 = 0;
    }

    *a3 = dataCnt;
  }

  return result;
}

uint64_t _AMLaunchApplicationWithIdentifier(uint64_t a1, int a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v6 = objc_alloc_init(MEMORY[0x277D0AD78]);
  v7 = MEMORY[0x277D0AD60];
  if (a2)
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  v28 = *MEMORY[0x277D0ABF0];
  v29[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v10 = [v7 optionsWithDictionary:v9];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___AMLaunchApplicationWithIdentifier_block_invoke;
  v18[3] = &unk_27A7145C0;
  v20 = &v22;
  v21 = a1;
  v11 = v5;
  v19 = v11;
  [v6 openApplication:a1 withOptions:v10 completion:v18];
  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = mysyslog_get_logger();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v27 = a1;
      _os_log_impl(&dword_277237000, v13, v14, "application [%@] launch timed out", buf, 0xCu);
    }

    v15 = 3;
    *(v23 + 6) = 3;
  }

  else
  {
    v15 = *(v23 + 6);
  }

  _Block_object_dispose(&v22, 8);
  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_277245164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _AMCopyDisplayIdentifierForProcessID(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D46F50] identifierWithPid:a1];
  v4 = [MEMORY[0x277D46F48] handleForIdentifier:v3 error:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bundle];
    v7 = [v6 identifier];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v7;
}

uint64_t _AMCopyExtensionPointIdentifierForAuditToken(_OWORD *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v13 = 0;
  v3 = a1[1];
  *buf = *a1;
  v15 = v3;
  v4 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = mysyslog_get_logger();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_277237000, v6, v7, "failed to find bundle record for the given audit token, error: [%@]", buf, 0xCu);
    }

    v8 = 0;
LABEL_5:

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v9 = [v4 extensionPointRecord];
  v8 = [v9 identifier];

  if (v8)
  {
    v6 = mysyslog_get_logger();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v10))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_277237000, v6, v10, "found extension point identifier [%@]", buf, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_11:

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

id _AMCreateProcessAssertionForPID(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D46DB8]);
  v4 = [MEMORY[0x277D47008] targetWithPid:a1];
  v5 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.CaptiveNetworkSupport" name:@"HotspotHelper"];
  v17[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v7 = [v3 initWithExplanation:@"HotspotHelper" target:v4 attributes:v6];

  if (v7 && [v7 acquireWithError:0])
  {
    v8 = mysyslog_get_logger();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      v15 = 67109120;
      v16 = a1;
      _os_log_impl(&dword_277237000, v8, v9, "acquired assertion for pid %d", &v15, 8u);
    }

    v10 = v7;
  }

  else
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v15 = 67109120;
      v16 = a1;
      _os_log_impl(&dword_277237000, v11, v12, "failed to acquire assertion for pid %d", &v15, 8u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void _AMInvalidateProcessAssertion(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = mysyslog_get_logger();
      v5 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v4, v5))
      {
        *v6 = 0;
        _os_log_impl(&dword_277237000, v4, v5, "invalidated assertion", v6, 2u);
      }

      [v3 invalidate];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void *_AMCopyBackgroundModesForPID(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D46F50] identifierWithPid:a1];
  if (v3)
  {
    v4 = [MEMORY[0x277D46F48] handleForIdentifier:v3 error:0];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 bundle];

      if (v6)
      {
        v7 = [v5 bundle];
        v8 = [v7 bundleInfoValueForKey:kUIBackgroundModes];

        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = mysyslog_get_logger();
            v10 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v9, v10))
            {
              v14 = 67109378;
              v15 = a1;
              v16 = 2112;
              v17 = v8;
              _os_log_impl(&dword_277237000, v9, v10, "background modes for pid %d : %@", &v14, 0x12u);
            }

            goto LABEL_13;
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v11))
  {
    v14 = 67109120;
    v15 = a1;
    _os_log_impl(&dword_277237000, v9, v11, "failed to find background modes for pid %d", &v14, 8u);
  }

  v8 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void *_AMCopyLocalizedApplicationNameForDisplayIdentifier(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a1];
  v4 = [v3 localizedNameForContext:0];

  if (v4)
  {
    v5 = v4;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t _AMCopyApplicationDisplayIdentifiers()
{
  v0 = objc_autoreleasePoolPush();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___AMCopyApplicationDisplayIdentifiers_block_invoke;
  v4[3] = &unk_27A7145E8;
  v4[4] = &v5;
  [v1 enumerateBundlesOfType:1 block:v4];
  v2 = v6[3];

  _Block_object_dispose(&v5, 8);
  objc_autoreleasePoolPop(v0);
  return v2;
}

void sub_277245BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2772462B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CNHotspotSessionManager *_AMStartHotspotProviderSessionWithIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_alloc_init(CNHotspotSessionManager);
  [(CNHotspotSessionManager *)v12 setRunloop:a3];
  [(CNHotspotSessionManager *)v12 setContext:a5];
  [(CNHotspotSessionManager *)v12 setRunloopMode:a4];
  [(CNHotspotSessionManager *)v12 setHandler:a6];
  if ([(CNHotspotSessionManager *)v12 startWithConfigurationID:a1 sessionType:a2])
  {
    v13 = v12;
  }

  else
  {
    v14 = mysyslog_get_logger();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      *v17 = 0;
      _os_log_impl(&dword_277237000, v14, v15, "failed to start hotspot session", v17, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void _AMStopHotspotProviderSession(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 stop];
    }
  }
}

void _AMInvalidateHotspotProviderSession(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 invalidate];
      v2 = mysyslog_get_logger();
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v2, v3))
      {
        *v4 = 0;
        _os_log_impl(&dword_277237000, v2, v3, "invalidated hotspot session", v4, 2u);
      }
    }
  }
}

uint64_t _AMIsDeviceActivated()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = MAEGetActivationStateWithError();
  v2 = 0;
  if (v2)
  {
    v3 = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_impl(&dword_277237000, v3, v4, "MAEGetActivationStateWithError failed, error: %@", buf, 0xCu);
    }
  }

  v5 = [v1 isEqualToString:*MEMORY[0x277D288C0]];

  objc_autoreleasePoolPop(v0);
  v6 = *MEMORY[0x277D85DE8];
  return v5 ^ 1u;
}

uint64_t _AMIsDeviceSetupCompleted()
{
  v0 = objc_autoreleasePoolPush();
  v1 = BYSetupAssistantNeedsToRun();
  objc_autoreleasePoolPop(v0);
  return v1 ^ 1u;
}

uint64_t PassiveDetectSetCallBack(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = passiveDetect;
  if (!passiveDetect)
  {
    v4 = malloc_type_malloc(0x40uLL, 0x10E0040913719CAuLL);
    passiveDetect = v4;
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *(v4 + 36) = 1;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (*(v4 + 6))
    {
      PassiveDetectClearInfo(0);
      CaptiveSymptomEnablePassiveDetection(0, 0);
      logger = mysyslog_get_logger();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v11))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_277237000, logger, v11, "Captive passive detection DISABLED", &v14, 2u);
      }
    }

    goto LABEL_12;
  }

  if (!*(passiveDetect + 36))
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(v4 + 2))
  {
LABEL_12:
    v9 = 1;
    goto LABEL_14;
  }

  *(passiveDetect + 16) = my_CFRunLoopSourceCreateForBSDNotification("com.apple.symptoms.managed_events.captive-network", handleNotification, 0, v4 + 2, v4);
  v5 = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(passiveDetect + 40);
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_277237000, v5, v6, "Captive passive detection ENABLED (hostname %@)", &v14, 0xCu);
  }

  v8 = passiveDetect;
  *(passiveDetect + 48) = a1;
  *(v8 + 56) = a2;
  v9 = 1;
  *(v8 + 37) = 1;
  CaptiveSymptomEnablePassiveDetection(1, *(v8 + 40));
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void PassiveDetectClearInfo(int a1)
{
  v2 = passiveDetect;
  *(passiveDetect + 48) = 0;
  *(v2 + 56) = 0;
  if (*v2)
  {
    CFMachPortInvalidate(*v2);
    v2 = passiveDetect;
    if (*passiveDetect)
    {
      CFRelease(*passiveDetect);
      *v2 = 0;
      v2 = passiveDetect;
    }
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v2 = passiveDetect;
    v4 = *(passiveDetect + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 16) = 0;
      v2 = passiveDetect;
    }
  }

  if (*(v2 + 8))
  {
    logger = mysyslog_get_logger();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v6))
    {
      *v7 = 0;
      _os_log_impl(&dword_277237000, logger, v6, "Disabling passive detection", v7, 2u);
    }

    notify_cancel(*(passiveDetect + 8));
    v2 = passiveDetect;
    *(passiveDetect + 8) = 0;
  }

  if (a1)
  {
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
    *(v2 + 37) = 0;
    PassiveDetectSetRedirectURLHostname(0);
  }
}

void handleNotification()
{
  Current = CFAbsoluteTimeGetCurrent();
  v1 = passiveDetect;
  if (*(passiveDetect + 24) + 60.0 > Current)
  {
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      *v5 = 0;
      _os_log_impl(&dword_277237000, logger, v4, "Passive notification ignored (too soon)", v5, 2u);
    }
  }

  else
  {
    state64 = 0;
    v2 = *(passiveDetect + 8);
    if (v2)
    {
      notify_get_state(v2, &state64);
      CaptiveSymptomScheduleEventFetch(state64, &__block_literal_global_1);
      v1 = passiveDetect;
    }

    *(v1 + 24) = Current;
    (*(v1 + 48))(*(v1 + 56));
  }
}

void PassiveDetectReportNotCaptive()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = passiveDetect;
  if (passiveDetect)
  {
    if (!*(passiveDetect + 36))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v0 = malloc_type_malloc(0x40uLL, 0x10E0040913719CAuLL);
    passiveDetect = v0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 36) = 1;
  }

  if (*(v0 + 37))
  {
    ++*(v0 + 8);
    state64 = 0;
    notify_get_state(*(v0 + 2), &state64);
    CaptiveSymptomReportCaptiveState();
    v1 = *(passiveDetect + 32);
    logger = mysyslog_get_logger();
    if (v1 < 3)
    {
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v4))
      {
        v5 = *(passiveDetect + 32);
        *buf = 67109376;
        v9 = v5;
        v10 = 1024;
        v11 = 2;
        _os_log_impl(&dword_277237000, logger, v4, "Reporting False Positive: %d (of %d)", buf, 0xEu);
      }
    }

    else
    {
      v3 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v3))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, logger, v3, "Exceeded threshold for false positive.", buf, 2u);
      }

      PassiveDetectSetCallBack(0, 0);
      *(passiveDetect + 36) = 0;
    }
  }

LABEL_12:
  v6 = *MEMORY[0x277D85DE8];
}

void PassiveDetectNewNetwork()
{
  v0 = passiveDetect;
  if (!passiveDetect)
  {
    v0 = malloc_type_malloc(0x40uLL, 0x10E0040913719CAuLL);
    passiveDetect = v0;
    *v0 = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *(v0 + 36) = 1;
  }

  *(v0 + 36) = 1;

  PassiveDetectClearInfo(1);
}

void PassiveDetectSetRedirectURLHostname(CFTypeRef cf)
{
  v2 = passiveDetect;
  if (!passiveDetect)
  {
    v2 = malloc_type_malloc(0x40uLL, 0x10E0040913719CAuLL);
    passiveDetect = v2;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    v2[36] = 1;
  }

  v3 = (v2 + 40);

  my_FieldSetRetainedCFType(v3, cf);
}

void __PassiveDetectReportNotificationInfo_block_invoke(int a1, int a2, int a3, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"bundle_details");
      TypeID = CFStringGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          logger = mysyslog_get_logger();
          v7 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(logger, v7))
          {
            v9 = 138412290;
            v10 = Value;
            _os_log_impl(&dword_277237000, logger, v7, "App [%@] triggered passive symptom", &v9, 0xCu);
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void UIAllowedRegisterForCallbacks(uint64_t (*a1)(void))
{
  S_callback = a1;
  Current = CFRunLoopGetCurrent();
  v2 = NotifyRegister(Current, "com.apple.airport.userNotification", UIAllowedNetworkingAppNotify, 0);
  v3 = CFRunLoopGetCurrent();
  v4 = NotifyRegister(v3, "com.apple.airportsettingsvisible", UIAllowedWiFiSettingsNotify, 0);
  UIAllowedNetworkingAppCheck(v2);

  UIAllowedWiFiSettingsCheck(v4);
}

void UIAllowedWiFiSettingsNotify(uint64_t a1, uint64_t a2)
{
  v2 = (S_wifi_suppressed & 1) == 0 && ((S_networking_app_in_foreground & 1) != 0 || S_wifi_settings_in_foreground == 1);
  UIAllowedWiFiSettingsCheck(a2);

  UIAllowedInvokeCallback(v2);
}

void UIAllowedWiFiSettingsCheck(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v1 = a1 && NotifyGet(a1, &v6) && v6 != 0;
  if (S_wifi_settings_in_foreground != v1)
  {
    S_wifi_settings_in_foreground = v1;
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      v4 = "not ";
      if (S_wifi_settings_in_foreground)
      {
        v4 = "";
      }

      *buf = 136315394;
      v8 = "UIAllowedWiFiSettingsCheck";
      v9 = 2080;
      v10 = v4;
      _os_log_impl(&dword_277237000, logger, v3, "%s: Wi-Fi Settings %sin foreground", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void UIAllowedNewInterface(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!S_interface)
  {
    v10 = _SCNetworkInterfaceCreateWithBSDName();
    S_interface = v10;
    if (v10)
    {
      v11 = v10;
      buf.version = 0;
      memset(&buf.retain, 0, 24);
      buf.info = v10;
      v12 = SCDynamicStoreCreate(0, @"UIAllowed", UIAllowedInterfaceAdvisoryChanged, &buf);
      if (v12)
      {
        v13 = v12;
        values = SCNetworkInterfaceCopyAdvisoryNotificationKey();
        v14 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
        CFRelease(values);
        v15 = SCDynamicStoreSetNotificationKeys(v13, v14, 0);
        CFRelease(v14);
        if (v15)
        {
          RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v13, 0);
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
          CFRelease(RunLoopSource);
          UIAllowedWiFiSuppressedCheck(v11);
          goto LABEL_6;
        }

        logger = mysyslog_get_logger();
        v23 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(logger, v23))
        {
          goto LABEL_6;
        }

        v25 = 136315138;
        v26 = "UIAllowedRegisterForAdvisoryChanges";
        v4 = "%s: SCDynamicStoreSetNotificationKeys failed";
        p_buf = &v25;
        v6 = logger;
        v7 = v23;
        v8 = 12;
      }

      else
      {
        v19 = mysyslog_get_logger();
        v20 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v19, v20))
        {
          goto LABEL_6;
        }

        v21 = SCError();
        v25 = 136315394;
        v26 = "UIAllowedRegisterForAdvisoryChanges";
        v27 = 2080;
        v28 = SCErrorString(v21);
        v4 = "%s: SCDynamicStoreCreate() failed, %s";
        p_buf = &v25;
        v6 = v19;
        v7 = v20;
        v8 = 22;
      }

      goto LABEL_5;
    }

    v2 = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_6;
    }

    v18 = SCError();
    LODWORD(buf.version) = 136315650;
    *(&buf.version + 4) = "UIAllowedNewInterface";
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = a1;
    HIWORD(buf.retain) = 2080;
    buf.release = SCErrorString(v18);
    v4 = "%s: _SCNetworkInterfaceCreateWithBSDName(%@) failed %s";
LABEL_4:
    p_buf = &buf;
    v6 = v2;
    v7 = v3;
    v8 = 32;
LABEL_5:
    _os_log_impl(&dword_277237000, v6, v7, v4, p_buf, v8);
    goto LABEL_6;
  }

  v2 = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v2, v3))
  {
    LODWORD(buf.version) = 136315650;
    *(&buf.version + 4) = "UIAllowedNewInterface";
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = SCNetworkInterfaceGetBSDName(S_interface);
    HIWORD(buf.retain) = 2112;
    buf.release = a1;
    v4 = "%s: %@ already registered, ignoring %@";
    goto LABEL_4;
  }

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
}

void UIAllowedInterfaceAdvisoryChanged(uint64_t a1, uint64_t a2, const __SCNetworkInterface *a3)
{
  v3 = (S_wifi_suppressed & 1) == 0 && ((S_networking_app_in_foreground & 1) != 0 || S_wifi_settings_in_foreground == 1);
  UIAllowedWiFiSuppressedCheck(a3);

  UIAllowedInvokeCallback(v3);
}

void UIAllowedWiFiSuppressedCheck(const __SCNetworkInterface *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SCNetworkInterfaceAdvisoryIsSpecificSet() != 0;
  if (S_wifi_suppressed != v2)
  {
    S_wifi_suppressed = v2;
    logger = mysyslog_get_logger();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v4))
    {
      BSDName = SCNetworkInterfaceGetBSDName(a1);
      v9 = "UIAllowedWiFiSuppressedCheck";
      v8 = 136315650;
      if (S_wifi_suppressed)
      {
        v6 = "";
      }

      else
      {
        v6 = "not ";
      }

      v10 = 2112;
      v11 = BSDName;
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_277237000, logger, v4, "%s: Wi-Fi %@ is %ssuppressed", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void BBMonitorCheckPreferences()
{
  v9 = *MEMORY[0x277D85DE8];
  S_BBMProbeTimeout = CCPGetBrokenBackhaulProbeTimeout();
  S_BBMProbeInterval = CCPGetBrokenBackhaulProbeInterval();
  logger = mysyslog_get_logger();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v1))
  {
    v7 = 134217984;
    v8 = S_BBMProbeTimeout;
    _os_log_impl(&dword_277237000, logger, v1, "BrokenBackhaulProbeTimeout %g", &v7, 0xCu);
  }

  v2 = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v2, v3))
  {
    v7 = 134217984;
    v8 = S_BBMProbeInterval;
    _os_log_impl(&dword_277237000, v2, v3, "BrokenBackhaulProbeInterval %g", &v7, 0xCu);
  }

  S_BBMPromptInterval = CCPGetBrokenBackhaulPromptInterval();
  v4 = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 134217984;
    v8 = S_BBMPromptInterval;
    _os_log_impl(&dword_277237000, v4, v5, "BrokenBackhaulPromptInterval %g", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t BBMonitorCreate(uint64_t a1, const void *a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = malloc_type_malloc(0x80uLL, 0x10E00409DCE37B5uLL);
  v12 = v11;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  v11[7] = 0u;
  if ((a4 & 3) != 0)
  {
    if (a4)
    {
      v13 = 24;
    }

    else
    {
      v13 = 16;
    }

    if ((a4 & 2) == 0)
    {
      v13 = 8;
    }

    *(v11 + 1) = v13;
  }

  *v11 = 1;
  *(v11 + 1) = _SCNetworkInterfaceCopyActive();
  *(v12 + 16) = CFRetain(a2);
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 24) = a3;
  v14 = my_CFRunLoopSourceCreateForBSDNotification("com.apple.symptoms.managed_events.broken-backhaul", bb_state_changed, v12, (v12 + 64), (v12 + 48));
  *(v12 + 56) = v14;
  if (v14)
  {
    BSDName = SCNetworkInterfaceGetBSDName(*(v12 + 8));
    v16 = NetIFCopyCurrentWiFiNetwork(BSDName);
    if (v16)
    {
      v17 = v16;
      SSID = WiFiNetworkGetSSID();
      if (SSID)
      {
        if (CFEqual(SSID, *(v12 + 16)))
        {
          v19 = *MEMORY[0x277CF7F10];
          Property = WiFiNetworkGetProperty();
          v21 = *MEMORY[0x277CF7EF8];
          v22 = WiFiNetworkGetProperty();
          TypeID = CFBooleanGetTypeID();
          if (Property)
          {
            if (CFGetTypeID(Property) == TypeID)
            {
              v24 = CFDateGetTypeID();
              if (v22)
              {
                if (CFGetTypeID(v22) == v24)
                {
                  *(v12 + 120) = CFBooleanGetValue(Property);
                  *(v12 + 112) = MEMORY[0x277CAA980](v22);
                  BBMonitorLogUserChoice(v12, "Loaded", v22);
                }
              }
            }
          }
        }
      }

      CFRelease(v17);
    }
  }

  else
  {
    BBMonitorRelease(v12);
    return 0;
  }

  return v12;
}

void BBMonitorRelease(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    v4 = *a1;
    v5 = *a1 - 1;
    v10[0] = 67109376;
    v10[1] = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_277237000, logger, v3, "BBMRelease: retain_count %d -> %d", v10, 0xEu);
  }

  v6 = (*a1)--;
  if (v6 == 1)
  {
    BBMonitorInvalidate(a1);
    v7 = a1[1];
    if (v7)
    {
      CFRelease(v7);
      a1[1] = 0;
    }

    v8 = a1[2];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }

  else if (v6 <= 0)
  {
    abort();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t BBMonitorInvalidate(uint64_t a1)
{
  BBMonitorCancelEvents(a1);
  BBMonitorReleaseWiFiAssertion(a1);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    v3 = *(a1 + 48);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 48) = 0;
    }
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRunLoopSourceInvalidate(v4);
    v5 = *(a1 + 56);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 56) = 0;
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    result = notify_cancel(result);
    *(a1 + 64) = 0;
  }

  return result;
}

void BBMonitorCancelEvents(uint64_t a1)
{
  TimerRelease((a1 + 80));
  if (*(a1 + 72))
  {
    captive_agent_abort_probe((a1 + 72));
  }

  BBMonitorCancelPrompt(a1);
}

void BBMonitorReleaseWiFiAssertion(uint64_t a1)
{
  if ((*(a1 + 4) & 0x40) != 0)
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      *v4 = 0;
      _os_log_impl(&dword_277237000, logger, v3, "BBMonitorReleaseWiFiAssertion", v4, 2u);
    }

    *(a1 + 4) &= ~0x40u;
    NetIFReleaseWiFiAssertion();
  }
}

void BBMonitorRetain(int *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v3))
  {
    v4 = *a1;
    v5 = *a1 + 1;
    v7[0] = 67109376;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_277237000, logger, v3, "BBMRetain: retain_count %d -> %d", v7, 0xEu);
  }

  ++*a1;
  v6 = *MEMORY[0x277D85DE8];
}

void BBMonitorScheduleStateFetch(uint64_t a1, int a2)
{
  Current = CFRunLoopGetCurrent();
  if (*(a1 + 56))
  {
    v5 = Current;
    state64 = 0;
    if (a2)
    {
      state64 = 7;
    }

    else
    {
      notify_get_state(*(a1 + 64), &state64);
    }

    BBMonitorRetain(a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 0x40000000;
    aBlock[2] = __BBMonitorScheduleStateFetch_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_17;
    aBlock[4] = v5;
    aBlock[5] = a1;
    if (!CaptiveSymptomScheduleEventFetch(state64, aBlock))
    {
      BBMonitorRelease(a1);
    }
  }
}

void BBMonitorLogUserChoice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  logger = mysyslog_get_logger();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v7))
  {
    v8 = "Use Cellular";
    v9 = *(a1 + 16);
    if (!*(a1 + 120))
    {
      v8 = "Remain On WiFi";
    }

    v11 = 136315906;
    v12 = a2;
    v13 = 2080;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = a3;
    _os_log_impl(&dword_277237000, logger, v7, "BBMonitor: %s user's choice '%s' for SSID '%@' [%@]", &v11, 0x2Au);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void BBMonitorCancelPrompt(uint64_t a1)
{
  if (*(a1 + 96))
  {
    logger = mysyslog_get_logger();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(logger, v3))
    {
      *v8 = 0;
      _os_log_impl(&dword_277237000, logger, v3, "canceling prompt", v8, 2u);
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 96), *MEMORY[0x277CBF058]);
    v5 = *(a1 + 96);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 96) = 0;
    }

    _BBMonitorPostEvent(a1, 0);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFUserNotificationCancel(v6);
    v7 = *(a1 + 88);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 88) = 0;
    }
  }

  if (S_bb == a1)
  {
    S_bb = 0;
  }
}

void _BBMonitorPostEvent(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 104);
  if (Current <= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = (Current - v5);
  }

  v7 = analytics_send_event_lazy();
  logger = mysyslog_get_logger();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(logger, v9))
  {
    v10 = PromptResultGetString_names[a2];
    v11 = "Event Post Failed";
    *buf = 136315906;
    if (v7)
    {
      v11 = "Event Posted";
    }

    v14 = v11;
    v15 = 2080;
    v16 = v10;
    v17 = 1024;
    v18 = a2;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_277237000, logger, v9, "%s %s (%d) duration %qu", buf, 0x26u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __BBMonitorScheduleStateFetch_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __BBMonitorScheduleStateFetch_block_invoke_2;
  block[3] = &__block_descriptor_tmp_15_0;
  v6 = *(a1 + 40);
  v8 = a2;
  block[4] = v6;
  block[5] = a3;
  CFRunLoopPerformBlock(v4, v5, block);
  CFRunLoopWakeUp(*(a1 + 32));
}

void __BBMonitorScheduleStateFetch_block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    goto LABEL_9;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = *(v2 + 4);
  if ((v5 & 0x10) != 0)
  {
    *(v2 + 4) = v5 & 0xFFFFFFEF;
  }

  logger = mysyslog_get_logger();
  v7 = _SC_syslog_os_log_mapping();
  v8 = os_log_type_enabled(logger, v7);
  if (!v3)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&dword_277237000, logger, v7, "BBMonitor: confirmed broken", buf, 2u);
          }

          v14 = *(v2 + 28);
          if (v14 >= 2)
          {
            if (v14 != 4)
            {
              v27 = mysyslog_get_logger();
              v28 = _SC_syslog_os_log_mapping();
              if (!os_log_type_enabled(v27, v28))
              {
                goto LABEL_9;
              }

              v29 = *(v2 + 28);
              if (v29 > 6)
              {
                v30 = "<unknown>";
              }

              else
              {
                v30 = off_27A714780[v29];
              }

              *buf = 136315394;
              v39 = v30;
              v40 = 1024;
              v41 = v29;
              v9 = "BBMonitor state is %s (%d), ignoring";
              v10 = v27;
              v11 = v28;
              v12 = 18;
              goto LABEL_8;
            }

            v21 = mysyslog_get_logger();
            v22 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v21, v22))
            {
              goto LABEL_9;
            }

            *buf = 0;
            v9 = "BBMonitor: in broken state";
            v10 = v21;
            v11 = v22;
            goto LABEL_7;
          }

          *(v2 + 4) &= ~2u;
LABEL_22:
          BBMonitor_Probing(v2, 0, 0);
          goto LABEL_9;
        }

        if (!v8)
        {
LABEL_33:
          if ((v5 & 0x10) != 0)
          {
            BBMonitor_Detecting(v2, 0);
          }

          goto LABEL_9;
        }

        *buf = 134217984;
        v39 = v4;
        v20 = "BBMonitor: unrecognized state %qu";
LABEL_32:
        _os_log_impl(&dword_277237000, logger, v7, v20, buf, 0xCu);
        goto LABEL_33;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, logger, v7, "BBMonitor: detected broken", buf, 2u);
      }

      v15 = *(v2 + 4);
      *(v2 + 4) = v15 & 0xFFFFFFFD;
      v16 = *(v2 + 28);
      if (v16 > 6)
      {
        goto LABEL_50;
      }

      if (((1 << v16) & 0x63) != 0)
      {
        if ((v15 & 0x20) == 0)
        {
          goto LABEL_22;
        }

        v37 = 1;
        v23 = mysyslog_get_logger();
        v24 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v23, v24))
        {
          *buf = 0;
          _os_log_impl(&dword_277237000, v23, v24, "BBMonitor: skipping probing whitelisted network", buf, 2u);
        }

        v25 = &v37;
        v26 = v2;
        goto LABEL_42;
      }

      if (v16 == 4)
      {
        v31 = mysyslog_get_logger();
        v32 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_9;
        }

        v33 = *(v2 + 28);
        if (v33 > 6)
        {
          v34 = "<unknown>";
        }

        else
        {
          v34 = off_27A714780[v33];
        }

        *buf = 136315138;
        v39 = v34;
        v9 = "BBMonitor(%s): waiting until next probe interval";
      }

      else
      {
LABEL_50:
        v31 = mysyslog_get_logger();
        v32 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_9;
        }

        v35 = *(v2 + 28);
        if (v35 > 6)
        {
          v36 = "<unknown>";
        }

        else
        {
          v36 = off_27A714780[v35];
        }

        *buf = 136315138;
        v39 = v36;
        v9 = "BBMonitor(%s): ignoring";
      }

      v10 = v31;
      v11 = v32;
      v12 = 12;
      goto LABEL_8;
    }

    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_277237000, logger, v7, "BBMonitor: not broken", buf, 2u);
    }

    v17 = *(v2 + 28);
    if (v17 < 2)
    {
      goto LABEL_33;
    }

    if (v17 == 6)
    {
      logger = mysyslog_get_logger();
      v7 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(logger, v7))
      {
        goto LABEL_33;
      }

      v18 = *(v2 + 28);
      if (v18 > 6)
      {
        v19 = "<unknown>";
      }

      else
      {
        v19 = off_27A714780[v18];
      }

      *buf = 136315138;
      v39 = v19;
      v20 = "BBMonitor(%s): ignoring";
      goto LABEL_32;
    }

    v26 = v2;
    v25 = 0;
LABEL_42:
    BBMonitor_Idle(v26, 0, v25);
    goto LABEL_9;
  }

  if (v8)
  {
    *buf = 0;
    v9 = "BBMonitor: symptom error encountered";
    v10 = logger;
    v11 = v7;
LABEL_7:
    v12 = 2;
LABEL_8:
    _os_log_impl(&dword_277237000, v10, v11, v9, buf, v12);
  }

LABEL_9:
  BBMonitorRelease(*(a1 + 32));
  v13 = *MEMORY[0x277D85DE8];
}

void BBMonitor_Idle(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    BBMonitorReleaseWiFiAssertion(a1);
    if (a3)
    {
      v5 = *a3;
      BBMonitorSetState(a1, 1u);
      BBMonitorCancelEvents(a1);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      BBMonitorSetState(a1, 1u);
      BBMonitorCancelEvents(a1);
    }

    BBMonitorReportState(a1, 0);

    BBMonitorSetInterfaceAdvisory(a1, 0);
  }
}

void BBMonitor_Probing(uint64_t a1, int a2, int *a3)
{
  if (a2 == 1)
  {
    v4 = *a3;
    BBMonitorReportState(a1, *a3 == 3);
    if (v4 == 3)
    {

      BBMonitor_Selecting(a1, 0, 0);
    }

    else
    {

      BBMonitor_Idle(a1, 0, 0);
    }
  }

  else if (!a2)
  {
    BBMonitorSetState(a1, 2u);
    BBMonitorCancelEvents(a1);
    if (!BBMonitorStartProbe(a1))
    {
      v5 = 0;
      BBMonitor_Idle(a1, 0, &v5);
    }
  }
}

void BBMonitor_Detecting(uint64_t a1, int a2)
{
  v5 = 0;
  if (a2 == 1)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    BBMonitorSetState(a1, 6u);
    BBMonitorCancelEvents(a1);
    if ((*(a1 + 4) & 0x40) == 0)
    {
      logger = mysyslog_get_logger();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(logger, v4))
      {
        *buf = 0;
        _os_log_impl(&dword_277237000, logger, v4, "BBMonitorRetainWiFiAssertion", buf, 2u);
      }

      *(a1 + 4) |= 0x40u;
      NetIFRetainWiFiAssertion();
    }

    if (!BBMonitorStartProbe(a1))
    {
      v5 = 0;
LABEL_9:
      BBMonitor_Idle(a1, 0, &v5);
    }
  }
}