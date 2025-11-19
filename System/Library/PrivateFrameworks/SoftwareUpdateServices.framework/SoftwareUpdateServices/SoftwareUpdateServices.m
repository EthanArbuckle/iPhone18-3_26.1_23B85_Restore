void sub_26AB3D500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_26AB3D6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AB3D800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id buildPreManifest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277CBECE8];
  v9 = AMAuthInstallCreate();
  if (v9)
  {
    v17 = v9;
    if (AMAuthInstallApSetParameters())
    {
      SULogInfo(@"%s failed to set NULL AP parameters in amai: %d", v18, v19, v20, v21, v22, v23, v24, "buildPreManifest");
    }

    else
    {
      v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
      if (v25)
      {
        v33 = v25;
        v34 = *MEMORY[0x277D82550];
        TypeID = CFNumberGetTypeID();
        if ((addMGProperty(v33, @"ChipID", v34, TypeID, v36, v37, v38, v39) & 1) == 0)
        {
          goto LABEL_15;
        }

        v47 = *MEMORY[0x277D82548];
        v48 = CFNumberGetTypeID();
        if ((addMGProperty(v33, @"BoardId", v47, v48, v49, v50, v51, v52) & 1) == 0)
        {
          goto LABEL_15;
        }

        v53 = *MEMORY[0x277D82558];
        v54 = CFNumberGetTypeID();
        if (addMGProperty(v33, @"UniqueChipID", v53, v54, v55, v56, v57, v58) & 1) != 0 && (v59 = *MEMORY[0x277D82570], v60 = CFNumberGetTypeID(), (addMGProperty(v33, @"SigningFuse", v59, v60, v61, v62, v63, v64)) && (v65 = *MEMORY[0x277D82588], v66 = CFNumberGetTypeID(), (addMGProperty(v33, @"CertificateSecurityMode", v65, v66, v67, v68, v69, v70)))
        {
          [v33 setSafeObject:&unk_287B6F328 forKey:*MEMORY[0x277D82580]];
          if (addImageDict(v33, a1, a2, @"SEP", v71, v72, v73, v74))
          {
            if (addImageDict(v33, a3, a4, @"RestoreSEP", v78, v79, v80, v81))
            {
              if (AMAuthInstallApImg4LocalCreatePreManifest())
              {
                SULogInfo(@"%s failed to create pre-manifest: %d", v89, v90, v91, v92, v93, v94, v95, "buildPreManifest");
              }
            }

            else
            {
              SULogInfo(@"%s couldn't add 'RestoreSEP' image to request dict", v82, v83, v84, v85, v86, v87, v88, "buildPreManifest");
            }
          }

          else
          {
            SULogInfo(@"%s couldn't add 'SEP' image to request dict", v75, v76, v77, v78, v79, v80, v81, "buildPreManifest");
          }
        }

        else
        {
LABEL_15:
          SULogInfo(@"%s couldn't add '%@' property to request dict", v40, v41, v42, v43, v44, v45, v46, "buildPreManifest");
        }
      }

      else
      {
        SULogInfo(@"%s couldn't allocate request dict", v26, v27, v28, v29, v30, v31, v32, "buildPreManifest");
      }
    }

    CFRelease(v17);
  }

  else
  {
    SULogInfo(@"%s couldn't instantiate AMAuthInstall", v10, v11, v12, v13, v14, v15, v16, "buildPreManifest");
  }

  return 0;
}

uint64_t addMGProperty(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    SULogInfo(@"%s dict can't be NULL", a2, a3, a4, a5, a6, a7, a8, "addMGProperty");
    return 0;
  }

  if (!a2)
  {
    SULogInfo(@"%s question can't be NULL", 0, a3, a4, a5, a6, a7, a8, "addMGProperty");
    return 0;
  }

  if (!a3)
  {
    SULogInfo(@"%s key can't be NULL", a2, 0, a4, a5, a6, a7, a8, "addMGProperty");
    return 0;
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    v19 = v11;
    if (CFGetTypeID(v11) == a4)
    {
      [a1 setSafeObject:v19 forKey:a3];
    }

    else
    {
      SULogInfo(@"%s failed to get MG answer: %@ - skipping", v20, v21, v22, v23, v24, v25, v26, "addMGProperty");
    }

    CFRelease(v19);
  }

  else
  {
    SULogInfo(@"%s failed to get MG answer: %@ - skipping", v12, v13, v14, v15, v16, v17, v18, "addMGProperty");
  }

  return 1;
}

uint64_t addImageDict(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    SULogInfo(@"%s dict can't be NULL", a2, a3, a4, a5, a6, a7, a8, "addImageDict");
LABEL_14:
    result = 0;
    goto LABEL_9;
  }

  if (!a2)
  {
    SULogInfo(@"%s digest can't be NULL", 0, a3, a4, a5, a6, a7, a8, "addImageDict");
    goto LABEL_14;
  }

  if (!a4)
  {
    SULogInfo(@"%s requestTag can't be NULL", a2, a3, 0, a5, a6, a7, a8, "addImageDict");
    goto LABEL_14;
  }

  v10 = *MEMORY[0x277D825A0];
  if (a3)
  {
    v11 = *MEMORY[0x277D825C0];
    v27[0] = *MEMORY[0x277D825A0];
    v27[1] = v11;
    v28[0] = a2;
    v28[1] = a3;
    v12 = MEMORY[0x277CBEAC0];
    v13 = v28;
    v14 = v27;
    v15 = 2;
  }

  else
  {
    v25 = *MEMORY[0x277D825A0];
    v26 = a2;
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v26;
    v14 = &v25;
    v15 = 1;
  }

  v17 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
  if (!v17)
  {
    SULogInfo(@"%s couldn't create image dict for '%@'", v16, 0, v18, v19, v20, v21, v22, "addImageDict");
    goto LABEL_14;
  }

  [a1 setSafeObject:v17 forKey:a4];
  result = 1;
LABEL_9:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26AB43618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AB454B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AB45628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB4A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB4C1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26AB4C9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AB4D4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_26AB4D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AB55150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL useInternalPowerPolicies()
{
  v0 = +[SUPreferences sharedInstance];
  v1 = [v0 customerPowerPolicies];

  if (v1)
  {
    SULogInfo(@"customerPowerPolicies is set, returning NO for useInternalPowerPolicies", v2, v3, v4, v5, v6, v7, v8, v10);
    return 0;
  }

  else
  {

    return +[SUUtility currentReleaseTypeIsInternal];
  }
}

BOOL isPluggedIntoPower()
{
  out_token = 0;
  v0 = notify_register_check("com.apple.springboard.pluggedin", &out_token);
  result = 0;
  if (!v0)
  {
    v2 = 0;
    notify_get_state(out_token, &v2);
    notify_cancel(out_token);
    return v2 == 1;
  }

  return result;
}

uint64_t connectedToCharger(_BYTE *a1)
{
  v2 = IOPSCopyPowerSourcesByType();
  v10 = 0x279CA9000;
  if (!v2)
  {
    SULogInfo(@"Failed to copy powerSources", v3, v4, v5, v6, v7, v8, v9, v79);
LABEL_12:
    v44 = 0;
    goto LABEL_21;
  }

  v11 = v2;
  v12 = IOPSCopyPowerSourcesList(v2);
  if (!v12)
  {
    SULogInfo(@"Failed to copy powerSourcesList", v13, v14, v15, v16, v17, v18, v19, v79);
    CFRelease(v11);
    goto LABEL_12;
  }

  v20 = v12;
  if (CFArrayGetCount(v12) < 1)
  {
    v44 = 0;
    goto LABEL_20;
  }

  v80 = a1;
  v21 = 0;
  v22 = @"Type";
  v23 = @"deviceType: %@";
  v24 = @"InternalBattery";
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
    v26 = IOPSGetPowerSourceDescription(v11, ValueAtIndex);
    v27 = [v26 objectForKey:v22];
    SULogInfo(v23, v28, v29, v30, v31, v32, v33, v34, v27);
    if (![v27 isEqualToString:v24])
    {
      goto LABEL_8;
    }

    v35 = [v26 objectForKey:@"Is Charging"];
    if ([v35 BOOLValue])
    {
      break;
    }

    [v26 objectForKey:@"Show Charging UI"];
    v81 = v27;
    v36 = v26;
    v37 = v20;
    v38 = v11;
    v39 = v24;
    v40 = v23;
    v42 = v41 = v22;
    v43 = [v42 BOOLValue];

    v22 = v41;
    v23 = v40;
    v24 = v39;
    v11 = v38;
    v20 = v37;
    v26 = v36;
    v27 = v81;

    if (v43)
    {
      goto LABEL_15;
    }

LABEL_8:

    if (++v21 >= CFArrayGetCount(v20))
    {
      v44 = 0;
      goto LABEL_19;
    }
  }

LABEL_15:
  v45 = IOPSCopyExternalPowerAdapterDetails();
  v46 = [(__CFDictionary *)v45 objectForKey:@"FamilyCode"];
  v47 = [(__CFDictionary *)v45 objectForKey:@"IsWireless"];
  v48 = stringForFamilyCode([v46 intValue]);
  SULogInfo(@"device connected to charger. Family code: %@ Wireless: %@", v49, v50, v51, v52, v53, v54, v55, v48);

  if (v80)
  {
    *v80 = [v47 BOOLValue];
    v56 = +[SUPreferences sharedInstance];
    v57 = [v56 batteryOverrideWirelessCharging];

    if (v57)
    {
      v58 = +[SUPreferences sharedInstance];
      v59 = [v58 batteryOverrideWirelessCharging];
      *v80 = [v59 BOOLValue];

      SULogInfo(@"SUBatteryInfoOverrideWirelessCharging preference is set, setting wirelesslyCharging to %hhd", v60, v61, v62, v63, v64, v65, v66, *v80);
    }
  }

  v44 = 1;
LABEL_19:
  v10 = 0x279CA9000uLL;
LABEL_20:
  CFRelease(v11);
  CFRelease(v20);
LABEL_21:
  v67 = [*(v10 + 2944) sharedInstance];
  v68 = [v67 batteryOverridePluggedIn];

  if (v68)
  {
    v69 = [*(v10 + 2944) sharedInstance];
    v70 = [v69 batteryOverridePluggedIn];
    v44 = [v70 BOOLValue];

    SULogInfo(@"SUBatteryInfoOverridePluggedIn preference is set, setting pluggedIn to %hhd", v71, v72, v73, v74, v75, v76, v77, v44);
  }

  return v44;
}

__CFString *stringForFamilyCode(uint64_t a1)
{
  if (a1 > -536854520)
  {
    if (a1 > -536723455)
    {
      if (a1 <= -536723453)
      {
        if (a1 == -536723454)
        {
          v2 = @"kIOPSFamilyCodeExternal2";
        }

        else
        {
          v2 = @"kIOPSFamilyCodeExternal3";
        }

        return v2;
      }

      switch(a1)
      {
        case 0xE0024004:
          v2 = @"kIOPSFamilyCodeExternal4";

          return v2;
        case 0xE0024005:
          v2 = @"kIOPSFamilyCodeExternal5";

          return v2;
        case 0:
          v2 = @"kIOPSFamilyCodeDisconnected";

          return v2;
      }
    }

    else if (a1 <= -536838145)
    {
      if (a1 == -536854519)
      {
        v2 = @"kIOPSFamilyCodeUSBCTypeC";

        return v2;
      }

      if (a1 == -536854518)
      {
        v2 = @"kIOPSFamilyCodeUSBCPD";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xE0008000:
          v2 = @"kIOPSFamilyCodeFirewire";

          return v2;
        case 0xE0024000:
          v2 = @"kIOPSFamilyCodeAC";

          return v2;
        case 0xE0024001:
          v2 = @"kIOPSFamilyCodeExternal";

          return v2;
      }
    }

LABEL_84:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown IOPSFamilyCode: %d", a1];

    return v2;
  }

  if (a1 > -536854525)
  {
    if (a1 <= -536854523)
    {
      if (a1 == -536854524)
      {
        v2 = @"kIOPSFamilyCodeUSBChargingPortDedicated";
      }

      else
      {
        v2 = @"kIOPSFamilyCodeUSBChargingPortDownstream";
      }
    }

    else if (a1 == -536854522)
    {
      v2 = @"kIOPSFamilyCodeUSBChargingPort";
    }

    else if (a1 == -536854521)
    {
      v2 = @"kIOPSFamilyCodeUSBUnknown";
    }

    else
    {
      v2 = @"kIOPSFamilyCodeUSBCBrick";
    }
  }

  else
  {
    if (a1 > -536854528)
    {
      if (a1 == -536854527)
      {
        v2 = @"kIOPSFamilyCodeUSBHostSuspended";
      }

      else if (a1 == -536854526)
      {
        v2 = @"kIOPSFamilyCodeUSBDevice";
      }

      else
      {
        v2 = @"kIOPSFamilyCodeUSBAdapter";
      }

      return v2;
    }

    if (a1 != -536870201)
    {
      if (a1 == -536854528)
      {
        v2 = @"kIOPSFamilyCodeUSBHost";

        return v2;
      }

      goto LABEL_84;
    }

    v2 = @"kIOPSFamilyCodeUnsupported";
  }

  return v2;
}

id requiredBatteryLevelQueryStateDescription(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v2 appendString:@"{"];
  if (a1)
  {
    v3 = @"internal,";
  }

  else
  {
    v3 = @"external,";
  }

  [v2 appendString:v3];
  if ((a1 & 2) != 0)
  {
    v4 = @"splat,";
  }

  else
  {
    v4 = @"non-splat,";
  }

  [v2 appendString:v4];
  if ((a1 & 4) != 0)
  {
    v5 = @"charging,";
  }

  else
  {
    v5 = @"not-charging,";
  }

  [v2 appendString:v5];
  if ((a1 & 8) != 0)
  {
    v6 = @"wireless,";
  }

  else
  {
    v6 = @"not-wireless,";
  }

  [v2 appendString:v6];
  if ((a1 & 0x10) != 0)
  {
    v7 = @"auto";
  }

  else
  {
    v7 = @"manual";
  }

  [v2 appendString:v7];
  [v2 appendString:@"}"];

  return v2;
}

id getCurrentBatteryLevel()
{
  v0 = MGCopyAnswer();
  v1 = +[SUPreferences sharedInstance];
  v2 = [v1 batteryLevelOverride];

  if (v2)
  {
    v10 = +[SUPreferences sharedInstance];
    v21 = [v10 batteryLevelOverride];
    SULogInfo(@"%s: SUBatteryLevelOverride is set to %@, overriding battery level", v11, v12, v13, v14, v15, v16, v17, "NSNumber *getCurrentBatteryLevel(void)");

    v18 = +[SUPreferences sharedInstance];
    v19 = [v18 batteryLevelOverride];

    v0 = v19;
  }

  if (!v0)
  {
    SULogError(@"%s: failed to get battery level; returning 0", v3, v4, v5, v6, v7, v8, v9, "NSNumber *getCurrentBatteryLevel(void)");
    v0 = &unk_287B6F5F8;
  }

  return v0;
}

uint64_t _requiredBatteryLevelToAutoDownload(void *a1, char a2, int a3)
{
  v5 = a1;
  v13 = 0;
  if (([v5 isEmergencyOrCritical] & 1) == 0 && (a2 & 1) == 0)
  {
    if ([v5 isSplatOnly])
    {
      if ([v5 releasedBefore:86400.0])
      {
        v13 = 50;
      }

      else
      {
        v13 = 999;
      }

      goto LABEL_13;
    }

    if ([v5 allowAutoDownloadOnBattery])
    {
      if (!a3)
      {
        v13 = 999;
        goto LABEL_13;
      }

LABEL_12:
      v13 = [v5 autoDownloadOnBatteryMinBattery];
      goto LABEL_13;
    }

    v14 = +[SUPreferences sharedInstance];
    v15 = [v14 overrideAllowAutoDownloadOnBattery];

    v13 = 999;
    if (v15 && (a3 & 1) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  SULogInfo(@"%s: %@: require %u%% battery", v6, v7, v8, v9, v10, v11, v12, "unsigned int _requiredBatteryLevelToAutoDownload(SUDescriptor *__strong _Nonnull, BOOL, BOOL)");

  return v13;
}

id SURequiredBatteryLevelForAutoDownloadForDescriptor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = connectedToCharger(0);
  if (v4)
  {
    [v5 timeIntervalSinceDate:v4];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [SUUtility prettyPrintDate:v4];
  v39 = [v3 productBuildVersion];
  SULogInfo(@"fullyUnrampedDate = %@ for %@; timeElapsed = %.0lf sec (~ %.2lf days)", v10, v11, v12, v13, v14, v15, v16, v9);

  v17 = [v3 autoDownloadOnBatteryDelay];
  v18 = +[SUPreferences sharedInstance];
  v19 = [v18 overrideAutoDownloadOnBatteryDelay];

  if (v19)
  {
    v27 = +[SUPreferences sharedInstance];
    v28 = [v27 overrideAutoDownloadOnBatteryDelay];
    v29 = [v28 unsignedLongLongValue];

    SULogInfo(@"autoDownloadOnBatteryDelay is set to %.0lf sec by default", v30, v31, v32, v33, v34, v35, v36, *&v29);
  }

  else
  {
    v29 = v17 * 86400.0;
  }

  SULogInfo(@"autoDownloadOnBatteryDelay = %.0lf sec (~ %.2lf days)", v20, v21, v22, v23, v24, v25, v26, *&v29);
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{_requiredBatteryLevelToAutoDownload(v3, v6, v8 >= v29)}];

  return v37;
}

BOOL SUHasEnoughBatteryForAutoDownloadForDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = getCurrentBatteryLevel();
  v6 = [v5 unsignedLongLongValue];

  v7 = SURequiredBatteryLevelForAutoDownloadForDescriptor(v4, v3);

  v8 = [v7 unsignedLongLongValue];
  SULogInfo(@"%s: currentBatteryLevel = %llu, requiredBatteryLevel = %llu", v9, v10, v11, v12, v13, v14, v15, "BOOL SUHasEnoughBatteryForAutoDownloadForDescriptor(SUDescriptor *__strong _Nonnull, NSDate *__strong _Nonnull)");
  return v6 >= v8;
}

float SURequiredBatteryLevelForInstallation(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if ([v3 isSplatOnly])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v5 automaticInstallation])
  {
    v6 |= 0x10u;
  }

LABEL_8:
  v21 = 0;
  v7 = connectedToCharger(&v21);
  v8 = 4;
  if (v21)
  {
    v8 = 12;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 | useInternalPowerPolicies();
  v11 = SURequiredBatteryLevelForInstallForState(v10 | v9);
  v12 = requiredBatteryLevelQueryStateDescription(v10 | v9);
  SULogInfo(@"state=%@, required battery level = %d%%", v13, v14, v15, v16, v17, v18, v19, v12);

  return v11;
}

float SURequiredBatteryLevelForInstallForState(char a1)
{
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      if ((a1 & 0x10) != 0)
      {
        goto LABEL_4;
      }

      return 0.2;
    }

    return flt_26ABF8E78[(a1 & 4) == 0];
  }

  if ((a1 & 2) != 0)
  {
    return flt_26ABF8E78[(a1 & 4) == 0];
  }

  if ((a1 & 0x10) == 0)
  {
    return 0.2;
  }

LABEL_4:
  result = flt_26ABF8E80[(a1 & 8) == 0];
  if ((a1 & 4) == 0)
  {
    return 0.3;
  }

  return result;
}

BOOL SUHasEnoughBatteryForInstallation(void *a1, void *a2)
{
  v2 = (SURequiredBatteryLevelForInstallation(a1, a2) * 100.0);
  v3 = getCurrentBatteryLevel();
  v4 = [v3 longLongValue];
  SULogInfo(@"Current battery level: %lld, minimumCharge:%lld", v5, v6, v7, v8, v9, v10, v11, v4);
  v12 = 0;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 longLongValue] >= v2)
    {
      v12 = 1;
    }
  }

  return v12;
}

void SULog(int a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:a3];

  v8 = SULogCommon();
  v9 = v8;
  if (a1 == 3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SULog_cold_1();
    }
  }

  else if (a1 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      SULog_cold_2();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_26AB34000, v9, OS_LOG_TYPE_INFO, "%{public}@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void SULogForSubsystem(void *a1, int a2, void *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = [[v8 alloc] initWithFormat:v9 arguments:a4];

  if (a2 == 3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SULog_cold_1();
    }
  }

  else if (a2 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      SULog_cold_2();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_26AB34000, v7, OS_LOG_TYPE_INFO, "%{public}@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

id SULogCommon()
{
  if (SULogCommon___once != -1)
  {
    SULogCommon_cold_1();
  }

  v1 = SULogCommon___instance;

  return v1;
}

uint64_t __SULogCommon_block_invoke()
{
  SULogCommon___instance = os_log_create("com.apple.softwareupdateservices", "Common");

  return MEMORY[0x2821F96F8]();
}

id SULogInstallConstraints()
{
  if (SULogInstallConstraints___once != -1)
  {
    SULogInstallConstraints_cold_1();
  }

  v1 = SULogInstallConstraints___instance;

  return v1;
}

uint64_t __SULogInstallConstraints_block_invoke()
{
  SULogInstallConstraints___instance = os_log_create("com.apple.softwareupdateservices", "InstallationConstraints");

  return MEMORY[0x2821F96F8]();
}

id SULogBadging()
{
  if (SULogBadging___once != -1)
  {
    SULogBadging_cold_1();
  }

  v1 = SULogBadging___instance;

  return v1;
}

uint64_t __SULogBadging_block_invoke()
{
  SULogBadging___instance = os_log_create("com.apple.softwareupdateservices", "SUBadging");

  return MEMORY[0x2821F96F8]();
}

id SULogFollowUp()
{
  if (SULogFollowUp___once != -1)
  {
    SULogFollowUp_cold_1();
  }

  v1 = SULogFollowUp___instance;

  return v1;
}

uint64_t __SULogFollowUp_block_invoke()
{
  SULogFollowUp___instance = os_log_create("com.apple.softwareupdateservices", "SUFollowUp");

  return MEMORY[0x2821F96F8]();
}

id SULogAnalytics()
{
  if (SULogAnalytics___once != -1)
  {
    SULogAnalytics_cold_1();
  }

  v1 = SULogAnalytics___instance;

  return v1;
}

uint64_t __SULogAnalytics_block_invoke()
{
  SULogAnalytics___instance = os_log_create("com.apple.softwareupdateservices", "SUAnalytics");

  return MEMORY[0x2821F96F8]();
}

id SULogAlerts()
{
  if (SULogAlerts___once != -1)
  {
    SULogAlerts_cold_1();
  }

  v1 = SULogAlerts___instance;

  return v1;
}

uint64_t __SULogAlerts_block_invoke()
{
  SULogAlerts___instance = os_log_create("com.apple.softwareupdateservices", "Alerts");

  return MEMORY[0x2821F96F8]();
}

void sub_26AB6E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AB6F048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

void sub_26AB70A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB87C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB88C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *stringForStashMode(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown stash mode (%d)", a1];
  }

  else
  {
    v2 = off_279CABB38[a1];
  }

  return v2;
}

void sub_26AB8AAB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_26AB8F0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26AB8F78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v19 = objc_begin_catch(exception_object);
  v20 = SULogInstallConstraints();
  SULogInfoForSubsystem(v20, @"%@ - exception caught: %@", v21, v22, v23, v24, v25, v26, v18);

  objc_end_catch();
}

void sub_26AB91114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SUDownloadPhaseIsFetchingAnything(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 && ([v3 isEqualToString:@"SUDownloadPhaseStarting"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"SUDownloadPhaseFetching") & 1) != 0)
  {
    IsFetchingBrain = 1;
  }

  else
  {
    IsFetchingBrain = SUDownloadPhaseIsFetchingBrain(v4);
  }

  return IsFetchingBrain;
}

uint64_t SUDownloadPhaseIsFetchingBrain(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SUDownloadPhaseBrainFetching"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"SUDownloadPhaseBrainFetchingStalled") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"SUDownloadPhaseBrainFetchingQueuedLocal"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseBrainFetchingQueuedRemote"];
  }

  return v2;
}

uint64_t SUDownloadPhaseIsAttemptingToFetchUpdate(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SUDownloadPhaseFetching"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"SUDownloadPhaseStarting") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"SUDownloadPhaseFetching"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseFetchingStalled"];
  }

  return v2;
}

uint64_t SUDownloadPhaseStartedDownloadNotPrepared(void *a1)
{
  v1 = a1;
  if (SUDownloadPhaseIsBrainRelated(v1))
  {
    Update = 1;
  }

  else
  {
    Update = SUDownloadPhaseIsAttemptingToFetchUpdate(v1);
  }

  return Update;
}

uint64_t SUDownloadPhaseIsBrainRelated(void *a1)
{
  v1 = a1;
  if (SUDownloadPhaseIsFetchingBrain(v1) & 1) != 0 || ([v1 isEqualToString:@"SUDownloadPhaseBrainVerifying"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseBrainExtracting"];
  }

  return v2;
}

uint64_t SUDownloadPhaseIsBeyondBrainLoad(void *a1)
{
  v1 = a1;
  if (SUDownloadPhaseIsBrainRelated(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseStarting"] ^ 1;
  }

  return v2;
}

uint64_t SUDownloadPhaseIsUpdateDownloading(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SUDownloadPhaseFetching"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseFetchingStalled"];
  }

  return v2;
}

uint64_t SUDownloadPhaseIsHalted(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SUDownloadPhaseBrainFetchingQueuedLocal"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseBrainFetchingQueuedRemote"];
  }

  return v2;
}

uint64_t SUDownloadPhaseIsStalled(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SUDownloadPhaseBrainFetchingStalled"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"SUDownloadPhaseFetchingStalled"];
  }

  return v2;
}

__CFString *SUStringFromClientType(int a1)
{
  v1 = @"Foreground";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Background";
  }
}

__CFString *SUStringFromMDMSUPath(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown SUMDMSoftwareUpdatePath value: %lu", a1];
  }

  else
  {
    v2 = off_279CABF78[a1];
  }

  return v2;
}

__CFString *SUStringFromDownloadPriority(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CABF98[a1];
  }
}

__CFString *SUStringFromUpdateType(int a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Not Specified";
  }

  else
  {
    return off_279CABFB0[a1 - 1];
  }
}

id SUStringFromUpdateTypes(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v6;
      v15 = v6;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 intValue] - 1;
          v12 = @"Not Specified";
          if (v11 <= 3)
          {
            v12 = off_279CABFB0[v11];
          }

          [v2 appendString:v12];
          if ([v3 count] > ++v9)
          {
            [v2 appendString:{@", "}];
          }
        }

        else
        {
          ++v9;
        }

        ++v8;
      }

      while (v5 != v8);
      v6 = v5 + v15;
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [v2 appendString:@"]"];
  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

__CFString *SUStringFromOSUpdateType(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Splat";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknonw OSUpdateType: %u", a1];
  }

  else
  {
    v2 = @"OS";
  }

  return v2;
}

__CFString *SUStringFromAgreementStatus(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"Unknown Status";
  }

  else
  {
    return off_279CABFD0[a1];
  }
}

__CFString *SUStringFromNetworkType(unsigned int a1)
{
  if (a1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CABFE8[a1];
  }
}

id SUStringFromInstallationConstraints(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __SUStringFromInstallationConstraints_block_invoke;
  v14[3] = &unk_279CABF30;
  v14[4] = &v17;
  v14[5] = v15;
  v2 = MEMORY[0x26D668B30](v14);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __SUStringFromInstallationConstraints_block_invoke_2;
  v12 = &unk_279CABF58;
  v3 = v2;
  v13 = v3;
  v4 = v10;
  if (a1)
  {
    v5 = 0;
    v23 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v11)(v4);
        if (v23)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = v18[5];
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

void sub_26AB99710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SUStringFromInstallationConstraints_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  if (!*(*(v3 + 8) + 40))
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(a1 + 32);
  }

  if (*(*(*(a1 + 40) + 8) + 24) >= 1)
  {
    [*(*(v3 + 8) + 40) appendString:{@", "}];
    v3 = *(a1 + 32);
  }

  [*(*(v3 + 8) + 40) appendString:v7];
  ++*(*(*(a1 + 40) + 8) + 24);
}

uint64_t __SUStringFromInstallationConstraints_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 > 63)
  {
    if (a2 <= 511)
    {
      if (a2 == 64 || a2 == 128 || a2 == 256)
      {
        return (*(*(result + 32) + 16))();
      }
    }

    else if (a2 > 2047)
    {
      if (a2 == 2048 || a2 == 4096)
      {
        return (*(*(result + 32) + 16))();
      }
    }

    else if (a2 == 512 || a2 == 1024)
    {
      return (*(*(result + 32) + 16))();
    }
  }

  else
  {
    if (a2 <= 3)
    {
      if (a2 > 2)
      {
        return result;
      }

      return (*(*(result + 32) + 16))();
    }

    if (a2 > 15)
    {
      if (a2 == 16 || a2 == 32)
      {
        return (*(*(result + 32) + 16))();
      }
    }

    else if (a2 == 4 || a2 == 8)
    {
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

__CFString *SUStringFromDownloadPolicyType(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_279CAC038[a1];
  }
}

__CFString *SUStringFromActivationMessageType(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CAC060[a1];
  }
}

__CFString *SUStringFromAudienceType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CAC078[a1];
  }
}

__CFString *SUStringFromPreferredUpdateType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CAC090[a1];
  }
}

__CFString *SUStringFromVersionUpgradeType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CAC0A8[a1];
  }
}

__CFString *SUStringFromRollbackSuggestionReasonType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CAC0C0[a1];
  }
}

__CFString *SUStringFromSUScanTaskType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279CAC0D8[a1];
  }
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26AB9DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABA2EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_26ABA3540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABA4140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279CAC398;
    v7 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BYSetupAssistantBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __softwareUpdateDaemonStarted(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogDebug(@"softwareupdateservicesd launch detected.", a2, a3, a4, a5, a6, a7, a8, v10);

  return [a2 performSelectorOnMainThread:sel_connectToServerIfNecessary withObject:0 waitUntilDone:0];
}

void sub_26ABA9734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 168), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABA9EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABAA6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABAB284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26ABAB5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABAB8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26ABAFC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABAFF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABB01DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABB1274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26ABB2AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26ABB45A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_26ABB76E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB7850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB79C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB7B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB7CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB7F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB807C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB82E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB8598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABB8FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABB9184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBB018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBB324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBB484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBB864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBBD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBBED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBC09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBC20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBC3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBC548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBC6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBC980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBCF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABBD124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void purgeAssets(void *a1, int a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = a1;
  v44 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  v5 = 0;
  if (v44)
  {
    v6 = *v53;
    v41 = a3;
    v42 = *v53;
    v40 = a2;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v53 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v52 + 1) + 8 * i);
        v51 = v5;
        v9 = _queryLocalAssetsForType(v8, a2, &v51);
        v10 = v51;

        if (v10)
        {
          v45 = v9;
          SULogDebug(@"%@", v11, v12, v13, v14, v15, v16, v17, v10);
          if (a3 && !*a3)
          {
            v38 = v10;
            v5 = 0;
            *a3 = v10;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          if (!v9)
          {
            v5 = 0;
            goto LABEL_28;
          }

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = v9;
          v10 = v9;
          v18 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v18)
          {
            v19 = v18;
            v5 = 0;
            v20 = *v48;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v48 != v20)
                {
                  objc_enumerationMutation(v10);
                }

                v22 = *(*(&v47 + 1) + 8 * j);
                if ([v22 state] == 1)
                {
                  SULogDebug(@"Deleting %@ from MAV1 path\n", v23, v24, v25, v26, v27, v28, v29, v8);
                  v46 = v5;
                  [v22 purgeAndReturnError:&v46];
                  v30 = v46;

                  if (v30)
                  {
                    SULogDebug(@"%@", v31, v32, v33, v34, v35, v36, v37, v30);
                    v5 = v30;
                  }

                  else
                  {
                    v5 = 0;
                  }
                }
              }

              v19 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v19);
            a3 = v41;
            a2 = v40;
          }

          else
          {
            v5 = 0;
          }

          v6 = v42;
        }

        v9 = v45;
LABEL_28:
      }

      v44 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v44);
  }

  v39 = *MEMORY[0x277D85DE8];
}

id specificTimeOnDate(void *a1, int a2, int a3, int a4)
{
  v7 = MEMORY[0x277CBEA80];
  v8 = a1;
  v9 = [v7 currentCalendar];
  v10 = [v9 components:2097180 fromDate:v8];

  [v10 setHour:a2];
  [v10 setMinute:a3];
  [v10 setSecond:a4];
  v11 = [v9 dateFromComponents:v10];

  return v11;
}

void sub_26ABCA234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_26ABCA4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABCA5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABCA7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_26ABCA8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABCA9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABCABC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABCAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26ABCAFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABCB278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABD322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABD36E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *SUStringForAutoInstallForecastScheduleType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279CACEB0[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABE1EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SUPreferencesChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"%s: Got notification: %@", a2, a3, a4, a5, a6, a7, a8, "void __SUPreferencesChanged(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)");
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____SUPreferencesChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26ABE8938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SULog_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26AB34000, v0, OS_LOG_TYPE_ERROR, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void SULog_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26AB34000, v0, OS_LOG_TYPE_DEBUG, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __getBYSetupAssistantBundleIdentifierSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUScanner.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void *_queryLocalAssetsForType(void *a1, int a2, void *a3)
{
  v5 = a1;
  if (!v5)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v6 = [objc_alloc(MEMORY[0x277D289A8]) initWithAssetType:v5];
  [v6 setQueriesLocalAssetInformationOnly:1];
  if (a2)
  {
    v7 = MGCopyAnswer();
    if (v7)
    {
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ IN %K OR %K == NULL", v7, @"SupportedDeviceModels", @"SupportedDeviceModels"];
      [v6 setPredicate:v8];
    }
  }

  v23 = 0;
  v9 = [v6 runQueryAndReturnError:&v23];
  v10 = v23;
  if (v10)
  {
    v18 = v10;
    SULogDebug(@"queryAssetsForType(%@) - error %@\n", v11, v12, v13, v14, v15, v16, v17, v5);
    v19 = 0;
    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_14:
    v18 = 0;
    v19 = 0;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v19 = [v9 sortedArrayUsingComparator:&__block_literal_global_588];
  v18 = 0;
LABEL_10:

  if (a3)
  {
LABEL_11:
    v20 = v18;
    *a3 = v18;
  }

LABEL_12:
  v21 = v19;

  return v19;
}

uint64_t ___queryLocalAssetsForType_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [v6 attributes];
      v9 = *MEMORY[0x277D28920];
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D28920]];
      v11 = [v4 attributes];
      v12 = [v11 objectForKeyedSubscript:v9];
      v7 = [v10 compare:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}