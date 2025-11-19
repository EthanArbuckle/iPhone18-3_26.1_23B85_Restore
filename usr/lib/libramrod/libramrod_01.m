CFBooleanRef ramrod_get_effective_security_mode_ap()
{
  v0 = kCFBooleanFalse;
  v1 = ramrod_copy_value_from_IONode("IODeviceTree:/chosen", @"effective-security-mode-ap");
  if (v1)
  {
    v9 = v1;
    v10 = CFGetTypeID(v1);
    if (v10 == CFDataGetTypeID())
    {
      if (*CFDataGetBytePtr(v9))
      {
        v0 = kCFBooleanTrue;
      }
    }

    else
    {
      ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_get_effective_security_mode_ap");
    }

    CFRelease(v9);
  }

  else
  {
    ramrod_log_msg("%s: Got a NULL return from IORegistryEntryCreateCFProperty\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_get_effective_security_mode_ap");
  }

  return v0;
}

BOOL ramrod_should_entangle_nonce()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = IORegistryEntryCreateCFProperty(v0, @"entangle-nonce", kCFAllocatorDefault, 0) != 0;
  AMSupportSafeRelease();
  IOObjectRelease(v1);
  return v2;
}

CFDataRef ramrod_hash_stored_apnonce_with_method(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"boot-nonce", kCFAllocatorDefault, 0);
    IOObjectRelease(v3);
    if (ramrod_should_entangle_nonce())
    {
      ramrod_log_msg("Need to entangle the nonce with UID 1. Aborting because we don't know how to do that yet.\n", v5, v6, v7, v8, v9, v10, v11, v15);
    }

    else if (CFProperty)
    {
      v13 = CFGetTypeID(CFProperty);
      if (v13 == CFDataGetTypeID())
      {
        v12 = ramrod_hash_data_with_method(CFProperty, a1);
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:
    AMSupportSafeRelease();
    return v12;
  }

  return 0;
}

uint64_t ramrod_copy_device_identity_static_info(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  ramrod_log_msg("%s: Attempting to read device identity info\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_copy_device_identity_static_info");
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  v9 = ramrod_copy_crypto_hash_method();
  *(v8 + 88) = v9;
  if (v9)
  {
    v54 = "ramrod_copy_device_identity_static_info";
    ramrod_log_msg_cf(@"%s: image4CryptoHashMethod: %@\n");
  }

  v10 = ramrod_copy_ecid();
  v11 = v10;
  if (!v10)
  {
    goto LABEL_21;
  }

  v12 = CFGetTypeID(v10);
  if (v12 != CFNumberGetTypeID() || CFNumberGetValue(v11, kCFNumberSInt64Type, v8) != 1)
  {
    goto LABEL_21;
  }

  AMSupportSafeRelease();
  v13 = ramrod_copy_board_id();
  *(v8 + 8) = v13;
  if (!v13 || (v21 = CFGetTypeID(v13), v21 != CFNumberGetTypeID()))
  {
    v30 = "%s: Unable to get board ID..\n";
LABEL_20:
    ramrod_log_msg(v30, v14, v15, v16, v17, v18, v19, v20, "ramrod_copy_device_identity_static_info");
    goto LABEL_21;
  }

  v22 = ramrod_copy_chip_id();
  *(v8 + 16) = v22;
  if (!v22 || (v23 = CFGetTypeID(v22), v23 != CFNumberGetTypeID()))
  {
    v30 = "%s: Unable to read chipID\n";
    goto LABEL_20;
  }

  v24 = MGCopyAnswer();
  *(v8 + 24) = v24;
  if (!v24)
  {
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &unk_1C46B8);
    *(v8 + 24) = v24;
  }

  v25 = CFGetTypeID(v24);
  if (v25 != CFNumberGetTypeID())
  {
    v30 = "%s: Failed to read security domain value\n";
    goto LABEL_20;
  }

  certificate_production_status = ramrod_get_certificate_production_status();
  v27 = CFGetTypeID(certificate_production_status);
  if (v27 != CFBooleanGetTypeID())
  {
    v30 = "%s: Failed to read certificate production status\n";
    goto LABEL_20;
  }

  *(v8 + 32) = CFBooleanGetValue(certificate_production_status);
  AMSupportSafeRelease();
  if (kCFBooleanTrue)
  {
    v28 = CFGetTypeID(kCFBooleanTrue);
    if (v28 != CFBooleanGetTypeID())
    {
      v30 = "%s: Failed to read img4_supported\n";
      goto LABEL_20;
    }

    Value = CFBooleanGetValue(kCFBooleanTrue);
  }

  else
  {
    Value = 0;
  }

  *(v8 + 48) = Value;
  AMSupportSafeRelease();
  certificate_security_mode = ramrod_get_certificate_security_mode();
  v32 = CFGetTypeID(certificate_security_mode);
  if (v32 != CFBooleanGetTypeID())
  {
    v30 = "%s: Failed to read security mode\n";
    goto LABEL_20;
  }

  *(v8 + 49) = CFBooleanGetValue(certificate_security_mode);
  AMSupportSafeRelease();
  effective_production_status_ap = ramrod_get_effective_production_status_ap();
  v34 = CFGetTypeID(effective_production_status_ap);
  if (v34 != CFBooleanGetTypeID())
  {
    v30 = "%s: Failed to read production status\n";
    goto LABEL_20;
  }

  *(v8 + 51) = CFBooleanGetValue(effective_production_status_ap);
  AMSupportSafeRelease();
  effective_security_mode_ap = ramrod_get_effective_security_mode_ap();
  v36 = CFGetTypeID(effective_security_mode_ap);
  if (v36 != CFBooleanGetTypeID())
  {
    v30 = "%s: Failed to read sec mode ap\n";
    goto LABEL_20;
  }

  *(v8 + 50) = CFBooleanGetValue(effective_security_mode_ap);
  AMSupportSafeRelease();
  v37 = ramrod_hash_stored_apnonce_with_method(*(v8 + 88));
  *(v8 + 40) = v37;
  if (!v37)
  {
LABEL_32:
    ramrod_log_msg("Retrieved APNonce (without regeneration) was NULL.\n", v38, v39, v40, v41, v42, v43, v44, v54);
    v46 = *(v8 + 40);
    goto LABEL_33;
  }

  v45 = CFGetTypeID(v37);
  if (v45 != CFDataGetTypeID())
  {
LABEL_21:
    AMSupportSafeRelease();
    ramrod_release_device_identity(v8);
    return 0;
  }

  v46 = *(v8 + 40);
  if (!v46)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (!v46)
  {
    v46 = @"NULL";
  }

  ramrod_log_msg_cf(@"ApNonce (retrieved): %@", v46);
  ramrod_log_msg("Successfully copied device Identity\n", v47, v48, v49, v50, v51, v52, v53, v55);
  ramrod_log_msg_cf(@"DeviceInfo:\nBoardID: %@\nChipID: %@\n", *(v8 + 8), *(v8 + 16));
  AMSupportSafeRelease();
  return 1;
}

double ramrod_release_device_identity(_OWORD *a1)
{
  if (a1)
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    result = 0.0;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t ramrod_configure_authinstall_object(uint64_t a1, uint64_t a2)
{
  updated = ramrod_update_copy_ap_parameters(0);
  if (updated)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, updated);
    if (MutableCopy)
    {
      AMAuthInstallSupportDictionarySetInteger64();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      AMAuthInstallSupportDictionarySetBoolean();
      CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterChipID, *(a2 + 16));
      CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterBoardID, *(a2 + 8));
      CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterSecurityDomain, *(a2 + 24));
      v12 = *(a2 + 40);
      if (v12 && CFDataGetLength(v12) >= 1)
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterApNonce, *(a2 + 40));
      }

      v13 = *(a2 + 64);
      if (v13 && CFDataGetLength(v13) >= 1)
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterSepNonce, *(a2 + 64));
      }

      v14 = *(a2 + 88);
      if (v14)
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterImg4DigestType, v14);
      }

      if (*(a2 + 104))
      {
        CFDictionarySetValue(MutableCopy, kAMAuthInstallApParameterAllowMixAndMatch, kCFBooleanTrue);
      }

      v15 = AMAuthInstallApSetParameters();
      if (v15)
      {
        ramrod_log_msg("Could not set AP parameters: %d\n", v16, v17, v18, v19, v20, v21, v22, v15);
      }

      else
      {
        if (!*(a2 + 56) || (v25 = AMAuthInstallBasebandSetParametersWithUpdaterOutput()) == 0)
        {
          v23 = 1;
          goto LABEL_18;
        }

        ramrod_log_msg("Could not set baseband parameters: %d\n", v26, v27, v28, v29, v30, v31, v32, v25);
      }
    }
  }

  else
  {
    ramrod_log_msg("Could not query generic AP parameters\n", v3, v4, v5, v6, v7, v8, v9, v33);
  }

  v23 = 0;
LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v23;
}

void *setiBULoggingPointer(void *result)
{
  if (result)
  {
    off_1C6530 = result;
  }

  return result;
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (off_1C6530)
  {
    v12 = [v10 UTF8String];
    off_1C6530("%s: %s\n", a2, v12);
  }

  else
  {
    NSLog(&cfstr_S_5.isa, a2, v10);
  }
}

NSError *MSUBootFirmwareError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (a2)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = NSUnderlyingErrorKey;
    v20 = v11;
    v21 = a2;
    v12 = &v20;
    v13 = &v18;
    v14 = 2;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  return [NSError errorWithDomain:@"MSUFirmwareUpdaterErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, &a9, v16, v17, v18, v19, v20, v21]];
}

uint64_t sub_12F5C(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_D5CC4(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_133F4(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      sub_D5DD8(&v2, v3);
    }
  }

  return result;
}

double sub_13494(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL sub_134AC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

id ramrod_splat_enabled(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v14 = "%s: Warning: build identity is NULL\n";
LABEL_14:
    ramrod_log_msg(v14, a2, a3, a4, a5, a6, a7, a8, "ramrod_splat_enabled");
    return 0;
  }

  v8 = [a1 objectForKeyedSubscript:@"Manifest"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = "%s: Warning: build identity -> Manifest is NULL or invalid\n";
    goto LABEL_14;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 allKeys];
  result = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v15 + 1) + 8 * i) hasPrefix:{@"Cryptex1, "}])
        {
          return &dword_0 + 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      result = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t ramrod_splat_local_policy_supported(void *a1)
{
  v11[0] = [NSNumber numberWithInt:8198];
  v11[1] = [NSNumber numberWithInt:8224];
  v11[2] = [NSNumber numberWithInt:8228];
  v11[3] = [NSNumber numberWithInt:0x4000];
  v11[4] = [NSNumber numberWithInt:0x8000];
  v11[5] = [NSNumber numberWithInt:32769];
  v11[6] = [NSNumber numberWithInt:32771];
  v11[7] = [NSNumber numberWithInt:32774];
  v11[8] = [NSNumber numberWithInt:32784];
  v11[9] = [NSNumber numberWithInt:32785];
  v11[10] = [NSNumber numberWithInt:32786];
  v11[11] = [NSNumber numberWithInt:32789];
  v11[12] = [NSNumber numberWithInt:32800];
  v11[13] = [NSNumber numberWithInt:32816];
  v11[14] = [NSNumber numberWithInt:33537];
  v2 = [[NSArray arrayWithObjects:15 count:?], "containsObject:", a1];
  [a1 unsignedIntValue];
  ramrod_log_msg("%s: 0x%x %s supported\n", v3, v4, v5, v6, v7, v8, v9, "ramrod_splat_local_policy_supported");
  return v2 ^ 1;
}

uint64_t ramrod_splat_install(void *a1, CFErrorRef *a2, uint64_t a3)
{
  v107 = +[NSFileManager defaultManager];
  v115 = 0;
  v6 = sub_13F34(a1, @"SplatOnlyUpdate");
  v7 = sub_13F34(a1, @"SplatComboUpdate");
  v8 = sub_13F34(a1, @"StageToProposed");
  v16 = v8;
  v17 = v6 | v7;
  if ((v6 | v7) & 1) == 0 || (v8)
  {
    v19 = [a1 objectForKeyedSubscript:@"BuildIdentity"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v19)
    {
      v18 = "missing RAMROD_SPLAT_OPT_BUILD_IDENTITY";
      goto LABEL_10;
    }

    v113 = 0;
    v114 = 0;
    v20 = sub_15050(a1);
    result = sub_15100(v20, a1, &v114, &v113, a2, v21, v22, v23);
    if (!result)
    {
      return result;
    }

    if (v16)
    {
      v32 = v113;
    }

    else
    {
      v32 = v114;
      sub_14040(v113, 0);
    }

    v105 = a3;
    v106 = v32;
    if (v7)
    {
      ramrod_log_msg("%s: Keeping existing proposed directory for combo update\n", v25, v26, v27, v28, v29, v30, v31, "ramrod_splat_install");
      [v114 stringByAppendingPathComponent:@"/rollback"];
      v36 = v113;
    }

    else
    {
      if (!sub_14040(v32, &v115) || !sub_140C0(v32, &v115))
      {
        v56 = v115;
        v57 = "failed to recreate destination directory";
        goto LABEL_46;
      }

      if (((v6 | v7) & 1) == 0)
      {
LABEL_49:
        v60 = v17;
        v61 = &dword_1A8EB8;
        v62 = 9;
        while (1)
        {
          v63 = *v61;
          if (v63 || sub_143E0(v19, [NSString stringWithUTF8String:*(v61 + 1)]))
          {
            v71 = *(v61 + 4);
            if (v71)
            {
              v71 = [NSString stringWithUTF8String:?];
            }

            if (v63 == 1)
            {
              v71 = sub_141EC(0, a2);
            }

            v72 = v32;
            if (v71)
            {
              v72 = [v32 stringByAppendingPathComponent:?];
            }

            [v72 UTF8String];
            ramrod_log_msg("%s: Installing %s -> %s\n", v73, v74, v75, v76, v77, v78, v79, "ramrod_splat_install");
            if (!sub_140C0([v72 stringByDeletingLastPathComponent], &v115))
            {
              v56 = v115;
              v57 = "failed to create containing directory";
LABEL_74:
              v58 = a2;
              goto LABEL_47;
            }

            v80 = *(v61 + 1);
            if (((*(v105 + 16))(v105, v63, v80, [v72 fileSystemRepresentation]) & 1) == 0)
            {
              v81 = sub_13F34(a1, @"SafariDownlevelUpdate");
              v89 = 57;
              if (v81)
              {
                v89 = 58;
              }

              if (*(v61 + v89) == 1)
              {
                ramrod_log_msg("%s: %s\n", v82, v83, v84, v85, v86, v87, v88, "ramrod_splat_install");
                ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2011, 0, @"%s", v99, v100, v101, "install handler failed");
                return 0;
              }
            }

            if ((v60 & 1) != 0 && *(v61 + 59) == 1)
            {
              v90 = [v106 stringByAppendingPathComponent:@"/rollback/payloadv2"];
              v91 = [v90 fileSystemRepresentation];
              ramrod_log_msg("%s: Copying reverse patch %s -> %s\n", v92, v93, v94, v95, v96, v97, v98, "ramrod_splat_install");
              if (!sub_140C0(v90, &v115))
              {
                v56 = v115;
                v57 = "failed to create containing directory for reverse patch";
                goto LABEL_74;
              }

              if (((*(v105 + 16))(v105, 6, v80, v91) & 1) == 0)
              {
                v57 = "install handler failed for reverse patch";
                v58 = a2;
                v59 = 2011;
                v56 = 0;
                goto LABEL_48;
              }
            }
          }

          else
          {
            ramrod_log_msg("%s: %s isn't present in build identity, skipping\n", v64, v65, v66, v67, v68, v69, v70, "ramrod_splat_install");
          }

          v61 += 16;
          --v62;
          v32 = v106;
          if (!v62)
          {
            return ramrod_splat_write_personalized_ticket(a1, a2);
          }
        }
      }

      v54 = v114;
      v55 = [v114 stringByAppendingPathComponent:@"/rollback"];
      if ([(NSFileManager *)v107 fileExistsAtPath:v55])
      {
        v36 = v55;
      }

      else
      {
        v36 = v54;
      }
    }

    ramrod_log_msg_cf(@"%s: Preserving rollback objects from %@\n", "ramrod_splat_install", v36);
    v37 = [v32 stringByAppendingPathComponent:@"/rollback"];
    if (sub_140C0(v37, &v115))
    {
      v103 = v19;
      v41 = [(NSFileManager *)v107 contentsOfDirectoryAtPath:v36 error:&v115];
      if (!v41)
      {
        v56 = v115;
        v57 = "failed to list current dir for rollback clones";
        v58 = a2;
        v59 = 2010;
        goto LABEL_48;
      }

      v42 = v41;
      v102 = v17;
      v104 = a2;
      v43 = +[NSMutableArray array];
      v44 = 9;
      v45 = &off_1A8ED8;
      do
      {
        if (*(v45 + 27) == 1 && *v45)
        {
          [v43 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:")}];
        }

        v45 += 8;
        --v44;
      }

      while (v44);
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v46 = [(NSArray *)v42 countByEnumeratingWithState:&v109 objects:v116 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v110;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v110 != v48)
            {
              objc_enumerationMutation(v42);
            }

            v50 = *(*(&v109 + 1) + 8 * i);
            if ([v43 containsObject:v50])
            {
              ramrod_log_msg_cf(@"%s: Skipping %@\n", "ramrod_splat_install", v50);
            }

            else
            {
              v51 = [v36 stringByAppendingPathComponent:v50];
              v52 = [v37 stringByAppendingPathComponent:v50];
              v108 = 0;
              if ([(NSFileManager *)v107 fileExistsAtPath:v51 isDirectory:&v108]&& (v108 & 1) == 0 && !sub_14148(v51, v52, &v115))
              {
                v56 = v115;
                v57 = "failed to clone boot object for rollback";
                v58 = v104;
                v59 = 2007;
                goto LABEL_48;
              }
            }
          }

          v47 = [(NSArray *)v42 countByEnumeratingWithState:&v109 objects:v116 count:16];
        }

        while (v47);
      }

      a2 = v104;
      v53 = sub_141EC(1, v104);
      if (v53)
      {
        sub_14040([v37 stringByAppendingPathComponent:v53], 0);
      }

      sub_14040([v37 stringByAppendingPathComponent:@"CryptexUpgradeManifest.plist"], 0);
      v32 = v106;
      v17 = v102;
      v19 = v103;
      goto LABEL_49;
    }

    v56 = v115;
    v57 = "failed to recreate rollback directory";
LABEL_46:
    v58 = a2;
LABEL_47:
    v59 = 2009;
LABEL_48:
    sub_13F9C(v58, v59, v56, "ramrod_splat_install", v57, v38, v39, v40);
    return 0;
  }

  v18 = "missing RAMROD_SPLAT_OPT_STAGE_TO_PROPOSED";
LABEL_10:
  ramrod_log_msg("%s: %s\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_splat_install");
  ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2000, 0, @"%s", v33, v34, v35, v18);
  return 0;
}

id sub_13F34(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

void sub_13F9C(CFErrorRef *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  if (a3)
  {
    [objc_msgSend(a3 "description")];
    ramrod_log_msg("%s: %s: %s\n", v13, v14, v15, v16, v17, v18, v19, v9);
  }

  else
  {
    ramrod_log_msg("%s: %s\n", a2, 0, a4, a5, a6, a7, a8, a4);
  }

  ramrod_create_error_cf(a1, @"RamrodErrorDomain", a2, a3, @"%s", v20, v21, v22, v8);
}

BOOL sub_14040(void *a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:a1])
  {
    return 1;
  }

  v5 = [a1 fileSystemRepresentation];
  ramrod_log_msg("Removing %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
  result = [(NSFileManager *)v4 removeItemAtPath:a1 error:a2];
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_140C0(void *a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v4 fileExistsAtPath:a1])
  {
    return 1;
  }

  v5 = [a1 fileSystemRepresentation];
  ramrod_log_msg("Creating directory at %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
  result = [(NSFileManager *)v4 createDirectoryAtPath:a1 withIntermediateDirectories:1 attributes:0 error:a2];
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_14148(void *a1, void *a2, void *a3)
{
  v5 = [a1 fileSystemRepresentation];
  v16 = [a2 fileSystemRepresentation];
  ramrod_log_msg("Cloning %s -> %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
  v13 = clonefile(v5, v16, 0);
  if (v13)
  {
    v14 = __error();
    if (a3)
    {
      *a3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*v14 userInfo:0];
    }
  }

  return v13 == 0;
}

NSString *sub_141EC(int a1, CFErrorRef *a2)
{
  memset(v17, 0, 255);
  v16 = 255;
  if ((sysctlbyname("hw.target", v17, &v16, 0, 0) & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  v4 = *__error();
  if (v4 == 2)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    v13 = __error();
    sub_15B94(a2, 2004, *v13, "_ticket_file_name_personalized", "sysctlbyname() failed for hw.target");
    return 0;
  }

  if (!LOBYTE(v17[0]))
  {
LABEL_6:
    __strlcpy_chk();
  }

  v5 = [[NSString stringWithUTF8String:?]];
  if (!a1)
  {
    return [NSString stringWithFormat:@"apticket.%@.im4m", v5, v14];
  }

  *buffer = 0;
  v6 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v6)
  {
    v7 = v6;
    CFProperty = IORegistryEntryCreateCFProperty(v6, @"unique-chip-id", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v9 = CFProperty;
      v10 = CFGetTypeID(CFProperty);
      if (v10 == CFDataGetTypeID())
      {
        v18.location = 0;
        v18.length = 8;
        CFDataGetBytes(v9, v18, buffer);
      }

      CFRelease(v9);
    }

    IOObjectRelease(v7);
    v11 = *buffer;
  }

  else
  {
    v11 = 0;
  }

  return [NSString stringWithFormat:@"apticket.%@.%llX.im4m", v5, v11];
}

BOOL sub_143E0(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:@"Manifest"];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && [v3 objectForKey:a2] != 0;
}

uint64_t ramrod_splat_write_personalized_ticket(void *a1, CFErrorRef *a2)
{
  v39 = 0;
  v4 = sub_15050(a1);
  v37 = 0;
  v38 = 0;
  if (!sub_15100(v4, a1, &v38, &v37, a2, v5, v6, v7))
  {
    return 0;
  }

  if (sub_13F34(a1, @"StageToProposed"))
  {
    v8 = &v37;
  }

  else
  {
    v8 = &v38;
  }

  v9 = *v8;
  v10 = [a1 objectForKeyedSubscript:@"TicketData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v10)
  {
    v11 = sub_141EC(1, a2);
    if (!v11)
    {
      return 0;
    }

    v12 = [v9 stringByAppendingPathComponent:v11];
    ramrod_log_msg_cf(@"%s: writing cryptex1 ticket to %@\n", "ramrod_splat_write_personalized_ticket", v12);
    if (([v10 writeToFile:v12 options:1 error:&v39] & 1) == 0)
    {
      v29 = v39;
      v30 = "failed to write cryptex1 ticket";
      v31 = a2;
      v32 = 2005;
      goto LABEL_20;
    }
  }

  v16 = [a1 objectForKeyedSubscript:@"LocalPolicyData"];
  objc_opt_class();
  v17 = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v16)
  {
    return v17;
  }

  v18 = [a1 objectForKeyedSubscript:@"ApTicketHashData"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v18)
  {
    ramrod_log_msg("%s: %s\n", v19, v20, v21, v22, v23, v24, v25, "ramrod_splat_write_personalized_ticket");
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2012, 0, @"%s", v33, v34, v35, "ticket hash required to write local policy");
    return 0;
  }

  v26 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", 2 * [v18 length]);
  if ([v18 length])
  {
    v27 = 0;
    do
    {
      -[NSMutableString appendFormat:](v26, "appendFormat:", @"%02hhX", *([v18 bytes] + v27++));
    }

    while (v27 < [v18 length]);
  }

  v28 = [objc_msgSend(v4 stringByAppendingPathComponent:{v26), "stringByAppendingPathComponent:", @"LocalPolicy.cryptex1.img4"}];
  ramrod_log_msg_cf(@"%s: writing cryptex1 local policy to %@\n", "ramrod_splat_write_personalized_ticket", v28);
  v17 = 1;
  if (([v16 writeToFile:v28 options:1 error:&v39] & 1) == 0)
  {
    v29 = v39;
    v30 = "failed to write cryptex1 local policy";
    v31 = a2;
    v32 = 2006;
LABEL_20:
    sub_13F9C(v31, v32, v29, "ramrod_splat_write_personalized_ticket", v30, v13, v14, v15);
    return 0;
  }

  return v17;
}

uint64_t ramrod_splat_verify(void *a1, void *a2)
{
  v130 = 0;
  v131[0] = 0;
  v4 = sub_15050(a1);
  if (!sub_15100(v4, a1, v131, &v130, 0, v5, v6, v7))
  {
    return 22;
  }

  v8 = v131[0];
  if (sub_13F34(a1, @"StageToProposed"))
  {
    v8 = v130;
  }

  v9 = sub_141EC(0, 0);
  v10 = sub_141EC(1, 0);
  v11 = 22;
  if (v9)
  {
    v12 = v10;
    if (v10)
    {
      v13 = [v8 stringByAppendingPathComponent:v9];
      v14 = [v8 stringByAppendingPathComponent:v12];
      v15 = [a1 objectForKeyedSubscript:@"VerifyManifestPathOverride"];
      v16 = &classRef_NSError;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_13F34(a1, @"VerifyGlobalManifest");
      v19 = v18;
      if (v18)
      {
        v20 = v13;
      }

      else
      {
        v20 = v14;
      }

      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v20;
      }

      [v21 fileSystemRepresentation];
      ramrod_log_msg("%s: Verifying manifest: %s\n", v22, v23, v24, v25, v26, v27, v28, "ramrod_splat_verify");
      if (!sub_D5200(2, 16, 0, 0))
      {
        ramrod_log_msg("%s: AppleImage4 API unavailable, skipping verification\n", v29, v30, v31, v32, v33, v34, v35, "ramrod_splat_verify");
        return 19;
      }

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v134 = 0u;
      LOWORD(v134) = 6;
      bzero(v133, 0x3C0uLL);
      v132 = 0;
      memset(&v131[1], 0, 48);
      if (v19)
      {
        if (&_img4_chip_ap_reduced)
        {
LABEL_18:
          if (!off_1AD480 || a2)
          {
            if (!off_1AD478 || !a2 || !img4_chip_get_cryptex1_boot())
            {
              goto LABEL_32;
            }
          }

          else if (!img4_chip_get_cryptex1_boot_proposal())
          {
LABEL_32:
            ramrod_log_msg("%s: cryptex1 chips unavailable, skipping verification\n", v36, v37, v38, v39, v40, v41, v42, "ramrod_splat_verify");
            return 19;
          }

          ramrod_log_msg("%s: Verifying against cryptex1 %s coprocessor\n", v36, v37, v38, v39, v40, v41, v42, "ramrod_splat_verify");
          v43 = [a1 objectForKeyedSubscript:@"VerifyIUOUOverride"];
          v44 = [a1 objectForKeyedSubscript:@"VerifyEUOUOverride"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v45 = img4_chip_instantiate();
            if (v45)
            {
              v11 = v45;
              strerror(v45);
              ramrod_log_msg("%s: img4_chip_instantiate() failed: %d (%s)\n", v46, v47, v48, v49, v50, v51, v52, "ramrod_splat_verify");
              return v11;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v43 BOOLValue];
              ramrod_log_msg("%s: Overriding chip with iuou = %i\n", v53, v54, v55, v56, v57, v58, v59, "ramrod_splat_verify");
              BYTE4(v137) = [v43 BOOLValue];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v44 BOOLValue];
              ramrod_log_msg("%s: Overriding chip with euou = %i\n", v60, v61, v62, v63, v64, v65, v66, "ramrod_splat_verify");
              BYTE6(v137) = [v44 BOOLValue];
            }

            img4_chip_init_from_buff();
            img4_chip_custom();
          }

          if (a2)
          {
            if ([a2 length] >= 0x31)
            {
              ramrod_log_msg("%s: Nonce exceeds maximum length\n", v67, v68, v69, v70, v71, v72, v73, "ramrod_splat_verify");
              return 22;
            }

            HIDWORD(v132) = [a2 length];
            [a2 getBytes:&v131[1] + 2 length:{objc_msgSend(a2, "length")}];
          }

          v75 = &dword_1A8EB8;
          v76 = 9;
          while (1)
          {
            if (*(v75 + 60) == 1)
            {
              v77 = v16;
              v78 = [v8 stringByAppendingPathComponent:{objc_msgSend(v16[10], "stringWithUTF8String:", *(v75 + 4))}];
              v79 = [v78 fileSystemRepresentation];
              v80 = [v21 fileSystemRepresentation];
              if (access(v79, 0))
              {
                v81 = *__error();
                v82 = sub_13F34(a1, @"SafariDownlevelUpdate");
                v83 = 57;
                if (v82)
                {
                  v83 = 58;
                }

                v16 = v77;
                if (*(v75 + v83) == 1)
                {
                  strerror(v81);
                  ramrod_log_msg("%s: Payload not found (%s): %d %s\n", v108, v109, v110, v111, v112, v113, v114, "ramrod_splat_verify");
                  return v81;
                }
              }

              else
              {
                if (access(v80, 0))
                {
                  v115 = __error();
                  v11 = *v115;
                  strerror(*v115);
                  ramrod_log_msg("%s: Manifest not found (%s): %d %s\n", v116, v117, v118, v119, v120, v121, v122, "ramrod_splat_verify");
                  return v11;
                }

                v84 = [NSData dataWithContentsOfFile:v78];
                [(NSData *)v84 bytes];
                [(NSData *)v84 length];
                if (!img4_firmware_new())
                {
                  ramrod_log_msg("%s: img4_firmware_new() failed\n", v85, v86, v87, v88, v89, v90, v91, "ramrod_splat_verify");
                  return 12;
                }

                v92 = [NSData dataWithContentsOfFile:v21];
                [(NSData *)v92 bytes];
                if (![(NSData *)v92 length])
                {
                  ramrod_log_msg("%s: Manifest is empty", v93, v94, v95, v96, v97, v98, v99, "ramrod_splat_verify");
                  img4_firmware_destroy();
                  return 96;
                }

                img4_firmware_attach_manifest();
                v100 = img4_firmware_evaluate();
                img4_firmware_destroy();
                if (v100)
                {
                  strerror(v100);
                  ramrod_log_msg("%s: Failed to verify %s (%s): %d %s\n", v123, v124, v125, v126, v127, v128, v129, "ramrod_splat_verify");
                  return v100;
                }

                ramrod_log_msg("%s: Successfully verified %s (%s)\n", v101, v102, v103, v104, v105, v106, v107, "ramrod_splat_verify");
                v16 = v77;
              }
            }

            v75 += 16;
            if (!--v76)
            {
              return 0;
            }
          }
        }
      }

      else if (img4_chip_select_personalized_ap())
      {
        goto LABEL_18;
      }

      ramrod_log_msg("%s: Failed to get AP chip\n", v36, v37, v38, v39, v40, v41, v42, "ramrod_splat_verify");
      return 2;
    }
  }

  return v11;
}

uint64_t ramrod_splat_stage_rollback(void *a1, CFErrorRef *a2, uint64_t a3)
{
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v6 = sub_15050(a1);
  result = sub_15100(v6, a1, &v42, &v41, a2, v7, v8, v9);
  if (!result)
  {
    return result;
  }

  v11 = [v42 stringByAppendingPathComponent:@"/rollback"];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    [v11 fileSystemRepresentation];
    ramrod_log_msg("%s: Rollback directory does not exist: %s\n", v30, v31, v32, v33, v34, v35, v36, "ramrod_splat_stage_rollback");
    return 0;
  }

  if (!sub_14040(v41, &v43))
  {
    v37 = v43;
    v38 = "failed to remove destination directory";
    v39 = a2;
    v40 = 2008;
    goto LABEL_17;
  }

  if (!sub_14148(v11, v41, &v43))
  {
    v37 = v43;
    v38 = "failed to clone rollback directory";
    v39 = a2;
    v40 = 2007;
    goto LABEL_17;
  }

  v15 = [v41 stringByAppendingPathComponent:@"/payloadv2"];
  v16 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v15];
  v24 = [v15 fileSystemRepresentation];
  if ((v16 & 1) == 0)
  {
    ramrod_log_msg("%s: Assets directory does not exist: %s\n", v17, v18, v19, v20, v21, v22, v23, "ramrod_splat_stage_rollback");
    return 0;
  }

  v25 = 9;
  for (i = &byte_1A8EF3; *(i - 59) || *i != 1; i += 64)
  {
LABEL_11:
    if (!--v25)
    {
      sub_14040(v15, 0);
      return 1;
    }
  }

  v27 = *(i - 27);
  v28 = [v42 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v27)}];
  v29 = [v41 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v27)}];
  if (sub_140C0([v29 stringByDeletingLastPathComponent], &v43))
  {
    result = (*(a3 + 16))(a3, v24, *(i - 11), [v28 fileSystemRepresentation], objc_msgSend(v29, "fileSystemRepresentation"));
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v37 = v43;
  v38 = "failed to create containing directory";
  v39 = a2;
  v40 = 2009;
LABEL_17:
  sub_13F9C(v39, v40, v37, "ramrod_splat_stage_rollback", v38, v12, v13, v14);
  return 0;
}

id sub_15050(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"PrebootDirOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
  {
    v2 = [a1 objectForKeyedSubscript:@"PrebootMountpoint"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
    {
      ramrod_log_msg("%s: RAMROD_SPLAT_OPT_PREBOOT_MOUNTPOINT is required\n", v3, v4, v5, v6, v7, v8, v9, "_get_os_preboot_path");
      return 0;
    }
  }

  return v2;
}

BOOL sub_15100(void *a1, void *a2, void *a3, void *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (sub_13F34(a2, @"SafariDownlevelUpdate"))
    {
      v11 = @"downlevel";
    }

    else
    {
      v11 = @"cryptex1";
    }

    v12 = [a1 stringByAppendingPathComponent:v11];
    v13 = v12;
    if (a3)
    {
      *a3 = [v12 stringByAppendingPathComponent:@"current"];
    }

    if (a4)
    {
      *a4 = [v13 stringByAppendingPathComponent:@"proposed"];
    }
  }

  else
  {
    ramrod_log_msg("%s: %s\n", a2, a3, a4, a5, a6, a7, a8, "_get_splat_preboot_paths");
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 2001, 0, @"%s", v15, v16, v17, "preboot directory is nil");
  }

  return a1 != 0;
}

uint64_t ramrod_splat_commit_proposed(void *a1, CFErrorRef *a2)
{
  v24 = 0;
  v25 = 0;
  v4 = sub_15050(a1);
  result = sub_15100(v4, a1, &v25, &v24, a2, v5, v6, v7);
  if (result)
  {
    v9 = [v24 fileSystemRepresentation];
    result = sub_1535C(v9, [v25 fileSystemRepresentation], a2);
    if (result)
    {
      v24 = 0;
      v25 = 0;
      v10 = sub_15050(a1);
      if (v10)
      {
        v18 = v10;
        if ((sub_13F34(a1, @"SafariDownlevelUpdate") & 1) == 0 && (sub_13F34(a1, @"SplatOnlyUpdate") & 1) == 0)
        {
          v19 = [v18 stringByAppendingPathComponent:@"supplemental"];
          v25 = [v19 stringByAppendingPathComponent:@"current"];
          v24 = [v19 stringByAppendingPathComponent:@"proposed"];
          v20 = [v24 fileSystemRepresentation];
          sub_1535C(v20, [v25 fileSystemRepresentation], a2);
        }
      }

      else
      {
        ramrod_log_msg("%s: %s\n", v11, v12, v13, v14, v15, v16, v17, "_get_supplemental_preboot_paths");
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2001, 0, @"%s", v21, v22, v23, "preboot directory is nil");
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1535C(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, CFErrorRef *a3)
{
  if (!access(a1, 0))
  {
    if (access(a2, 0))
    {
      ramrod_log_msg("%s: Moving %s to %s\n", v14, v15, v16, v17, v18, v19, v20, "ramrod_splat_commit_proposed_internal");
      rename(a1, a2, v21);
      if (!v22)
      {
        return 1;
      }

      v23 = *__error();
      v24 = "rename() failed";
      v25 = a3;
      v26 = 2002;
    }

    else
    {
      ramrod_log_msg("%s: Swapping %s with %s\n", v14, v15, v16, v17, v18, v19, v20, "ramrod_splat_commit_proposed_internal");
      if (!renamex_np(a1, a2, 2u))
      {
        v13 = 1;
        if (!removefile(a1, 0, 1u))
        {
          return v13;
        }

        v28 = __error();
        strerror(*v28);
        ramrod_log_msg("%s: Failed to delete proposed (%s): %d (%s)\n", v29, v30, v31, v32, v33, v34, v35, "ramrod_splat_commit_proposed_internal");
        return 1;
      }

      v23 = *__error();
      v24 = "rename_np() failed";
      v25 = a3;
      v26 = 2003;
    }

    sub_15B94(v25, v26, v23, "ramrod_splat_commit_proposed_internal", v24);
    return 0;
  }

  ramrod_log_msg("%s: Warning: proposed directory doesn't exist, skipping: %s\n", v6, v7, v8, v9, v10, v11, v12, "ramrod_splat_commit_proposed_internal");
  return 1;
}

BOOL ramrod_splat_cleanup(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("%s: Cleaning up proposed directory in preboot\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_splat_cleanup");
  v14 = 0;
  v9 = sub_15050(a1);
  result = sub_15100(v9, a1, 0, &v14, 0, v10, v11, v12);
  if (result)
  {
    return sub_14040(v14, 0);
  }

  return result;
}

id ramrod_splat_copy_object_path(const char *a1, void *a2)
{
  v13 = 0;
  v14 = 0;
  v4 = sub_15050(a2);
  if (!sub_15100(v4, a2, &v14, &v13, 0, v5, v6, v7))
  {
    return 0;
  }

  v8 = v14;
  if (sub_13F34(a2, @"StageToProposed"))
  {
    v9 = v13;
  }

  else
  {
    v9 = v8;
  }

  if (!a1)
  {
    if (v9)
    {
      return CFRetain(v9);
    }

    return 0;
  }

  v10 = &dword_1A8EB8;
  v11 = 9;
  while (*v10 || strcmp(*(v10 + 1), a1))
  {
    v10 += 16;
    if (!--v11)
    {
      return 0;
    }
  }

  result = [v9 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", *(v10 + 4))}];
  v9 = result;
  if (result)
  {
    return CFRetain(v9);
  }

  return result;
}

char *ramrod_splat_object_image_patch_tag(char *__s2)
{
  v2 = &off_1A8EE8;
  v3 = 9;
  while (strcmp(*(v2 - 5), __s2))
  {
    v2 += 8;
    if (!--v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t ramrod_splat_object_4cc(char *__s2)
{
  v2 = &dword_1A8EB8;
  v3 = 9;
  while (*v2 || strcmp(*(v2 + 1), __s2))
  {
    v2 += 16;
    if (!--v3)
    {
      return 0;
    }
  }

  return v2[6];
}

CFTypeRef ramrod_splat_copy_rollback_assets_path(void *a1)
{
  v9 = 0;
  v2 = sub_15050(a1);
  if (!sub_15100(v2, a1, &v9, 0, 0, v3, v4, v5))
  {
    return 0;
  }

  v6 = [v9 stringByAppendingPathComponent:@"/rollback/payloadv2"];
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return 0;
  }

  else
  {
    return CFRetain(v6);
  }
}

NSString *ramrod_splat_copy_ticket_path(void *a1, int a2)
{
  v14 = 0;
  v15 = 0;
  v4 = sub_15050(a1);
  if (!sub_15100(v4, a1, &v15, &v14, 0, v5, v6, v7))
  {
    return 0;
  }

  v8 = v15;
  v9 = sub_13F34(a1, @"StageToProposed");
  v10 = v14;
  result = sub_141EC(a2, 0);
  if (result)
  {
    v12 = result;
    if (v9)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    result = [v13 stringByAppendingPathComponent:{v12, v14}];
    if (result)
    {
      return CFRetain(result);
    }
  }

  return result;
}

uint64_t _ramrod_splat_object_iter(uint64_t a1)
{
  v2 = &dword_1A8EB8;
  v3 = 9;
  do
  {
    result = (*(a1 + 16))(a1, v2);
    v2 += 16;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t ramrod_splat_get_total_cryptex_size(void *a1, CFErrorRef *a2)
{
  v3 = [a1 objectForKeyedSubscript:@"BuildIdentity"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v3)
  {
    ramrod_log_msg("%s: %s\n", v4, v5, v6, v7, v8, v9, v10, "ramrod_splat_get_total_cryptex_size");
    ramrod_create_error_cf(a2, @"RamrodErrorDomain", 2000, 0, @"%s", v71, v72, v73, "missing RAMROD_SPLAT_OPT_BUILD_IDENTITY");
    return 0;
  }

  if (!ramrod_splat_enabled(v3, v4, v5, v6, v7, v8, v9, v10))
  {
    ramrod_log_msg("%s: Cryptexes not supported in this environment. Returning 0 for size\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_splat_get_total_cryptex_size");
    return 0;
  }

  v76 = 0;
  v18 = &off_1A8EC8;
  v19 = 9;
  do
  {
    v20 = *v18;
    if (!*(v18 - 1) || !v20)
    {
      ramrod_log_msg("%s: Tag or info_size_key not specified for this entry, skipping. Tag: %s InfoSizeKey: %s\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_splat_get_total_cryptex_size");
      goto LABEL_17;
    }

    if (*(v18 - 4))
    {
      goto LABEL_17;
    }

    v21 = [NSString stringWithUTF8String:*(v18 - 1)];
    v22 = [NSString stringWithUTF8String:v20];
    if (!sub_143E0(v3, v21))
    {
      ramrod_log_msg("%s: %s isn't present in the build identity dictionary, skipping\n", v23, v24, v25, v26, v27, v28, v29, "ramrod_splat_get_total_cryptex_size");
      goto LABEL_17;
    }

    v30 = [v3 objectForKeyedSubscript:@"Info"];
    if (!v22)
    {
      v40 = "Invalid arguments passed to %s\n";
LABEL_21:
      ramrod_log_msg(v40, v31, v32, v33, v34, v35, v36, v37, "_build_identity_info_dict_contains_entry");
LABEL_22:
      ramrod_log_msg("%s: Could not find entry for %s in the buildIdentity info dict. Skipping\n", v41, v42, v43, v44, v45, v46, v47, "ramrod_splat_get_total_cryptex_size");
      goto LABEL_17;
    }

    v38 = v30;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v40 = "%s: BuildIdentity does not contain 'Info' key\n";
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_21;
    }

    if (![v38 objectForKey:v22])
    {
      goto LABEL_22;
    }

    ramrod_log_msg("%s: Found entry for %s in buildIdentity\n", v41, v42, v43, v44, v45, v46, v47, "ramrod_splat_get_total_cryptex_size");
    v48 = [v3 objectForKeyedSubscript:@"Info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [v48 objectForKeyedSubscript:v22];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v56)
      {
        [v56 longLongValue];
        ramrod_log_msg("%s: Size of %s is %lld MB\n", v64, v65, v66, v67, v68, v69, v70, "ramrod_splat_get_total_cryptex_size");
        v76 += [v56 longLongValue];
        goto LABEL_17;
      }
    }

    else
    {
      ramrod_log_msg("%s: Unable to read info dictionary from build identity for %s\n", v49, v50, v51, v52, v53, v54, v55, "ramrod_splat_get_total_cryptex_size");
    }

    ramrod_log_msg("%s: Unable to read size of %s. Skipping\n", v57, v58, v59, v60, v61, v62, v63, "ramrod_splat_get_total_cryptex_size");
LABEL_17:
    v18 += 8;
    --v19;
  }

  while (v19);
  if (v76)
  {
    v74 = v76 << 20;
    ramrod_log_msg("%s: Total size of cryptexes is %lld bytes\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_splat_get_total_cryptex_size");
  }

  else
  {
    v74 = 3355443200;
    ramrod_log_msg("%s: Unable to determine size of any cryptex. Returning default size(%lld bytes)\n", v11, v12, v13, v14, v15, v16, v17, "ramrod_splat_get_total_cryptex_size");
  }

  return v74;
}

void sub_15B94(CFErrorRef *a1, CFIndex a2, int __errnum, char a4, char a5)
{
  strerror(__errnum);
  ramrod_log_msg("%s: %s: %d (%s)\n", v9, v10, v11, v12, v13, v14, v15, a4);
  v16 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainPOSIX, __errnum, 0);
  ramrod_create_error_cf(a1, @"RamrodErrorDomain", a2, v16, @"%s", v17, v18, v19, a5);
  if (v16)
  {

    CFRelease(v16);
  }
}

uint64_t picoPNG::decodePNG(void *a1, unint64_t *a2, unint64_t *a3, unsigned __int8 *a4, unint64_t a5, char a6)
{
  v6 = 0;
  *v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v7 = 48;
  if (!a4)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  if (!a5)
  {
LABEL_21:
    *a2 = v9;
    *a3 = v6;
    return v7;
  }

  if (a5 < 0x1D)
  {
    v6 = 0;
    v9 = 0;
    v7 = 27;
    goto LABEL_21;
  }

  if (*a4 != 137 || a4[1] != 80 || a4[2] != 78 || a4[3] != 71 || a4[4] != 13 || a4[5] != 10 || a4[6] != 26 || a4[7] != 10)
  {
    v6 = 0;
    v9 = 0;
    v7 = 28;
    goto LABEL_21;
  }

  if (a4[12] != 73 || a4[13] != 72 || a4[14] != 68 || a4[15] != 82)
  {
    v6 = 0;
    v9 = 0;
    v7 = 29;
    goto LABEL_21;
  }

  v10 = a2;
  v11 = a3;
  v9 = bswap32(*(a4 + 4));
  v6 = bswap32(*(a4 + 5));
  v103 = v9;
  v104 = v6;
  v12 = a4[24];
  v13 = a4[25];
  v105 = v13;
  v106 = v12;
  if (a4[26])
  {
    v7 = 32;
LABEL_28:
    a2 = v10;
    goto LABEL_21;
  }

  if (a4[27])
  {
    v7 = 33;
    goto LABEL_28;
  }

  v109 = a4[28];
  if (v109 > 1)
  {
    v7 = 34;
    goto LABEL_28;
  }

  v7 = sub_17C28(v13, v12);
  DWORD2(v113) = v7;
  a3 = v11;
  a2 = v10;
  if (v7)
  {
    goto LABEL_21;
  }

  v123 = 0;
  __dst = 0;
  v125 = 0;
  BYTE8(v111) = 0;
  if (a5 < 0x2A)
  {
LABEL_74:
    v37 = 30;
LABEL_129:
    DWORD2(v113) = v37;
    goto LABEL_130;
  }

  v17 = 33;
  v18 = 41;
  while (1)
  {
    v19 = &a4[v17];
    v20 = a4[v17] << 24;
    if (v20 < 0)
    {
      goto LABEL_128;
    }

    v21 = v19[3];
    v22 = v20 | (v19[1] << 16);
    v23 = (v22 | v21) & 0xFFFF00FF | (v19[2] << 8);
    v24 = v17 + 4 + v23;
    if (v24 >= a5)
    {
      v37 = 35;
      goto LABEL_129;
    }

    v25 = a4[v17 + 4];
    if (v25 != 116)
    {
      break;
    }

    if (v19[5] != 82 || v19[6] != 78 || v19[7] != 83)
    {
      goto LABEL_58;
    }

    if (v105)
    {
      if (v105 == 2)
      {
        if (v23 != 6)
        {
          v37 = 41;
          goto LABEL_129;
        }

        BYTE8(v111) = 1;
        v36 = __rev16(*(v19 + 5));
        *&v110 = v19[9] | (a4[v18] << 8);
        *(&v110 + 1) = v36;
        *&v111 = __rev16(*(v19 + 6));
        v18 = v17 + 14;
      }

      else
      {
        if (v105 != 3)
        {
          v37 = 42;
          goto LABEL_129;
        }

        if ((v112[1] - v112[0]) < (4 * v23))
        {
          v37 = 39;
          goto LABEL_129;
        }

        if (v23)
        {
          v30 = v22 | (v19[2] << 8) | v21;
          v31 = 3;
          v32 = v18;
          do
          {
            v18 = v32 + 1;
            *(v112[0] + v31) = a4[v32];
            v31 += 4;
            ++v32;
            --v30;
          }

          while (v30);
        }
      }
    }

    else
    {
      if (v23 != 2)
      {
        v37 = 40;
        goto LABEL_129;
      }

      BYTE8(v111) = 1;
      *(&v110 + 1) = v19[9] | (a4[v18] << 8);
      *&v111 = *(&v110 + 1);
      *&v110 = *(&v110 + 1);
      v18 = v17 + 10;
    }

LABEL_59:
    v17 = v18 + 4;
    v18 += 12;
    if (v18 >= a5)
    {
      goto LABEL_74;
    }
  }

  if (v25 == 80)
  {
    if (v19[5] != 76 || v19[6] != 84 || v19[7] != 69)
    {
      goto LABEL_81;
    }

    v27 = (2 * ((2863311531u * v23) >> 32)) & 0xFFFFFFFC;
    v29 = v112[0];
    v28 = v112[1];
    if (v27 <= v112[1] - v112[0])
    {
      if (v27 < v112[1] - v112[0])
      {
        v28 = v112[0] + v27;
        v112[1] = v112[0] + v27;
      }
    }

    else
    {
      sub_17F9C(v112, v27 - (v112[1] - v112[0]));
      v29 = v112[0];
      v28 = v112[1];
    }

    if ((v28 - v29) > 0x400)
    {
      v37 = 38;
      goto LABEL_129;
    }

    if (v28 != v29)
    {
      v33 = 0;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v35 = a4[v18++];
          *(v112[0] + v33 + i) = v35;
        }

        *(v112[0] + v33 + 3) = -1;
        v33 += 4;
      }

      while (v33 < v112[1] - v112[0]);
    }

    goto LABEL_59;
  }

  if (v25 != 73)
  {
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_81;
    }

LABEL_58:
    v18 = v24 + 4;
    goto LABEL_59;
  }

  v26 = v19[5];
  if (v26 == 68)
  {
    if (v19[6] != 65 || v19[7] != 84)
    {
      goto LABEL_81;
    }

    sub_17CC0(&v123, __dst, &a4[v18], &a4[v18 + v23], v23);
    goto LABEL_58;
  }

  if (v26 != 69 || v19[6] != 78 || v19[7] != 68)
  {
LABEL_81:
    v37 = 69;
    goto LABEL_129;
  }

  if (v105 == 2)
  {
    v38 = 3 * v106;
  }

  else if (v105 < 4)
  {
    v38 = v106;
  }

  else
  {
    v38 = v106 * (v105 - 2);
  }

  if (v38 < 8)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 >> 3;
  }

  if (!v104 || !v103 || (v103 | v104) >= 0x10000)
  {
LABEL_128:
    v37 = 63;
    goto LABEL_129;
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  sub_180AC(&v120, (v39 + v39 * v104) * v103);
  v40 = v120;
  if (v104 + 1 == (v121 - v120) / (v103 * v39))
  {
    DWORD2(v113) = sub_168D4(&v120, &v123);
    if (!DWORD2(v113))
    {
      v99 = (v103 * v38 + 7) >> 3;
      sub_168AC(a1, v99 * v104);
      if (v104 == (a1[1] - *a1) / v99)
      {
        v41 = (v38 + 7) >> 3;
        if (v99 * v104)
        {
          v42 = *a1;
        }

        else
        {
          v42 = 0;
        }

        if (v109)
        {
          v43 = 0;
          v44 = 0;
          v45 = v103;
          v133 = vshlq_u64(vdupq_n_s64(v103 + 3), xmmword_10A0D0);
          v134 = vshlq_u64(vdupq_n_s64(v103 + 1), xmmword_10A0E0);
          v135 = v103 >> 1;
          v136 = v103;
          v128[0] = (v104 + 7) >> 3;
          v128[1] = v128[0];
          v129 = vshlq_u64(vdupq_n_s64(v104 + 3), xmmword_10A0D0);
          v130 = vshlq_u64(vdupq_n_s64(v104 + 1), xmmword_10A0E0);
          v131 = v104 >> 1;
          v132 = ((v103 + 7) >> 3);
          v127 = 0;
          memset(v126, 0, sizeof(v126));
          do
          {
            v46 = (&v132)[v43];
            v47 = v46 == 0;
            v48 = (v46 * v38 + 7) >> 3;
            if (!v47)
            {
              ++v48;
            }

            v44 += v48 * v128[v43];
            v126[++v43] = v44;
          }

          while (v43 != 6);
          v117 = 0;
          v118 = 0;
          v119 = 0;
          sub_180AC(&v117, (v45 * v38 + 7) >> 3);
          __p = 0;
          v115 = 0;
          v116 = 0;
          sub_180AC(&__p, (v103 * v38 + 7) >> 3);
          for (j = 0; j != 7; ++j)
          {
            v49 = (&v132)[j];
            if (v49)
            {
              v93 = v128[j];
              if (v93)
              {
                v50 = __p;
                v95 = v117;
                v96 = 0;
                v92 = v120 + v126[j];
                v51 = (&unk_10A568 + 8 * j);
                v86 = v103 * v38;
                v87 = v51[21];
                v91 = (v103 * v38 + 7) >> 3;
                v97 = v51[14];
                v100 = *v51;
                v88 = v51[7];
                v94 = &v42[v41 * (*v51 + v88 * v103)];
                v90 = v41 * v87 * v103;
                do
                {
                  v52 = v50;
                  v53 = &v92[v96 * (((v49 * v38 + 7) >> 3) + 1)];
                  v56 = *v53;
                  v54 = v53 + 1;
                  v55 = v56;
                  if (v96)
                  {
                    v57 = v95;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  sub_17420(&v103, v50, v54, v57, (v38 + 7) >> 3, v55, v91);
                  if (DWORD2(v113))
                  {
                    break;
                  }

                  if (v38 <= 7)
                  {
                    for (k = 0; k != v49; ++k)
                    {
                      if (v38)
                      {
                        v66 = k * v38;
                        v67 = (v88 + v96 * v87) * v86 + (v100 + k * v97) * v38;
                        v68 = v38;
                        do
                        {
                          v69 = (v52[v66 >> 3] >> (~v66 & 7)) & 1;
                          ++v66;
                          v42[v67 >> 3] |= v69 << (~v67 & 7);
                          ++v67;
                          --v68;
                        }

                        while (v68);
                      }
                    }
                  }

                  else
                  {
                    v58 = 0;
                    v59 = v52;
                    v60 = v94;
                    do
                    {
                      v61 = v59;
                      v62 = v60;
                      v63 = (v38 + 7) >> 3;
                      if (v38 + 7 >= 8)
                      {
                        do
                        {
                          v64 = *v61++;
                          *v62++ = v64;
                          --v63;
                        }

                        while (v63);
                      }

                      ++v58;
                      v60 += v41 * v97;
                      v59 += v41;
                    }

                    while (v58 != v49);
                  }

                  v94 += v90;
                  v50 = v95;
                  v95 = v52;
                  ++v96;
                }

                while (v96 != v93);
              }
            }
          }

          if (__p)
          {
            v115 = __p;
            operator delete(__p);
          }

          if (v117)
          {
            v118 = v117;
            operator delete(v117);
          }

          goto LABEL_165;
        }

        v101 = (v103 * v38 + 7) >> 3;
        if (v38 < 8)
        {
          v132 = 0;
          v133 = 0uLL;
          sub_180AC(&v132, v101);
          v77 = 0;
          v78 = 0;
          v79 = 0;
          while (1)
          {
            v80 = v77 ? &v42[(v77 - 1) * v99] : 0;
            sub_17420(&v103, v132, v120 + v78 + 1, v80, (v38 + 7) >> 3, *(v120 + v78), v101);
            v98 = DWORD2(v113) != 0;
            if (DWORD2(v113))
            {
              break;
            }

            if (v103 * v38)
            {
              v81 = 0;
              do
              {
                v82 = v79 + v81;
                v83 = ~(v79 + v81);
                v84 = (v132[v81 >> 3] >> (~v81 & 7)) & 1;
                ++v81;
                v42[v82 >> 3] |= v84 << (v83 & 7);
              }

              while (v81 < v103 * v38);
              v79 += v81;
            }

            v78 += v101 + 1;
            if (++v77 >= v104)
            {
              v85 = 0;
              goto LABEL_160;
            }
          }

          v85 = 1;
LABEL_160:
          if (v132)
          {
            v133.i64[0] = v132;
            operator delete(v132);
          }

          if (!v98)
          {
LABEL_163:
            v85 = 0;
          }

          if (!v85)
          {
LABEL_165:
            if ((a6 & 1) != 0 && (v105 != 6 || v106 != 8))
            {
              v132 = 0;
              v133 = 0uLL;
              sub_188A8(&v132, *a1, a1[1], a1[1] - *a1);
              DWORD2(v113) = sub_17690(a1, v132, &v103, v103, v104);
              if (v132)
              {
                v133.i64[0] = v132;
                operator delete(v132);
              }
            }
          }
        }

        else
        {
          v72 = 0;
          v73 = 0;
          v74 = -v41;
          v75 = v42;
          while (1)
          {
            v76 = v73 ? &v42[v74 * v103] : 0;
            sub_17420(&v103, v75, v120 + v72 + 1, v76, v41, *(v120 + v72), v101);
            if (DWORD2(v113))
            {
              break;
            }

            ++v73;
            v75 += v101;
            v74 += v41;
            v72 += v101 + 1;
            if (v73 >= v104)
            {
              goto LABEL_163;
            }
          }
        }
      }

      else
      {
        DWORD2(v113) = 63;
      }
    }

    v40 = v120;
  }

  else
  {
    DWORD2(v113) = 63;
  }

  if (v40)
  {
    v121 = v40;
    operator delete(v40);
  }

LABEL_130:
  if (v123)
  {
    __dst = v123;
    operator delete(v123);
  }

  v70 = v104;
  v7 = DWORD2(v113);
  v71 = v112[0];
  *v10 = v103;
  *v11 = v70;
  if (v71)
  {
    v112[1] = v71;
    operator delete(v71);
  }

  return v7;
}

void sub_16824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  v53 = *(v51 - 160);
  if (v53)
  {
    *(v51 - 152) = v53;
    operator delete(v53);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  if (a37)
  {
    operator delete(a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_168AC(void *a1, unint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_17F9C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + a2;
  }
}

uint64_t sub_168D4(uint64_t *a1, unsigned __int8 **a2)
{
  *v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  *v104 = 0u;
  *v102 = 0u;
  v2 = *a2;
  if ((a2[1] - *a2) < 2)
  {
    v3 = 53;
    goto LABEL_184;
  }

  v4 = *v2;
  v5 = v2[1];
  if ((31711 * (v5 | (v4 << 8))) > 0x842u)
  {
    v3 = 24;
    goto LABEL_184;
  }

  if ((v4 & 0xFFFFFF8F) != 8)
  {
    v3 = 25;
    goto LABEL_184;
  }

  if ((v5 & 0x20) != 0)
  {
    v3 = 26;
    goto LABEL_184;
  }

  v6 = a2;
  v8 = 0;
  v107 = 0;
  LODWORD(v102[0]) = 0;
  do
  {
    v3 = LODWORD(v102[0]);
    if (LODWORD(v102[0]))
    {
      goto LABEL_182;
    }

    v9 = v107;
    v10 = *v6;
    v11 = v6[1] - *v6;
    if (v107 >> 3 >= v11)
    {
      v3 = 52;
      goto LABEL_181;
    }

    v12 = v10 + 2;
    v13 = *(v10 + 2 + (v107 >> 3));
    v14 = (*(v10 + 2 + ((v107 + 1) >> 3)) >> ((v107 + 1) & 7)) & 1;
    v15 = *(v10 + 2 + ((v107 + 2) >> 3)) >> ((v107 + 2) & 7);
    v16 = v107 + 3;
    v107 += 3;
    v17 = v14 & 0xFFFFFFFD | (2 * (v15 & 1));
    v101 = v13;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v111 = 0;
        sub_184E4(&v114, 0x120uLL, &v111);
        v111 = 0;
        v112 = 0;
        v113 = 0;
        __p = 0;
        sub_184E4(&v111, 0x20uLL, &__p);
        if (v11 - 2 <= v16 >> 3)
        {
          LODWORD(v102[0]) = 49;
          goto LABEL_119;
        }

        v24 = 0;
        for (i = 3; i != 8; ++i)
        {
          v26 = v24;
          v27 = ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 3);
          v24 += v27;
        }

        v28 = 0;
        do
        {
          v28 += ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 8);
          ++i;
        }

        while (i != 13);
        v29 = 0;
        do
        {
          v29 += ((*(v12 + ((v9 + i) >> 3)) >> ((v9 + i) & 7)) & 1) << (i - 13);
          ++i;
        }

        while (i != 17);
        __p = 0;
        v109 = 0;
        v110 = 0;
        sub_18660(&__p, 0x13uLL);
        v30 = 0;
        v99 = v24 + 257;
        v31 = v9 + 17;
        v32 = __p;
        do
        {
          if (v30 >= v29 + 4)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            do
            {
              v34 += ((*(v12 + ((v31 + v33) >> 3)) >> ((v31 + v33) & 7)) & 1) << v33;
              ++v33;
            }

            while (v33 != 3);
            v31 += 3;
          }

          v32[qword_10A4D0[v30++]] = v34;
        }

        while (v30 != 19);
        v107 = v31;
        LODWORD(v102[0]) = sub_1823C(&v105[1], &__p, 7);
        if (!LODWORD(v102[0]))
        {
          v97 = v114;
          v98 = v24 + v28 + 258;
          if (v24 + v28 != -258)
          {
            v35 = 0;
            v36 = v26 + v27;
            v37 = v111;
            v38 = -1 * v36;
            do
            {
              v39 = sub_181B4(v102, v12, &v107, &v105[1], v11);
              if (LODWORD(v102[0]))
              {
                goto LABEL_116;
              }

              if (v39 > 0xF)
              {
                switch(v39)
                {
                  case 0x12uLL:
                    if (v11 <= v107 >> 3)
                    {
LABEL_112:
                      v70 = 50;
                      goto LABEL_115;
                    }

                    v60 = 0;
                    v61 = 0;
                    do
                    {
                      v61 += ((*(v12 + ((v107 + v60) >> 3)) >> ((v107 + v60) & 7)) & 1) << v60;
                      ++v60;
                    }

                    while (v60 != 7);
                    v107 += 7;
                    v62 = v61 + 11;
                    if (v61 != -11)
                    {
                      v63 = v98 - v35;
                      if (v98 < v35)
                      {
                        v63 = 0;
                      }

                      v64 = &v111[v38 - 257 + v35];
                      v65 = &v114[v35];
                      while (v63)
                      {
                        if (v35 >= v99)
                        {
                          v66 = v64;
                        }

                        else
                        {
                          v66 = v65;
                        }

                        *v66 = 0;
                        ++v35;
                        --v63;
                        ++v64;
                        ++v65;
                        if (!--v62)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 15;
                      goto LABEL_115;
                    }

                    break;
                  case 0x11uLL:
                    if (v11 <= v107 >> 3)
                    {
                      goto LABEL_112;
                    }

                    v53 = 0;
                    v54 = 0;
                    do
                    {
                      v54 += ((*(v12 + ((v107 + v53) >> 3)) >> ((v107 + v53) & 7)) & 1) << v53;
                      ++v53;
                    }

                    while (v53 != 3);
                    v107 += 3;
                    v55 = v54 + 3;
                    if (v54 != -3)
                    {
                      v56 = v98 - v35;
                      if (v98 < v35)
                      {
                        v56 = 0;
                      }

                      v57 = &v111[v38 - 257 + v35];
                      v58 = &v114[v35];
                      while (v56)
                      {
                        if (v35 >= v99)
                        {
                          v59 = v57;
                        }

                        else
                        {
                          v59 = v58;
                        }

                        *v59 = 0;
                        ++v35;
                        --v56;
                        ++v57;
                        ++v58;
                        if (!--v55)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 14;
                      goto LABEL_115;
                    }

                    break;
                  case 0x10uLL:
                    if (v11 <= v107 >> 3)
                    {
                      goto LABEL_112;
                    }

                    if (!v35)
                    {
                      v70 = 54;
                      goto LABEL_115;
                    }

                    v44 = 0;
                    v45 = 0;
                    do
                    {
                      v45 += ((*(v12 + ((v107 + v44) >> 3)) >> ((v107 + v44) & 7)) & 1) << v44;
                      ++v44;
                    }

                    while (v44 != 2);
                    v107 += 2;
                    if (v35 - 1 >= v99)
                    {
                      v46 = &v111[v35 - v24 - 258];
                    }

                    else
                    {
                      v46 = &v114[v35 - 1];
                    }

                    v47 = v45 + 3;
                    if (v47)
                    {
                      v48 = *v46;
                      v49 = v98 - v35;
                      if (v98 < v35)
                      {
                        v49 = 0;
                      }

                      v50 = &v111[v38 - 257 + v35];
                      v51 = &v114[v35];
                      while (v49)
                      {
                        if (v35 >= v99)
                        {
                          v52 = v50;
                        }

                        else
                        {
                          v52 = v51;
                        }

                        *v52 = v48;
                        ++v35;
                        --v49;
                        ++v50;
                        ++v51;
                        if (!--v47)
                        {
                          goto LABEL_43;
                        }
                      }

                      v70 = 13;
                      goto LABEL_115;
                    }

                    break;
                  default:
                    v70 = 16;
                    goto LABEL_115;
                }
              }

              else
              {
                v40 = v35 >= v99;
                v41 = v35 - v99;
                v42 = &v97[v35++];
                v43 = &v37[v41];
                if (!v40)
                {
                  v43 = v42;
                }

                *v43 = v39;
              }

LABEL_43:
              ;
            }

            while (v35 < v98);
          }

          if (!v97[256])
          {
            v70 = 64;
            goto LABEL_115;
          }

          LODWORD(v102[0]) = sub_1823C(&v102[1], &v114, 15);
          if (!LODWORD(v102[0]))
          {
            v70 = sub_1823C(v104, &v111, 15);
LABEL_115:
            LODWORD(v102[0]) = v70;
          }
        }

LABEL_116:
        if (__p)
        {
          v109 = __p;
          operator delete(__p);
        }

        v6 = a2;
LABEL_119:
        if (v111)
        {
          v112 = v111;
          operator delete(v111);
        }

        if (v114)
        {
          v115 = v114;
          operator delete(v114);
        }

        if (LODWORD(v102[0]))
        {
          continue;
        }

        goto LABEL_124;
      }

      v3 = 20;
LABEL_181:
      LODWORD(v102[0]) = v3;
      goto LABEL_182;
    }

    if (!v17)
    {
      if ((v16 & 7) != 0)
      {
        v16 = v9 + (v16 & 7 ^ 7) + 4;
        v107 = v16;
      }

      v18 = v16 >> 3;
      if (v16 >> 3 >= v11 - 4)
      {
        v23 = 52;
      }

      else
      {
        v19 = v12 + v18;
        v20 = *(v12 + v18);
        if (*(v19 + 2) + v20 == 0xFFFF)
        {
          v21 = a1[1] - *a1;
          if (v20 + v8 > v21)
          {
            sub_17F9C(a1, v20 + v8 - v21);
          }

          v22 = v20 + v18 + 4;
          if (v22 <= v11)
          {
            if (v20)
            {
              v68 = (v10 + v18 + 6);
              do
              {
                v69 = *v68++;
                *(*a1 + v8++) = v69;
                --v20;
              }

              while (v20);
            }

            else
            {
              v22 = v18 + 4;
            }

            v107 = 8 * v22;
            continue;
          }

          v23 = 23;
        }

        else
        {
          v23 = 21;
        }
      }

      LODWORD(v102[0]) = v23;
      continue;
    }

    v114 = 0;
    v115 = 0;
    v116 = 0;
    v111 = &dword_8;
    sub_184E4(&v114, 0x120uLL, &v111);
    v111 = 0;
    v112 = 0;
    v113 = 0;
    __p = &dword_4 + 1;
    sub_184E4(&v111, 0x20uLL, &__p);
    v67 = v114;
    memset_pattern16(v114 + 144, &unk_10A100, 0x380uLL);
    memset_pattern16(v67 + 256, &unk_10A110, 0xC0uLL);
    sub_1823C(&v102[1], &v114, 15);
    sub_1823C(v104, &v111, 15);
    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (v114)
    {
      v115 = v114;
      operator delete(v114);
    }

LABEL_124:
    v71 = sub_181B4(v102, v12, &v107, &v102[1], v11);
    if (LODWORD(v102[0]))
    {
      continue;
    }

    v72 = v71;
    if (v71 == 256)
    {
      continue;
    }

    v73 = v8;
    while (1)
    {
      if (v72 <= 0xFF)
      {
        v74 = *a1;
        v75 = a1[1] - *a1;
        if (v73 >= v75)
        {
          v76 = 2 * v73 + 2;
          if (v76 <= v75)
          {
            if (v76 < v75)
            {
              a1[1] = v74 + v76;
            }
          }

          else
          {
            sub_17F9C(a1, v76 - v75);
            v74 = *a1;
          }
        }

        v8 = v73 + 1;
        *(v74 + v73) = v72;
        goto LABEL_163;
      }

      if (v72 > 0x11D)
      {
        goto LABEL_162;
      }

      if (v11 <= v107 >> 3)
      {
        v94 = 51;
        goto LABEL_172;
      }

      v77 = 8 * v72 - 2056;
      if (v72 - 285 >= 0xFFFFFFFFFFFFFFECLL)
      {
        v79 = 0;
        v78 = 0;
        v80 = *(&unk_10A208 + v77);
        do
        {
          v78 += ((*(v12 + ((v107 + v79) >> 3)) >> ((v107 + v79) & 7)) & 1) << v79;
          ++v79;
        }

        while (v80 != v79);
        v107 += v80;
      }

      else
      {
        v78 = 0;
      }

      v81 = *(&unk_10A120 + v77);
      v82 = sub_181B4(v102, v12, &v107, v104, v11);
      if (LODWORD(v102[0]))
      {
        v8 = v73;
        v6 = a2;
        goto LABEL_173;
      }

      if (v82 > 0x1D)
      {
        v94 = 18;
        goto LABEL_171;
      }

      if (v11 <= v107 >> 3)
      {
        v94 = 51;
        goto LABEL_171;
      }

      if (v82 >= 4)
      {
        v84 = 0;
        v83 = 0;
        v85 = qword_10A3E0[v82];
        do
        {
          v83 += ((*(v12 + ((v107 + v84) >> 3)) >> ((v107 + v84) & 7)) & 1) << v84;
          ++v84;
        }

        while (v85 != v84);
        v107 += v85;
      }

      else
      {
        v83 = 0;
      }

      v86 = v83 + qword_10A2F0[v82];
      v87 = v73 - v86;
      if (v73 < v86)
      {
        break;
      }

      v88 = v78 + v81;
      v89 = a1[1] - *a1;
      v6 = a2;
      if (v88 + v73 >= v89)
      {
        v90 = 2 * (v88 + v73);
        if (v90 <= v89)
        {
          if (v90 < v89)
          {
            a1[1] = *a1 + v90;
          }
        }

        else
        {
          sub_17F9C(a1, v90 - v89);
        }
      }

      if (v88)
      {
        v91 = v73;
        v92 = v87;
        do
        {
          v8 = v91 + 1;
          *(*a1 + v91) = *(*a1 + v92);
          if (v92 + 1 < v73)
          {
            ++v92;
          }

          else
          {
            v92 = v87;
          }

          ++v91;
          --v88;
        }

        while (v88);
        goto LABEL_163;
      }

LABEL_162:
      v8 = v73;
LABEL_163:
      v93 = sub_181B4(v102, v12, &v107, &v102[1], v11);
      if (!LODWORD(v102[0]))
      {
        v72 = v93;
        v73 = v8;
        if (v93 != 256)
        {
          continue;
        }
      }

      goto LABEL_173;
    }

    v94 = 52;
LABEL_171:
    v6 = a2;
LABEL_172:
    LODWORD(v102[0]) = v94;
    v8 = v73;
LABEL_173:
    ;
  }

  while (((v101 >> (v9 & 7)) & 1) == 0);
  v3 = LODWORD(v102[0]);
  if (!LODWORD(v102[0]))
  {
    v95 = a1[1] - *a1;
    if (v8 <= v95)
    {
      v3 = 0;
      if (v8 < v95)
      {
        a1[1] = *a1 + v8;
      }
    }

    else
    {
      sub_17F9C(a1, v8 - v95);
      v3 = LODWORD(v102[0]);
    }
  }

LABEL_182:
  if (v105[1])
  {
    *&v106 = v105[1];
    operator delete(v105[1]);
  }

LABEL_184:
  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  if (v102[1])
  {
    *&v103 = v102[1];
    operator delete(v102[1]);
  }

  return v3;
}

uint64_t sub_17420(uint64_t result, _BYTE *a2, char *a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a6 <= 1)
  {
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_47;
      }

      if (a5)
      {
        v24 = a3;
        v25 = a2;
        v26 = a5;
        do
        {
          v27 = *v24++;
          *v25++ = v27;
          --v26;
        }

        while (v26);
      }

      v28 = a7 - a5;
      if (a7 > a5)
      {
        do
        {
          a2[a5] = *a2 + a3[a5];
          ++a2;
          ++a3;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      for (; a7; --a7)
      {
        v40 = *a3++;
        *a2++ = v40;
      }
    }
  }

  else
  {
    switch(a6)
    {
      case 2:
        if (a4)
        {
          for (; a7; --a7)
          {
            v30 = *a3++;
            v29 = v30;
            v31 = *a4++;
            *a2++ = v31 + v29;
          }
        }

        else
        {
          for (; a7; --a7)
          {
            v41 = *a3++;
            *a2++ = v41;
          }
        }

        break;
      case 3:
        if (a4)
        {
          if (a5)
          {
            v32 = a3;
            v33 = a4;
            v34 = a2;
            v35 = a5;
            do
            {
              v37 = *v32++;
              v36 = v37;
              v38 = *v33++;
              *v34++ = v36 + (v38 >> 1);
              --v35;
            }

            while (v35);
          }

          v39 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = a3[a5] + ((a4[a5] + *a2) >> 1);
              ++a2;
              ++a4;
              ++a3;
              --v39;
            }

            while (v39);
          }
        }

        else
        {
          if (a5)
          {
            v42 = a3;
            v43 = a2;
            v44 = a5;
            do
            {
              v45 = *v42++;
              *v43++ = v45;
              --v44;
            }

            while (v44);
          }

          v46 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = a3[a5] + (*a2 >> 1);
              ++a2;
              ++a3;
              --v46;
            }

            while (v46);
          }
        }

        break;
      case 4:
        if (a4)
        {
          if (a5)
          {
            v7 = a3;
            v8 = a4;
            v9 = a2;
            v10 = a5;
            do
            {
              v12 = *v7++;
              v11 = v12;
              v13 = *v8++;
              *v9++ = v13 + v11;
              --v10;
            }

            while (v10);
          }

          v14 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              v15 = *a2;
              v16 = a4[a5];
              v18 = *a4++;
              v17 = v18;
              v19 = v16 + v15 - v18;
              v20 = v16 - v18;
              if (v16 - v18 < 0)
              {
                v20 = -v20;
              }

              v21 = v19 - v16;
              if (v19 - v16 < 0)
              {
                v21 = v16 - v19;
              }

              v22 = v19 - v17;
              if (v22 < 0)
              {
                v22 = -v22;
              }

              if (v21 > v22)
              {
                LOBYTE(v16) = v17;
              }

              if (v20 > v22 || v20 > v21)
              {
                LOBYTE(v15) = v16;
              }

              a2[a5] = v15 + a3[a5];
              ++a2;
              ++a3;
              --v14;
            }

            while (v14);
          }
        }

        else
        {
          if (a5)
          {
            v47 = a3;
            v48 = a2;
            v49 = a5;
            do
            {
              v50 = *v47++;
              *v48++ = v50;
              --v49;
            }

            while (v49);
          }

          v51 = a7 - a5;
          if (a7 > a5)
          {
            do
            {
              a2[a5] = *a2 + a3[a5];
              ++a2;
              ++a3;
              --v51;
            }

            while (v51);
          }
        }

        return result;
      default:
LABEL_47:
        *(result + 112) = 36;
        return result;
    }
  }

  return result;
}

uint64_t sub_17690(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 * a4;
  v9 = 4 * a5 * a4;
  v10 = *a1;
  v11 = a1[1];
  v12 = &v11[-*a1];
  if (v9 <= v12)
  {
    if (v9 < v12)
    {
      v11 = &v10[v9];
      a1[1] = &v10[v9];
    }
  }

  else
  {
    sub_17F9C(a1, v9 - v12);
    v10 = *a1;
    v11 = a1[1];
  }

  if (v10 == v11)
  {
    v10 = 0;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  if (v14 == 8 && v13 == 0)
  {
    if (v8)
    {
      v22 = v10 + 3;
      do
      {
        v23 = *a2;
        *(v22 - 1) = *a2;
        *(v22 - 2) = v23;
        *(v22 - 3) = v23;
        if (*(a3 + 80) == 1)
        {
          if (*(a3 + 56) == *a2)
          {
            v24 = 0;
          }

          else
          {
            v24 = -1;
          }
        }

        else
        {
          v24 = -1;
        }

        *v22 = v24;
        v22 += 4;
        ++a2;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 2)
  {
    if (v8)
    {
      v16 = 0;
      v17 = a2;
      v18 = v10;
      do
      {
        v19 = 0;
        v20 = &a2[3 * v16];
        do
        {
          v18[v19] = v17[v19];
          ++v19;
        }

        while (v19 != 3);
        if ((*(a3 + 80) & 1) != 0 && *(a3 + 56) == *v20 && *(a3 + 64) == v20[1])
        {
          if (*(a3 + 72) == v20[2])
          {
            v21 = 0;
          }

          else
          {
            v21 = -1;
          }
        }

        else
        {
          v21 = -1;
        }

        v10[4 * v16++ + 3] = v21;
        v18 += 4;
        v17 += 3;
      }

      while (v16 != v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 3)
  {
    if (v8)
    {
      v26 = 0;
      while (*(a3 + 96) - *(a3 + 88) > 4 * a2[v26])
      {
        for (i = 0; i != 4; ++i)
        {
          v10[i] = *(*(a3 + 88) + 4 * a2[v26] + i);
        }

        ++v26;
        v10 += 4;
        if (v26 == v8)
        {
          return 0;
        }
      }

      return 46;
    }

    return 0;
  }

  if (v14 == 8 && v13 == 4)
  {
    if (v8)
    {
      v28 = a2 + 1;
      v29 = v10 + 3;
      do
      {
        v30 = *(v28 - 1);
        *(v29 - 1) = v30;
        *(v29 - 2) = v30;
        *(v29 - 3) = v30;
        v31 = *v28;
        v28 += 2;
        *v29 = v31;
        v29 += 4;
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  if (v14 == 8 && v13 == 6)
  {
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        for (k = 0; k != 4; ++k)
        {
          v10[k] = a2[k];
        }

        result = 0;
        v10 += 4;
        a2 += 4;
      }

      return result;
    }

    return 0;
  }

  if (v14 == 16 && !v13)
  {
    if (v8)
    {
      v34 = v10 + 3;
      v35 = (a2 + 1);
      do
      {
        v36 = *a2;
        a2 += 2;
        *(v34 - 1) = v36;
        *(v34 - 2) = v36;
        *(v34 - 3) = v36;
        if (*(a3 + 80) == 1)
        {
          if (__rev16(*(v35 - 1)) == *(a3 + 56))
          {
            v37 = 0;
          }

          else
          {
            v37 = -1;
          }
        }

        else
        {
          v37 = -1;
        }

        result = 0;
        *v34 = v37;
        v34 += 4;
        ++v35;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 2)
  {
    if (v8)
    {
      v38 = v10 + 3;
      v39 = a2 + 2;
      do
      {
        *(v38 - 3) = *(v39 - 2);
        *(v38 - 2) = *v39;
        v40 = v39[2];
        *(v38 - 1) = v40;
        if (*(a3 + 80) == 1 && __rev16(*(v39 - 1)) == *(a3 + 56) && __rev16(*v39) == *(a3 + 64))
        {
          if ((v39[3] | (v40 << 8)) == *(a3 + 72))
          {
            v41 = 0;
          }

          else
          {
            v41 = -1;
          }
        }

        else
        {
          v41 = -1;
        }

        result = 0;
        *v38 = v41;
        v38 += 4;
        v39 += 6;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 4)
  {
    if (v8)
    {
      v42 = v10 + 3;
      v43 = a2 + 2;
      result = 0;
      do
      {
        v44 = *(v43 - 2);
        *(v42 - 1) = v44;
        *(v42 - 2) = v44;
        *(v42 - 3) = v44;
        v45 = *v43;
        v43 += 4;
        *v42 = v45;
        v42 += 4;
        --v8;
      }

      while (v8);
      return result;
    }

    return 0;
  }

  if (v14 == 16 && v13 == 6)
  {
    if (v8)
    {
      for (m = 0; m != v8; ++m)
      {
        v47 = 0;
        v48 = a2;
        do
        {
          v49 = *v48;
          v48 += 2;
          v10[v47++] = v49;
        }

        while (v47 != 4);
        result = 0;
        v10 += 4;
        a2 += 8;
      }

      return result;
    }

    return 0;
  }

  if (v14 <= 7 && !v13)
  {
    if (v8)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        v52 = *(a3 + 24);
        if (v52)
        {
          v53 = 0;
          v54 = v52 - 1;
          do
          {
            v55 = (a2[v51 >> 3] >> (~v51 & 7)) & 1;
            ++v51;
            v53 += v55 << v54--;
          }

          while (v54 < v52);
          v56 = 255 * v53;
        }

        else
        {
          v56 = 0;
        }

        v57 = ~(-1 << v52);
        v58 = &v10[4 * v50];
        v58[2] = v56 / v57;
        v58[1] = v56 / v57;
        *v58 = v56 / v57;
        v59 = -1;
        if (*(a3 + 80) == 1 && v56 >= v57)
        {
          v60 = *(a3 + 24);
          v61 = ~(-1 << v60);
          v59 = v60 ? 0 : -1;
          if (*(a3 + 56) != v61)
          {
            v59 = -1;
          }
        }

        result = 0;
        v10[4 * v50++ + 3] = v59;
      }

      while (v50 != v8);
      return result;
    }

    return 0;
  }

  result = 0;
  if (v14 <= 7 && v13 == 3 && v8)
  {
    v62 = 0;
    v63 = 0;
    while (1)
    {
      v64 = *(a3 + 24);
      if (v64)
      {
        v65 = 0;
        v66 = v64 - 1;
        do
        {
          v67 = (a2[v63 >> 3] >> (~v63 & 7)) & 1;
          ++v63;
          v65 += v67 << v66--;
        }

        while (v66 < v64);
        v64 = 4 * v65;
      }

      if (v64 >= *(a3 + 96) - *(a3 + 88))
      {
        break;
      }

      v68 = 4;
      v69 = v10;
      do
      {
        *v69++ = *(*(a3 + 88) + v64++);
        --v68;
      }

      while (v68);
      result = 0;
      ++v62;
      v10 += 4;
      if (v62 == v8)
      {
        return result;
      }
    }

    return 47;
  }

  return result;
}

uint64_t sub_17C28(uint64_t a1, unint64_t a2)
{
  result = 31;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 2)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (((1 << a2) & 0x10116) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = 37;
    }

    if (a2 <= 0x10)
    {
      return v4;
    }

    else
    {
      return 37;
    }
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 != 6 && a1 != 4)
      {
        return result;
      }

LABEL_8:
      if (((a2 - 8) & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        return 37;
      }

      else
      {
        return 0;
      }
    }

    if (a2 - 1 > 7)
    {
      return 37;
    }

    else
    {
      return dword_10A648[a2 - 1];
    }
  }
}

char *sub_17CC0(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v17 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v22 = &__dst[a5];
      v23 = &v10[-a5];
      v24 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v25 = *v23++;
          *v24++ = v25;
        }

        while (v23 != v10);
      }

      *(a1 + 8) = v24;
      if (v10 != v22)
      {
        memmove(&__dst[a5], __dst, v10 - v22);
      }

      v26 = v5;
      v27 = __src;
      v28 = a5;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = &a4[__dst] - __src;
        v20 = *(a1 + 8);
        do
        {
          v21 = *v18++;
          *v20++ = v21;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v29 = &__dst[a5];
      v30 = (v19 - a5);
      v31 = v19;
      if (v19 - a5 < v10)
      {
        do
        {
          v32 = *v30++;
          *v31++ = v32;
        }

        while (v30 != v10);
      }

      *(a1 + 8) = v31;
      if (v20 != v29)
      {
        memmove(&__dst[a5], __dst, v19 - v29);
      }

      v26 = v5;
      v27 = __src;
      v28 = v10 - v5;
    }

    memmove(v26, v27, v28);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_17EC8();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  memcpy(&v13[v16], __src, a5);
  memcpy(&v13[v16 + a5], v5, v10 - v5);
  *(a1 + 8) = v5;
  memcpy(v16, v11, v5 - v11);
  *a1 = v16;
  *(a1 + 8) = &v13[v16 + a5 + v10 - v5];
  *(a1 + 16) = v16 + v15;
  if (v11)
  {
    operator delete(v11);
  }

  return &v13[v16];
}

void sub_17EE0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_17F3C(exception, a1);
}

std::logic_error *sub_17F3C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_17F68()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_17F9C(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      sub_17EC8();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *sub_180AC(void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_18120(a1, a2);
    v4 = a1[1];
    v5 = &v4[a2];
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_18104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_18120(void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    sub_17EC8();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void *sub_18160(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_181B4(int *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v5 = 0;
  v6 = *a3;
  v7 = *a4;
  v8 = ((a4[1] - *a4) >> 3) >> 1;
  while (1)
  {
    v9 = v6 >> 3;
    if ((v6 & 7) == 0 && v9 >= a5)
    {
      v12 = 10;
      goto LABEL_9;
    }

    v10 = *(a2 + v9);
    *a3 = v6 + 1;
    if (v5 >= v8)
    {
      break;
    }

    v11 = *(v7 + 16 * v5 + 8 * ((v10 >> (v6 & 7)) & 1));
    *a1 = 0;
    ++v6;
    v5 = v11 - v8;
    if (v11 < v8)
    {
      return v11;
    }
  }

  v12 = 11;
LABEL_9:
  v11 = 0;
  *a1 = v12;
  return v11;
}

uint64_t sub_1823C(void *a1, uint64_t **a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 - *a2;
  v9 = v8 >> 3;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_18660(&v46, v8 >> 3);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  sub_184E4(&v43, a3 + 1, &__p);
  __p = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  sub_184E4(&__p, a3 + 1, &v39);
  if (v6 != v7)
  {
    v10 = *a2;
    v11 = v43;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8 >> 3;
    }

    do
    {
      v13 = *v10++;
      ++v11[v13];
      --v12;
    }

    while (v12);
  }

  if (a3)
  {
    v14 = v43;
    v15 = (__p + 8);
    v16 = *__p;
    do
    {
      v17 = *v14++;
      v16 = 2 * (v17 + v16);
      *v15++ = v16;
      --a3;
    }

    while (a3);
  }

  if (v6 != v7)
  {
    v18 = *a2;
    v19 = __p;
    v20 = v46;
    if (v9 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v8 >> 3;
    }

    do
    {
      v23 = *v18++;
      v22 = v23;
      if (v23)
      {
        v24 = v19[v22];
        v19[v22] = v24 + 1;
        *v20 = v24;
      }

      ++v20;
      --v21;
    }

    while (v21);
  }

  a1[1] = *a1;
  v39 = 0x7FFFLL;
  sub_18630(a1, v8 >> 2, &v39);
  if (v6 == v7)
  {
LABEL_31:
    v37 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = *a2;
    if (v9 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v8 >> 3;
    }

    v30 = 1;
    while (1)
    {
      v31 = v28[v25];
      if (v31)
      {
        break;
      }

LABEL_30:
      v30 = ++v25 < v9;
      if (v25 == v29)
      {
        goto LABEL_31;
      }
    }

    v32 = 0;
    v33 = v46;
    while (v27 <= v9 - 2)
    {
      v34 = (v33[v25] >> (v31 + ~v32)) & 1 | (2 * v27);
      v35 = *a1;
      v36 = *(*a1 + 8 * v34);
      if (v36 == 0x7FFF)
      {
        if (++v32 == v31)
        {
          v27 = 0;
          *(v35 + 8 * v34) = v25;
        }

        else
        {
          v27 = v26 + 1;
          *(v35 + 8 * v34) = ++v26 + v9;
        }
      }

      else
      {
        v27 = v36 - v9;
        ++v32;
      }

      v31 = v28[v25];
      if (v32 >= v31)
      {
        goto LABEL_30;
      }
    }

    if (v30)
    {
      v37 = 55;
    }

    else
    {
      v37 = 0;
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v37;
}

void sub_18498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_184E4(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_185BC(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_10A0F0)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_185A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_185BC(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_17EC8();
  }

  result = sub_185F8(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *sub_185F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_17F68();
  }

  return operator new(8 * a2);
}

void sub_18630(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_186D8(a1, a2 - v3, a3);
  }
}

void *sub_18660(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_185BC(a1, a2);
    v4 = a1[1];
    bzero(v4, 8 * a2);
    a1[1] = &v4[8 * a2];
  }

  return a1;
}

void sub_186BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_186D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v14 = 0;
      v15 = v7 + 8 * a2;
      v16 = *a3;
      v17 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v18 = vdupq_n_s64(v17);
      v19 = (v7 + 8);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_10A0F0)));
        if (v20.i8[0])
        {
          *(v19 - 1) = v16;
        }

        if (v20.i8[4])
        {
          *v19 = v16;
        }

        v14 += 2;
        v19 += 2;
      }

      while (v17 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v14);
    }

    else
    {
      v15 = *(a1 + 8);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_17EC8();
    }

    v10 = v8 >> 3;
    v11 = v6 - *a1;
    if (v11 >> 2 > v9)
    {
      v9 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      v13 = sub_185F8(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0;
    v22 = &v13[8 * v10];
    v23 = &v22[8 * a2];
    v24 = *a3;
    v25 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v26 = v25 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = v22 + 8;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v21), xmmword_10A0F0)));
      if (v29.i8[0])
      {
        *(v28 - 1) = v24;
      }

      if (v29.i8[4])
      {
        *v28 = v24;
      }

      v21 += 2;
      v28 += 2;
    }

    while (v26 != v21);
    v30 = &v13[8 * v12];
    v31 = *(a1 + 8) - *a1;
    v32 = &v22[-v31];
    memcpy(&v22[-v31], *a1, v31);
    v33 = *a1;
    *a1 = v32;
    *(a1 + 8) = v23;
    *(a1 + 16) = v30;
    if (v33)
    {

      operator delete(v33);
    }
  }
}

void *sub_188A8(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = sub_18120(result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_18908(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1)
{
  if (a1)
  {
    v1 = sub_18DEC(a1, 0);
    if (v1)
    {
      v2 = v1;
      v3 = malloc(0x8000uLL);
      if (v3)
      {
        if (read(v2, v3, 0x8000uLL))
        {
          Img4DecodeParseLengthFromBuffer();
          AMSupportLogInternal();
        }

        AMSupportLogInternal();
      }

      else
      {
        sub_D6000();
      }

      if (v2 >= 1)
      {
        close(v2);
      }
    }

    else
    {
      AMSupportLogInternal();
    }
  }

  else
  {
    sub_D6014();
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_18DEC(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal();
    AMSupportLogInternal();
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    sub_D6054();
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    sub_D6028();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t AMRestorePartitionFWCommitData(const __CFURL *a1, CFStringRef theString, CFDataRef theData, int a4)
{
  v13 = 0;
  v14 = 0;
  *bytes = 0;
  if (!a1)
  {
    sub_D6470();
    goto LABEL_19;
  }

  if (!theString)
  {
    sub_D645C();
    goto LABEL_19;
  }

  if (!theData)
  {
    sub_D6448();
    goto LABEL_19;
  }

  if (!a4)
  {
    CFDataGetLength(theData);
    goto LABEL_16;
  }

  v18 = 0;
  memset(length, 0, sizeof(length));
  if (CFStringGetLength(theString) != 4)
  {
    goto LABEL_29;
  }

  v16 = 0;
  *buffer = 0;
  if (!CFStringGetCString(theString, buffer, 5, 0x8000100u))
  {
    sub_D60FC();
LABEL_30:
    v9 = 0;
LABEL_31:
    v10 = 0;
    goto LABEL_12;
  }

  if (AMAuthInstallApImg4CreatePayload())
  {
    goto LABEL_29;
  }

  if (!v18)
  {
    sub_D60D0();
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(v18);
  v7 = CFDataGetLength(v18);
  if (Img4EncodeStitchManifest(BytePtr, v7, 0, 0, &length[1], length) != 100)
  {
LABEL_29:
    AMSupportLogInternal();
    goto LABEL_30;
  }

  v8 = CFDataCreate(0, *&length[1], length[0]);
  if (!v8)
  {
    sub_D60A4();
    v9 = 0;
    goto LABEL_31;
  }

  v9 = CFRetain(v8);
  v10 = 1;
LABEL_12:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  if ((v10 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!v9)
  {
    sub_D641C();
    goto LABEL_19;
  }

  CFDataGetLength(v9);
LABEL_16:
  if ((AMRestorePartitionFWCopyTagData(a1) | 8) != 8)
  {
LABEL_18:
    AMSupportLogInternal();
    goto LABEL_19;
  }

  sub_D63F0();
LABEL_19:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_195D8(const __CFData *a1, int a2)
{
  if (a1)
  {
    if (a2 > 0)
    {
      BytePtr = CFDataGetBytePtr(a1);
      if (!BytePtr)
      {
        sub_D6484();
        return 0;
      }

      v5 = BytePtr;
      Length = CFDataGetLength(a1);
      v7 = Length;
      if (Length < 1)
      {
        v8 = 0;
LABEL_10:
        if (v8 == v7)
        {
          return 1;
        }
      }

      else
      {
        v8 = 0;
        v9 = Length;
        while (1)
        {
          v10 = write(a2, v5, v9);
          if (v10 <= 0)
          {
            break;
          }

          v5 += v10;
          v9 -= v10;
          v8 += v10;
          if (v8 >= v7)
          {
            goto LABEL_10;
          }
        }

        v12 = __error();
        strerror(*v12);
      }
    }

    AMSupportLogInternal();
  }

  else
  {
    sub_D6498();
  }

  return 0;
}

uint64_t ramrod_display_set_minimum_progress_blink(double a1)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  qword_1C46D0 = *&a1;
  if (*&qword_1C46D8 >= a1 && (byte_1C6640 & 1) == 0)
  {
    byte_1C6640 = 1;
    sub_1B708();
  }

  return pthread_mutex_unlock(&stru_1C6538);
}

uint64_t sub_19798()
{
  if (pthread_mutex_init(&stru_1C6538, 0))
  {
    ramrod_log_msg("unable to initialize display lock\n", v0, v1, v2, v3, v4, v5, v6, v16);
  }

  pthread_mutex_lock(&stru_1C6538);
  *&dword_1C65CC = 0xFF4D4D4DFFFFFFFFLL;
  byte_1C65C8 = 0;
  dword_1C65C4 = 257;
  byte_1C65FC = 1;
  v7 = MGGetSInt32Answer();
  if (v7)
  {
    if (v7 == 1)
    {
      ramrod_log_msg("inverting UI color", v8, v9, v10, v11, v12, v13, v14, v16);
      *&dword_1C65CC = 0xFFCCCCCCFF000000;
      HIWORD(dword_1C65C4) = -1;
      byte_1C65C8 = -1;
    }

    else
    {
      ramrod_log_msg("unexpect color map policy %d", v8, v9, v10, v11, v12, v13, v14, v7);
    }
  }

  off_1C6628 = sub_1ADA8;
  off_1C6618 = sub_1B080;
  off_1C6620 = sub_1B154;
  off_1C6630 = sub_1B1AC;
  off_1C6638 = sub_1B530;
  sub_1A990();

  return pthread_mutex_unlock(&stru_1C6538);
}

void ramrod_set_progress_UI(int a1, double a2)
{
  v2 = 100.0;
  if (a2 <= 100.0)
  {
    v2 = a2;
  }

  if (a2 >= 0.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 != *&qword_1C46D8 || a1 != 0)
  {
    qword_1C46D8 = *&v3;
    if (dword_1C46E0 != -1)
    {
      off_1C6630(v3);
      v3 = *&qword_1C46D8;
    }

    if (v3 >= *&qword_1C46D0 && (byte_1C6640 & 1) == 0)
    {
      byte_1C6640 = 1;

      sub_1B708();
    }
  }
}

uint64_t ramrod_display_set_granular_progress_forced(int a1, double a2)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  ramrod_log_msg("%s: %f\n", v4, v5, v6, v7, v8, v9, v10, "ramrod_display_set_granular_progress_forced");
  ramrod_set_progress_UI(a1, a2);

  return pthread_mutex_unlock(&stru_1C6538);
}

uint64_t ramrod_display_get_num_progress_segments()
{
  pthread_once(&stru_1C46C0, sub_19798);
  if (dword_1C65B8)
  {
    return dword_1C65B8;
  }

  else
  {
    return (dword_1C658C << 8);
  }
}

void ramrod_display_set_showui(char a1)
{
  pthread_once(&stru_1C46C0, sub_19798);
  LOBYTE(dword_1C65C4) = a1;

  sub_19ACC();
}

void sub_19ACC()
{
  sub_1B808(qword_1C65E8);
  sub_1A5C8();
  if (dword_1C46E0 != -1)
  {
    v0.n128_u64[0] = qword_1C46D8;
    if (*&qword_1C46D8 >= 0.0)
    {
      v1 = off_1C6630;

      v1(v0);
    }

    else
    {

      sub_1A344();
    }
  }
}

void ramrod_display_set_showprogress(int a1)
{
  pthread_once(&stru_1C46C0, sub_19798);
  v9 = "Disabling";
  if (a1)
  {
    v9 = "Enabling";
  }

  ramrod_log_msg("%s progress UI", v2, v3, v4, v5, v6, v7, v8, v9);
  BYTE1(dword_1C65C4) = a1;

  sub_19ACC();
}

uint64_t ramrod_display_show_image_with_alpha(const __CFString *a1, int a2)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  if (dword_1C46E0 != -1)
  {
    bzero(v41, 0x400uLL);
    v4 = buffer;
    bzero(buffer, 0x400uLL);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    CFStringGetFileSystemRepresentation(a1, buffer, 1024);
    if (access(buffer, 0))
    {
      v12 = strrchr(buffer, 47);
      if (!v12)
      {
        ramrod_log_msg("'%s' is not an absolute path\n", v13, v14, v15, v16, v17, v18, v19, buffer);
        return pthread_mutex_unlock(&stru_1C6538);
      }

      *v12 = 0;
      v20 = v12 + 1;
      v21 = strchr(v12 + 1, 46);
      if (!v21)
      {
        ramrod_log_msg("'%s' does not have an extension\n", v22, v23, v24, v25, v26, v27, v28, v20);
        return pthread_mutex_unlock(&stru_1C6538);
      }

      *v21 = 0;
      v4 = v41;
      if (!sub_19DF8(buffer, v20, dword_1C658C, v41))
      {
        ramrod_log_msg("could not find suitable image for %s/%s\n", v5, v6, v7, v8, v9, v10, v11, buffer);
        return pthread_mutex_unlock(&stru_1C6538);
      }
    }

    ramrod_log_msg("loading image: %s\n", v5, v6, v7, v8, v9, v10, v11, v4);
    if (sub_1A074(v4, &v37, dword_1C6588))
    {
      if (v37 > xmmword_1C6578 || v38 > *(&xmmword_1C6578 + 1))
      {
        ramrod_log_msg("image dimensions (%zu, %zu) too big\n", v29, v30, v31, v32, v33, v34, v35, v37);
      }

      else
      {
        if (a2)
        {
          sub_1A25C(&v37, 1);
        }

        sub_1A2D4(*(&unk_1C65D8 + dword_1C46E0), &v37);
        sub_1A344();
        sub_1A2D4(*(&unk_1C65D8 + dword_1C46E0), &v37);
      }
    }

    else
    {
      ramrod_log_msg("unable to load image '%s'\n", v29, v30, v31, v32, v33, v34, v35, buffer);
    }
  }

  return pthread_mutex_unlock(&stru_1C6538);
}

BOOL sub_19DF8(const char *a1, const char *a2, int a3, char *a4)
{
  memset(v18, 0, sizeof(v18));
  v8 = MGGetSInt32Answer() - 1;
  if (v8 >= 9 || ((0x12Fu >> v8) & 1) == 0)
  {
    LOBYTE(v18[0]) = 0;
    byte_1C6594 = 0;
    goto LABEL_10;
  }

  __strlcpy_chk();
  byte_1C6594 = 0;
  if (!LOBYTE(v18[0]))
  {
LABEL_10:
    snprintf(a4, 0x400uLL, "%s/%s@%zu.tga", a1, a2, *(&xmmword_1C6578 + 1));
    if (access(a4, 0))
    {
      snprintf(a4, 0x400uLL, "%s/%s@%dx.tga", a1, a2, a3);
      if (access(a4, 0))
      {
        if (!LOBYTE(v18[0]) || (snprintf(a4, 0x400uLL, "%s/%s~%s.tga", a1, a2, v18), access(a4, 0)))
        {
          snprintf(a4, 0x400uLL, "%s/%s.tga", a1, a2);
          return access(a4, 0) == 0;
        }
      }
    }

    return 1;
  }

  ramrod_log_msg("Using product_suffix of %s\n", v9, v10, v11, v12, v13, v14, v15, v18);
  MGGetFloat32Answer();
  if (v16 <= 0.0 || (snprintf(a4, 0x400uLL, "%s/%s@%zu~%s-USBc.tga", a1, a2, *(&xmmword_1C6578 + 1), v18), access(a4, 0)))
  {
    snprintf(a4, 0x400uLL, "%s/%s@%zu~%s.tga", a1, a2, *(&xmmword_1C6578 + 1), v18);
    if (!access(a4, 0))
    {
      return 1;
    }

    snprintf(a4, 0x400uLL, "%s/%s@%dx~%s.tga", a1, a2, a3, v18);
    if (!access(a4, 0))
    {
      return 1;
    }

    goto LABEL_10;
  }

  result = 1;
  byte_1C6594 = 1;
  return result;
}

uint64_t sub_1A074(const char *a1, void *a2, int a3)
{
  v6 = strlen(a1);
  if (v6 < 4 || strcasecmp(&a1[v6 - 4], ".png"))
  {
    if ((ramrod_load_tga(a1, a2, a2 + 1, a2 + 2) & 1) == 0)
    {
      return 0;
    }

LABEL_4:
    if (a3 > 179)
    {
      if (a3 != 270 && a3 != 180)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!a3)
      {
        return 1;
      }

      if (a3 != 90)
      {
LABEL_20:
        ramrod_log_msg("unexpected rotation value %d\n", v7, v8, v9, v10, v11, v12, v13, a3);
        return 0;
      }
    }

    v15 = a2[1];
    v14 = a2[2];
    v16 = *a2;
    v17 = malloc(4 * *a2 * v15);
    if (a3 == 90)
    {
      if (v15)
      {
        v29 = 0;
        v30 = &v17[4 * v15 - 4];
        do
        {
          v31 = v30;
          for (i = v16; i; --i)
          {
            v33 = *v14++;
            *v31 = v33;
            v31 += v15;
          }

          ++v29;
          v30 -= 4;
        }

        while (v29 != v15);
      }
    }

    else
    {
      if (a3 == 180)
      {
        if (v15)
        {
          v24 = 0;
          v25 = &v17[4 * v15 * v16 - 4];
          do
          {
            v26 = v25;
            for (j = v16; j; --j)
            {
              v28 = *v14++;
              *v26-- = v28;
            }

            ++v24;
            v25 -= 4 * v16;
          }

          while (v24 != v15);
        }

        goto LABEL_34;
      }

      if (v15)
      {
        v18 = 0;
        v19 = &v17[4 * (v16 - 1) * v15];
        do
        {
          v20 = v19;
          for (k = v16; k; --k)
          {
            v22 = *v14++;
            *v20 = v22;
            v20 -= 4 * v15;
          }

          ++v18;
          v19 += 4;
        }

        while (v18 != v15);
      }
    }

    *a2 = v15;
    a2[1] = v16;
LABEL_34:
    a2[2] = v17;
    return 1;
  }

  result = ramrod_load_png(a1, a2, a2 + 1, a2 + 2);
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1A25C(uint64_t result, int a2)
{
  v2 = *(result + 8) * *result;
  if (v2)
  {
    for (i = *(result + 16); ; ++i)
    {
      result = HIBYTE(*i);
      if (result != 255)
      {
        break;
      }

      if (a2)
      {
        result = dword_1C65CC;
LABEL_10:
        *i = result;
      }

      if (!--v2)
      {
        return result;
      }
    }

    if (a2)
    {
      v5 = dword_1C65CC;
    }

    else
    {
      v5 = *i;
    }

    result = sub_1B684(result, v5);
    goto LABEL_10;
  }

  return result;
}

void sub_1A2D4(__IOSurface *a1, uint64_t *a2)
{
  v4 = (xmmword_1C6578 - *a2) >> 1;
  v5 = (*(&xmmword_1C6578 + 1) - a2[1]) >> 1;
  sub_1B808(a1);

  sub_1B880(a1, a2, v4, v5);
}

uint64_t sub_1A344()
{
  if (qword_1C6608)
  {
    v0 = dword_1C46E0 == -1;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    if ((dword_1C65C4 & 1) == 0)
    {
      sub_1B808(*(&unk_1C6538 + dword_1C46E0 + 20));
    }

    IOMobileFramebufferSwapBegin();
    if (byte_1C65FC == 1)
    {
      IOMobileFramebufferSwapSetLayer();
    }

    IOMobileFramebufferSwapSetLayer();
    if (byte_1C65FC == 1)
    {
      IOMobileFramebufferSwapSetLayer();
      byte_1C65FC = 0;
    }

    result = IOMobileFramebufferSwapEnd();
    dword_1C46E0 = 1 - dword_1C46E0;
  }

  return result;
}

uint64_t ramrod_display_set_background_color(char a1, char a2, char a3)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  BYTE2(dword_1C65C4) = a1;
  HIBYTE(dword_1C65C4) = a2;
  byte_1C65C8 = a3;
  sub_19ACC();

  return pthread_mutex_unlock(&stru_1C6538);
}

uint64_t ramrod_clear_ui()
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  if (qword_1C6658)
  {
    qword_1C6648 = 0;
    *&dword_1C6650 = 0;
    free(qword_1C6658);
    qword_1C6658 = 0;
  }

  off_1C6620();
  sub_1B808(qword_1C65E8);
  sub_1A5C8();

  return pthread_mutex_unlock(&stru_1C6538);
}

void sub_1A5C8()
{
  if (qword_1C6658)
  {
    v0 = 0;
    if (dword_1C6588 > 179)
    {
      if (dword_1C6588 == 180)
      {
        v0 = (xmmword_1C6578 - qword_1C6648) / 2;
        v1 = dword_1C65A4 - 2 * dword_1C6650;
        goto LABEL_13;
      }

      v1 = 0;
      if (dword_1C6588 == 270)
      {
        v0 = dword_1C65A0 + 2 * qword_1C6648;
        goto LABEL_10;
      }
    }

    else
    {
      if (!dword_1C6588)
      {
        v0 = (xmmword_1C6578 - qword_1C6648) / 2;
        v1 = dword_1C65A4 + 2 * dword_1C6650;
        goto LABEL_13;
      }

      v1 = 0;
      if (dword_1C6588 == 90)
      {
        v0 = dword_1C65A0 - 2 * qword_1C6648;
LABEL_10:
        v1 = (DWORD2(xmmword_1C6578) - dword_1C6650) / 2;
      }
    }
  }

  else
  {
    v0 = 0;
    v1 = 0;
  }

LABEL_13:
  for (i = 0; i != 16; i += 8)
  {
    v3 = *(&unk_1C6538 + i + 160);
    if (v3)
    {
      sub_1B808(v3);
      if (qword_1C6670)
      {
        sub_1B880(*(&unk_1C6538 + i + 160), &qword_1C6660, dword_1C6598, unk_1C659C);
      }

      if (qword_1C6658)
      {
        sub_1B880(*(&unk_1C6538 + i + 160), &qword_1C6648, v0, v1);
      }
    }
  }
}

uint64_t ramrod_display_set_aux_image_path(const __CFString *a1, CFErrorRef *a2)
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  if (qword_1C6658)
  {
    qword_1C6648 = 0;
    *&dword_1C6650 = 0;
    free(qword_1C6658);
    qword_1C6658 = 0;
  }

  if (a1)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetFileSystemRepresentation(a1, buffer, 1024);
    v4 = sub_1A074(buffer, &qword_1C6648, dword_1C6588);
    v12 = v4;
    if (v4)
    {
      sub_1A25C(&qword_1C6648, 0);
    }

    else
    {
      ramrod_log_msg("failed to load image %s\n", v5, v6, v7, v8, v9, v10, v11, buffer);
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 3, 0, @"%s: unable to load image file %@", v13, v14, v15, "ramrod_display_set_aux_image_path");
    }
  }

  else
  {
    v12 = 1;
  }

  sub_1A5C8();
  ramrod_set_progress_UI(1, *&qword_1C46D8);
  pthread_mutex_unlock(&stru_1C6538);
  return v12 & 1;
}

BOOL ramrod_display_retry_framebuffer_create()
{
  pthread_once(&stru_1C46C0, sub_19798);
  pthread_mutex_lock(&stru_1C6538);
  sub_1A990();
  pthread_mutex_unlock(&stru_1C6538);
  return dword_1C6600 > 0;
}

void sub_1A990()
{
  if (dword_1C6600 > 0)
  {
    return;
  }

  DisplayList = IOMobileFramebufferCreateDisplayList();
  if (DisplayList)
  {
    goto LABEL_3;
  }

  v31 = dword_1C46F8;
  if (dword_1C46F8 >= 1)
  {
    v32 = dword_1C46F8 + 1;
    do
    {
      dword_1C46F8 = v31 - 1;
      v33 = 100000 * (v32 - v31);
      if (v33 >= 1000000)
      {
        v34 = 1000000;
      }

      else
      {
        v34 = v33;
      }

      usleep(v34);
      v35 = IOMobileFramebufferCreateDisplayList();
      v31 = dword_1C46F8;
    }

    while (dword_1C46F8 >= 1 && v35 == 0);
    DisplayList = v35;
    if (v35)
    {
LABEL_3:
      v8 = qword_1C6610;
      if (qword_1C6610)
      {
        if (dword_1C6600 >= 1)
        {
          v9 = 0;
          v10 = 72;
          do
          {
            CFRelease(*&v8[v10]);
            v8 = qword_1C6610;
            *(qword_1C6610 + v10) = 0;
            ++v9;
            v10 += 80;
          }

          while (v9 < dword_1C6600);
        }

        free(v8);
        qword_1C6610 = 0;
      }

      dword_1C6600 = 0;
      Count = CFArrayGetCount(DisplayList);
      qword_1C6610 = calloc(Count, 0x50uLL);
      if (!qword_1C6610)
      {
        v45 = "unable to allocate framebuffer display\n";
LABEL_29:
        ramrod_log_msg(v45, v12, v13, v14, v15, v16, v17, v18, v67);
        goto LABEL_35;
      }

      sub_1C38C(DisplayList, 0);
      if (qword_1C6608)
      {
LABEL_35:
        CFRelease(DisplayList);
        goto LABEL_36;
      }

      sub_1C38C(DisplayList, 1);
      if (dword_1C6600 >= 1 && (*(qword_1C6610 + 80 * dword_1C6600 - 80) & 1) == 0)
      {
        ramrod_log_msg("attempting to power on display port\n", v12, v13, v14, v15, v16, v17, v18, v67);
        v19 = __IOAVClassMatching();
        if (v19)
        {
          v27 = wait_for_io_service_matching_dict(v19, 0xAu);
          if (v27)
          {
            v28 = v27;
            v29 = IOAVControllerCreateWithService();
            IOObjectRelease(v28);
            if (v29)
            {
              v30 = IOAVControllerSetPower();
              CFRelease(v29);
              if (v30)
              {
                ramrod_log_msg("unable to power on DisplayPort: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, v30);
              }

              goto LABEL_34;
            }

            v46 = "Unable to create IOAVController from service";
          }

          else
          {
            v46 = "timed out waiting for IOAVController service\n";
          }
        }

        else
        {
          v46 = "IOAVClassMatching returned no matching class for IOAVController\n";
        }

        ramrod_log_msg(v46, v20, v21, v22, v23, v24, v25, v26, v67);
      }

LABEL_34:
      if (qword_1C6608)
      {
        goto LABEL_35;
      }

      v45 = "unable to find a usable display\n";
      goto LABEL_29;
    }
  }

  ramrod_log_msg("unable to get display list\n", v0, v1, v2, v3, v4, v5, v6, v67);
LABEL_36:
  if (!dword_1C6600)
  {
    v62 = "unable to get framebuffer\n";
LABEL_51:
    ramrod_log_msg(v62, v38, v39, v40, v41, v42, v43, v44, v67);
LABEL_52:
    sub_1C314();
    return;
  }

  off_1C6638(v37);
  if (!qword_1C6608)
  {
    if (*qword_1C6610 != 1)
    {
      goto LABEL_49;
    }

    qword_1C6608 = qword_1C6610;
    ramrod_log_msg("%s: Will use %s\n", v47, v48, v49, v50, v51, v52, v53, "create_framebuffer");
    if (!qword_1C6608)
    {
      goto LABEL_49;
    }
  }

  v68[0] = 0;
  v68[1] = 0;
  DisplaySize = IOMobileFramebufferGetDisplaySize();
  if (DisplaySize)
  {
    ramrod_log_msg("unable to get display size: 0x%x\n", v55, v56, v57, v58, v59, v60, v61, DisplaySize);
  }

  else
  {
    xmmword_1C6578 = vcvtq_u64_f64(*v68);
  }

  off_1C6618(dword_1C658C, dword_1C6588);
  v63 = qword_1C6608;
  if (!qword_1C6608 || *qword_1C6608 != 1 || (*(qword_1C6608 + 1) & 1) == 0 && (*(qword_1C6610 + 80 * dword_1C6600 - 80) & 1) == 0)
  {
LABEL_49:
    v68[0] = 0;
    if (pthread_create(v68, 0, sub_1BA68, 0))
    {
      v62 = "unable to create hot plug thread\n";
      goto LABEL_51;
    }

    pthread_detach(v68[0]);
    v63 = qword_1C6608;
    if (!qword_1C6608)
    {
      goto LABEL_52;
    }
  }

  v64 = sub_1BBC8(*(v63 + 9), *v63);
  if ((*qword_1C6608 & 1) == 0)
  {
    v65 = off_1C6618(dword_1C658C, dword_1C6588);
    off_1C6628(v65);
    sub_1A5C8();
  }

  if (*(qword_1C6610 + 80 * dword_1C6600 - 80) == 1 && v64 != 0)
  {
    goto LABEL_52;
  }
}

void sub_1ADA8()
{
  v0 = MGGetSInt32Answer();
  if (v0 == 3)
  {
    v9 = dword_1C658C;
    v8 = 80 * dword_1C658C;
    v10 = 239;
  }

  else if (v0 == 9)
  {
    v8 = (*(&xmmword_1C6578 + 1) * -0.06 + *(&xmmword_1C6578 + 1) * 0.5 + -45.0 + -2.0);
    v9 = dword_1C658C;
    v10 = 234;
  }

  else
  {
    v9 = dword_1C658C;
    v8 = 56 * dword_1C658C;
    v10 = 189;
  }

  v11 = v9 * v10;
  if (byte_1C6594)
  {
    v12 = MGGetSInt32Answer();
    dword_1C6590 = v12;
    if (v12 == 11)
    {
      v13 = 286;
    }

    else
    {
      v13 = 224;
    }

    if (v12 == 20)
    {
      v8 = 254;
    }

    else
    {
      v8 = v13;
    }
  }

  ramrod_log_msg("Progress Bar Y offset at %d, display class %d\n", v1, v2, v3, v4, v5, v6, v7, v8);
  if (dword_1C6588 > 179)
  {
    if (dword_1C6588 == 180)
    {
      dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
      unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
      dword_1C65A0 = (v11 + xmmword_1C6578) / 2;
      v14 = (*(&xmmword_1C6578 + 1) >> 1) - v8;
      v15 = xmmword_10A6B0;
    }

    else
    {
      if (dword_1C6588 != 270)
      {
        return;
      }

      dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
      unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
      dword_1C65A0 = v8 + (xmmword_1C6578 >> 1);
      v14 = (v11 + DWORD2(xmmword_1C6578)) / 2;
      v15 = xmmword_10A6A0;
    }
  }

  else if (dword_1C6588)
  {
    if (dword_1C6588 != 90)
    {
      return;
    }

    dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
    unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
    dword_1C65A0 = (xmmword_1C6578 >> 1) - v8;
    v14 = (DWORD2(xmmword_1C6578) - v11) / 2;
    v15 = xmmword_10A6C0;
  }

  else
  {
    dword_1C6598 = (xmmword_1C6578 - qword_1C6660) / 2;
    unk_1C659C = (DWORD2(xmmword_1C6578) - dword_1C6668) / 2;
    dword_1C65A0 = (xmmword_1C6578 - v11) / 2;
    v14 = v8 + (*(&xmmword_1C6578 + 1) >> 1);
    v15 = xmmword_10A6D0;
  }

  dword_1C65A4 = v14;
  *&dword_1C65A8 = v15;
  dword_1C65B8 = v11 - 4;
}

uint64_t sub_1B080(int a1, int a2)
{
  bzero(v13, 0x400uLL);
  if (sub_19DF8("/usr/share/progressui", "applelogo", a1, v13))
  {
    ramrod_log_msg("found applelogo at %s\n", v4, v5, v6, v7, v8, v9, v10, v13);
    sub_1A074(v13, &qword_1C6660, a2);
  }

  else
  {
    ramrod_log_msg("unable to find a suitable applelogo for this hardware\n", v4, v5, v6, v7, v8, v9, v10, v12);
  }

  return sub_1A25C(&qword_1C6660, 1);
}

void sub_1B154()
{
  pthread_once(&stru_1C46C0, sub_19798);
  if (qword_1C6670)
  {
    qword_1C6660 = 0;
    *&dword_1C6668 = 0;
    free(qword_1C6670);
    qword_1C6670 = 0;
  }
}

void sub_1B1AC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1 - *&qword_1C6678;
  if (a1 - *&qword_1C6678 < 0.0)
  {
    v9 = 0.0;
  }

  if (*&qword_1C6678 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = a1;
  }

  if (byte_1C6640 == 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = a1;
  }

  if (v11 * dword_1C65B8 / 100.0 >= dword_1C65B8)
  {
    v12 = dword_1C65B8;
  }

  else
  {
    v12 = v11 * dword_1C65B8 / 100.0;
  }

  if ((dword_1C46E0 & 0x80000000) == 0)
  {
    v13 = *(&unk_1C6538 + dword_1C46E0 + 20);
    v14 = *(&unk_1C6538 + dword_1C46E0 + 46);
    if (v14)
    {
      IOMobileFramebufferSwapWaitWithTimeout();
    }

    if ((dword_1C65C4 & 0x100) != 0)
    {
      v15 = IOSurfaceGetBytesPerRow(v13) >> 2;
      v23 = IOSurfaceGetBaseAddress(v13) + 4 * (dword_1C65A4 * v15);
      v24 = dword_1C658C;
      if (dword_1C658C < 5)
      {
        if (dword_1C658C <= 0)
        {
          ramrod_log_msg("Warning: Detected scale is X%d, Supported scales are 1 to %d. Going to use X1 as a fallback.\n", v16, v17, v18, v19, v20, v21, v22, dword_1C658C);
          v24 = 1;
        }
      }

      else
      {
        ramrod_log_msg("Warning: Detected scale is X%d, Supported scales are 1 to %d. Going to use X%d as a fallback.\n", v16, v17, v18, v19, v20, v21, v22, dword_1C658C);
        v24 = 4;
      }

      v25 = 0;
      v26 = 0;
      v44 = (4 * v24);
      v46 = *(&off_1A90F8 + 3 * (v24 - 1));
      v27 = *v46;
      v28 = -1;
      v47 = v27;
      while (1)
      {
        v29 = &dword_1C65CC;
        if (v11 <= 0.0)
        {
          v30 = *(v46 + 2);
          if (v30)
          {
            v29 = &dword_1C65CC;
            goto LABEL_28;
          }

          v29 = &dword_1C65D0;
        }

        v30 = *(v46 + 1);
LABEL_28:
        v45 = v23;
        v31 = &v23[4 * dword_1C65A0];
        if (v27)
        {
          v32 = *v29;
          v33 = (v30 + v25);
          do
          {
            v34 = *v33++;
            *v31 = sub_1B684(v34, v32);
            v31 += (*algn_1C65AC * v15) + dword_1C65A8;
            --v27;
          }

          while (v27);
        }

        if (dword_1C65B8 < 1)
        {
          v36 = v47;
        }

        else
        {
          v35 = 0;
          v36 = v47;
          do
          {
            v37 = &dword_1C65CC;
            if (v35 >= v12)
            {
              v37 = &dword_1C65D0;
            }

            *v31 = *v37;
            v31 += (*algn_1C65AC * v15) + dword_1C65A8;
            ++v35;
          }

          while (v35 < dword_1C65B8);
        }

        v38 = &dword_1C65CC;
        if (v11 < 100.0)
        {
          v39 = *(v46 + 2);
          if (v39)
          {
            v38 = &dword_1C65CC;
            if (v36)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

          v38 = &dword_1C65D0;
        }

        v39 = *(v46 + 1);
        if (v36)
        {
LABEL_44:
          v40 = *v38;
          v41 = v39 + v28;
          v42 = v47;
          do
          {
            *v31 = sub_1B684(*(v41 + v42), v40);
            v31 += (*algn_1C65AC * v15) + dword_1C65A8;
            --v42;
          }

          while (v42);
        }

LABEL_46:
        v23 = &v45[4 * *algn_1C65B4 * v15 + 4 * dword_1C65B0];
        ++v26;
        v27 = v47;
        v25 += v47;
        v28 += v47;
        if (v26 == v44)
        {
          goto LABEL_47;
        }
      }
    }

    ramrod_log_msg("Not updating screen progress since showprogress is set to false\n", v14, a4, a5, a6, a7, a8, a9, v43);
LABEL_47:

    sub_1A344();
  }
}

void sub_1B530()
{
  MGGetFloat32Answer();
  dword_1C658C = v0;
  MGGetFloat32Answer();
  v2 = v1;
  dword_1C6590 = MGGetSInt32Answer();
  v3 = MGGetSInt32Answer();
  ramrod_log_msg("display-boot-rotation = %d\n", v4, v5, v6, v7, v8, v9, v10, v3);
  v11 = v2 * 57.2957795;
  dword_1C6588 = (v3 - llroundf(v11) + 360) % 360;
  ramrod_log_msg("display-scale = %d\n", v12, v13, v14, v15, v16, v17, v18, dword_1C658C);
  ramrod_log_msg("display-rotation = %d\n", v19, v20, v21, v22, v23, v24, v25, dword_1C6588);
  if (dword_1C6588 > 179)
  {
    if (dword_1C6588 != 180 && dword_1C6588 != 270)
    {
      goto LABEL_7;
    }
  }

  else if (dword_1C6588 && dword_1C6588 != 90)
  {
LABEL_7:
    ramrod_log_msg("display-rotation value (%d) unsupported, not rotating images\n", v26, v27, v28, v29, v30, v31, v32, dword_1C6588);
    dword_1C6588 = 0;
  }
}

void sub_1B708()
{
  if (byte_1C6640 == 1)
  {
    v1 = dispatch_time(0, 1000000000);
    global_queue = dispatch_get_global_queue(2, 0);

    dispatch_after(v1, global_queue, &stru_1AD5F8);
  }
}

void sub_1B778(id a1)
{
  sub_1B708();
  pthread_mutex_lock(&stru_1C6538);
  v1 = *&qword_1C46D8;
  off_1C6630(v1);
  v2 = 1.0;
  if (*&qword_1C6678 == 0.0 || (v3 = *&qword_1C6678 + -1.0, v2 = 0.0, *&qword_1C6678 + -1.0 < 0.0))
  {
    v3 = v2;
  }

  qword_1C6678 = *&v3;

  pthread_mutex_unlock(&stru_1C6538);
}

void sub_1B808(__IOSurface *a1)
{
  if (a1)
  {
    v2 = BYTE2(dword_1C65C4);
    v3 = *(&dword_1C65C4 + 3);
    BaseAddress = IOSurfaceGetBaseAddress(a1);
    AllocSize = IOSurfaceGetAllocSize(a1);
    __pattern4 = (__PAIR64__(v2, bswap32(v3)) >> 16) | 0xFF000000;
    memset_pattern4(BaseAddress, &__pattern4, AllocSize);
  }
}

void sub_1B880(__IOSurface *a1, uint64_t *a2, int a3, int a4)
{
  v8 = xmmword_1C6578;
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  BaseAddress = IOSurfaceGetBaseAddress(a1);
  v18 = *a2;
  if (*a2)
  {
    v19 = a2[1];
    if ((v19 + a4) > *(&v8 + 1) || v18 + a3 > v8)
    {
      dword_1C6680 = a3;
      dword_1C6688 = a4;
      qword_1C6698 = v18;
      qword_1C6690 = v19;

      pthread_once(&stru_1C46E8, sub_1B9CC);
    }

    else if (v19)
    {
      v21 = 0;
      v22 = a2[2];
      do
      {
        v23 = &BaseAddress[4 * a3 + ((v21 + a4) * BytesPerRow)];
        v24 = v18;
        do
        {
          v25 = *v22++;
          *v23 = v25;
          v23 += 4;
          --v24;
        }

        while (v24);
        ++v21;
      }

      while (v21 != v19);
    }
  }

  else
  {
    ramrod_log_msg("%s: can't blit - image x offset greater that width [%d > %zu]\n", v11, v12, v13, v14, v15, v16, v17, "display_blit_raw_image_to_buffer_limit");
  }
}

void sub_1B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  ramrod_log_msg("Can't blit image into display buffer since it overflows the display size!\n", a2, a3, a4, a5, a6, a7, a8, v37);
  ramrod_log_msg("Here is some image and display information to debug your overflow issue:\n", v9, v10, v11, v12, v13, v14, v15, v38);
  ramrod_log_msg("Display Info: width=%zu height=%zu\n", v16, v17, v18, v19, v20, v21, v22, xmmword_1C6578);
  ramrod_log_msg("Image Info: xoff=%d yoff=%d height=%zu width=%zu\n", v23, v24, v25, v26, v27, v28, v29, dword_1C6680);

  ramrod_log_msg("This message will only be logged once for all failed blits!\n", v30, v31, v32, v33, v34, v35, v36, a9);
}

uint64_t sub_1BA68()
{
  Current = CFRunLoopGetCurrent();
  ramrod_log_msg("starting display hot plug thread\n", v1, v2, v3, v4, v5, v6, v7, v27);
  if (dword_1C6600 < 1)
  {
    goto LABEL_11;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    if ((*(qword_1C6610 + v15) & 1) == 0)
    {
      RunLoopSource = IOMobileFramebufferGetRunLoopSource();
      if (RunLoopSource)
      {
        CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
        if (IOMobileFramebufferEnableHotPlugDetectNotifications())
        {
          ramrod_log_msg("unable to register for hot plug notifications on %s: 0x%x\n", v8, v9, v10, v11, v12, v13, v14, qword_1C6610 + v15 + 2);
        }

        else
        {
          ++v17;
        }
      }
    }

    ++v16;
    v15 += 80;
  }

  while (v16 < dword_1C6600);
  if (v17 <= 0)
  {
LABEL_11:
    ramrod_log_msg("no external displays registered for hot plug notifications\n", v8, v9, v10, v11, v12, v13, v14, v28);
  }

  else
  {
    ramrod_log_msg("listening for hot plug notifications from %d display%s\n", v8, v9, v10, v11, v12, v13, v14, v17);
    CFRunLoopRun();
  }

  ramrod_log_msg("display hot plug thread exiting\n", v19, v20, v21, v22, v23, v24, v25, v29);
  return 0;
}

uint64_t sub_1BBC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    v82 = 0;
    v10 = IOMobileFramebufferSetDisplayDevice();
    if (v10)
    {
      ramrod_log_msg("unable to set display device: 0x%x\n", v11, v12, v13, v14, v15, v16, v17, v10);
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v83 = 0;
      SupportedDigitalOutModes = IOMobileFramebufferGetSupportedDigitalOutModes();
      if (SupportedDigitalOutModes)
      {
        ramrod_log_msg("unable to get color and timing modes: 0x%x\n", v62, v63, v64, v65, v66, v67, v68, SupportedDigitalOutModes);
      }

      else
      {
        ramrod_log_msg("NULL timing (%p) modes\n", v62, v63, v64, v65, v66, v67, v68, 0);
      }
    }

    return 0xFFFFFFFFLL;
  }

  DisplaySize = IOMobileFramebufferGetDisplaySize();
  if (DisplaySize)
  {
    ramrod_log_msg("unable to get display size: 0x%x\n", v3, v4, v5, v6, v7, v8, v9, DisplaySize);
    return 0xFFFFFFFFLL;
  }

  xmmword_1C6578 = vcvtq_u64_f64(0);
  byte_1C65FC = 1;
  ramrod_log_msg("display: %zu x %zu\n", v3, v4, v5, v6, v7, v8, v9, xmmword_1C6578);
  off_1C6628();
  for (i = 0; i != 3; ++i)
  {
    v19 = xmmword_1C6578;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      *(&unk_1C6538 + i + 20) = 0;
LABEL_20:
      ramrod_log_msg("unable to create display buffer %i\n", v21, v22, v23, v24, v25, v26, v27, i);
      return 0xFFFFFFFFLL;
    }

    v28 = Mutable;
    sub_1CA58(Mutable, kIOSurfaceBytesPerRow, (4 * v19 + 63) & 0xFFFFFFC0);
    sub_1CA58(v28, kIOSurfaceWidth, v19);
    sub_1CA58(v28, kIOSurfaceHeight, SDWORD2(v19));
    sub_1CA58(v28, kIOSurfacePixelFormat, 1111970369);
    sub_1CA58(v28, kIOSurfaceBytesPerElement, 4);
    if ((_get_cpu_capabilities() & 0x800) != 0)
    {
      v29 = 1792;
    }

    else
    {
      v29 = 1024;
    }

    sub_1CA58(v28, kIOSurfaceCacheMode, v29);
    v30 = IOSurfaceCreate(v28);
    CFRelease(v28);
    *(&unk_1C6538 + i + 20) = v30;
    if (!v30)
    {
      goto LABEL_20;
    }

    if (IOSurfaceLock(v30, 0, 0))
    {
      ramrod_log_msg("unable to lock display buffer %i: 0x%x\n", v31, v32, v33, v34, v35, v36, v37, i);
      return 0xFFFFFFFFLL;
    }
  }

  sub_1B808(qword_1C65E8);
  sub_1A5C8();
  v81[0] = 128;
  v38 = sysctlbyname("hw.target", &unk_1C66A0, v81, 0, 0);
  ramrod_log_msg("%s: HW.target returned: %s\n", v39, v40, v41, v42, v43, v44, v45, "skip_display_poweron_for_device");
  if (!v38)
  {
    v69 = MGCopyAnswer();
    if (v69)
    {
      v70 = v69;
      CFStringGetCStringPtr(v69, 0x8000100u);
      ramrod_log_msg("%s: DeviceName is: %s\n", v71, v72, v73, v74, v75, v76, v77, "skip_display_poweron_for_device");
      v78 = CFStringCompare(@"Apple Display", v70, 1uLL);
      CFRelease(v70);
      if (v78 == kCFCompareEqualTo)
      {
        ramrod_log_msg("Display-less device detected. Skipping poweron entirely\n", v46, v47, v48, v49, v50, v51, v52, v80);
        return 0xFFFFFFFFLL;
      }
    }
  }

  ramrod_log_msg("powering on display\n", v46, v47, v48, v49, v50, v51, v52, v80);
  v53 = IOMobileFramebufferRequestPowerChange();
  if (v53)
  {
    ramrod_log_msg("IOMobileFramebufferRequestPowerChange failed: %x\n", v54, v55, v56, v57, v58, v59, v60, v53);
    return 0xFFFFFFFFLL;
  }

  IOMobileFramebufferSwapWait();
  result = 0;
  dword_1C46E0 = 0;
  return result;
}

void sub_1C314()
{
  v0 = 0;
  xmmword_1C6578 = 0uLL;
  do
  {
    v1 = (&unk_1C6538 + v0);
    v2 = *(&unk_1C6538 + v0 + 160);
    if (v2)
    {
      IOSurfaceUnlock(v2, 0, 0);
      CFRelease(v1[20]);
      v1[20] = 0;
    }

    v0 += 8;
  }

  while (v0 != 24);
  dword_1C46E0 = -1;
}

CFIndex sub_1C38C(const __CFArray *a1, int a2)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (*(ValueAtIndex + 2) == a2)
      {
        v7 = (qword_1C6610 + 80 * dword_1C6600);
        if (!CFStringGetCString(*ValueAtIndex, v7 + 2, 64, 0x8000100u))
        {
          __strlcpy_chk();
        }

        ramrod_log_msg("found display: %s\n", v8, v9, v10, v11, v12, v13, v14, v7 + 2);
        v15 = IOMobileFramebufferOpenByName();
        if (v15)
        {
          ramrod_log_msg("unable to open framebuffer: 0x%x\n", v16, v17, v18, v19, v20, v21, v22, v15);
        }

        else
        {
          ++dword_1C6600;
          v7[1] = 0;
          *v7 = a2 == 0;
          v31 = 0;
          if (!a2)
          {
            v30 = 1;
            v31 = 1;
LABEL_13:
            v7[1] = v30 == 1;
            if (v30 == 1 && !qword_1C6608)
            {
              qword_1C6608 = v7;
              ramrod_log_msg("Will use display %s\n", v16, v17, v18, v19, v20, v21, v22, v7 + 2);
              LOBYTE(v30) = v31;
            }

            ramrod_log_msg("Display state is %d\n", v16, v17, v18, v19, v20, v21, v22, v30);
            goto LABEL_17;
          }

          if (!IOMobileFramebufferGetDigitalOutState())
          {
            v30 = 0;
            goto LABEL_13;
          }

          ramrod_log_msg("%s: Failed to query digital out state %08x\n", v16, v17, v18, v19, v20, v21, v22, "get_display_state");
          ramrod_log_msg("Unable to get state of %s\n", v23, v24, v25, v26, v27, v28, v29, v7 + 2);
        }
      }

LABEL_17:
      result = CFArrayGetCount(a1);
    }
  }

  return result;
}

uint64_t sub_1C554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  ramrod_log_msg("%s: display %s %s\n", a2, a3, a4, a5, a6, a7, a8, "display_hot_plug");
  v11 = pthread_mutex_lock(&unk_1C6538);
  v19 = qword_1C6608;
  if (!a2)
  {
    *(v8 + 1) = 0;
    if (v19 == v8)
    {
      ramrod_log_msg("%s: %s was active", v12, v13, v14, v15, v16, v17, v18, "display_hot_plug");
    }

    else if (v19)
    {
      goto LABEL_17;
    }

    v20 = dword_1C6600;
    v8 = qword_1C6610;
    if (dword_1C6600 < 1)
    {
LABEL_13:
      if (*qword_1C6610 != 1)
      {
        v19 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v21 = qword_1C6610 + 2;
      while (*(v21 - 1) != 1)
      {
        v21 += 80;
        if (!--v20)
        {
          goto LABEL_13;
        }
      }

      v8 = v21 - 2;
    }

    goto LABEL_16;
  }

  *(v8 + 1) = 1;
  if (!v19 || (v19[1] & 1) == 0)
  {
LABEL_16:
    ramrod_log_msg("%s: Will use %s\n", v12, v13, v14, v15, v16, v17, v18, "display_hot_plug");
    v19 = v8;
  }

LABEL_17:
  if (qword_1C6608 != v19)
  {
    if (qword_1C6608)
    {
      if (*qword_1C6608 == 1 && dword_1C46E0 != -1)
      {
        v23 = *(&unk_1C6538 + dword_1C46E0 + 20);
        if (v23)
        {
          sub_1B808(v23);
          sub_1A344();
        }
      }

      sub_1C314();
    }

    qword_1C6608 = v19;
    if (v19)
    {
      v24 = *v19;
      if (v24 == 1)
      {
        off_1C6638(v11);
        v24 = *qword_1C6608;
      }

      if (!sub_1BBC8(a1, v24))
      {
        v25 = off_1C6618(dword_1C658C, dword_1C6588);
        off_1C6628(v25);
        sub_1A5C8();
        if (*&qword_1C46D8 != -1.0)
        {
          off_1C6630(*&qword_1C46D8);
        }
      }
    }
  }

  return pthread_mutex_unlock(&unk_1C6538);
}

const __CFNumber *sub_1C764(const __CFDictionary *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  Value = CFDictionaryGetValue(a1, @"HorizontalAttributes");
  v11 = CFDictionaryGetValue(a1, @"VerticalAttributes");
  if (Value)
  {
    v12 = CFDictionaryGetValue(Value, @"Active");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v13, kCFNumberIntType, a2);
      }
    }
  }

  if (v11)
  {
    valuePtr = 0;
    v15 = CFDictionaryGetValue(v11, @"Active");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberIntType, a3);
      }
    }

    v18 = CFDictionaryGetValue(v11, @"SyncRate");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
        *a4 = ((valuePtr * 0.000015259) + 0.5);
      }
    }
  }

  result = CFDictionaryGetValue(a1, @"Score");
  if (result)
  {
    v22 = result;
    v23 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v23 == result)
    {
      return CFNumberGetValue(v22, kCFNumberIntType, a5);
    }
  }

  return result;
}

uint64_t sub_1C90C(uint64_t a1, SInt32 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v13 = "can't fetch NVRAM value with NULL key\n";
LABEL_8:
    ramrod_log_msg(v13, a2, a3, a4, a5, a6, a7, a8, v28);
    return 2;
  }

  if (!a2)
  {
    v13 = "can't load nil pointer with NVRAM value\n";
    goto LABEL_8;
  }

  v9 = ramrod_copy_NVRAM_variable(a1, 0);
  if (v9)
  {
    v10 = v9;
    valuePtr = -1;
    v11 = CFGetTypeID(v9);
    if (v11 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v10);
    }

    else if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
      IntValue = valuePtr;
    }

    else
    {
      if (v11 != CFDataGetTypeID())
      {
        ramrod_log_msg("can't convert unsupported CFType to int\n", v15, v16, v17, v18, v19, v20, v21, v28);
        goto LABEL_19;
      }

      BytePtr = CFDataGetBytePtr(v10);
      if (!BytePtr)
      {
        goto LABEL_19;
      }

      v23 = BytePtr;
      Length = CFDataGetLength(v10);
      v25 = CFStringCreateWithBytes(kCFAllocatorDefault, v23, Length, 0x8000100u, 0);
      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = v25;
      IntValue = CFStringGetIntValue(v25);
      CFRelease(v26);
    }

    if (IntValue != -1)
    {
      v14 = 0;
      *a2 = IntValue;
LABEL_20:
      CFRelease(v10);
      return v14;
    }

LABEL_19:
    v14 = 3;
    goto LABEL_20;
  }

  return 2;
}

void sub_1CA58(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t create_bound_socket(sockaddr *a1, int a2, int a3, int a4, int a5)
{
  v13 = 1;
  v8 = socket(a1->sa_family, a2, a3);
  v9 = v8;
  if (v8 == -1)
  {
    perror("unable to create socket");
    return v9;
  }

  if (a4)
  {
    setsockopt(v8, 0xFFFF, 4, &v13, 4u);
  }

  if (bind(v9, a1, a1->sa_len) == -1)
  {
    v11 = "bind failed";
LABEL_11:
    perror(v11);
    close(v9);
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    sa_len = a1->sa_len;
    if (getsockname(v9, a1, &sa_len) == -1)
    {
      v11 = "getsockname failed";
      goto LABEL_11;
    }
  }

  return v9;
}

uint64_t create_listen_socket_sigpipe(_WORD *a1, int a2)
{
  v4 = *a1;
  v5 = *a1 != 0;
  v19 = 0;
  v18 = 0;
  v20 = 0;
  v16 = 7708;
  v17 = __rev16(v4);
  bound_socket = create_bound_socket(&v16, 1, 0, v5, v4 == 0);
  if (bound_socket == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = bound_socket;
  if (listen(bound_socket, 128) == -1)
  {
    perror("listen failed");
    close(v7);
    return 0xFFFFFFFFLL;
  }

  if (qword_1C6768 != -1)
  {
    sub_D64AC();
  }

  ramrod_socket_set_idle_timeouts_passive(v7, qword_1C6760);
  ramrod_socket_set_nosigpipe(v7, a2 ^ 1);
  bzero(v21, 0x401uLL);
  ramrod_socket_sockaddr_to_string(v21, 0x401uLL, &v16, "<unknown>");
  ramrod_log_msg("sock %3d: listening on %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
  if (!v4)
  {
    *a1 = bswap32(v17) >> 16;
  }

  return v7;
}

uint64_t accept_socket_connection(int a1, char a2, void *a3)
{
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0;
  v51 = 0u;
  v39 = 128;
  v5 = accept(a1, &v50, &v39);
  if (v5 == -1)
  {
    perror("accept failed");
    return v5;
  }

  if (a3)
  {
    arc4random_buf(a3, 8uLL);
    resume_socket_guard(v5, a3);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0;
  v43 = 0u;
  v38 = 128;
  getsockname(v5, &v42, &v38);
  bzero(v41, 0x401uLL);
  bzero(v40, 0x401uLL);
  ramrod_socket_sockaddr_to_string(v41, 0x401uLL, &v50, "<unknown>");
  ramrod_socket_sockaddr_to_string(v40, 0x401uLL, &v42, "<unknown>");
  ramrod_log_msg("sock %3d: accepted %s <- %s (from %d)\n", v6, v7, v8, v9, v10, v11, v12, v5);
  if (qword_1C6768 != -1)
  {
    sub_D64AC();
  }

  ramrod_socket_set_idle_timeouts_active(v5, qword_1C6760);
  v13 = a2 & 3;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      return v5;
    }

    v14 = 2;
  }

  else
  {
    v14 = v13 == 0;
  }

  if (sub_1E490(&v50))
  {
    ramrod_log_msg("sock %3d: shutdown(%s) skipped for loopback address\n", v15, v16, v17, v18, v19, v20, v21, v5);
  }

  else if (shutdown(v5, v14))
  {
    v29 = __error();
    strerror(*v29);
    ramrod_log_msg("sock %3d: shutdown(%s) failed: %s (%d)\n", v30, v31, v32, v33, v34, v35, v36, v5);
  }

  else
  {
    ramrod_log_msg("sock %3d: shutdown(%s) complete\n", v22, v23, v24, v25, v26, v27, v28, v5);
  }

  return v5;
}

void resume_socket_guard(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (change_fdguard_np() == -1)
    {
      sub_D64D4();
    }
  }
}

unint64_t register_main_connection(dispatch_source_t source)
{
  v1 = source;
  if (source)
  {
    handle = dispatch_source_get_handle(source);
    v10 = 0;
    atomic_compare_exchange_strong(&qword_1C6720, &v10, v1);
    if (v10)
    {
      v12 = v10 == v1;
      v1 = v10 == v1;
      if (v12)
      {
        v11 = "sock %3d: already main connection\n";
      }

      else
      {
        v11 = "sock %3d: rejected duplicate main connection\n";
      }
    }

    else
    {
      dispatch_retain(v1);
      v1 = 1;
      v11 = "sock %3d: became main connection\n";
    }

    ramrod_log_msg(v11, v2, v3, v4, v5, v6, v7, v8, handle);
  }

  return v1;
}

void suspend_socket_guard(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (change_fdguard_np() == -1)
    {
      sub_D64D4();
    }
  }
}

uint64_t close_socket_with_message(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    ramrod_socket_log_statistics(a1);
  }

  ramrod_log_msg("sock %3d: %s\n", a2, a3, a4, a5, a6, a7, a8, a1);
  if (a2)
  {
    result = guarded_close_np();
    if (result == -1)
    {
      sub_D64D4();
      return 0xFFFFFFFFLL;
    }
  }

  else
  {

    return close(a1);
  }

  return result;
}

uint64_t close_socket_with_result(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    ramrod_socket_reset_on_close(a1);
    v10 = "closed with explicit RST";
  }

  else
  {
    v10 = "closed";
  }

  return close_socket_with_message(a1, a2, v10, 1, a5, a6, a7, a8);
}

uint64_t init_ramdisk_sysctls()
{
  if (sub_1D284("vm.shared_region_trace_level", 0))
  {
    checkpoint_monitor_step(517, "region_spew_failed", 0xFFFFFFFFLL, 0, v0, v1, v2, v3);
  }

  sub_1D284("net.inet.log_restricted", 1);
  sub_1D284("net.inet.tcp.disable_access_to_stats", 0);
  if (qword_1C6768 != -1)
  {
    sub_D64F4();
  }

  v4 = qword_1C6760;
  sub_1D284("net.inet.tcp.keepinit", 1000 * *qword_1C6760);
  sub_1D284("net.inet.tcp.keepidle", 1000 * v4[1]);
  sub_1D284("net.inet.tcp.keepintvl", 1000 * v4[2]);
  sub_1D284("net.inet.tcp.keepcnt", v4[3]);
  sub_1D284("net.inet.tcp.always_keepalive", 1);
  return 0;
}

uint64_t sub_1D284(const char *a1, int a2)
{
  v2 = a1;
  v21 = 0;
  v22 = a2;
  v20 = 4;
  if (sysctlbyname(a1, &v21, &v20, &v22, 4uLL))
  {
    v10 = __error();
    v11 = *v10;
    strerror(*v10);
    ramrod_log_msg("%s: %s (%d)\n", v12, v13, v14, v15, v16, v17, v18, v2);
  }

  else
  {
    ramrod_log_msg("%s: %d -> %d\n", v3, v4, v5, v6, v7, v8, v9, v2);
    return 0;
  }

  return v11;
}

void log_ramdisk_network_stats()
{
  bzero(v24, 0x390uLL);
  v23 = 912;
  if (sysctlbyname("net.inet.tcp.stats", v24, &v23, 0, 0))
  {
    v7 = __error();
    strerror(*v7);
    ramrod_log_msg("%s: %s (%d)", v8, v9, v10, v11, v12, v13, v14, "net.inet.tcp.stats");
  }

  else
  {
    ramrod_log_msg("\n", v0, v1, v2, v3, v4, v5, v6, v22);
    ramrod_log_msg("TCP connection statistics:\n    connected: %u\n    accepted: %u\n    dropped: %u\n    rxmit timeouts: %u\n    keepalive timeouts: %u\n\n", v15, v16, v17, v18, v19, v20, v21, v24[8]);
    ramrod_log_msg("TCP packet statistics:\n    total pkts in/out: %u/%u\n    seq pkts in/out: %u/%u\n    ack pkts in/out: %u/%u\n    ooo pkts in: %u (%u bytes)\n    rxmit pkts out: %u (%u bytes)\n    rcvbadsum: %u\n    rcvbadoff: %u\n    rcvmemdrop: %u\n    rcvshort: %u\n    rcvduppack: %u\n    rcvpartduppack: %u\n    fcholdpacket: %u\n    reordered_pkts: %u\n    recovered_pkts: %u\n\n", v25, v26, v27, v29, v28, v30, v31, v24[100]);
  }
}

uint64_t sub_1D4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  ramrod_kickstart_usbcretimer(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  ramrod_kickstart_aces(v10, v11, v12, v13, v14, v15, v16, v17, v27);
  if (ramrod_execute_command(a1))
  {
    ramrod_log_msg("unable to %s - exiting\n", v18, v19, v20, v21, v22, v23, v24, v8);
    exit(1);
  }

  ramrod_log_msg("%s in progress, hanging\n", v18, v19, v20, v21, v22, v23, v24, v8);

  return select(0, 0, 0, 0, 0);
}

id usb_speed_in_mbps_for_service(io_registry_entry_t a1)
{
  v1 = IORegistryEntrySearchCFProperty(a1, "IOService", @"CurrentState", 0, 3u);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [v1 objectForKeyedSubscript:@"OnBus"];
  v3 = [v1 objectForKeyedSubscript:@"DeviceState"];
  v4 = [v1 objectForKeyedSubscript:@"SelectedConfiguration"];
  v5 = [v1 objectForKeyedSubscript:@"ConnectionSpeed"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v2 BOOLValue], result))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v3 integerValue]) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v4 integerValue]) != 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v5 integerValue];
          if (v7 + 1 > 4)
          {
            return &loc_2710;
          }

          else
          {
            return dword_10A7A0[v7 + 1];
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t enable_usb_connections(int a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a1)
  {
    v3 = @"standardRestore";
  }

  else
  {
    v3 = @"emptyComposite";
  }

  v4 = " (async)";
  if (a2)
  {
    v4 = " (blocking)";
  }

  ramrod_log_msg_cf(@"enabling USB%s with description: %@\n", v4, v3);
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D8AC;
  block[3] = &unk_1A9210;
  block[4] = v3;
  dispatch_sync(qword_1C6770, block);
  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3254779904;
    v7[2] = sub_1DC68;
    v7[3] = &unk_1AD618;
    v7[4] = &v9;
    dispatch_sync(qword_1C6748, v7);
  }

  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1D8AC(uint64_t a1)
{
  v1 = qword_1C6728;
  v2 = dword_1C6730;
  notification = dword_1C6730;
  if (!dword_1C6730)
  {
    v3 = a1;
    v4 = IOServiceMatching("IOUSBDeviceController");
    a1 = IOServiceAddMatchingNotification(v1, "IOServiceFirstMatch", v4, sub_1D94C, 0, &notification);
    v2 = notification;
    dword_1C6730 = notification;
    qword_1C6738 = *(v3 + 32);
  }

  dword_1C6740 = 0;
  sub_1D94C(a1, v2);
}

void sub_1D94C(uint64_t a1, io_iterator_t a2)
{
  if (qword_1C6778 != -1)
  {
    sub_D6530();
  }

  dispatch_assert_queue_V2(qword_1C6770);
  v32 = qword_1C6758;
  v3 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = sub_1EB80(v5, "appeared");
      refCon = 0;
      v7 = IOUSBDeviceControllerCreateWithService();
      if (v7)
      {
        mach_error_string(v7);
        ramrod_log_msg("[%#llx] unable to create USB device controller: %s (%#x)\n", v8, v9, v10, v11, v12, v13, v14, v6);
      }

      else
      {
        ramrod_log_msg_cf(@"[%#llx] created %@\n", v6, refCon);
        notification = 0;
        v15 = IOServiceAddInterestNotification(qword_1C6728, v5, "IOGeneralInterest", sub_1EBEC, refCon, &notification);
        if (v15)
        {
          mach_error_string(v15);
          ramrod_log_msg("[%#llx] unable to register for terminate events: %s (%#x)\n", v16, v17, v18, v19, v20, v21, v22, v6);
        }

        else
        {
          v23 = refCon;
          [v32 addObject:refCon];
          Service = IOUSBDeviceControllerGetService();
          if (IOObjectConformsTo(Service, "AppleUSBVHCIDeviceController"))
          {
            v25 = v33;
          }

          else
          {
            v25 = v3;
          }

          [v25 addObject:v23];
        }

        CFRelease(refCon);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v3);
        }

        sub_1EC98(*(*(&v35 + 1) + 8 * i));
      }

      v27 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v27);
  }

  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  v30 = qword_1C6770;
  v31 = qword_1C6780;
  if ([v3 count])
  {
    v31 = dispatch_time(0, 10000000000);
    qword_1C6780 = v31;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_1EF64;
  block[3] = &unk_1AD6B8;
  block[4] = v33;
  dispatch_after(v31, v30, block);
}

uint64_t set_usb_forced_off_bus(char a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = sub_1DD74;
  v4[3] = &unk_1AD648;
  v5 = a1;
  v4[4] = &v6;
  dispatch_sync(qword_1C6770, v4);
  v2 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

id sub_1DD74(uint64_t a1)
{
  byte_1C6750 = *(a1 + 40);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = qword_1C6758;
  result = [qword_1C6758 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = sub_1DE80(*(*(&v8 + 1) + 8 * v6), *(a1 + 40));
        if (v7)
        {
          *(*(*(a1 + 32) + 8) + 24) = v7;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1DE80(uint64_t a1, int a2)
{
  Service = IOUSBDeviceControllerGetService();
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(Service, &entryID);
  v4 = entryID;
  v5 = IOUSBDeviceControllerForceOffBus();
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = "force off";
    }

    else
    {
      v7 = "go on";
    }

    v8 = mach_error_string(v5);
    ramrod_log_msg_cf(@"[%#llx] unable to %s bus: %s", v4, v7, v8);
  }

  return v6;
}

uint64_t stash_USB_debug_log()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_1DFDC;
  block[3] = &unk_1AD618;
  block[4] = &v3;
  dispatch_sync(qword_1C6770, block);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

char *sub_1DFDC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = qword_1C6758;
  result = [qword_1C6758 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        Service = IOUSBDeviceControllerGetService();
        entryID = 0;
        IORegistryEntryGetRegistryEntryID(Service, &entryID);
        v8 = entryID;
        v9 = IOUSBDeviceControllerSendCommand();
        if (v9)
        {
          v10 = v9;
          v11 = mach_error_string(v9);
          ramrod_log_msg_cf(@"[%#llx] %@ failed: %s (%#x)\n", v8, @"StoreDriverDebugLog", v11, v10);
          *(*(*(a1 + 32) + 8) + 24) = v10;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t wait_for_physical_disconnect()
{
  result = sub_1E180(0);
  if (result)
  {
    v1 = result;
    do
    {
      usleep(0xFAu);
      CFRelease(v1);
      result = sub_1E180(0);
      v1 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1E180(_DWORD *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (qword_1C6778 != -1)
  {
    sub_D6508();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = sub_1F064;
  v4[3] = &unk_1AD6E8;
  v4[4] = &v9;
  v4[5] = &v5;
  dispatch_sync(qword_1C6770, v4);
  v2 = v10[3];
  if (a1 && v2)
  {
    *a1 = *(v6 + 6);
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

id bus_speed_in_mbps_for_socket(int a1)
{
  if (!ramrod_getsockopt_int(a1, 6, 516, 0xFFFFFFFF))
  {
    *&v15.sa_len = 0;
    v3 = sub_1E180(&v15);
    if (v3)
    {
      CFRelease(v3);
      return *&v15.sa_len;
    }

    return 0;
  }

  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0;
  v11 = 128;
  if (getsockname(a1, &v15, &v11) || sub_1E490(&v15))
  {
    return 0;
  }

  if (v15.sa_family == 2)
  {
    v5 = 0;
    goto LABEL_12;
  }

  if (v15.sa_family != 30)
  {
    return 0;
  }

  v2 = DWORD2(v16);
  if (!DWORD2(v16))
  {
    v5 = 41;
LABEL_12:
    v2 = ramrod_getsockopt_int(a1, v5, 9696, 0);
    *bsdName = 0;
    v13 = 0;
    v14 = 0;
    if (v2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  *bsdName = 0;
  v13 = 0;
  v14 = 0;
LABEL_13:
  if (if_indextoname(v2, bsdName) != bsdName)
  {
    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  __strlcpy_chk();
  if (ioctl(a1, 0xC02069DEuLL, &v23) || !v24 || ioctl(a1, 0xC020699FuLL, &v23) || v24 != 6 || DWORD2(v24) != 1 || (v7 = IOBSDNameMatching(kIOMasterPortDefault, 0, bsdName), (MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7)) == 0) || (v9 = MatchingService, v4 = usb_speed_in_mbps_for_service(MatchingService), IOObjectRelease(v9), !v4))
  {
    v10 = sub_1E50C(a1);
    if (v10)
    {
      return v10;
    }

    return 0;
  }

  return v4;
}

BOOL sub_1E490(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 1)
  {
    return 1;
  }

  if (v1 != 30)
  {
    if (v1 == 2)
    {
      v2 = *(a1 + 4);
      return v2 == 127;
    }

    return 0;
  }

  if (*(a1 + 8) || *(a1 + 12))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4 == -65536)
  {
    LOBYTE(v2) = *(a1 + 20);
    goto LABEL_15;
  }

  if (v4)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  if (!v2)
  {
    return 0;
  }

  if (v2 != 0x1000000)
  {
LABEL_15:
    v2 = v2;
    return v2 == 127;
  }

  return 1;
}

unint64_t sub_1E50C(int a1)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  __strlcpy_chk();
  if (ioctl(a1, 0xC0F06992uLL, v5))
  {
    return 0;
  }

  v3 = *(&v7 + 1);
  if (*(&v7 + 1) && *(&v6 + 1))
  {
    if (*(&v7 + 1) >= *(&v6 + 1))
    {
      v3 = *(&v6 + 1);
    }
  }

  else
  {
    if (*(&v6 + 1))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(&v7 + 1);
    }

    if (*(&v7 + 1))
    {
      v3 = v4;
    }

    else
    {
      v3 = *(&v6 + 1);
    }
  }

  return v3 / 0xF4240;
}

CFPropertyListRef create_dictionary_from_plist(const char *a1, CFErrorRef *a2)
{
  v3 = a1;
  v4 = open(a1, 0);
  if (v4 != -1)
  {
    v5 = v4;
    memset(&v79, 0, sizeof(v79));
    if (fstat(v4, &v79) == -1)
    {
      v38 = __error();
      v39 = strerror(*v38);
      ramrod_log_msg("unable get plist stat information: %s\n", v40, v41, v42, v43, v44, v45, v46, v39);
      v47 = kCFErrorDomainPOSIX;
      v48 = *__error();
      v52 = @"%s: unable to stat plist";
    }

    else
    {
      st_size = v79.st_size;
      v7 = malloc(v79.st_size);
      if (v7)
      {
        v8 = v7;
        if (read(v5, v7, st_size) == st_size)
        {
          v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v8, st_size, kCFAllocatorNull);
          if (v9)
          {
            v17 = v9;
            v25 = CFPropertyListCreateWithData(kCFAllocatorDefault, v9, 0, 0, a2);
            if (!v25)
            {
              ramrod_log_msg("plist is not valid\n", v18, v19, v20, v21, v22, v23, v24, 0);
            }

            CFRelease(v17);
            goto LABEL_16;
          }

          ramrod_log_msg("unable to create data from plist bytes\n", v10, v11, v12, v13, v14, v15, v16, 0);
          ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFData from plist bytes", v75, v76, v77, "create_dictionary_from_plist");
        }

        else
        {
          v62 = __error();
          v63 = strerror(*v62);
          ramrod_log_msg("unable to read plist contents from file: %s\n", v64, v65, v66, v67, v68, v69, v70, v63);
          v71 = *__error();
          ramrod_create_error_cf(a2, kCFErrorDomainPOSIX, v71, 0, @"%s: plist read failed", v72, v73, v74, "create_dictionary_from_plist");
        }

        v25 = 0;
LABEL_16:
        free(v8);
        goto LABEL_17;
      }

      v53 = __error();
      v54 = strerror(*v53);
      ramrod_log_msg("unable to malloc buffer for plist contents: %s\n", v55, v56, v57, v58, v59, v60, v61, v54);
      v47 = kCFErrorDomainPOSIX;
      v48 = *__error();
      v52 = @"%s: malloc failed plist (size = %zd)";
    }

    ramrod_create_error_cf(a2, v47, v48, 0, v52, v49, v50, v51, "create_dictionary_from_plist");
    v25 = 0;
LABEL_17:
    close(v5);
    return v25;
  }

  v26 = __error();
  strerror(*v26);
  ramrod_log_msg("unable to open %s: %s\n", v27, v28, v29, v30, v31, v32, v33, v3);
  v34 = __error();
  ramrod_create_error_cf(a2, kCFErrorDomainPOSIX, *v34, 0, @"%s: unable to open plist", v35, v36, v37, "create_dictionary_from_plist");
  return 0;
}

uint64_t get_BOOLean_option(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (!a1)
  {
    return v3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return v3;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFBooleanGetTypeID())
  {
    v9 = CFGetTypeID(v6);
    if (v9 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *buffer = 0u;
      v19 = 0u;
      CFStringGetCString(a2, buffer, 255, 0x8000100u);
      ramrod_log_msg("%s: option '%s' has non-BOOLean value, using default\n", v10, v11, v12, v13, v14, v15, v16, "get_BOOLean_option");
    }

    return v3;
  }

  return CFBooleanGetValue(v6);
}

void sub_1EA1C(id a1)
{
  qword_1C6760 = "\b";
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 64;
  if (!sysctlbyname("hw.target", __big, &v1, 0, 0) && (strcasestr(__big, "fpga") || strcasestr(__big, "sim")))
  {
    qword_1C6760 = &RAMROD_SOCKET_TIMEOUTS_FPGA;
  }
}

void sub_1EAE4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_1C6770 = dispatch_queue_create("com.apple.ramrod.IOUSBDeviceController.queue", v1);
  qword_1C6758 = objc_alloc_init(NSMutableArray);
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  qword_1C6748 = dispatch_queue_create_with_target_V2("com.apple.ramrod.IOUSBDeviceController.await", initially_inactive, qword_1C6770);
  v3 = IONotificationPortCreate(kIOMasterPortDefault);
  IONotificationPortSetDispatchQueue(v3, qword_1C6770);
  qword_1C6728 = v3;
}

uint64_t sub_1EB80(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  if (a2)
  {
    v4 = IORegistryEntryCopyPath(a1, "IOService");
    ramrod_log_msg_cf(@"[%#llx] USB controller %s: %@\n", entryID, a2, v4);
  }

  return entryID;
}

id sub_1EBEC(id result, io_registry_entry_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v4 = result;
    sub_1EB80(a2, "terminated");
    AssociatedObject = objc_getAssociatedObject(v4, sub_1EBEC);
    if (AssociatedObject)
    {
      objc_setAssociatedObject(v4, sub_1EBEC, 0, 0);
      IOObjectRelease(AssociatedObject);
    }

    v6 = qword_1C6758;

    return [v6 removeObject:v4];
  }

  return result;
}

void sub_1EC98(uint64_t a1)
{
  Service = IOUSBDeviceControllerGetService();
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(Service, entryID);
  v3 = entryID[0];
  v4 = byte_1C6750;
  v5 = qword_1C6738;
  if (!qword_1C6738)
  {
    goto LABEL_17;
  }

  v6 = IOUSBDeviceControllerGetService();
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(v6, entryID);
  v7 = entryID[0];
  v8 = IOUSBDeviceDescriptionCreateFromControllerWithType();
  if (v8)
  {
    v9 = v8;
    if (IOUSBDeviceDescriptionGetProductID() - 4864 <= 0xFFFFFEFF)
    {
      IOUSBDeviceDescriptionSetProductID();
    }

    udid_string = ramrod_create_udid_string();
    IOUSBDeviceDescriptionSetSerialString();
    CFRelease(udid_string);
    v11 = IOUSBDeviceControllerSetDescription();
    v5 = v11;
    if (v11)
    {
      mach_error_string(v11);
      ramrod_log_msg("[%llx] unable to set USB description: %s (%#x)\n", v12, v13, v14, v15, v16, v17, v18, v7);
    }

    else
    {
      IOServiceWaitQuiet(v6, 0);
    }

    CFRelease(v9);
  }

  else
  {
    ramrod_log_msg_cf(@"[%#llx] unable to find USB configuration: %@\n", v7, v5);
    v5 = 3758097090;
  }

  v19 = IOUSBDeviceControllerGetService();
  entryID[0] = 0;
  IORegistryEntryGetRegistryEntryID(v19, entryID);
  v20 = entryID[0];
  v43[0] = @"IOParentMatch";
  v43[1] = @"IOProviderClass";
  entryID[0] = [NSNumber numberWithUnsignedLongLong:entryID[0]];
  entryID[1] = @"AppleUSBDeviceMux";
  v21 = [NSDictionary dictionaryWithObjects:entryID forKeys:v43 count:2];
  if (v21)
  {
    v22 = CFRetain(v21);
  }

  else
  {
    v22 = 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v22);
  if (MatchingService)
  {
    v31 = MatchingService;
    v41 = @"DebugLevel";
    v42 = [NSNumber numberWithInt:7];
    v32 = IORegistryEntrySetCFProperties(v31, [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1]);
    if (v32)
    {
      mach_error_string(v32);
      ramrod_log_msg("[%#llx] unable to set mux debug level: %s (%#x)\n", v33, v34, v35, v36, v37, v38, v39, v20);
    }

    IOObjectRelease(v31);
LABEL_17:
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ramrod_log_msg("[%#llx] unable to find AppleUSBDeviceMux service\n", v24, v25, v26, v27, v28, v29, v30, v20);
  if (v4)
  {
LABEL_18:
    sub_1DE80(a1, 1);
  }

LABEL_19:
  if (v5)
  {
    dword_1C6740 = v5;
    v40 = mach_error_string(v5);
  }

  else
  {
    v40 = "success";
  }

  ramrod_log_msg_cf(@"[%#llx] enabling USB finished: %s (%#x)\n", v3, v40, v5);
  dispatch_activate(qword_1C6748);
}

id sub_1EF64(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        sub_1EC98(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

CFTypeRef sub_1F064(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = qword_1C6758;
  result = [qword_1C6758 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        Service = IOUSBDeviceControllerGetService();
        v9 = usb_speed_in_mbps_for_service(Service);
        if (v9)
        {
          v10 = v9;
          result = CFRetain(v7);
          *(*(*(a1 + 32) + 8) + 24) = result;
          *(*(*(a1 + 40) + 8) + 24) = v10;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1F18C(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void sub_1F1DC(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

double ramrod_execute_config_alloc()
{
  v0 = calloc(1uLL, 0x30uLL);
  v0[18] = 0;
  result = NAN;
  *(v0 + 5) = 0x7FFFFFFF000000B4;
  return result;
}

void ramrod_execute_config_free(const void **a1)
{
  _Block_release(*a1);
  _Block_release(a1[1]);
  _Block_release(a1[2]);
  _Block_release(a1[3]);

  free(a1);
}

void ramrod_execute_config_set_file_actions_block(const void **a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*a1);
  *a1 = v3;
}

void ramrod_execute_config_set_input_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 8));
  *(a1 + 8) = v3;
}

void ramrod_execute_config_set_output_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 16));
  *(a1 + 16) = v3;
}

void ramrod_execute_config_set_process_launched_block(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  _Block_release(*(a1 + 24));
  *(a1 + 24) = v3;
}

uint64_t ramrod_execute_config_set_jetsam_properties(uint64_t result, __int16 a2, int a3, int a4)
{
  *(result + 36) = a2;
  *(result + 40) = a3;
  *(result + 44) = a4;
  return result;
}

void ramrod_execute_config_set_log_output(const void **a1)
{
  v2 = _Block_copy(&stru_1AD718);
  _Block_release(*a1);
  *a1 = v2;
  v3 = _Block_copy(&stru_1AD738);
  _Block_release(a1[2]);
  a1[2] = v3;
}

uint64_t ramrod_execute_command_with_config(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125 = 0;
  ramrod_log_msg("entering ramrod_execute_command_with_config: %s\n", a2, a3, a4, a5, a6, a7, a8, *a1);
  *v131 = -1;
  *v132 = -1;
  ramrod_log_msg("executing %s", v10, v11, v12, v13, v14, v15, v16, *a1);
  v24 = a1[1];
  if (v24)
  {
    v25 = a1 + 2;
    v26 = 1;
    do
    {
      ramrod_log_msg(" %s", v17, v18, v19, v20, v21, v22, v23, v24);
      if (v26 > 8)
      {
        break;
      }

      ++v26;
      v27 = *v25++;
      LOBYTE(v24) = v27;
    }

    while (v27);
  }

  ramrod_log_msg("\n", v17, v18, v19, v20, v21, v22, v23, v122);
  if (pipe(v132) == -1)
  {
    v39 = *a1;
    v40 = __error();
    strerror(*v40);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v41, v42, v43, v44, v45, v46, v47, v39);
    v48 = 0;
    v49 = -1;
    goto LABEL_46;
  }

  if (pipe(v131) == -1)
  {
    v50 = *a1;
    v51 = __error();
    strerror(*v51);
    ramrod_log_msg("pipe failed while preparing to execute %s: %s\n", v52, v53, v54, v55, v56, v57, v58, v50);
    v37 = 0xFFFFFFFFLL;
    v38 = -1;
  }

  else
  {
    v123 = 1;
    fcntl(v131[1], 73);
    v127 = 0;
    posix_spawn_file_actions_init(&v127);
    posix_spawn_file_actions_adddup2(&v127, v131[0], 0);
    posix_spawn_file_actions_adddup2(&v127, v132[1], 1);
    posix_spawn_file_actions_adddup2(&v127, 2, 2);
    v126 = 0;
    posix_spawnattr_init(&v126);
    posix_spawnattr_setflags(&v126, 0x4000);
    if (dword_1C6A38 == 2 && sub_D5200(2, 16, 0, 0))
    {
      posix_spawnattr_set_crash_behavior_np();
    }

    posix_spawnattr_setjetsam();
    if (*(a2 + 8))
    {
      posix_spawnattr_set_qos_clamp_np();
    }

    if (*a2)
    {
      (*(*a2 + 16))(*a2, &v127);
    }

    v28 = posix_spawn(&v125, *a1, &v127, &v126, a1, 0);
    if (v28)
    {
      v29 = *a1;
      strerror(v28);
      ramrod_log_msg("posix_spawn %s failed: %s\n", v30, v31, v32, v33, v34, v35, v36, v29);
      close(v132[0]);
      close(v131[1]);
      v37 = 0xFFFFFFFFLL;
      v38 = -1;
    }

    else
    {
      v37 = v131[1];
      v38 = v132[0];
      v60 = v125;
      if (v125 != -1)
      {
        v61 = realpath_DARWIN_EXTSN(*a1, 0);
        if (v61)
        {
          v62 = v61;
          bzero(v134, 0x400uLL);
          v63 = basename_r(v62, v134);
          if (v63 && ((v64 = v63, v130 = 256, byte_1C6A3C) || !sysctlbyname("kern.bootargs", &byte_1C6A3C, &v130, 0, 0)) && (bzero(__str, 0x400uLL), v128 = 0, v129 = 0, snprintf(__str, 0x3FFuLL, "\\bramrod_exec-\\Q%s\\E=((0[0-7]+)|(([+-])?[[:digit:]]+)|(0[xX][[:xdigit:]]+))", v64), sub_25A70(&byte_1C6A3C, v130, __str, &v129, &v128)))
          {
            ramrod_log_msg("found ramrod_execute_command option in boot-args: ramrod_exec-%s=%.*s\n", v65, v66, v67, v68, v69, v70, v71, v64);
            v72 = strtol(v129, 0, 0);
            free(v62);
            v80 = v72 & 0x1F;
            if ((v72 & 0x1F) != 0)
            {
              ramrod_log_msg("sending signal %d to process %d in %d millisecond(s)...\n", v73, v74, v75, v76, v77, v78, v79, v80);
              usleep(1000 * (v72 >> 8));
              if (kill(v60, v80) == -1)
              {
                __error();
                ramrod_log_msg("could not send signal %d to process %d: error %d\n", v81, v82, v83, v84, v85, v86, v87, v80);
              }
            }
          }

          else
          {
            free(v62);
          }
        }

        v121 = a2[3];
        if (v121)
        {
          (*(v121 + 16))(v121, v125);
        }
      }
    }

    posix_spawnattr_destroy(&v126);
    posix_spawn_file_actions_destroy(&v127);
    close(v131[0]);
  }

  close(v132[1]);
  v48 = 0;
  v49 = -1;
  if (v38 != -1 && v37 != -1)
  {
    bzero(v134, 0x400uLL);
    v59 = a2[1];
    if (v59)
    {
      v48 = (*(v59 + 16))(v59, v37) != 0;
    }

    else
    {
      v48 = 0;
    }

    close(v37);
    v88 = read(v38, v134, 0x3FFuLL);
    if (v88 >= 1)
    {
      for (i = v88; i > 0; i = read(v38, v134, 0x3FFuLL))
      {
        v134[i] = 0;
        v96 = a2[2];
        if (v96)
        {
          (*(v96 + 16))(v96, v134);
        }
      }
    }

    ramrod_log_msg("waiting for child to exit\n", v89, i, v91, v92, v93, v94, v95, v123);
    *__str = 0;
    if (waitpid(v125, __str, 0) == -1)
    {
      v111 = *a1;
      v112 = __error();
      strerror(*v112);
      ramrod_log_msg("waitpid failed for %s: %s\n", v113, v114, v115, v116, v117, v118, v119, v111);
    }

    else
    {
      ramrod_log_msg("child exited\n", v97, v98, v99, v100, v101, v102, v103, v124);
      if ((__str[0] & 0x7F) == 0x7F)
      {
        ramrod_log_msg("%s was stopped by signal %d\n", v104, v105, v106, v107, v108, v109, v110, *a1);
      }

      else
      {
        if ((__str[0] & 0x7F) == 0)
        {
          ramrod_log_msg("exit status: %d\n", v104, v105, v106, v107, v108, v109, v110, __str[1]);
          v49 = __str[1];
LABEL_45:
          close(v38);
          goto LABEL_46;
        }

        ramrod_log_msg("%s was terminated by signal %d\n", v104, v105, v106, v107, v108, v109, v110, *a1);
      }
    }

    v49 = -1;
    goto LABEL_45;
  }

LABEL_46:
  if (v49 == 0 && v48)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v49;
  }
}

uint64_t ramrod_execute_command_with_callback(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1FBB4;
  v5[3] = &unk_1A9298;
  v5[4] = a2;
  v5[5] = a4;
  return sub_1FA58(a1, 0, 0, a3, v5);
}

uint64_t sub_1FA58(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, const void *a5)
{
  v10 = calloc(1uLL, 0x30uLL);
  *(v10 + 18) = 0;
  v10[5] = 0x7FFFFFFF000000B4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_28164;
  aBlock[3] = &unk_1A9340;
  v24 = a4;
  v11 = _Block_copy(aBlock);
  _Block_release(*v10);
  *v10 = v11;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2819C;
  v22[3] = &unk_1A9360;
  v22[4] = a2;
  v22[5] = a3;
  v12 = _Block_copy(v22);
  _Block_release(v10[1]);
  v10[1] = v12;
  v13 = _Block_copy(a5);
  _Block_release(v10[2]);
  v10[2] = v13;
  v20 = ramrod_execute_command_with_config(a1, v10, v14, v15, v16, v17, v18, v19);
  ramrod_execute_config_free(v10);
  return v20;
}

uint64_t ramrod_execute_command_with_input_data_callback(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FC3C;
  v7[3] = &unk_1A9298;
  v7[4] = a4;
  v7[5] = a6;
  return sub_1FA58(a1, a2, a3, a5, v7);
}

uint64_t ramrod_execute_command(uint64_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1FBB4;
  v2[3] = &unk_1A9298;
  v2[4] = sub_1FCD4;
  v2[5] = 0;
  return sub_1FA58(a1, 0, 0, 1, v2);
}

uint64_t ramrod_execute_command_with_input_data(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1FC3C;
  v4[3] = &unk_1A9298;
  v4[4] = sub_1FCD4;
  v4[5] = 0;
  return sub_1FA58(a1, a2, a3, 1, v4);
}

uint64_t sub_1FD94(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = a6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3254779904;
  v11[2] = sub_28224;
  v11[3] = &unk_1AD7E8;
  v11[4] = &v12;
  v11[5] = &v16;
  v8 = sub_1FA58(a1, a2, a3, a4, v11);
  if (a6)
  {
    v9 = v17[3];
    if (!v13[3])
    {
      v17[3] = --v9;
    }

    do
    {
      *v9 = 0;
      v9 = (v17[3] - 1);
      v17[3] = v9;
    }

    while (v9 >= a5 && *v9 == 10);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

void sub_1FEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

CFTypeRef copy_property_from_registry_defaults(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (v2)
  {
    v10 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
    IOObjectRelease(v10);
    return CFProperty;
  }

  else
  {
    ramrod_log_msg("unable to find /defaults node\n", v3, v4, v5, v6, v7, v8, v9, v13);
    return 0;
  }
}

id has_non_restore_bundle_overrides(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"BundleOverrides");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = a2;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [Value countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(Value);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 hasPrefix:@"Restore"] & 1) == 0 && (objc_msgSend(v9, "hasSuffix:", @"RamDisk") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iBSS") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"iBEC") & 1) == 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [Value countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  result = [v4 count];
  if (result)
  {
    [v4 sortUsingSelector:"caseInsensitiveCompare:"];
    ramrod_log_msg_cf(@"BundleOverrides detected for %s: %@\n", v11, [v4 componentsJoinedByString:{@", "}]);
    return &dword_0 + 1;
  }

  return result;
}

uint64_t ramrod_wait_for_internal_media(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  iterator = 0;
  memset(name, 0, 128);
  memset(v84, 0, sizeof(v84));
  ramrod_log_msg("Searching for NAND service\n", a2, a3, a4, a5, a6, a7, a8, v78);
  if (IORegistryCreateIterator(kIOMasterPortDefault, "IOService", 1u, &iterator))
  {
    ramrod_log_msg("Failed to create registry iterator\n", v8, v9, v10, v11, v12, v13, v14, v79);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    while (1)
    {
      IOIteratorReset(iterator);
      v23 = IOIteratorNext(iterator);
      if (v23)
      {
        break;
      }

LABEL_7:
      ramrod_log_msg("Waiting for NAND service to publish\n", v24, v25, v26, v27, v28, v29, v30, v79);
      sleep(3u);
    }

    v21 = v23;
    while (1)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v21, @"AppleNANDStatus", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        break;
      }

      IOObjectRelease(v21);
      v21 = IOIteratorNext(iterator);
      if (!v21)
      {
        goto LABEL_7;
      }
    }

    v22 = CFProperty;
    IORegistryEntryGetName(v21, name);
    ramrod_log_msg("Found NAND service: %s\n", v32, v33, v34, v35, v36, v37, v38, name);
    while (CFStringCompare(v22, @"Ready", 0) && CFStringCompare(v22, @"Error", 0))
    {
      CStringPtr = CFStringGetCStringPtr(v22, 0);
      ramrod_log_msg("NAND Status: %s. Waiting...\n", v40, v41, v42, v43, v44, v45, v46, CStringPtr);
      sleep(3u);
      CFRelease(v22);
      v22 = IORegistryEntryCreateCFProperty(v21, @"AppleNANDStatus", kCFAllocatorDefault, 0);
      if (!v22)
      {
        v48 = "NAND status property missing\n";
LABEL_20:
        ramrod_log_msg(v48, v47, v15, v16, v17, v18, v19, v20, v81);
        goto LABEL_21;
      }
    }

    if (CFStringCompare(v22, @"Error", 0))
    {
      ramrod_log_msg("NAND initialized. Waiting for devnode.\n", v49, v50, v51, v52, v53, v54, v55, v81);
      if (wait_for_device("EmbeddedDeviceTypeRoot", v84, 0x20uLL, 0, v56, v57, v58, v59))
      {
        v60 = 0;
        goto LABEL_22;
      }

      v81 = "EmbeddedDeviceTypeRoot";
      v48 = "Unable to find storage device node for service named: %s";
      goto LABEL_20;
    }

    memcpy(__dst, "No additional error message.", sizeof(__dst));
    v61 = IORegistryEntryCreateCFProperty(v21, @"AppleNANDFailureData", kCFAllocatorDefault, 0);
    if (v61)
    {
      v69 = v61;
      CFStringGetCString(v61, __dst, 1024, 0x8000100u);
      CFRelease(v69);
    }

    ramrod_log_msg("NAND failed to initialize: %s\n", v62, v63, v64, v65, v66, v67, v68, __dst);
  }

LABEL_21:
  v60 = 1;
LABEL_22:
  off_1C6788 = ramrod_probe_media;
  if (!sub_208DC(3, 0, v15, v16, v17, v18, v19, v20))
  {
    ramrod_log_msg("ramrod_probe_media failed!\n", v70, v71, v72, v73, v74, v75, v76, v80);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v21)
  {
    IOObjectRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v60;
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "wait_for_device");
  if (!a1)
  {
    sub_D6614(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  if (!a2)
  {
    sub_D65CC(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    sub_D6590(a4, v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  v27 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v27)
  {
    sub_D6544(a4, a1, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  v34 = v27;
  v99 = a4;
  IOObjectRetain(v27);
  v35 = v34;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v35, "IOService", &iterator))
    {
      v78 = "Could not create child iterator\n";
LABEL_30:
      ramrod_log_msg(v78, v36, v37, v38, v39, v40, v41, v42, v98);
      st_dev = v35;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v80, v81, v82, "wait_for_device");
      v83 = 0;
      goto LABEL_36;
    }

    v43 = IOIteratorNext(iterator.st_dev);
    v44 = 0;
    if (!v43)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      v98 = v44;
      v78 = "Found %d child nodes (expected 1)\n";
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v43);
      }

      else
      {
        st_dev = v43;
      }

      v43 = IOIteratorNext(iterator.st_dev);
      ++v44;
    }

    while (v43);
    IOObjectRelease(iterator.st_dev);
    if (v44 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v35);
    v35 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v54 = CFProperty;
  if (!CFProperty)
  {
    v79 = "Did not find Whole property on IOMedia class\n";
LABEL_34:
    ramrod_log_msg(v79, v47, v48, v49, v50, v51, v52, v53, v98);
    CFRelease(v54);
    goto LABEL_35;
  }

  v55 = CFGetTypeID(CFProperty);
  if (v55 != CFBooleanGetTypeID())
  {
    v79 = "Expected Whole to be BOOLean\n";
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v54))
  {
    v79 = "Expected Whole=true\n";
    goto LABEL_34;
  }

  CFRelease(v54);
  v56 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v56)
  {
    v60 = v56;
    v61 = CFGetTypeID(v56);
    if (v61 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v65 = strlen(a2);
      if (CFStringGetCString(v60, &a2[v65], a3 - v65, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", v66, v67, v68, v69, v70, v71, v72, a2);
        v73 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v83 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v73++, 1))
          {
            goto LABEL_43;
          }
        }

        v85 = __error();
        strerror(*v85);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", v86, v87, v88, v89, v90, v91, v92, a2);
        v93 = *__error();
        v94 = __error();
        strerror(*v94);
        ramrod_create_error_cf(v99, kCFErrorDomainPOSIX, v93, 0, @"%s: stat error while waiting for device '%s': %s", v95, v96, v97, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v74, v75, v76, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v70, v71, v72, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v62, v63, v64, "wait_for_device");
    }

    v83 = 0;
LABEL_45:
    CFRelease(v60);
  }

  else
  {
    ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v57, v58, v59, "wait_for_device");
    v83 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v34);
  return v83;
}

uint64_t sub_208DC(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_probe_media_internal");
  byte_1C6790 = 0;
  byte_1C67B0 = 0;
  byte_1C6910 = 0;
  byte_1C67D0 = 0;
  byte_1C67F0 = 0;
  byte_1C6810 = 0;
  byte_1C6830 = 0;
  byte_1C6850 = 0;
  byte_1C6870 = 0;
  byte_1C6890 = 0;
  byte_1C68B0 = 0;
  byte_1C68D0 = 0;
  byte_1C68F0 = 0;
  byte_1C6930 = 0;
  byte_1C6970 = 0;
  byte_1C6950 = 0;
  byte_1C6990 = 0;
  byte_1C69B0 = 0;
  byte_1C69D0 = 0;
  if (qword_1C69F8)
  {
    CFRelease(qword_1C69F8);
    qword_1C69F8 = 0;
  }

  if (qword_1C69F0)
  {
    CFRelease(qword_1C69F0);
    qword_1C69F0 = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    sub_D6698(&cf, v10, v11, v12, v13, v14, v15, v16);
    v25 = 0;
    goto LABEL_12;
  }

  v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v25)
  {
    sub_D665C(&cf, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &byte_1C6790, 0x20uLL, &cf, v21, v22, v23, v24))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", v26, v27, v28, v29, v30, v31, v32, "EmbeddedDeviceTypeRoot");
LABEL_12:
    v47 = 0;
    v42 = 0;
    goto LABEL_13;
  }

  v33 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_1C6795);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v33);
  v42 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", v35, v36, v37, v38, v39, v40, v41, byte_1C6795);
LABEL_19:
    v47 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v43 = IORegistryEntryCreateIterator(v42, "IOService", 1u, &iterator);
  if (v43)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v43, 0, @"%s: unable to create child iterator", v44, v45, v46, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_13:
    v48 = 0;
    goto LABEL_14;
  }

  v160 = a1;
  v51 = IOIteratorNext(iterator);
  if (v51)
  {
    v47 = v51;
    LOBYTE(v52) = 0;
    v161 = 0;
    v53 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v47, "IOMedia"))
      {
        if (IOObjectConformsTo(v47, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v47, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n", v102, v103, v104, v105, v106, v107, v108, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v151 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v47, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v124, v125, v126, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n", v120, v121, v122, v123, v124, v125, v126, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v150 = "Preboot";
            v151 = "Scratch";
            v148 = "Recovery";
            v149 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v54 = IORegistryEntryGetName(v47, name);
      if (v54)
      {
        v138 = kCFErrorDomainMach;
        v139 = v54;
        v140 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v138, v139, 0, v140, v55, v56, v57, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v58 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
      if (v58)
      {
        v138 = kCFErrorDomainMach;
        v139 = v58;
        v140 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v52)
      {
        v52 = 1;
      }

      else
      {
        *buffer = 0u;
        v166 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v52 = Value && (v60 = Value, v61 = CFGetTypeID(Value), v61 == CFStringGetTypeID()) && CFStringGetCString(v60, buffer, 32, 0x600u) && (v62 = strlen(byte_1C6795), !strncmp(buffer, byte_1C6795, v62)) && strcmp("s1s1", &buffer[v62]) == 0;
      }

      v63 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v63 || (v71 = v63, !CFEqual(v63, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v71, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v52)
          {
            v145 = name;
            ramrod_log_msg("found system volume not at %ss1s1: %s\n", v64, v65, v66, v67, v68, v69, v70, &byte_1C6790);
          }

          goto LABEL_84;
        }

        if (v158 && !strcmp(name, v158))
        {
          v109 = &byte_1C67F0;
          goto LABEL_85;
        }

        if (v157 && !strcmp(name, v157))
        {
          v109 = &byte_1C6810;
          goto LABEL_85;
        }

        if (v156 && !strcmp(name, v156))
        {
          v109 = &byte_1C6830;
          goto LABEL_85;
        }

        if (v155 && !strcmp(name, v155))
        {
          v109 = &byte_1C6850;
          goto LABEL_85;
        }

        if (v154 && !strcmp(name, v154))
        {
          v109 = &byte_1C6870;
          goto LABEL_85;
        }

        if (v153 && !strcmp(name, v153))
        {
          if (!byte_1C6890 || !ramrod_should_have_xart_partition())
          {
            v110 = 0;
            theArray = &byte_1C6890;
            goto LABEL_87;
          }

          v142 = kCFErrorDomainMach;
LABEL_178:
          v143 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v142, -536870911, 0, v143, v68, v69, v70, "ramrod_probe_media_internal");
LABEL_173:
          v141 = 0;
LABEL_174:
          v48 = 0;
          if (v160 >= 1 && v141)
          {
            sleep(1u);
            v48 = sub_208DC(v160 - 1, 0);
          }

LABEL_14:
          v49 = cf;
          if (a2 && !v48 && cf)
          {
            v48 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v152 && !strcmp(name, v152))
        {
          v109 = &byte_1C68B0;
          goto LABEL_85;
        }

        if (v151 && !strcmp(name, v151))
        {
          v109 = &byte_1C68D0;
          goto LABEL_85;
        }

        if (v150 && !strcmp(name, v150))
        {
          if (v161 != 1)
          {
            if (v161 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", v64, v65, v66, v67, v68, v69, v70, 2);
              v109 = &byte_1C68F0;
            }

            else
            {
              if (v161 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", v64, v65, v66, v67, v68, v69, v70, 3);
              v109 = &byte_1C6950;
            }

            goto LABEL_85;
          }

          v134 = 1;
        }

        else
        {
          if (!v149 || strcmp(name, v149))
          {
            if (v148 && !strcmp(name, v148))
            {
              v109 = &byte_1C6930;
            }

            else
            {
              if (!v52 || byte_1C67D0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_155:
                theArray = 0;
                v110 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_84:
              LOBYTE(v52) = 1;
              v109 = &byte_1C67D0;
            }

LABEL_85:
            if (*v109)
            {
              v142 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v109;
            v110 = 0;
LABEL_87:
            while (1)
            {
              v111 = CFDictionaryGetValue(properties, @"Leaf");
              if (v111)
              {
                if (CFBooleanGetValue(v111) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v47);
              CFRelease(properties);
              v112 = IOIteratorNext(iterator);
              if (!v112)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v113, v114, v115, "ramrod_probe_media_internal");
                v47 = 0;
                goto LABEL_173;
              }

              v47 = v112;
              while (!IOObjectConformsTo(v47, "IOMedia"))
              {
                IOObjectRelease(v47);
                v47 = IOIteratorNext(iterator);
                if (!v47)
                {
                  goto LABEL_172;
                }
              }

              v116 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
              if (v116)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v116, 0, @"%s: unable to get properties for media registry entry", v117, v118, v119, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v110)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v127 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v127)
                {
                  v128 = v127;
                  *buffer = 0;
                  v129 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v129)
                  {
                    CFNumberGetValue(v129, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v130 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v130 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v131 = Mutable;
                  }

                  else
                  {
                    v131 = v25;
                  }

                  theArraya = v131;
                  ramrod_log_msg_cf(v130, v128, v145);
                  v144 = "/dev/";
                  v145 = v128;
                  v132 = CFStringCreateWithFormat(0, 0, @"%s%@");
                  CFArrayAppendValue(theArraya, v132);
                  CFRelease(v132);
                }
              }
            }

            else
            {
              v133 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v133)
              {
                v142 = kCFErrorDomainMach;
                v143 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v166 = 0u;
              CFStringGetCString(v133, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v47);
            goto LABEL_73;
          }

          v134 = v161;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v64, v65, v66, v67, v68, v69, v70, v134);
        v109 = &byte_1C6990;
        goto LABEL_85;
      }

      v72 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v72)
      {
        ramrod_log_msg("APFS Container object with no bsd name", v73, v74, v75, v76, v77, v78, v79, v144);
        goto LABEL_173;
      }

      *buffer = 0u;
      v166 = 0u;
      CFStringGetCString(v72, buffer, 32, 0x8000100u);
      if (CFEqual(v71, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v161 = 3;
          v53 = &byte_1C6910;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v53 = &byte_1C67B0;
          }

          else
          {
            v53 = &byte_1C6970;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v87 = 2;
          }

          else
          {
            v87 = 1;
          }

          v161 = v87;
        }

        snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
        v145 = v53;
        ramrod_log_msg("APFS Container '%s' %s\n", v88, v89, v90, v91, v92, v93, v94, name);
LABEL_70:
        if (!*v53)
        {
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v145 = v53;
          ramrod_log_msg("APFS Container '%s' %s\n", v95, v96, v97, v98, v99, v100, v101, name);
        }

        goto LABEL_72;
      }

      if (CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v53 && *v53)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", v80, v81, v82, v83, v84, v85, v86, buffer);
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v53 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n", v80, v81, v82, v83, v84, v85, v86, v144);
      }

      if (v53)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v47);
      CFRelease(properties);
LABEL_73:
      v47 = IOIteratorNext(iterator);
    }

    while (v47);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v135, v136, v137, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_170:
    v141 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v25) >= 1)
  {
    qword_1C69F8 = CFRetain(v25);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v47 = 0;
  qword_1C69F0 = CFRetain(Mutable);
LABEL_20:
  v48 = 1;
LABEL_21:
  v49 = cf;
LABEL_22:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
    IOObjectRelease(v47);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v42)
  {
    IOObjectRelease(v42);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v48;
}

uint64_t ramrod_reprobe_media(CFErrorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = off_1C6788;
  if (off_1C6788)
  {

    return v9();
  }

  else
  {
    ramrod_log_msg("%s() called without probing media first\n", 0, a3, a4, a5, a6, a7, a8, "ramrod_reprobe_media");
    ramrod_create_error_internal(a1, @"RamrodErrorDomain", 8, 0, "%s() called without probing media first", "ramrod_reprobe_media");
    return 0;
  }
}

uint64_t ramrod_get_storage_media_device_node(char *a1, size_t __size)
{
  if (!byte_1C6790)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6790, __size);
  return 1;
}

uint64_t ramrod_get_apfs_container_device_node(char *a1, size_t __size)
{
  if (!byte_1C67B0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C67B0, __size);
  return 1;
}

uint64_t ramrod_get_system_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C67D0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C67D0, __size);
  return 1;
}

uint64_t ramrod_get_data_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C67F0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C67F0, __size);
  return 1;
}

uint64_t ramrod_get_user_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6810)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6810, __size);
  return 1;
}