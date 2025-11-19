id getAutoLocalUrlFromTypeAndIdGivenDefaultRepoWithPurpose(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      v16 = "Attempting to get local url with nil asset type";
      v17 = &v30;
LABEL_11:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  if (!v10)
  {
    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Attempting to get local url with nil asset id";
      v17 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = normalizedAssetType(v9);
  if (!v13)
  {
    goto LABEL_13;
  }

  if (a3 == 5)
  {
    v14 = @"/System/Library/PreinstalledAssetsV2/RequiredByOs";
    goto LABEL_15;
  }

  if (a3 != 6)
  {
    if (v11)
    {
      v20 = [NSURL URLWithString:v11];
      goto LABEL_18;
    }

    v27 = _MADLog(@"V2");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Attempting to get local url with nil default repo for a non preinstalled asset", v28, 2u);
    }

LABEL_13:
    v18 = 0;
    goto LABEL_21;
  }

  v14 = @"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs";
LABEL_15:
  v19 = getRepositoryPath(v14);
  v20 = [NSURL URLWithString:v19];

LABEL_18:
  v21 = [v20 URLByAppendingPathComponent:v13];

  if (v12)
  {
    v22 = purposeDirectoryName(v12);
    v23 = [v21 URLByAppendingPathComponent:v22];

    v21 = v23;
  }

  v24 = [NSString stringWithFormat:@"%@.%@", v10, @"asset"];
  v25 = [v21 URLByAppendingPathComponent:v24];

  v18 = [v25 URLByAppendingPathComponent:@"AssetData"];

LABEL_21:

  return v18;
}

id filterPMV(void *a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, __CFString **a8)
{
  v13 = a1;
  v59 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v56 = a7;
  v61 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  v57 = v13;
  if (objc_opt_isKindOfClass())
  {
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v127 = 0;
    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v123 = 0;
    v116 = 0;
    v117 = &v116;
    v118 = 0x2020000000;
    v119 = 0;
    v112 = 0;
    v113 = &v112;
    v114 = 0x2020000000;
    v115 = 0;
    v108 = 0;
    v109 = &v108;
    v110 = 0x2020000000;
    v111 = 0;
    v104 = 0;
    v105 = &v104;
    v106 = 0x2020000000;
    v107 = 0;
    v99 = 0;
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v103 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    v14 = objc_opt_new();
    [v14 setDateFormat:@"yyyy-MM-dd"];
    v46 = v14;
    v15 = @"PublicAssetSets";
    if (a2)
    {
      v15 = @"AssetSets";
    }

    v48 = v15;
    v16 = [v13 objectForKey:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {

      v16 = 0;
    }

    if (v59 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v16 objectForKey:v59];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        [v61 addObjectsFromArray:v17];
        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
      v49 = 0;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v80 objects:v128 count:16];
    if (v21)
    {
      v60 = 0;
      v62 = 0;
      v22 = *v81;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v81 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v80 + 1) + 8 * i);
          v25 = objc_autoreleasePoolPush();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [v20 objectForKey:v24];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ((v19 & 1) == 0)
              {
                [v61 addObjectsFromArray:v26];
              }

              if ([v24 isEqual:@"iOS"])
              {
                v62 += [v26 count];
              }

              else if ([v24 isEqual:@"macOS"])
              {
                v60 += [v26 count];
              }
            }
          }

          objc_autoreleasePoolPop(v25);
        }

        v21 = [v20 countByEnumeratingWithState:&v80 objects:v128 count:16];
      }

      while (v21);
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v27 = [v20 count];
    v28 = v49;
    if (!v27)
    {
      v28 = 1;
    }

    v50 = v28;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = __filterPMV_block_invoke;
    v63[3] = &unk_4B57F8;
    v29 = v53;
    v64 = v29;
    v69 = &v120;
    v70 = &v104;
    v30 = v54;
    v65 = v30;
    v71 = &v84;
    v72 = &v88;
    v73 = &v100;
    v74 = &v116;
    v31 = v55;
    v66 = v31;
    v32 = v46;
    v67 = v32;
    v75 = &v112;
    v76 = &v96;
    v33 = v56;
    v68 = v33;
    v77 = &v108;
    v78 = &v92;
    v79 = &v124;
    v34 = [NSPredicate predicateWithBlock:v63];
    v35 = [v61 count];
    [v61 filterUsingPredicate:v34];
    v36 = [v61 count];
    v47 = v32;
    if (a8)
    {
      v37 = v36;
      v38 = [NSMutableString stringWithCapacity:500];
      v18 = v38;
      v39 = @"public";
      if (a2)
      {
        v39 = @"supervised";
      }

      [(__CFString *)v38 appendFormat:@"Filtered PMV to %ld/%ld entries (from %@: %ld iOS, %ld macOS) using [", v37, v35, v39, v62, v60];
      v40 = @"false";
      if (a2)
      {
        v40 = @"true";
      }

      [(__CFString *)v18 appendFormat:@"includeSupervised: %@ ", v40];
      if (v59)
      {
        [(__CFString *)v18 appendFormat:@" platformExactMatch: %@", v59];
      }

      if (v29)
      {
        [(__CFString *)v18 appendFormat:@" versionPrefix: %@", v29];
      }

      if (v30)
      {
        [(__CFString *)v18 appendFormat:@" supportedDevicePrefix: %@", v30];
      }

      if (v31)
      {
        [(__CFString *)v18 appendFormat:@" postedBefore: %@", v31];
      }

      if (v33)
      {
        [(__CFString *)v18 appendFormat:@" notExpiredBefore: %@", v33];
      }

      [(__CFString *)v18 appendFormat:@"]."];
      v41 = v125[3];
      if ((v41 > 0) | (isKindOfClass ^ 1 | v50) & 1)
      {
        if (v41)
        {
          [(__CFString *)v18 appendFormat:@" Filtered out %ld due to", v125[3]];
        }

        if (v121[3])
        {
          [(__CFString *)v18 appendFormat:@" ProductVersion: %ld", v121[3]];
        }

        if (v117[3])
        {
          [(__CFString *)v18 appendFormat:@" SupportedDevices: %ld", v117[3]];
        }

        if (v113[3])
        {
          [(__CFString *)v18 appendFormat:@" PostingDate: %ld", v113[3]];
        }

        if (v109[3])
        {
          [(__CFString *)v18 appendFormat:@" ExpirationDate: %ld", v109[3]];
        }

        if (((isKindOfClass ^ 1 | v50) & 1) != 0 || v105[3] || v101[3] || v97[3] || v93[3])
        {
          [(__CFString *)v18 appendFormat:@" -- ISSUES: "];
          if ((isKindOfClass & 1) == 0)
          {
            [(__CFString *)v18 appendFormat:@" missingSet: %@", v48];
          }

          v42 = v50 ^ 1;
          if (!v59)
          {
            v42 = 1;
          }

          if (v42)
          {
            if (v50)
            {
              [(__CFString *)v18 appendFormat:@" missingAllPlatforms"];
            }
          }

          else
          {
            [(__CFString *)v18 appendFormat:@" missingPlatform: %@", v59];
          }

          if (v105[3] || v101[3] || v89[3] || v97[3] || v93[3])
          {
            [(__CFString *)v18 appendFormat:@" -- Some entries missed potential filtering due to"];
            if (v105[3])
            {
              [(__CFString *)v18 appendFormat:@" missingProductVersion: %ld", v105[3]];
            }

            if (v101[3])
            {
              [(__CFString *)v18 appendFormat:@" missingSupportedDevices: %ld", v101[3]];
            }

            if (v89[3])
            {
              [(__CFString *)v18 appendFormat:@" emptySupportedDevices: %ld", v89[3]];
            }

            if (v97[3])
            {
              [(__CFString *)v18 appendFormat:@" missingPostingDate: %ld", v97[3]];
            }

            if (v93[3])
            {
              [(__CFString *)v18 appendFormat:@" missingExpirationDate: %ld", v93[3]];
            }
          }

          if (v85[3])
          {
            [(__CFString *)v18 appendFormat:@" -- filtering saw a total of %ld individual SupportedDevices that were nil or not strings", v85[3]];
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v84, 8);
    _Block_object_dispose(&v88, 8);
    _Block_object_dispose(&v92, 8);
    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v100, 8);
    _Block_object_dispose(&v104, 8);
    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v112, 8);
    _Block_object_dispose(&v116, 8);
    _Block_object_dispose(&v120, 8);
    _Block_object_dispose(&v124, 8);
  }

  else
  {
    v18 = @"Filtered PMV to 0/0 entries. PMV was not a dictionary.";
  }

  objc_autoreleasePoolPop(context);
  if (a8)
  {
    v43 = v18;
    *a8 = v18;
  }

  return v61;
}

void sub_22F220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose((v69 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __filterPMV_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      if (*(a1 + 32))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"ProductVersion"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (([v8 hasPrefix:*(a1 + 32)] & 1) == 0)
            {
              ++*(*(*(a1 + 72) + 8) + 24);
LABEL_42:

              goto LABEL_10;
            }
          }

          else
          {
            ++*(*(*(a1 + 80) + 8) + 24);
          }
        }
      }

      if (*(a1 + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v7 objectForKey:@"SupportedDevices"];
          if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v22 = v7;
            v23 = v12;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = 0;
              v17 = *v25;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v25 != v17)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v19 = *(*(&v24 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 |= [v19 hasPrefix:*(a1 + 40)];
                  }

                  else
                  {
                    ++*(*(*(a1 + 88) + 8) + 24);
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
              }

              while (v15);
            }

            else
            {
              LOBYTE(v16) = 0;
            }

            if (![v13 count])
            {
              ++*(*(*(a1 + 96) + 8) + 24);
            }

            v12 = v23;
            if (v16)
            {

              v7 = v22;
              goto LABEL_37;
            }
          }

          else
          {
            ++*(*(*(a1 + 104) + 8) + 24);
          }

          ++*(*(*(a1 + 112) + 8) + 24);
LABEL_31:

          goto LABEL_10;
        }
      }

LABEL_37:
      if (*(a1 + 48))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"PostingDate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [*(a1 + 56) dateFromString:v8];
            if ([v20 compare:*(a1 + 48)] == &dword_0 + 1)
            {
              ++*(*(*(a1 + 120) + 8) + 24);

              goto LABEL_42;
            }
          }

          else
          {
            ++*(*(*(a1 + 128) + 8) + 24);
          }
        }
      }

      if (*(a1 + 64))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v7 objectForKey:@"ExpirationDate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [*(a1 + 56) dateFromString:v12];
            if ([v21 compare:*(a1 + 64)] == &dword_0 + 1)
            {
              ++*(*(*(a1 + 136) + 8) + 24);

              goto LABEL_31;
            }
          }

          else
          {
            ++*(*(*(a1 + 144) + 8) + 24);
          }
        }
      }

      v10 = 1;
      goto LABEL_11;
    }
  }

  v9 = v5;
LABEL_10:
  v10 = 0;
  ++*(*(*(a1 + 152) + 8) + 24);
LABEL_11:

  return v10;
}

id stringForMAAssetState(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [NSString stringWithFormat:@"MAAssetState%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5908 + a1);
  }

  return v2;
}

id stringForMAXpcError(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [NSString stringWithFormat:@"MAXpcError%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5AC0 + a1);
  }

  return v2;
}

const __CFString *stringForAnalyticsReportingLevel(uint64_t a1)
{
  v1 = @"<undefined-level>";
  v2 = @"MADAnalyticsLevelUnchanged";
  v3 = @"MADAnalyticsLevelImmediate";
  if (a1 != 10)
  {
    v3 = @"<undefined-level>";
  }

  if (a1)
  {
    v2 = v3;
  }

  if (a1 == -10)
  {
    v1 = @"MADAnalyticsLevelDoNotSend";
  }

  if (a1 == -20)
  {
    v1 = @"MADAnalyticsLevelDoNotSave";
  }

  if (a1 < 0)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

const __CFString *stringForCacheDeleteUrgency(int a1)
{
  if (a1 > 4)
  {
    return @"BEYOND-EMERGENCY";
  }

  if (a1 > 4)
  {
    return @"UNDEFINED";
  }

  return *(&off_4B5B08 + a1);
}

__CFString *allocStringForBytes(uint64_t a1)
{
  if (a1)
  {
    v2 = @"NEGATIVE ";
    if (a1 < 0)
    {
      v3 = a1 + 0x3FFFFFFF;
    }

    else
    {
      v2 = &stru_4BD3F0;
      v3 = a1;
    }

    v4 = v2;
    v5 = a1 - (v3 & 0xFFFFFFFFC0000000);
    if (a1 >= (v3 & 0xFFFFFFFFC0000000))
    {
      v6 = a1 - (v3 & 0xFFFFFFFFC0000000);
    }

    else
    {
      v6 = v5 + 0xFFFFF;
    }

    v7 = v5 - (v6 & 0xFFFFFFFFFFF00000);
    if (v5 >= (v6 & 0xFFFFFFFFFFF00000))
    {
      v8 = v5 - (v6 & 0xFFFFFFFFFFF00000);
    }

    else
    {
      v8 = v7 + 1023;
    }

    v9 = v7 - (v8 & 0xFFFFFFFFFFFFFC00);
    if (v9 == 1)
    {
      v10 = @" 1 byte";
    }

    else if (v9 < 2)
    {
      v10 = &stru_4BD3F0;
    }

    else
    {
      v10 = [[NSString alloc] initWithFormat:@" %lld bytes", v7 - (v8 & 0xFFFFFFFFFFFFFC00)];
    }

    v12 = v6 >> 20;
    if (a1 < 0x40000000)
    {
      if (v5 < 0x100000)
      {
        v14 = [NSString alloc];
        if (v7 < 1024)
        {
          v13 = [v14 initWithFormat:@"%@%lld bytes", v4, a1, v16, v17, v18];
        }

        else
        {
          v13 = [v14 initWithFormat:@"%@%lldKB%@", v4, v8 >> 10, v10, v17, v18];
        }
      }

      else
      {
        v13 = [[NSString alloc] initWithFormat:@"%@%lldMB %lldKB%@", v4, v12, v8 >> 10, v10, v18];
      }
    }

    else
    {
      v13 = [[NSString alloc] initWithFormat:@"%@%lldGB %lldMB %lldKB%@", &stru_4BD3F0, v3 >> 30, v12, v8 >> 10, v10];
    }

    v11 = v13;
  }

  else
  {
    v11 = @"0 bytes";
  }

  return v11;
}

id stringForMAOperationResult(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [NSString stringWithFormat:@"MAOperationResult%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5B30 + a1);
  }

  return v2;
}

id stringForMACancelDownloadResult(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [NSString stringWithFormat:@"MACancelDownloadResult%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5E18 + a1);
  }

  return v2;
}

id stringForMAPurgeResult(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [NSString stringWithFormat:@"MAPurgeResult%llu", a1];
  }

  else
  {
    v2 = *(&off_4B5E58 + a1);
  }

  return v2;
}

id errorStringForMACancelDownloadResult(unint64_t a1)
{
  if (a1 >= 8)
  {
    v3 = stringForMACancelDownloadResult(a1);
    v2 = [NSString stringWithFormat:@"Download failed due to Error %lld (%@).", a1, v3];
  }

  else
  {
    v2 = *(&off_4B5EC0 + a1);
  }

  return v2;
}

id errorStringForMADownloadResult(unint64_t a1)
{
  if (a1 >= 0x57)
  {
    v3 = stringForMADownloadResult(a1);
    v2 = [NSString stringWithFormat:@"Download failed due to Error %lld (%@).", a1, v3];
  }

  else
  {
    v2 = *(&off_4B5F00 + a1);
  }

  return v2;
}

id mapV2ErrorIndications()
{
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:0 codeName:@"MAXpcErrorNone"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:1 codeName:@"MAXpcErrorParamMissing"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:2 codeName:@"MAXpcErrorLengthZero"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:3 codeName:@"MAXpcErrorLengthMissing"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:4 codeName:@"MAXpcErrorLengthMismatch"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:5 codeName:@"MAXpcErrorDataMismatch"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:6 codeName:@"MAXpcErrorEmptyData"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:7 codeName:@"MAXpcErrorConnectionTerminated"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:8 codeName:@"MAXpcErrorUnableToReply"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:0 codeName:@"MAQuerySuccessful"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:0 codeName:@"MAQuerySuccessful"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:1 codeName:@"MAQueryXpcError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:3 codeName:@"MAQueryFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:4 codeName:@"MAQueryDaemonExit"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:5 codeName:@"MAQueryNotEntitled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:6 codeName:@"MAQueryCannotCreateMessage"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:7 codeName:@"MAQueryNilAssetType"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:8 codeName:@"MAQueryParamsEncodeFailure"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:11 codeName:@"MAQueryXpcLengthError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:12 codeName:@"MAQueryUnknownResult"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:13 codeName:@"MAQueryTooManyResults"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:14 codeName:@"MAQueryHasAllowedDifferences"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:0 codeName:@"MAPurgeSucceeded"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:3 codeName:@"MAPurgeAssetDidntExist"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:4 codeName:@"MAPurgeAssetCouldntPurge"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:5 codeName:@"MAPurgeFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:6 codeName:@"MAPurgeNotEntitled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:7 codeName:@"MAPurgeNotApplicableForRequireByOs"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:8 codeName:@"MAPurgeCouldNotCancelAllDownloads"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:9 codeName:@"MAPurgeCannotCreateMessage"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:10 codeName:@"MAPurgeEncodingFailure"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:11 codeName:@"MAPurgeFailedBeforeFirstUnlock"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:12 codeName:@"MAPurgePartiallyComplete"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:0 codeName:@"MADownloadSuccessful"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:1 codeName:@"MADownloadXpcError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:3 codeName:@"MADownloadFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:4 codeName:@"MADownloadStagingFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:5 codeName:@"MADownloadMetaDataProcessFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:6 codeName:@"MADownloadUnzipFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:7 codeName:@"MADownloadMoveFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:8 codeName:@"MADownloadInstallFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:9 codeName:@"MADownloadDaemonExit"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:10 codeName:@"MADownloadAssetAlreadyInstalled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:12 codeName:@"MADownloadNotEntitled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:13 codeName:@"MADownloadDaemonNotReady"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:14 codeName:@"MADownloadNoChange"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:15 codeName:@"MADownloadNotApplicableForRequireByOs"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:16 codeName:@"MADownloadNoExtractorFailure"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:17 codeName:@"MADownloadTransformFailure"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:18 codeName:@"MADownloadNoMatchFound"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:19 codeName:@"MADownloadNilAssetType"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:20 codeName:@"MADownloadNilAssetId"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:21 codeName:@"MADownloadStreamingZipNotSupported"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:22 codeName:@"MADownloadBadOptions"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:23 codeName:@"MADownloadAssetBadMetaData"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:24 codeName:@"MADownloadUnableToCreateMessage"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:25 codeName:@"MADownloadFailedNoStandardUrl"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:26 codeName:@"MADownloadFailedNoFallBackUrl"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:27 codeName:@"MADownloadFailedNoPallasUrl"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:28 codeName:@"MADownloadLostTask"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:29 codeName:@"MADownloadNotApplicableForInstalledWithOs"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:30 codeName:@"MADownloadNoValidSession"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:31 codeName:@"MADownloadResponseDeferred"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:32 codeName:@"MADownloadIncomplete"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadNotAllowed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadNotAllowed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:35 codeName:@"MADownloadUnknownResult"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:36 codeName:@"MADownloadAssetNoLongerInCatalog"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:37 codeName:@"MADownloadNoSpaceLeft"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:38 codeName:@"MADownloadCouldNotReplace"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:39 codeName:@"MADownloadMalformedAssetType"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:40 codeName:@"MADownloadServerBadRequest"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:41 codeName:@"MADownloadServerAuthFailure"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:42 codeName:@"MADownloadServerError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:43 codeName:@"MADownloadNotFoundOrDenied"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:44 codeName:@"MADownloadNotFound"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:45 codeName:@"MADownloadServerInternalError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:46 codeName:@"MADownloadMalformedAssetData"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:47 codeName:@"MADownloadNetworkingError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:48 codeName:@"MADownloadCancelled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:49 codeName:@"MADownloadBadUrl"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:50 codeName:@"MADownloadBadServerResponse"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:51 codeName:@"MADownloadTimedOut"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:52 codeName:@"MADownloadTimedOutRequest"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:53 codeName:@"MADownloadTimedOutResource"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:54 codeName:@"MADownloadTimedOutWatchdog"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:55 codeName:@"MADownloadTimedOutStart"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:56 codeName:@"MADownloadTimedOutConnection"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:57 codeName:@"MADownloadCannotLoadFromNetwork"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:58 codeName:@"MADownloadUnsupportedURL"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:59 codeName:@"MADownloadCannotFindHost"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:60 codeName:@"MADownloadCannotConnectToHost"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:61 codeName:@"MADownloadNetworkConnectionLost"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:62 codeName:@"MADownloadDNSLookupFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:63 codeName:@"MADownloadHTTPTooManyRedirects"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:64 codeName:@"MADownloadResourceUnavailable"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:65 codeName:@"MADownloadNotConnectedToInternet"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:66 codeName:@"MADownloadRedirectToNonExistentLocation"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:67 codeName:@"MADownloadInternationalRoamingOff"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:68 codeName:@"MADownloadCallIsActive"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:69 codeName:@"MADownloadDataNotAllowed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:70 codeName:@"MADownloadSecureConnectionFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:71 codeName:@"MADownloadInvalidReceipts"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:72 codeName:@"MADownloadFailedNoFallbackAllowed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:73 codeName:@"MADownloadLiveServerDisabledNoFallback"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:74 codeName:@"MADownloadMalformedPurpose"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:75 codeName:@"MADownloadSSOFailure"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:76 codeName:@"MADownloadCopyFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:77 codeName:@"MADownloadInvalidPaths"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:78 codeName:@"MADownloadIncompatibleBrain"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:79 codeName:@"MADownloadNewBrainRequired"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:80 codeName:@"MADownloadTimeoutNoContent"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:81 codeName:@"MADownloadTimedOutBecameStalled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:82 codeName:@"MADownloadTimedOutSlowDownload"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:83 codeName:@"MADownloadTimedOutFrequentStalls"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:84 codeName:@"MADownloadAssetMissingDecryptionKey"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:85 codeName:@"MADownloadContentDecryptionFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:86 codeName:@"MADownloadConflict"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:0 codeName:@"MACancelSucceeded"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:1 codeName:@"MSCancelXpcError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:1 codeName:@"MSCancelXpcError"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:2 codeName:@"MACancelConnectionInterupted"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:2 codeName:@"MACancelConnectionInterupted"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:3 codeName:@"MACancelWasNotDownloading"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:4 codeName:@"MACancelFailed"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:5 codeName:@"MACancelNotEntitled"];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:6 codeName:@"MACancelNotApplicableForRequireByOs"];

  return [SUCoreErrorInformation attributesOfErrorForDomain:@"com.apple.MobileAssetError.CancelDownload" withCode:7 codeName:@"MACancelNotApplicableForInstalledWithOs"];
}

void mapMABrainErrorIndications()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  [v0 setObject:@"Unimplemented" forKey:&off_4F8078];
  [v0 setObject:@"None" forKey:&off_4F8090];
  [v0 setObject:@"Alloc" forKey:&off_4F80A8];
  [v0 setObject:@"AssetNotInstalled" forKey:&off_4F80C0];
  [v0 setObject:@"AuthInstall" forKey:&off_4F80D8];
  [v0 setObject:@"GraftInfo" forKey:&off_4F80F0];
  [v0 setObject:@"Graft" forKey:&off_4F8108];
  [v0 setObject:@"Ungraft" forKey:&off_4F8120];
  [v0 setObject:@"AppleConnect" forKey:&off_4F8138];
  [v0 setObject:@"Canceled" forKey:&off_4F8150];
  [v0 setObject:@"PrerollNonce" forKey:&off_4F8168];
  [v0 setObject:@"RollNonce" forKey:&off_4F8180];
  [v0 setObject:@"ScanFailed" forKey:&off_4F8198];
  [v0 setObject:@"ScanCatalogDownloadFailed" forKey:&off_4F81B0];
  [v0 setObject:@"ScanNoUpdateFound" forKey:&off_4F81C8];
  [v0 setObject:@"DownloadAssetFailed" forKey:&off_4F81E0];
  [v0 setObject:@"InstallFailed" forKey:&off_4F81F8];
  [v0 setObject:@"InstallCreateBrainDirFailed" forKey:&off_4F8210];
  [v0 setObject:@"InstallWriteBrainPlistFailed" forKey:&off_4F8228];
  [v0 setObject:@"InstallWriteStageFileFailed" forKey:&off_4F8240];
  [v0 setObject:@"ClientCommunication" forKey:&off_4F8258];
  [v0 setObject:@"GetBrainInfo" forKey:&off_4F8270];
  [v0 setObject:@"DictionaryEnumerationFailure" forKey:&off_4F8288];
  [v0 setObject:@"InvalidDictionaryType" forKey:&off_4F82A0];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = v0;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 integerValue];
        v8 = [v1 objectForKeyedSubscript:v6];
        [SUCoreErrorInformation attributesOfErrorForDomain:@"MobileAssetBrainErrorDomain" withCode:v7 codeName:v8];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

const __CFString *stringForSecureMABundleCommand(int a1)
{
  if ((a1 - 2) > 6)
  {
    return @"SECUREMABUNDLE_COMMAND_PERSONALIZE";
  }

  else
  {
    return *(&off_4B61B8 + (a1 - 2));
  }
}

id MAErrorWithUnderlyingUserInfoAndString(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  v14 = v13;
  if (v12)
  {
    [v13 setObject:v12 forKey:NSLocalizedDescriptionKey];
  }

  if (v10)
  {
    [v14 setObject:v10 forKey:NSUnderlyingErrorKey];
  }

  if (v11)
  {
    v25 = a2;
    v26 = v10;
    v27 = v9;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          v22 = [v15 objectForKey:v20];
          [v14 setObject:v22 forKey:v20];

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    v10 = v26;
    v9 = v27;
    a2 = v25;
  }

  v23 = [NSError errorWithDomain:v9 code:a2 userInfo:v14];

  return v23;
}

id MAError(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a1;
  v13 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

  v14 = MAErrorWithUnderlyingUserInfoAndString(v12, a2, 0, 0, v13);

  return v14;
}

id MAErrorWithUnderlying(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v13 = a3;
  v14 = a1;
  v15 = [[NSString alloc] initWithFormat:v12 arguments:&a9];

  v16 = MAErrorWithUnderlyingUserInfoAndString(v14, a2, v13, 0, v15);

  return v16;
}

BOOL isDownloadResultFailure(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 == 14;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

BOOL isDownloadResultSuggestingTryAgainLater(uint64_t a1)
{
  result = 1;
  if ((a1 - 16) > 0x37 || ((1 << (a1 - 16)) & 0x800000800C4007) == 0)
  {
    return a1 == 3;
  }

  return result;
}

BOOL isDownloadResultSuggestingCheckConfiguration(uint64_t a1)
{
  result = 1;
  if ((a1 - 25) > 0x34 || ((1 << (a1 - 25)) & 0x158246032C8007) == 0)
  {
    return (a1 - 5) < 2;
  }

  return result;
}

id MAErrorForDownloadResultWithUnderlying(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  if (v12)
  {
    v13 = [[NSString alloc] initWithFormat:v12 arguments:&a9];
  }

  else
  {
    v13 = errorStringForMADownloadResult(a1);
  }

  v14 = v13;
  v15 = objc_opt_new();
  v16 = v15;
  if (a1 > 35)
  {
    if (a1 > 44)
    {
      if (a1 != 45)
      {
        if (a1 == 48)
        {
          goto LABEL_24;
        }

        if (a1 != 70)
        {
          goto LABEL_27;
        }

        v17 = @"checkClockAndCerts";
        goto LABEL_37;
      }
    }

    else if ((a1 - 41) >= 2)
    {
      if (a1 == 36)
      {
        goto LABEL_24;
      }

      if (a1 != 37)
      {
        goto LABEL_27;
      }

      v17 = @"checkSpaceNeeded";
LABEL_37:
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:v17];
      goto LABEL_38;
    }

LABEL_26:
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"checkServer"];
    goto LABEL_27;
  }

  if (a1 <= 27)
  {
    if ((a1 - 14) >= 2 && a1 && a1 != 10)
    {
      goto LABEL_27;
    }

LABEL_18:
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"usableDownload"];
    if (a1 != 10)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((a1 - 31) < 2 || a1 == 28)
  {
LABEL_24:
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"requeryIsHelpful"];
    if (a1 > 0x2D || ((1 << a1) & 0x260000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a1 == 29)
  {
    goto LABEL_18;
  }

LABEL_27:
  if ((a1 & 0xFFFFFFFFFFFFFFFCLL) == 0x50)
  {
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"timeoutWithDetail"];
  }

  v17 = @"checkFilesystemState";
  v18 = @"checkNetwork";
  switch(a1)
  {
    case 4:
    case 7:
    case 33:
    case 38:
    case 76:
      goto LABEL_37;
    case 11:
    case 12:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 39:
    case 74:
      goto LABEL_30;
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
    case 80:
    case 81:
    case 82:
    case 83:
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"checkTimeoutConditions"];
      v19 = a1 - 33;
      if ((a1 - 33) > 0x2B)
      {
        break;
      }

      if (((1 << v19) & 0xDB9200000) != 0)
      {
        v18 = @"checkNetwork";
        goto LABEL_34;
      }

      if (((1 << v19) & 0x80000000021) != 0)
      {
LABEL_36:
        v17 = @"checkFilesystemState";
        goto LABEL_37;
      }

      if (a1 == 74)
      {
LABEL_30:
        v18 = @"checkClient";
LABEL_34:
        [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:v18];
        if ((a1 - 33) <= 0x2B && ((1 << (a1 - 33)) & 0x80000000021) != 0)
        {
          goto LABEL_36;
        }

        break;
      }

      break;
    case 54:
    case 57:
    case 60:
    case 61:
    case 62:
    case 64:
    case 65:
    case 67:
    case 68:
      goto LABEL_34;
    default:
      break;
  }

LABEL_38:
  if (isDownloadResultSuggestingTryAgainLater(a1))
  {
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"tryAgainLater"];
  }

  if (a1 <= 0x18 && ((1 << a1) & 0x1002306) != 0)
  {
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"retryWithBackoff"];
  }

  if (isDownloadResultSuggestingCheckConfiguration(a1))
  {
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"checkConfiguration"];
  }

  if (a1 <= 0x23)
  {
    if (((1 << a1) & 0x900000108) != 0)
    {
      v20 = @"generic";
LABEL_48:
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:v20];
      goto LABEL_49;
    }

    if (a1 == 18)
    {
      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:@"pallasNoPMVMatchFound"];
      v20 = @"pallasNoBuildVersionMatchFound";
      goto LABEL_48;
    }
  }

  if (a1 == 75)
  {
    v20 = @"checkSSO";
    goto LABEL_48;
  }

LABEL_49:
  v21 = MAErrorWithUnderlyingUserInfoAndString(@"com.apple.MobileAssetError.Download", a1, v11, v16, v14);

  return v21;
}

id assetPathDirectory(void *a1)
{
  v1 = [a1 pathComponents];
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [v1 count] - 1;
  do
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    v4 = [v1 objectAtIndexedSubscript:v3];
    [v2 insertObject:v4 atIndex:0];
    v5 = [v4 hasPrefix:@"com_apple_MobileAsset"];

    --v3;
  }

  while (!v5);
  if ([v2 count])
  {
    v6 = [NSString pathWithComponents:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t xpcRequestFieldsRequired(unsigned int a1)
{
  if (a1 > 0x30)
  {
    return 2049;
  }

  else
  {
    return qword_33C240[a1];
  }
}

uint64_t xpcRequestFieldsOptional(unsigned int a1)
{
  if (a1 > 0x30)
  {
    return 0;
  }

  else
  {
    return qword_33C3C8[a1];
  }
}

uint64_t safeAtomicWriteToPath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  if (!v4)
  {
    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "safeAtomicWriteToPath";
      v17 = "Invalid path passed to %{public}s";
LABEL_19:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_24;
  }

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "safeAtomicWriteToPath";
      v17 = "Invalid data passed to %{public}s";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v6 = [v4 stringByDeletingLastPathComponent];
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringByAppendingPathComponent:v8];

  if ([v3 writeToFile:v9 atomically:0] && (v10 = objc_msgSend(v9, "fileSystemRepresentation"), v11 = objc_msgSend(v4, "fileSystemRepresentation"), rename(v10, v11, v12), !v13))
  {
    v15 = 0;
    v18 = 1;
  }

  else
  {
    v14 = _MADLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "safeAtomicWriteToPath";
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write item to path %{public}@", buf, 0x16u);
    }

    if ([v5 fileExistsAtPath:v9 isDirectory:0])
    {
      v20 = 0;
      [v5 removeItemAtPath:v9 error:&v20];
      v15 = v20;
      if (v15)
      {
        v16 = _MADLog(@"V2");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v22 = "safeAtomicWriteToPath";
          v23 = 2114;
          v24 = v9;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}s: Atomic write to path failed and failed to remove temp path(%{public}@): %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = 0;
  }

LABEL_24:
  return v18;
}

id deviceOSBuildVersion()
{
  v0 = +[SUCoreDevice sharedDevice];
  v1 = [v0 buildVersion];

  if (_MAPreferencesIsInternalAllowed())
  {
    v2 = _MAPreferencesCopyNSStringValue(@"FakeDeviceOSBuildVersion");
    v3 = v2;
    if (v2)
    {
      v4 = v2;

      v1 = v4;
    }
  }

  return v1;
}

uint64_t runningInDeviceRecoveryEnvironment()
{
  if (runningInDeviceRecoveryEnvironment_onceToken != -1)
  {
    runningInDeviceRecoveryEnvironment_cold_1();
  }

  return runningInDeviceRecoveryEnvironment_isRunningInDeviceRecoveryEnvironment;
}

void __runningInDeviceRecoveryEnvironment_block_invoke(id a1)
{
  if (!_MAPreferencesIsInternalAllowed() || ((LOBYTE(__size) = 0, AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"FakeDeviceRecoveryMode", &__size), __size) ? (v2 = AppBooleanValue == 0) : (v2 = 1), v2))
  {
    __size = 0;
    if (sysctlbyname("hw.osenvironment", 0, &__size, 0, 0) == -1)
    {
      v13 = _MADLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 136315138;
        v25 = v15;
        v16 = "[DetectDeviceRecoveryMode]: Unable to determine size of OS environment variable(%s). Assuming regular OS";
        v17 = v13;
        v18 = 12;
LABEL_20:
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }

    else
    {
      v3 = __size;
      v4 = malloc(__size);
      if (v4)
      {
        v5 = v4;
        bzero(v4, v3);
        if (sysctlbyname("hw.osenvironment", v5, &__size, 0, 0) == -1)
        {
          v7 = _MADLog(@"V2");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v21 = __error();
            v22 = strerror(*v21);
            *buf = 136315138;
            v25 = v22;
            v9 = "[DetectDeviceRecoveryMode]: Unable to determine OS environment(%s). Assuming regular OS";
            v10 = v7;
            v11 = OS_LOG_TYPE_ERROR;
            v12 = 12;
            goto LABEL_24;
          }
        }

        else
        {
          v6 = strncmp(v5, "device-recovery", 0xFuLL);
          v7 = _MADLog(@"V2");
          v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
          if (!v6)
          {
            if (v8)
            {
              *buf = 0;
              _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[DetectDeviceRecoveryMode]: Running in DeviceRecovery environment", buf, 2u);
            }

            runningInDeviceRecoveryEnvironment_isRunningInDeviceRecoveryEnvironment = 1;
            goto LABEL_29;
          }

          if (v8)
          {
            *buf = 0;
            v9 = "[DetectDeviceRecoveryMode]: Running in regular OS environment";
            v10 = v7;
            v11 = OS_LOG_TYPE_DEBUG;
            v12 = 2;
LABEL_24:
            _os_log_impl(&dword_0, v10, v11, v9, buf, v12);
          }
        }

LABEL_29:
        free(v5);
        return;
      }

      v13 = _MADLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "[DetectDeviceRecoveryMode]: Failed to allocate buffer to read OS environment value. Assuming regular OS";
        v17 = v13;
        v18 = 2;
        goto LABEL_20;
      }
    }

    return;
  }

  v19 = _MADLog(@"V2");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "[DetectDeviceRecoveryMode]: Returning RunningInDeviceRecoveryMode as true due to override", buf, 2u);
  }

  runningInDeviceRecoveryEnvironment_isRunningInDeviceRecoveryEnvironment = 1;
}

void sub_2378C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_237DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2383DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_238964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_23A220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23ABD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23FB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2426B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_242F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return _iterate_path_cold_1(result, a2, a3);
    }
  }

  return result;
}

void __get_aks_client_connection_block_invoke(id a1)
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_5(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_52(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t _set_path_class(const char *a1, int a2, int a3, char a4)
{
  v16 = 0;
  v15 = xmmword_33C580;
  v14 = 0;
  if (getattrlist(a1, &v15, &v14, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v14) == a3 || a2 != -1 && HIDWORD(v14) != a2)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (a4)
    {
      fprintf(__stdoutp, "%s set %i\n");
    }
  }

  else if (a4)
  {
    fprintf(__stdoutp, "%s update %i -> %i\n");
  }

  v13 = a3;
  if (!setattrlist(a1, &v15, &v13, 4uLL, 0))
  {
    return 0;
  }

  v8 = __error();
  v9 = *v8;
  v10 = __stderrp;
  v11 = strerror(*v8);
  fprintf(v10, "failed (%s) to update class for %s\n", v11, a1);
  return v9;
}

uint64_t __aks_migrate_path_block_invoke(_DWORD *a1, uint64_t a2)
{
  v2 = a1[8];
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 48);
    v4 = a1[9];
    v5 = a1[10];
    v3 = v6;
    goto LABEL_5;
  }

  if ((v2 & 8) != 0)
  {
    v3 = *(a2 + 48);
    v4 = -1;
    v5 = 0;
LABEL_5:
    _set_path_class(v3, v4, v5, v2);
  }

  return 1;
}

_DWORD *__aks_migrate_path_block_invoke_2(_DWORD *result, uint64_t a2)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[9];
    if ((v4 & 0x10) != 0)
    {
      if (result[10])
      {
        v5 = result[10];
      }

      else
      {
        v5 = 3;
      }

      return _set_path_class(*(a2 + 48), v3, v5, v4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger((a4 + 16), &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

char **DERParseInteger(char **a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return (&dword_4 + 3);
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

char **DERParseInteger64(char **result, unint64_t *a2)
{
  v2 = result[1];
  if (!v2)
  {
    return (&dword_0 + 3);
  }

  v3 = *result;
  if (**result < 0)
  {
    return (&dword_0 + 3);
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return (&dword_4 + 3);
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return (&dword_4 + 3);
      }

      goto LABEL_7;
    }

    return (&dword_0 + 3);
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

void sub_24889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MAInternalServerTrustCredential(void *a1)
{
  v1 = [a1 protectionSpace];
  v2 = [v1 authenticationMethod];
  v3 = [v1 host];
  v4 = [v3 hasSuffix:@".sd.apple.com"];
  if ([v2 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = [v1 serverTrust];
  if (MAInternalServerAnchorCertificates_once != -1)
  {
    MAInternalServerTrustCredential_cold_1();
  }

  SecTrustSetAnchorCertificates(v6, MAInternalServerAnchorCertificates_anchors);
  SecTrustSetAnchorCertificatesOnly(v6, 0);
  if (!SecTrustEvaluateWithError(v6, 0))
  {
LABEL_9:
    v7 = 0;
  }

  else
  {
    v7 = [NSURLCredential credentialForTrust:v6];
  }

  return v7;
}

void sub_24D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 184), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

id _maLeaveAAErrorContext()
{
  v2 = 0;
  ParallelCompressionLeaveThreadErrorContext(&v2, 0, 0);
  v0 = v2;

  return v0;
}

void sub_24F444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_24F650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24F8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_24FB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t _AAByteStreamReleaseCallBack(int a1, AAByteStream s)
{
  if (s)
  {
    return AAByteStreamClose(s);
  }

  return result;
}

size_t _inPlaceStreamRead(uint64_t a1, uint64_t a2, size_t a3)
{
  v6 = *(a1 + 8);
  if (!dispatch_data_get_size(v6))
  {
    Ahead = _inPlaceStreamFillReadAhead(a1, *(a1 + 16) + a3);
    if (Ahead < 0)
    {
      return Ahead;
    }

    v6 = *(a1 + 8);
  }

  size = dispatch_data_get_size(v6);
  if (size >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = size;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  if (v9)
  {
    v11 = size;
    v12 = v6;
    [v12 getBytes:a2 length:v10];
    subrange = dispatch_data_create_subrange(v12, v10, v11 - v10);
    v14 = *(a1 + 8);
    *(a1 + 8) = subrange;
  }

  return v10;
}

ssize_t _inPlaceStreamWrite(uint64_t a1, const void *a2, size_t a3)
{
  if (_inPlaceStreamFillReadAhead(a1, *(a1 + 24) + a3) < 0)
  {
    return -1;
  }

  v6 = *(a1 + 24);
  result = AAByteStreamPWrite(*a1, a2, a3, v6);
  if (result >= 1)
  {
    *(a1 + 24) = result + v6;
  }

  return result;
}

uint64_t _inPlaceStreamClose(void *a1)
{
  v2 = a1[1];
  *a1 = 0;
  a1[1] = 0;

  free(a1);
  return 0;
}

uint64_t _inPlaceStreamFillReadAhead(uint64_t a1, uint64_t a2)
{
  v2 = a2 - *(a1 + 16);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = v2 >= 0x40000 ? 0x40000 : v2;
    v6 = malloc(v5);
    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 16);
    v8 = AAByteStreamPRead(*a1, v6, v5, v7);
    v9 = v8;
    if (v8 <= 0)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        free(v6);
        return v4;
      }

      break;
    }

    *(a1 + 16) = v8 + v7;
    v10 = dispatch_data_create(v6, v8, 0, _dispatch_data_destructor_free);
    concat = dispatch_data_create_concat(*(a1 + 8), v10);
    v12 = *(a1 + 8);
    *(a1 + 8) = concat;

    v2 -= v9;
    v4 += v9;

    if (v2 <= 0)
    {
      return v4;
    }
  }

  free(v6);
  return -1;
}

uint64_t _gcmDecryptionStreamRead(uint64_t a1, void *a2, size_t a3)
{
  v4 = AAByteStreamRead(*a1, a2, a3);
  v5 = v4;
  if (v4 < 0)
  {
    return v5;
  }

  if (!v4)
  {
    if (*(a1 + 28) == 1)
    {
      if (*(a1 + 24))
      {
LABEL_7:
        v5 = -2147483568;
        ParallelCompressionUpdateError(0x80000050, "failed to verify GCM tag");
        return v5;
      }
    }

    else
    {
      [*(a1 + 16) bytes];
      [*(a1 + 16) length];
      v6 = CCCryptorGCMFinalize();
      *(a1 + 24) = v6;
      *(a1 + 28) = 1;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  if (CCCryptorGCMDecrypt())
  {
    ParallelCompressionUpdateError(0x8000005CLL, "failed to decrypt buffer");
    return -2147483556;
  }

  return v5;
}

uint64_t _gcmDecryptionStreamClose(void *a1)
{
  v2 = a1[2];
  a1[2] = 0;

  v3 = a1[1];
  if (v3)
  {
    CCCryptorRelease(v3);
  }

  free(a1);
  return 0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_250C9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_250E2C()
{
  v4 = sub_303718();
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_303708();
  sub_250C9C(v3, &v0[OBJC_IVAR___MAAIRBMobileAssetAssetSelector_nativeObject]);
  v2.receiver = v0;
  v2.super_class = MAAIRBMobileAssetAssetSelector;
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_25175C()
{
  type metadata accessor for _EventReporter();
  v0 = swift_allocObject();
  result = sub_25179C();
  qword_520868 = v0;
  return result;
}

uint64_t sub_25179C()
{
  v1 = sub_303818();
  __chkstk_darwin(v1);
  sub_303808();
  sub_3037D8();
  *(v0 + 16) = sub_3037C8();
  return v0;
}

uint64_t sub_2519F0()
{

  v1 = OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger;
  v2 = sub_303818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_251C44()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_251CEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251DB8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_256644(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251DB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251EC4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_303C98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_251EC4(uint64_t a1, unint64_t a2)
{
  v2 = sub_251F2C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
  inited = swift_initStaticObject();
  sub_25205C(inited);
  return v2;
}

char *sub_251F2C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_252148(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_303C98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_303998();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_252148(v10, 0);
        result = sub_303C48();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25205C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2521BC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_252148(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2521BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_2522B0(size_t a1, int64_t a2, char a3)
{
  result = sub_252330(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2522D0(void *a1, int64_t a2, char a3)
{
  result = sub_252508(a1, a2, a3, *v3, 0, &type metadata accessor for GeneralAppleIntelligenceError);
  *v3 = result;
  return result;
}

void *sub_2522FC(void *a1, int64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = sub_252508(a1, a2, a3, *v5, a5, sub_256468);
  *v5 = result;
  return result;
}

size_t sub_252330(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186D0);
  v10 = *(sub_3036D8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_3036D8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_252508(void *result, int64_t a2, char a3, void *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518688);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = (2 * (v16 >> 3)) | 1;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a6(a5);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_252648(unint64_t a1, unint64_t a2)
{
  sub_256468(a1);
  if (a2 >> 62)
  {
    v4 = sub_303CD8();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_303C78(85);
    v5._countAndFlagsBits = 0xD000000000000046;
    v5._object = 0x8000000000439790;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(&stru_20.cmd + 8 * a1 + (a2 & 0xFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_303C78(82);
  v5._object = 0x8000000000439740;
  v5._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_303988(v5);
  v7._countAndFlagsBits = sub_303DF8();
  sub_303988(v7);

  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  sub_303988(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = sub_303DF8();
  sub_303988(v9);

  result = sub_303CB8();
  __break(1u);
  return result;
}

id sub_252810(uint64_t a1)
{
  v3 = sub_3036D8();
  __chkstk_darwin(v3);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetAssetSet_nativeObject, v6);
  swift_dynamicCast();
  v7 = sub_303628();
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_303618();
  sub_250C9C(v6, &v1[OBJC_IVAR___MAAIRBMobileAssetAtomicInstance_nativeObject]);
  v5.receiver = v1;
  v5.super_class = MAAIRBMobileAssetAtomicInstance;
  return objc_msgSendSuper2(&v5, "init");
}

size_t sub_252948(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_303728();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_303658();
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject, v43);
  swift_dynamicCast();
  if (a3 >> 62)
  {
    v13 = sub_303CC8();
  }

  else
  {
    v13 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v13)
  {
LABEL_16:
    sub_303638();
    (*(v7 + 104))(v9, enum case for AppleIntelligenceAssetDeliveryEvent.EventType.mobileAssetScheduler(_:), v6);
    v31 = objc_allocWithZone(MAAIRBAppleIntelligenceAssetDeliveryEventType);
    v32 = &v31[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject];
    v32[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
    v41.receiver = v31;
    v41.super_class = MAAIRBAppleIntelligenceAssetDeliveryEventType;
    v34 = objc_msgSendSuper2(&v41, "init");
    (*(v7 + 8))(v9, v6);
    return v34;
  }

  v42 = &_swiftEmptyArrayStorage;
  result = sub_2522B0(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v35[0] = v12;
    v35[1] = a2;
    v36 = v9;
    v37 = v7;
    v38 = v6;
    v15 = v42;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v40 = a3;
      v16 = sub_3036D8();
      v17 = v16;
      v18 = 0;
      v19 = *(v16 - 8);
      v20 = *(v19 + 64);
      v39 = v19 + 32;
      do
      {
        __chkstk_darwin(v16);
        v21 = sub_252648(v18, v40);
        sub_256644(v21 + OBJC_IVAR___MAAIRBMobileAssetAssetSet_nativeObject, v43);
        swift_unknownObjectRelease();
        swift_dynamicCast();
        v42 = v15;
        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          sub_2522B0(v22 > 1, v23 + 1, 1);
          v15 = v42;
        }

        ++v18;
        v15[2] = v23 + 1;
        v16 = (*(v19 + 32))(v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v23, v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      }

      while (v13 != v18);
    }

    else
    {
      v24 = (a3 + 32);
      v25 = sub_3036D8();
      v26 = v25;
      v27 = *(v25 - 8);
      v28 = *(v27 + 64);
      v40 = v27 + 32;
      do
      {
        __chkstk_darwin(v25);
        sub_256644(*v24 + OBJC_IVAR___MAAIRBMobileAssetAssetSet_nativeObject, v43);
        swift_dynamicCast();
        v42 = v15;
        v30 = v15[2];
        v29 = v15[3];
        if (v30 >= v29 >> 1)
        {
          sub_2522B0(v29 > 1, v30 + 1, 1);
          v15 = v42;
        }

        v15[2] = v30 + 1;
        v25 = (*(v27 + 32))(v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30, v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        ++v24;
        --v13;
      }

      while (v13);
    }

    v7 = v37;
    v6 = v38;
    v9 = v36;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_252E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[2] = a5;
  v19[3] = a6;
  v19[1] = a4;
  v8 = sub_303728();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_303658();
  __chkstk_darwin(v12);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject, v21);
  swift_dynamicCast();
  v13 = sub_3036D8();
  __chkstk_darwin(v13);
  sub_256644(a2 + OBJC_IVAR___MAAIRBMobileAssetAssetSet_nativeObject, v21);
  swift_dynamicCast();

  sub_303678();
  (*(v9 + 104))(v11, enum case for AppleIntelligenceAssetDeliveryEvent.EventType.mobileAssetSetConfiguration(_:), v8);
  v14 = objc_allocWithZone(MAAIRBAppleIntelligenceAssetDeliveryEventType);
  v15 = &v14[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject];
  v15[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(v9 + 16))(boxed_opaque_existential_0, v11, v8);
  v20.receiver = v14;
  v20.super_class = MAAIRBAppleIntelligenceAssetDeliveryEventType;
  v17 = objc_msgSendSuper2(&v20, "init");
  (*(v9 + 8))(v11, v8);
  return v17;
}

id sub_2530E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_303728();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_303658();
  __chkstk_darwin(v8);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject, v20);
  swift_dynamicCast();
  v9 = sub_303718();
  __chkstk_darwin(v9);
  sub_256644(a2 + OBJC_IVAR___MAAIRBMobileAssetAssetSelector_nativeObject, v20);
  swift_dynamicCast();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_3036E8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_3036F8();
  (*(v5 + 104))(v7, enum case for AppleIntelligenceAssetDeliveryEvent.EventType.mobileAssetAssetJob(_:), v4);
  v14 = objc_allocWithZone(MAAIRBAppleIntelligenceAssetDeliveryEventType);
  v15 = &v14[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject];
  v15[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(v5 + 16))(boxed_opaque_existential_0, v7, v4);
  v19.receiver = v14;
  v19.super_class = MAAIRBAppleIntelligenceAssetDeliveryEventType;
  v17 = objc_msgSendSuper2(&v19, "init");
  (*(v5 + 8))(v7, v4);
  return v17;
}

id sub_2533DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_303728();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_303658();
  __chkstk_darwin(v8);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject, v16);
  swift_dynamicCast();
  v9 = sub_303718();
  __chkstk_darwin(v9);
  sub_256644(a2 + OBJC_IVAR___MAAIRBMobileAssetAssetSelector_nativeObject, v16);
  swift_dynamicCast();
  sub_3036B8();
  (*(v5 + 104))(v7, enum case for AppleIntelligenceAssetDeliveryEvent.EventType.mobileAssetAssetUpdate(_:), v4);
  v10 = objc_allocWithZone(MAAIRBAppleIntelligenceAssetDeliveryEventType);
  v11 = &v10[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject];
  v11[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(v5 + 16))(boxed_opaque_existential_0, v7, v4);
  v15.receiver = v10;
  v15.super_class = MAAIRBAppleIntelligenceAssetDeliveryEventType;
  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v5 + 8))(v7, v4);
  return v13;
}

id sub_253640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_303728();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_303658();
  __chkstk_darwin(v10);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject, v30);
  swift_dynamicCast();
  v11 = sub_303718();
  __chkstk_darwin(v11);
  sub_256644(a2 + OBJC_IVAR___MAAIRBMobileAssetAssetSelector_nativeObject, v30);
  swift_dynamicCast();
  v12 = sub_303688();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  if ((a3 - 1) > 2)
  {
    v19 = &enum case for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.SecureOperationType.personalization(_:);
  }

  else
  {
    v19 = *(&off_4B66C0 + a3 - 1);
  }

  (*(v13 + 104))(&v29 - v17, *v19, v12);
  (*(v13 + 32))(v16, v18, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186C0);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  v23 = sub_303698();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  sub_3036A8();
  (*(v7 + 104))(v9, enum case for AppleIntelligenceAssetDeliveryEvent.EventType.mobileAssetSecure(_:), v6);
  v24 = objc_allocWithZone(MAAIRBAppleIntelligenceAssetDeliveryEventType);
  v25 = &v24[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject];
  v25[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
  v29.receiver = v24;
  v29.super_class = MAAIRBAppleIntelligenceAssetDeliveryEventType;
  v27 = objc_msgSendSuper2(&v29, "init");
  (*(v7 + 8))(v9, v6);
  return v27;
}

id sub_253A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_303728();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_303658();
  __chkstk_darwin(v8);
  sub_256644(a1 + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject, v16);
  swift_dynamicCast();
  v9 = sub_303628();
  __chkstk_darwin(v9);
  sub_256644(a2 + OBJC_IVAR___MAAIRBMobileAssetAtomicInstance_nativeObject, v16);
  swift_dynamicCast();
  sub_303668();
  (*(v5 + 104))(v7, enum case for AppleIntelligenceAssetDeliveryEvent.EventType.mobileAssetAtomicInstance(_:), v4);
  v10 = objc_allocWithZone(MAAIRBAppleIntelligenceAssetDeliveryEventType);
  v11 = &v10[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject];
  v11[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(v5 + 16))(boxed_opaque_existential_0, v7, v4);
  v15.receiver = v10;
  v15.super_class = MAAIRBAppleIntelligenceAssetDeliveryEventType;
  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v5 + 8))(v7, v4);
  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext();
    *a1 = result;
  }

  return result;
}

id sub_253D00(void *a1, uint64_t a2)
{
  v5 = sub_303738();
  __chkstk_darwin(v5);
  (*(v7 + 104))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for AppleIntelligenceAssetDeliveryEvent.Subsystem.mobileAsset(_:));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_303778();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v13 = v12[2];
  if (v13)
  {
    v22 = a2;
    v23 = v2;
    *&v25 = &_swiftEmptyArrayStorage;
    sub_2522D0(0, v13, 0);
    sub_303608();
    v14 = 32;
    v15 = v25;
    do
    {
      swift_errorRetain();
      v16 = sub_3035F8();
      *&v25 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v16;
        sub_2522D0((v17 > 1), v18 + 1, 1);
        v16 = v19;
        v15 = v25;
      }

      *(v15 + 16) = v18 + 1;
      *(v15 + 8 * v18 + 32) = v16;
      v14 += 8;
      --v13;
    }

    while (v13);

    a2 = v22;
    v2 = v23;
  }

  else
  {
  }

  v20 = sub_303728();
  __chkstk_darwin(v20);
  sub_256644(a2 + OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEventType_nativeObject, &v25);
  swift_dynamicCast();
  v26 = sub_303758();
  __swift_allocate_boxed_opaque_existential_0(&v25);
  sub_303748();
  sub_250C9C(&v25, &v2[OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEvent_nativeObject]);
  v24.receiver = v2;
  v24.super_class = MAAIRBAppleIntelligenceAssetDeliveryEvent;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_254038(void *a1)
{
  v2 = sub_303818();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v53 = v44 - v8;
  v9 = __chkstk_darwin(v7);
  v44[0] = v44 - v10;
  __chkstk_darwin(v9);
  v12 = v44 - v11;
  if (qword_51A7C0 != -1)
  {
    swift_once();
  }

  v13 = qword_520868;
  v14 = *(v3 + 16);
  v54 = OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger;
  v55 = v14;
  v56 = v3 + 16;
  v14(v12, qword_520868 + OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger, v2);
  v15 = a1;
  v16 = sub_3037F8();
  v17 = sub_303B58();

  v18 = os_log_type_enabled(v16, v17);
  v52 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = v13;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57[0] = v22;
    *v19 = 136315394;
    *(v19 + 4) = sub_251CEC(0xD00000000000001ELL, 0x8000000000439720, v57);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v21 = v15;
    v23 = v15;
    _os_log_impl(&dword_0, v16, v17, "[%s] Emitting event: %@", v19, 0x16u);
    sub_2566A0(v21, &qword_5186A0);
    v13 = v20;

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v24 = *(v3 + 8);
  v24(v12, v2);
  v25 = *(v13 + 16);
  if (v25)
  {
    v45 = v13;
    v48 = v24;
    v49 = v3;
    v53 = v2;
    v26 = sub_303788();
    v47 = v44;
    v50 = *(v26 - 8);
    v51 = v26;
    __chkstk_darwin(v26);
    v27 = sub_303768();
    v44[1] = v44;
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_256644(v15 + OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEvent_nativeObject, v57);
    sub_303758();

    swift_dynamicCast();
    v31 = (*(v28 + 104))(v30, enum case for AppleIntelligenceEvent.assetDelivery(_:), v27);
    __chkstk_darwin(v31);
    v46 = v25;
    sub_3037B8();
    (*(v28 + 8))(v30, v27);
    v37 = v44[0];
    v38 = v53;
    v55(v44[0], v45 + v54, v53);
    v39 = sub_3037F8();
    v40 = sub_303B58();
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_251CEC(0xD00000000000001ELL, 0x8000000000439720, v57);
      _os_log_impl(&dword_0, v39, v40, "[%s] Successfully emitted event", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    return v48(v37, v38);
  }

  else
  {
    v55(v53, v13 + v54, v2);
    v32 = sub_3037F8();
    v33 = sub_303B68();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_251CEC(0xD00000000000001ELL, 0x8000000000439720, v57);
      _os_log_impl(&dword_0, v32, v33, "[%s] No event reporter", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    return (v24)(v53, v2);
  }
}

uint64_t sub_254A20(void *a1)
{
  v2 = sub_303818();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v73 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v77 = &v57 - v7;
  v8 = __chkstk_darwin(v6);
  v70 = &v57 - v9;
  __chkstk_darwin(v8);
  v11 = &v57 - v10;
  if (qword_51A7C0 != -1)
  {
    swift_once();
  }

  v12 = qword_520868;
  v13 = *(v3 + 16);
  v75 = OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger;
  v76 = v13;
  (v13)(v11, qword_520868 + OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger, v2);
  v14 = a1;
  v15 = sub_3037F8();
  v16 = sub_303B58();

  v17 = os_log_type_enabled(v15, v16);
  v78 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v79[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_251CEC(0xD000000000000023, 0x80000000004396F0, v79);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v19 = v14;
    v21 = v14;
    _os_log_impl(&dword_0, v15, v16, "[%s] Emitting event: %@", v18, 0x16u);
    sub_2566A0(v19, &qword_5186A0);

    __swift_destroy_boxed_opaque_existential_0(v20);
    v3 = v78;
  }

  v22 = *(v3 + 8);
  v22(v11, v2);
  v23 = *(v12 + 16);
  if (v23)
  {
    v66 = v12;
    v69 = v22;
    v74 = v2;
    v24 = v23;
    v25 = sub_303788();
    v68 = &v57;
    v71 = *(v25 - 8);
    v72 = v25;
    v26 = *(v71 + 64);
    __chkstk_darwin(v25);
    v62 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = sub_3037E8();
    v77 = &v57;
    v61 = v27;
    v60 = *(v27 - 8);
    __chkstk_darwin(v27);
    v59 = v28;
    v58 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
    v29 = &v57 - v58;
    v30 = sub_303768();
    v65 = &v57;
    v31 = *(v30 - 8);
    __chkstk_darwin(v30);
    v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_256644(v14 + OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEvent_nativeObject, v79);
    sub_303758();

    swift_dynamicCast();
    v34 = (*(v31 + 104))(v33, enum case for AppleIntelligenceEvent.assetDelivery(_:), v30);
    __chkstk_darwin(v34);
    v63 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
    v64 = v29;
    v67 = v24;
    sub_3037A8();
    (*(v31 + 8))(v33, v30);
    v40 = v74;
    v41 = v70;
    v42 = (v76)(v70, v66 + v75, v74);
    __chkstk_darwin(v42);
    v43 = &v57 - v58;
    v44 = v60;
    v45 = v61;
    (*(v60 + 16))(&v57 - v58, v64, v61);
    v46 = sub_3037F8();
    v47 = sub_303B58();
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_251CEC(0xD000000000000023, 0x80000000004396F0, v79);
      *(v49 + 12) = 2080;
      sub_256700(&qword_5186B0, &type metadata accessor for UUIDIdentifier);
      v50 = sub_303CF8();
      v76 = &v57;
      v51 = v45;
      v53 = v52;
      v54 = *(v44 + 8);
      v54(v43, v51);
      v55 = sub_251CEC(v50, v53, v79);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_0, v46, v47, "[%s] Successfully emitted event; identifier: %s", v49, 0x16u);
      swift_arrayDestroy();

      v69(v70, v74);
      return (v54)(v64, v51);
    }

    else
    {

      v56 = *(v44 + 8);
      v56(v43, v45);
      v69(v41, v40);
      return (v56)(v64, v45);
    }
  }

  else
  {
    (v76)(v77, v12 + v75, v2);
    v35 = sub_3037F8();
    v36 = sub_303B68();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_251CEC(0xD000000000000023, 0x80000000004396F0, v79);
      _os_log_impl(&dword_0, v35, v36, "[%s] No event reporter", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    return (v22)(v77, v2);
  }
}

uint64_t sub_255658(void *a1)
{
  v2 = sub_303818();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v60 = &v48 - v8;
  v9 = __chkstk_darwin(v7);
  v49 = &v48 - v10;
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  if (qword_51A7C0 != -1)
  {
    swift_once();
  }

  v13 = qword_520868;
  v14 = *(v3 + 16);
  v61 = OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger;
  v62 = v14;
  v63 = v3 + 16;
  v14(v12, qword_520868 + OBJC_IVAR____TtC21MobileAssetKeyManager14_EventReporter_logger, v2);
  v15 = a1;
  v16 = sub_3037F8();
  v17 = sub_303B58();

  v18 = os_log_type_enabled(v16, v17);
  v59 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v64[0] = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_251CEC(0xD000000000000021, 0x80000000004396C0, v64);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    v22 = v15;
    _os_log_impl(&dword_0, v16, v17, "[%s] Emitting event: %@", v19, 0x16u);
    sub_2566A0(v20, &qword_5186A0);

    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v23 = *(v3 + 8);
  v23(v12, v2);
  v24 = *(v13 + 16);
  if (v24)
  {
    v52 = v13;
    v55 = v23;
    v56 = v3;
    v60 = v2;
    v25 = sub_303788();
    v54 = &v48;
    v57 = *(v25 - 8);
    v58 = v25;
    v26 = *(v57 + 64);
    __chkstk_darwin(v25);
    v48 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = sub_303768();
    v51 = &v48;
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_256644(v15 + OBJC_IVAR___MAAIRBAppleIntelligenceAssetDeliveryEvent_nativeObject, v64);
    sub_303758();

    swift_dynamicCast();
    (*(v28 + 104))(v30, enum case for AppleIntelligenceEvent.assetDelivery(_:), v27);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518690);
    v50 = &v48;
    __chkstk_darwin(v31 - 8);
    v33 = &v48 - v32;
    v34 = sub_3037E8();
    v35 = (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    __chkstk_darwin(v35);
    v53 = v24;
    sub_303798();
    sub_2566A0(v33, &qword_518690);
    (*(v28 + 8))(v30, v27);
    v41 = v49;
    v42 = v60;
    v62(v49, v52 + v61, v60);
    v43 = sub_3037F8();
    v44 = sub_303B58();
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_251CEC(0xD000000000000021, 0x80000000004396C0, v64);
      _os_log_impl(&dword_0, v43, v44, "[%s] Successfully emitted event", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    return v55(v41, v42);
  }

  else
  {
    v62(v60, v13 + v61, v2);
    v36 = sub_3037F8();
    v37 = sub_303B68();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v64[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_251CEC(0xD000000000000021, 0x80000000004396C0, v64);
      _os_log_impl(&dword_0, v36, v37, "[%s] No event reporter", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    return (v23)(v60, v2);
  }
}

BOOL sub_256110()
{
  if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata)
  {
    v0 = &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata == 0 || &type metadata accessor for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata == 0 || &nominal type descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata == 0 || &type metadata for AppleIntelligenceAssetDeliveryEvent.MobileAssetOperationMetadata == 0)
  {
    return 0;
  }

  if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector)
  {
    v5 = &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector == 0 || &type metadata accessor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector == 0 || &nominal type descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector == 0;
  result = 0;
  if (!v8 && &type metadata for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSelector != 0)
  {
    if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
    {
      if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
      {
        if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
        {
          if (&type metadata accessor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
          {
            if (&nominal type descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
            {
              if (&type metadata for AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSet)
              {
                result = 0;
                if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
                {
                  if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
                  {
                    if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
                    {
                      if (&type metadata accessor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
                      {
                        if (&nominal type descriptor for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
                        {
                          if (&type metadata for AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstance)
                          {
                            result = 0;
                            if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.EventType)
                            {
                              if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.EventType)
                              {
                                if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.EventType)
                                {
                                  if (&type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType)
                                  {
                                    if (&nominal type descriptor for AppleIntelligenceAssetDeliveryEvent.EventType)
                                    {
                                      if (&type metadata for AppleIntelligenceAssetDeliveryEvent.EventType)
                                      {
                                        result = 0;
                                        if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent)
                                        {
                                          if (&protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent && &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent && &type metadata accessor for AppleIntelligenceAssetDeliveryEvent && &nominal type descriptor for AppleIntelligenceAssetDeliveryEvent && &type metadata for AppleIntelligenceAssetDeliveryEvent)
                                          {
                                            if (&metaclass for EventReporter)
                                            {
                                              v11 = &nominal type descriptor for EventReporter == 0;
                                            }

                                            else
                                            {
                                              v11 = 1;
                                            }

                                            return !v11 && &type metadata for EventReporter != 0 && &type metadata accessor for EventReporter != 0 && &class metadata base offset for EventReporter != 0;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_256324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_2522FC(0, v5, 0, a4, a5);
    v7 = a1 + 40;
    do
    {
      v8 = objc_allocWithZone(MAAIRBMobileAssetAssetSet);

      v9 = sub_303938();
      v10 = [v8 initWithAssetSetIdentifier:v9];

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_2522FC((v13 > 1), v14 + 1, 1, v11, v12);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v10;
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for _EventReporter()
{
  result = qword_51A810;
  if (!qword_51A810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_256534()
{
  result = sub_303818();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2565F8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_256644(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2566A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_256700(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25674C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __SecKey *a5)
{
  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    if (&type metadata accessor for HPKE)
    {
      v11 = &nominal type descriptor for HPKE == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && &type metadata for HPKE != 0)
    {
      v18 = SecKeyCopyExternalRepresentation(a5, 0);
      if (v18)
      {
        v19 = v18;
        v59 = sub_303598();
        v60 = v20;
        v62 = sub_3038D8();
        v63 = sub_25838C(&qword_518700, &type metadata accessor for P256.KeyAgreement.PrivateKey);
        __swift_allocate_boxed_opaque_existential_0(&v61);
        sub_3038C8();
        if (v5)
        {

LABEL_17:
          __swift_deallocate_boxed_opaque_existential_1(&v61);
          return a2;
        }

        v55 = a3;
        v56 = a4;
        *&v48 = a1;
        *(&v48 + 1) = a2;
      }

      else
      {
        v62 = sub_303838();
        v63 = sub_25838C(&qword_5186F0, &type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey);
        __swift_allocate_boxed_opaque_existential_0(&v61);
        v21 = a5;
        sub_303828();
        if (v5)
        {
          goto LABEL_17;
        }

        v55 = a3;
        v56 = a4;
        *&v48 = a1;
        *(&v48 + 1) = a2;
      }

      sub_258288(&v61, v64);
      v65 = sub_303858();
      v57 = &v45;
      v58 = *(v65 - 8);
      v52 = *(v58 + 64);
      __chkstk_darwin(v65);
      v54 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
      v23 = &v45 - v54;
      v24 = sub_303878();
      __chkstk_darwin(v24);
      (*(v26 + 104))(&v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HPKE.KEM.P256_HKDF_SHA256(_:));
      v27 = sub_303868();
      __chkstk_darwin(v27);
      (*(v29 + 104))(&v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HPKE.KDF.HKDF_SHA256(_:));
      v30 = sub_303888();
      __chkstk_darwin(v30);
      (*(v32 + 104))(&v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HPKE.AEAD.AES_GCM_256(_:));
      sub_303848();
      v33 = sub_3038B8();
      v53 = &v45;
      v46 = *(v33 - 8);
      v47 = v33;
      __chkstk_darwin(v33);
      v35 = &v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = v64[4];
      v36 = __swift_project_boxed_opaque_existential_1(v64, v64[3]);
      v51 = &v45;
      __chkstk_darwin(v36);
      v39 = (*(v38 + 16))(&v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = &v45;
      __chkstk_darwin(v39);
      v40 = v23;
      (*(v58 + 16))(&v45 - v54, v23, v65);
      sub_2582E4(v55, v56);
      v54 = v35;
      sub_303898();
      v41 = v46;
      v42 = v47;
      v43 = v58;
      v61 = v48;
      sub_258338();
      a2 = sub_3038A8();
      (*(v41 + 8))(v54, v42);
      (*(v43 + 8))(v40, v65);
      __swift_destroy_boxed_opaque_existential_0(v64);
      return a2;
    }

    v13 = 0x80000000004397E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_33CB30;
    *(inited + 32) = sub_303948();
    v16 = inited + 32;
    *(inited + 72) = &type metadata for String;
    v17 = 0xD00000000000001CLL;
  }

  else
  {
    v13 = 0x8000000000439800;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_33CB30;
    *(inited + 32) = sub_303948();
    v16 = inited + 32;
    *(inited + 72) = &type metadata for String;
    v17 = 0xD000000000000017;
  }

  *(inited + 40) = v15;
  *(inited + 48) = v17;
  *(inited + 56) = v13;
  a2 = sub_2580AC(inited);
  swift_setDeallocating();
  sub_2581BC(v16);
  type metadata accessor for MAKeyManagerError(0);
  *&v61 = 30030;
  sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);
  sub_303478();
  swift_willThrow();
  return a2;
}

uint64_t sub_256FB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __SecKey *a5)
{
  v62 = a3;
  v63 = a4;
  v50 = a2;
  v49 = a1;
  v52 = type metadata accessor for HPKE.Recipient();
  Description = v52[-1].Description;
  __chkstk_darwin(v52);
  v65 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = _s4AEADOMa();
  v57 = v58[-1].Description;
  __chkstk_darwin(v58);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _s3KDFOMa();
  v54 = v55[-1].Description;
  __chkstk_darwin(v55);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s3KEMOMa();
  v53 = v10[-1].Description;
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s11CiphersuiteVMa();
  v60 = v13[-1].Description;
  v61 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v64 = &v49 - v17;
  v59 = _s12KeyAgreementO10PrivateKeyVMa();
  v66 = v59[-1].Description;
  v18 = __chkstk_darwin(v59);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = (&v49 - v22);
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v26 = SecKeyCopyExternalRepresentation(a5, 0);
  if (v26)
  {
    inited = v26;
    v68 = sub_303598();
    v69 = v28;
    v29 = v67;
    sub_2A6EB8(&v68, &type metadata for Data, &protocol witness table for Data, v23);

    if (!v29)
    {
      v67 = v25;
      v30 = v66;
      v31 = v23;
      v32 = v59;
      v66[4](v67, v31, v59);
      (*(v53 + 13))(v12, 0, v10);
      v54[13](v9, 0, v55);
      v33 = v56;
      v57[13](v56, 1, v58);
      v34 = v64;
      sub_28CBAC(v12, v9, v33, v64);
      v35 = v30[2];
      v36 = v32;
      v35(v20, v67, v32);
      v37 = v60;
      v38 = v61;
      v60[2](v16, v34, v61);
      v40 = v62;
      v39 = v63;
      sub_2582E4(v62, v63);
      v41 = sub_2583D4(&qword_518708, _s12KeyAgreementO10PrivateKeyVMa);
      v42 = v16;
      v43 = v36;
      sub_26A984(v20, v42, 0, 0xC000000000000000, v40, v39, v36, v41, v65);
      v45 = v67;
      v68 = v49;
      v69 = v50;
      v46 = sub_258338();
      v47 = v65;
      inited = sub_26B3F8(&v68, &type metadata for Data, v46);
      Description[1](v47, v52);
      (v37[1])(v64, v38);
      (v66[1])(v45, v43);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_33CB30;
    *(inited + 32) = sub_303948();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v44;
    *(inited + 48) = 0xD000000000000022;
    *(inited + 56) = 0x8000000000439820;
    sub_2580AC(inited);
    swift_setDeallocating();
    sub_2581BC(inited + 32);
    type metadata accessor for MAKeyManagerError(0);
    v70 = 30030;
    sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);
    sub_303478();
    swift_willThrow();
  }

  return inited;
}

uint64_t sub_257774(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __SecKey *a5)
{
  result = sub_25674C(a1, a2, a3, a4, a5);
  if (v5)
  {
    type metadata accessor for Code(0);
    swift_errorRetain();
    sub_2583D4(&qword_518710, type metadata accessor for Code);
    v12 = sub_3033F8();

    if (v12)
    {

      return sub_256FB0(a1, a2, a3, a4, a5);
    }
  }

  return result;
}

id sub_257AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_257B08(uint64_t a1)
{
  v2 = sub_2583D4(&qword_518768, type metadata accessor for MAKeyManagerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_257B74(uint64_t a1)
{
  v2 = sub_2583D4(&qword_518768, type metadata accessor for MAKeyManagerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_257BE4(uint64_t a1)
{
  v2 = sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_257C60(uint64_t a1)
{
  v2 = sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_257CCC(uint64_t a1)
{
  v2 = sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_257D38(void *a1, uint64_t a2)
{
  v4 = sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_257DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_257E68()
{
  sub_303D98();
  sub_3038E8();
  return sub_303DE8();
}

void *sub_257EC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_257EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2583D4(&qword_5186E8, type metadata accessor for MAKeyManagerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_257F7C(uint64_t a1, uint64_t a2)
{
  sub_303D98();
  sub_303968();
  v4 = sub_303DE8();

  return sub_257FF4(a1, a2, v4);
}

unint64_t sub_257FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_303D08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2580AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_518790);
    v3 = sub_303CE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2587D4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_257F7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_250C9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_2581BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_258288(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2582E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_258338()
{
  result = qword_5186F8;
  if (!qword_5186F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5186F8);
  }

  return result;
}

uint64_t sub_25838C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2583D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258430(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_25872C()
{
  result = qword_518788;
  if (!qword_518788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_518788);
  }

  return result;
}

uint64_t sub_258780(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2587D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5186E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ccder_blob_decode_bitstring(unsigned __int8 **a1, uint64_t a2, unint64_t *a3)
{
  result = ccder_blob_decode_range(a1, 3, a2);
  if (result)
  {
    *a3 = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (v7 != *a2)
    {
      v8 = 8 * (~v6 + v7);
      v9 = *v6;
      v10 = v8 >= v9;
      v11 = v8 - v9;
      if (v10)
      {
        *a3 = v11;
      }

      *a2 = v6 + 1;
    }
  }

  return result;
}

uint64_t ccentropy_rng_init(void *a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = &entropy_rng_info;
  a1[1] = a2;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

BOOL ccder_blob_encode_body(void *a1, unint64_t a2, const void *a3)
{
  if (!a3)
  {
    return a2 == 0;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = ccder_blob_reserve(a1, a2, __dst);
  if (v5)
  {
    memmove(__dst[0], a3, a2);
  }

  return v5;
}

uint64_t *ccrng_prng(_DWORD *a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v7 = 1;
  }

  v9 = v7;
  pthread_once(&ccrng_prng_init_pred, init);
  if (a1)
  {
    *a1 = 0;
  }

  cc_disable_dit(&v9);
  return &rng_ctx;
}

uint64_t init()
{
  if (ccrng_process_init(&process_rng_ctx, get_time_nsec, &ccrng_getentropy))
  {
    init_cold_1();
  }

  result = pthread_atfork(atfork_prepare, atfork_parent, atfork_child);
  if (result)
  {
    init_cold_2();
  }

  rng_ctx = generate;
  return result;
}

uint64_t get_time_nsec()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1))
  {
    get_time_nsec_cold_1();
  }

  return v1.tv_nsec + 1000000000 * v1.tv_sec;
}

uint64_t atfork_prepare()
{
  result = ccrng_process_atfork_prepare(&process_rng_ctx);
  if (result)
  {
    atfork_prepare_cold_1();
  }

  return result;
}

uint64_t atfork_parent()
{
  result = ccrng_process_atfork_parent(&process_rng_ctx);
  if (result)
  {
    atfork_parent_cold_1();
  }

  return result;
}

uint64_t atfork_child()
{
  result = ccrng_process_atfork_child(&process_rng_ctx);
  if (result)
  {
    atfork_child_cold_1();
  }

  return result;
}

uint64_t generate()
{
  result = process_rng_ctx();
  if (result)
  {
    generate_cold_1();
  }

  return result;
}

uint64_t ccaes_arm_encrypt_key_with_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccec_mult_blinded_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v10 = *a2;
  v11 = ccn_bitlen_internal(*a2, a4);
  if (v11 > cczp_bitlen(a2))
  {
    return 4294967289;
  }

  v17 = 1;
  if (a6)
  {
    result = (*a6)(a6, 8, &v17);
    if (result)
    {
      return result;
    }

    v13 = v17 | 0x80000000;
  }

  else
  {
    v13 = 2147483649;
  }

  v17 = v13;
  v14 = *(a1 + 16);
  (*(a1 + 24))(a1, 3 * v10);
  v15 = (*(a1 + 24))(a1, v10);
  ccn_mux_seed_mask(v17);
  v17 = v17;
  result = ccec_mult_ws(a1, a2);
  if (!result)
  {
    v16 = 0;
    ccn_divmod_ws(a1, v10, a4, v10, v15, 1, &v16, &v17);
    cczp_bitlen(a2);
    result = ccec_mult_ws(a1, a2);
    if (!result)
    {
      result = ccec_mult_ws(a1, a2);
      if (!result)
      {
        ccec_full_add_ws(a1, a2);
        result = 0;
      }
    }
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccaes_arm_encrypt_key_with_key_length_check(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccecdh_compute_shared_secret(uint64_t **a1, uint64_t **a2, unint64_t *a3, char *a4, uint64_t (**a5)(void, uint64_t, uint64_t *))
{
  v17 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = cc_malloc_clear(232 * **a1);
  v12 = 29 * *v10;
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (v11)
  {
    v13 = ccecdh_compute_shared_secret_ws(v15, a1, a2, a3, a4, a5);
    v16(v15);
  }

  else
  {
    v13 = 4294967283;
  }

  cc_disable_dit_with_sb(&v17);
  return v13;
}

uint64_t ccn_cond_swap(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t ccec_sign_internal_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v13 = *a2;
  v15 = (*a2 + 4);
  v14 = **a2;
  if (a3 <= 0xF)
  {
    ccec_verify_internal_with_base_ws_cold_1(a3);
  }

  v33 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v37 = (*(a1 + 24))(a1, v14);
  v35 = (*(a1 + 24))(a1, v14);
  v34 = (*(a1 + 24))(a1, 3 * v14);
  v32 = a7;
  scalar_fips_retry_ws = ccec_projectify_ws(a1, v13);
  if (!scalar_fips_retry_ws)
  {
    v31 = a5;
    v18 = a4;
    v19 = **a2;
    v20 = cczp_bitlen(v15 + 40 * *v13);
    v21 = v20;
    if ((v20 + 7) >> 3 >= a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = (v20 + 7) >> 3;
    }

    uint_internal = ccn_read_uint_internal(v14, v16, v22, v18);
    if ((uint_internal & 0x80000000) != 0)
    {
      v29 = uint_internal;
      a5 = v31;
      goto LABEL_18;
    }

    v24 = &a2[3 * v19];
    if (v21 < 8 * a3)
    {
      ccn_shift_right(v14, v16, v16, -v21 & 7);
    }

    v25 = cczp_prime(v15 + 40 * v14);
    a5 = v31;
    v26 = ccn_sub_ws(a1, v14, v31, v16->i64, v25);
    ccn_mux(v14, v26, v16->i64, v16->i64, v31);
    scalar_fips_retry_ws = ccec_validate_scalar(v13, (v24 + 2));
    if (!scalar_fips_retry_ws)
    {
      v27 = 10;
      while (1)
      {
        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v32, v37);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        scalar_fips_retry_ws = ccec_generate_scalar_fips_retry_ws(a1, v13, v32, v35);
        if (scalar_fips_retry_ws)
        {
          break;
        }

        v28 = ccec_sign_internal_inner_ws(a1, v13, v16, (v24 + 2), v37, v34, v35, v31, a6, v32);
        v29 = v28;
        if (!v28)
        {
          goto LABEL_19;
        }

        if (v28 != -165)
        {
          goto LABEL_18;
        }

        if (!--v27)
        {
          cc_try_abort();
        }
      }
    }
  }

  v29 = scalar_fips_retry_ws;
LABEL_18:
  cc_clear(8 * v14, a5);
  cc_clear(8 * v14, a6);
LABEL_19:
  *(a1 + 16) = v33;
  return v29;
}

uint64_t cczp_inv_field_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_prime(a2);
  if (ccn_sub1(v8, v10, v11, 2uLL))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = cczp_power_fast_ws(a1, a2, a3, a4, v10);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t *ccaes_ctr_crypt_mode()
{
  v0 = ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v1 = ccaes_ecb_encrypt_mode();
  ctr_crypt = v0;
  unk_51B608 = xmmword_33CDE0;
  qword_51B618 = ccmode_ctr_init;
  qword_51B620 = ccmode_ctr_setctr;
  qword_51B628 = ccaes_vng_ctr_crypt;
  unk_51B630 = v1;
  return &ctr_crypt;
}

uint64_t *ccaes_gcm_decrypt_mode()
{
  v0 = 5 * ((*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  v2 = ccaes_ecb_encrypt_mode();
  gcm_decrypt = v1;
  qword_51B640 = 78647;
  qword_51B648 = 1;
  unk_51B650 = ccmode_gcm_init;
  qword_51B658 = ccmode_gcm_set_iv;
  qword_51B660 = ccmode_gcm_aad;
  qword_51B668 = ccaes_vng_gcm_decrypt;
  qword_51B670 = ccmode_gcm_finalize;
  qword_51B678 = ccmode_gcm_reset;
  unk_51B680 = v2;
  return &gcm_decrypt;
}

uint64_t *ccaes_gcm_encrypt_mode()
{
  v0 = 5 * ((*(ccaes_ecb_encrypt_mode() + 1) + 7) & 0xFFFFFFFFFFFFFFF8);
  v1 = v0 + ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 384;
  v2 = ccaes_ecb_encrypt_mode();
  gcm_encrypt = v1;
  qword_51B690 = 4073947;
  qword_51B698 = 1;
  unk_51B6A0 = ccmode_gcm_init;
  qword_51B6A8 = ccmode_gcm_set_iv;
  qword_51B6B0 = ccmode_gcm_aad;
  qword_51B6B8 = ccaes_vng_gcm_encrypt;
  qword_51B6C0 = ccmode_gcm_finalize;
  qword_51B6C8 = ccmode_gcm_reset;
  unk_51B6D0 = v2;
  return &gcm_encrypt;
}

uint64_t ccder_blob_encode_eckey_internal(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, unint64_t a5, const void *a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = a1[1];
  if (a5 && a6)
  {
    v13 = 0;
    if (!ccder_blob_encode_body(a1, a5, a6) || !ccder_blob_encode_body(a1, 1uLL, &v13) || !ccder_blob_encode_tl(a1, 3uLL, v10 - a1[1]))
    {
      return 0;
    }

    result = ccder_blob_encode_tl(a1, 0xA000000000000001, v10 - a1[1]);
    if (!result)
    {
      return result;
    }
  }

  if (!a4 || (v12 = a1[1], result = ccder_blob_encode_oid(a1, a4), result) && (result = ccder_blob_encode_tl(a1, 0xA000000000000000, v12 - a1[1]), result))
  {
    result = ccder_blob_encode_raw_octet_string(a1, a2, a3);
    if (result)
    {
      result = ccder_blob_encode_uint64(a1, 1);
      if (result)
      {
        return ccder_blob_encode_tl(a1, 0x2000000000000010uLL, v10 - a1[1]);
      }
    }
  }

  return result;
}

uint64_t ccec_compact_export_pub(char *a1, uint64_t *a2)
{
  v3 = a2 + 2;
  v4 = *a2;
  v6 = (cczp_bitlen(*a2) + 7) >> 3;
  return ccec_export_affine_point_public_value(v4, 4, v3, &v6, a1);
}

uint64_t ccder_blob_decode_range(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = ccder_blob_decode_tl_internal(a1, a2, &v8, 0);
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v6 = *a1;
    v7 = &(*a1)[v8];
    *a1 = v7;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t ccder_blob_decode_len_internal(uint64_t a1, unint64_t *a2, int a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1)
  {
    v5 = v4 >= v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v4 + 1;
  v7 = *v4;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = *v4;
  if (v9 > 0x82)
  {
    if (v9 == 131)
    {
      if ((v3 - v6) < 3)
      {
        goto LABEL_7;
      }

      v10 = v4[1];
      v6 = v4 + 4;
      v7 = v4[3] | (v10 << 16) | (v4[2] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v9 != 132 || (v3 - v6) < 4)
      {
        goto LABEL_7;
      }

      LODWORD(v10) = v4[1];
      v6 = v4 + 5;
      v7 = (v4[1] << 24) | (v4[2] << 16) | v4[4] | (v4[3] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 == 129)
  {
    if ((v3 - v6) < 1)
    {
      goto LABEL_7;
    }

    v6 = v4 + 2;
    v11 = v4[1];
    v7 = v11;
    if (a3)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (v9 != 130 || (v3 - v6) < 2)
  {
    goto LABEL_7;
  }

  v10 = v4[1];
  v6 = v4 + 3;
  v7 = v4[2] | (v10 << 8);
  if (a3)
  {
    goto LABEL_26;
  }

LABEL_6:
  if (v3 - v6 < v7)
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    return result;
  }

  *a2 = v7;
  *a1 = v6;
  return 1;
}

uint64_t ccder_blob_decode_oid(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range(a1, 6, v6);
  if (result)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ccder_blob_decode_tag(unsigned __int8 **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v8 = *v2;
  v6 = v2 + 1;
  v7 = v8;
  v9 = v8 & 0x1F;
  if (v9 == 31)
  {
    v9 = 0;
    while (1)
    {
      v5 = 0;
      if (v6 >= v3)
      {
        break;
      }

      v10 = v9;
      if (v9 >> 57)
      {
        break;
      }

      v11 = *v6++;
      v9 = v11 & 0x7F | (v9 << 7);
      if ((v11 & 0x80) == 0)
      {
        if (v10 >> 54)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *a2 = v9 | (v7 >> 5 << 61);
    *a1 = v6;
    return 1;
  }

  return v5;
}

uint64_t ccder_blob_decode_tl_internal(unsigned __int8 **a1, uint64_t a2, unint64_t *a3, int a4)
{
  v10 = 0;
  *a3 = 0;
  v8 = ccder_blob_decode_tag(a1, &v10);
  result = 0;
  if (v8 && v10 == a2)
  {
    if (a4)
    {
      return ccder_blob_decode_len_strict(a1, a3);
    }

    else
    {
      return ccder_blob_decode_len(a1, a3);
    }
  }

  return result;
}

uint64_t ccder_blob_decode_uint64(unsigned __int8 **a1, unint64_t *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v7 = 0;
  v8 = 0;
  result = ccder_blob_decode_range(a1, 2, &v7);
  if (result)
  {
    v4 = v7;
    if (v7 != v8 && (*v7 & 0x80000000) == 0)
    {
      if (*v7 || (v4 = (v7 + 1), v7 + 1 == v8) || *v4 < 0)
      {
        v7 = v4;
        if ((v8 - v4) <= 8)
        {
          if (v4 == v8)
          {
            v5 = 0;
            if (!a2)
            {
              return 1;
            }
          }

          else
          {
            v5 = 0;
            do
            {
              v6 = *v4++;
              v5 = v6 | (v5 << 8);
            }

            while (v4 != v8);
            if (!a2)
            {
              return 1;
            }
          }

          *a2 = v5;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL ccder_blob_reserve(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < a2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = v3 - a2;
    a1[1] = v3 - a2;
  }

  result = v4 >= a2;
  *a3 = v5;
  a3[1] = v3;
  return result;
}

uint64_t ccder_blob_reserve_tl(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v9 = 0uLL;
  *a4 = 0;
  a4[1] = 0;
  result = ccder_blob_reserve(a1, a3, &v9);
  if (result)
  {
    result = ccder_blob_encode_tl(a1, a2, a3);
    if (result)
    {
      *a4 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t ccder_blob_encode_implicit_integer(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = 0;
  v8 = ccn_write_int_size_public_value(a3, a4);
  v9 = ccder_blob_reserve_tl(a1, a2, v8, &v11);
  if (v9)
  {
    ccn_write_int_public_value(a3, a4, v12 - v11, v11);
  }

  return v9;
}

uint64_t ccder_blob_encode_len(uint64_t *a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  if (a2 > 0x7F)
  {
    if (a2 > 0xFF)
    {
      if (a2 >> 16)
      {
        if (a2 >> 24)
        {
          if (v3 + 5 <= v4)
          {
            *(v4 - 4) = bswap32(a2);
            LOBYTE(a2) = -124;
            v5 = -5;
            goto LABEL_17;
          }
        }

        else if (v3 + 4 <= v4)
        {
          *(v4 - 2) = bswap32(a2) >> 16;
          *(v4 - 3) = BYTE2(a2);
          LOBYTE(a2) = -125;
          v5 = -4;
          goto LABEL_17;
        }
      }

      else if (v3 + 3 <= v4)
      {
        *(v4 - 2) = bswap32(a2) >> 16;
        LOBYTE(a2) = -126;
        v5 = -3;
        goto LABEL_17;
      }
    }

    else if (v3 + 2 <= v4)
    {
      *(v4 - 1) = a2;
      LOBYTE(a2) = -127;
      v5 = -2;
      goto LABEL_17;
    }

    return 0;
  }

  if (v3 + 1 > v4)
  {
    return 0;
  }

  v5 = -1;
LABEL_17:
  v6 = (v4 + v5);
  *v6 = a2;
  *a1 = v3;
  a1[1] = v6;
  return 1;
}

BOOL ccder_blob_encode_oid(void *a1, const void *a2)
{
  v4 = ccoid_size(a2);

  return ccder_blob_encode_body(a1, v4, a2);
}

uint64_t ccder_blob_encode_tag(void *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = HIBYTE(a2);
  v5 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFFFFLL) > 0x1E)
  {
    if (v5 > 0x7F)
    {
      if (v5 >> 14)
      {
        if (v5 >> 21)
        {
          v8 = v2 - v3;
          if (v5 >> 28)
          {
            if (v8 < 6)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            *(v2 - 4) = (a2 >> 21) | 0x80;
            LOBYTE(a2) = (a2 >> 28) | 0x80;
            v7 = -5;
          }

          else
          {
            if (v8 < 5)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            LODWORD(a2) = (a2 >> 21) | 0xFFFFFF80;
            v7 = -4;
          }
        }

        else
        {
          if ((v2 - v3) < 4)
          {
            return 0;
          }

          *(v2 - 1) = a2 & 0x7F;
          *(v2 - 2) = (a2 >> 7) | 0x80;
          LODWORD(a2) = (a2 >> 14) | 0xFFFFFF80;
          v7 = -3;
        }
      }

      else
      {
        if ((v2 - v3) < 3)
        {
          return 0;
        }

        *(v2 - 1) = a2 & 0x7F;
        LODWORD(a2) = (a2 >> 7) | 0xFFFFFF80;
        v7 = -2;
      }
    }

    else
    {
      if ((v2 - v3) < 2)
      {
        return 0;
      }

      v7 = -1;
    }

    v2 += v7;
    *v2 = a2;
    v6 = v4 | 0x1F;
    goto LABEL_20;
  }

  if (v2 == v3)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xE0 | a2;
LABEL_20:
  *(v2 - 1) = v6;
  *a1 = v3;
  a1[1] = v2 - 1;
  return 1;
}

uint64_t ccder_blob_encode_tl(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = ccder_blob_encode_len(a1, a3);
  if (result)
  {

    return ccder_blob_encode_tag(a1, a2);
  }

  return result;
}

uint64_t ccder_blob_encode_body_tl(uint64_t *a1, unint64_t a2, unint64_t a3, const void *a4)
{
  result = ccder_blob_encode_body(a1, a3, a4);
  if (result)
  {

    return ccder_blob_encode_tl(a1, a2, a3);
  }

  return result;
}

uint64_t ccrng_schedule_read(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 3;
  }

  result = (**a1)(a1);
  *(a1 + 8) = result == 3;
  return result;
}

uint64_t ccrng_schedule_atomic_flag_init(uint64_t result)
{
  *result = ccrng_schedule_atomic_flag_info;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t ccrng_schedule_timer_init(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  *a1 = ccrng_schedule_timer_info;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  result = a2();
  *(a1 + 32) = result;
  return result;
}

uint64_t ccrng_schedule_tree_init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = ccrng_schedule_tree_info;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t ccrng_schedule_timer_read(uint64_t a1)
{
  if (((*(a1 + 16))() - *(a1 + 32)) < *(a1 + 24))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t ccrng_schedule_timer_notify_reseed(uint64_t a1)
{
  result = (*(a1 + 16))();
  *(a1 + 32) = result;
  return result;
}

uint64_t ccrng_schedule_tree_read(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v3 = 3;
  }

  else
  {
    v3 = (**v2)(*(a1 + 16));
    *(v2 + 8) = v3 == 3;
  }

  v4 = *(a1 + 24);
  if (*(v4 + 8))
  {
    LODWORD(result) = 3;
  }

  else
  {
    LODWORD(result) = (**v4)(v4);
    *(v4 + 8) = result == 3;
  }

  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t ccrng_schedule_tree_notify_reseed(uint64_t a1)
{
  v2 = *(a1 + 16);
  v2[8] = 0;
  (*(*v2 + 8))(v2);
  v3 = *(a1 + 24);
  v3[8] = 0;
  v4 = *(*v3 + 8);

  return v4();
}

uint64_t ccder_sizeof_implicit_integer(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = ccn_write_int_size_public_value(a2, a3);

  return ccder_sizeof(a1, v4);
}

uint64_t ccder_blob_decode_eckey_internal(unsigned __int8 **a1, unint64_t *a2, void *a3, void *a4, unsigned __int8 **a5, void *a6, void *a7, unint64_t *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0uLL;
  result = ccder_blob_decode_sequence_tl(a1, &v22);
  if (result)
  {
    result = ccder_blob_decode_uint64(&v22, a2);
    if (result)
    {
      if (*a2 == 1)
      {
        result = ccder_blob_decode_range(&v22, 4, &v23);
        if (!result)
        {
          return result;
        }

        v16 = v23;
        v17 = v24;
        *a4 = v23;
        *a3 = v17 - v16;
        v21 = v22;
        if (ccder_blob_decode_range(&v21, 0xA000000000000000, &v23))
        {
          result = ccder_blob_decode_oid(&v23, a5);
          if (!result)
          {
            return result;
          }

          v22 = v21;
        }

        else
        {
          *a5 = 0;
        }

        v20 = v22;
        if (ccder_blob_decode_range(&v20, 0xA000000000000001, &v23))
        {
          result = ccder_blob_decode_bitstring(&v23, &v23, a8);
          if (result)
          {
            v18 = v23;
            v19 = v24;
            *a7 = v23;
            *a6 = v19 - v18;
            return 1;
          }
        }

        else
        {
          *a7 = 0;
          *a6 = 0;
          result = 1;
          *a8 = 0;
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

uint64_t ccder_sizeof_len(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = 3;
  v3 = 4;
  v4 = 5;
  v5 = 6;
  v6 = 7;
  v7 = 8;
  if (HIBYTE(a1))
  {
    v7 = 9;
  }

  if (HIWORD(a1))
  {
    v6 = v7;
  }

  if (a1 >> 40)
  {
    v5 = v6;
  }

  if (HIDWORD(a1))
  {
    v4 = v5;
  }

  if (a1 >> 24)
  {
    v3 = v4;
  }

  if (a1 >= 0x10000)
  {
    v2 = v3;
  }

  if (a1 >= 0x100)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t ccaes_vng_ctr_crypt(void *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  if (a2)
  {
    v10 = a2;
    v11 = *a1;
    v12 = (*(*a1 + 8) + 7) >> 3;
    v13 = a1 + 2;
    v14 = &a1[2 * v12 + 2];
    v15 = &a1[v12 + 2];
    v16 = &a1[v12];
    while (1)
    {
      if (v7 == 16)
      {
        if (v10 >= 0x10)
        {
          aes_ctr_crypt(a3, a4, v10 & 0xFFFFFFFFFFFFFFF0, v15, v14, a6);
          a4 = (a4 + (v10 & 0xFFFFFFFFFFFFFFF0));
          a3 = (a3 + (v10 & 0xFFFFFFFFFFFFFFF0));
          v10 &= 0xFu;
        }

        (*(v11 + 24))(v14, 1, v15, a1 + 2);
        v17 = 31;
        do
        {
          if ((v17 - 15) < 9)
          {
            break;
          }

          v18 = (*(v16 + v17--))++ + 1;
        }

        while ((v18 & 0x100) != 0);
        v7 = 0;
        v19 = 0;
        if (!v10)
        {
          break;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        a4->i8[v20] = *(v13 + v7 + v20) ^ a3->i8[v20];
        v22 = (v20 + 1 + v7) > 0xF || v10 - 1 == v20;
        ++v20;
      }

      while (!v22);
      v7 += v21;
      a3 = (a3 + v21);
      a4 = (a4 + v21);
      v10 -= v21;
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v19 = v7;
  }

  a1[1] = v19;
  return 0;
}

uint64_t ccder_sizeof_tag(uint64_t a1)
{
  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >> 28)
  {
    v5 = 6;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  if (v1 >= 0x1F)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void *cczp_to_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t cc_try_abort_if (uint64_t result)
{
  if (result)
  {
    cc_abort();
  }

  return result;
}

unint64_t cczp_negate(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = cczp_n(a1);
  v7 = ccn_n(v6, a3) != 0;
  v8 = cczp_prime(a1);

  return ccn_cond_rsub(v6, v7, a2, a3, v8);
}

unint64_t cczp_cond_negate(uint64_t a1, char a2, uint64_t *a3, unint64_t *a4)
{
  v8 = cczp_n(a1);
  if (ccn_n(v8, a4))
  {
    v9 = a2 & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = cczp_prime(a1);

  return ccn_cond_rsub(v8, v9, a3, a4, v10);
}

void *cczp_from_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t ccec_compact_transform_key_ws(uint64_t a1, uint64_t **a2)
{
  v4 = a2 + 2;
  v3 = *a2;
  v5 = **a2;
  v6 = &a2[v5 + 2];
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, v5);
  cczp_negate(v3, v8, v6);
  result = ccn_cmp_public_value(v5, v8, v6);
  if ((result & 0x80000000) != 0)
  {
    ccn_set(v5, v6, v8);
    v10 = cczp_prime(&v3[5 * *v3 + 4]);
    result = ccn_sub_ws(a1, v5, &v4[3 * v5], v10, &v4[3 * v5]);
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_compact_generate_key(uint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t **a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(392 * *a1);
  v7 = 49 * *a1;
  v11[0] = v6;
  v11[1] = v7;
  v12 = 0;
  v13 = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v6)
  {
    key_internal_fips_ws = ccec_generate_key_internal_fips_ws(v11, a1, a2, a3);
    if (key_internal_fips_ws)
    {
      v9 = key_internal_fips_ws;
    }

    else
    {
      ccec_compact_transform_key_ws(v11, a3);
      if (ccec_pairwise_consistency_check_ws(v11, a3, a2))
      {
        v9 = 4294967278;
      }

      else
      {
        v9 = 0;
      }
    }

    v12 = 0;
    v14(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v9;
}

uint64_t cckeccak_absorb_blocks(uint64_t result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *))
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = a2 >> 3;
    do
    {
      v12 = v9;
      v13 = v11;
      if (a2 >= 8)
      {
        do
        {
          v14 = *a4++;
          *v12++ ^= v14;
          --v13;
        }

        while (v13);
      }

      result = a5(v9);
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

unint64_t cckeccak_absorb_blocks_parallel(unint64_t result, void *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t (*a8)(void *, void *))
{
  if (a3)
  {
    v14 = result;
    v15 = 0;
    v16 = result >> 3;
    do
    {
      v17 = a2;
      v18 = a5;
      v19 = v16;
      if (v14 >= 8)
      {
        do
        {
          v20 = *a4++;
          *v17++ ^= v20;
          v21 = *a7++;
          *v18++ ^= v21;
          --v19;
        }

        while (v19);
      }

      result = a8(a2, a5);
      ++v15;
    }

    while (v15 != a3);
  }

  return result;
}

uint64_t cckeccak_absorb_and_pad(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v8 = a3 >> 3;
  if (a3 >= 8)
  {
    v10 = result;
    v11 = a3 >> 3;
    do
    {
      v12 = *a4++;
      *v10++ ^= v12;
      --v11;
    }

    while (v11);
    v9 = a3 >> 3;
  }

  else
  {
    v9 = 0;
  }

  v13 = a3 & 7;
  if ((a3 & 7) != 0)
  {
    v14 = 0;
    __memcpy_chk();
    *(v7 + 8 * v9) = *(v7 + 8 * v9);
    result = cc_clear(8uLL, &v14);
  }

  *(v7 + 8 * v8) ^= a5 << (8 * v13);
  *(v7 + ((a2 - 1) & 0xFFFFFFFFFFFFFFF8)) ^= 128 << (8 * ((a2 - 1) & 7));
  return result;
}

uint64_t cckeccak_squeeze(uint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(uint64_t *))
{
  v7 = a3;
  v8 = result;
  if (a3 >= a2)
  {
    v10 = a2 >> 3;
    do
    {
      result = a5(v8);
      v11 = v8;
      v12 = v10;
      if (a2 >= 8)
      {
        do
        {
          v13 = *v11++;
          *a4++ = v13;
          --v12;
        }

        while (v12);
      }

      v7 -= a2;
    }

    while (v7 >= a2);
  }

  if (v7)
  {
    result = a5(v8);
    if (v7 >= 8)
    {
      v14 = v7 >> 3;
      v15 = v8;
      v16 = v7 >> 3;
      do
      {
        v17 = *v15++;
        *a4++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    if ((v7 & 7) != 0)
    {
      v18 = v8[v14];
      memcpy(a4, &v18, v7 & 7);
      return cc_clear(8uLL, &v18);
    }
  }

  return result;
}

unint64_t ccn_mul1_asm(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4) >> 64;
    *a2++ = v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = v6 * a4 + __PAIR128__(v7 * a4, v4);
    v4 = (__CFADD__(__CFADD__(v6 * a4, v4), (v6 * a4) >> 64) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v8;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v9 = a1 < 4;
    a1 -= 4;
    if (v9)
    {
      break;
    }

    v11 = *a3;
    v12 = a3[1];
    v10 = a3 + 2;
    v14 = *v10;
    v15 = v10[1];
    a3 = v10 + 2;
    v16 = (v12 * a4) >> 64;
    v17 = __CFADD__(__CFADD__(v11 * a4, v4), (v11 * a4) >> 64);
    v13 = v11 * a4 + __PAIR128__(v12 * a4, v4);
    *a2 = v13;
    v18 = a2 + 2;
    v19 = (v14 * a4) >> 64;
    v20 = v16 + (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4;
    v22 = __CFADD__(v17 | __CFADD__(v12 * a4, *(&v13 + 1)), v14 * a4) | __CFADD__(v16, (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4);
    v17 = __CFADD__(v22, v19);
    v21 = v22 + v19;
    v4 = (v17 | __CFADD__(v15 * a4, v21)) + ((v15 * a4) >> 64);
    *v18 = v20;
    v18[1] = v15 * a4 + v21;
    a2 = v18 + 2;
  }

  return v4;
}

uint64_t ccdigest_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v8 = (*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  ccdigest_init_internal(a1, v9);
  ccdigest_update_internal(a1, v9, a2, a3);
  (*(a1 + 56))(a1, v9, a4);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

uint64_t ccdigest_final_64be(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = (v7 + v6 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  memcpy(v10, a2, v7 + v6 + 12);
  v11 = v10 + v7;
  v12 = v10 + v7 + 8;
  v13 = (v12 + v6);
  v14 = *(v12 + v6);
  *v10 += (8 * v14);
  *(v12 + v6) = v14 + 1;
  *(v12 + v14) = 0x80;
  v15 = *(v12 + v6);
  if (v15 < 0x39)
  {
    if (v15 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v15 <= 0x3F)
    {
      do
      {
        *v13 = v15 + 1;
        *(v12 + v15) = 0;
        v15 = *v13;
      }

      while (v15 < 0x40);
    }

    (*(a1 + 48))(v10 + 1, 1);
    v15 = 0;
    v11 = v10 + *(a1 + 8);
    v12 = (v11 + 8);
    v13 = &v11[*(a1 + 16) + 8];
    *v13 = 0;
  }

  do
  {
    *v13 = v15 + 1;
    *(v12 + v15) = 0;
    v15 = *v13;
  }

  while (v15 < 0x38);
LABEL_9:
  *(v11 + 8) = bswap64(*v10);
  (*(a1 + 48))(v10 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      *(a3 + v16) = bswap32(*(v10 + v17 + 2));
      v17 = v18++;
      v16 += 4;
    }

    while (v17 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
}

uint64_t ccdigest_final_64le(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = (v7 + v6 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  memcpy(v10, a2, v7 + v6 + 12);
  v11 = v10 + v7;
  v12 = v10 + v7 + 8;
  v13 = (v12 + v6);
  v14 = *(v12 + v6);
  *v10 += (8 * v14);
  *(v12 + v6) = v14 + 1;
  *(v12 + v14) = 0x80;
  v15 = *(v12 + v6);
  if (v15 < 0x39)
  {
    if (v15 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v15 <= 0x3F)
    {
      do
      {
        *v13 = v15 + 1;
        *(v12 + v15) = 0;
        v15 = *v13;
      }

      while (v15 < 0x40);
    }

    (*(a1 + 48))(v10 + 1, 1);
    v15 = 0;
    v11 = v10 + *(a1 + 8);
    v12 = (v11 + 8);
    v13 = &v11[*(a1 + 16) + 8];
    *v13 = 0;
  }

  do
  {
    *v13 = v15 + 1;
    *(v12 + v15) = 0;
    v15 = *v13;
  }

  while (v15 < 0x38);
LABEL_9:
  *(v11 + 8) = *v10;
  (*(a1 + 48))(v10 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      *(a3 + v16) = *(v10 + v17 + 2);
      v17 = v18++;
      v16 += 4;
    }

    while (v17 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
}

void *ccdigest_init_internal(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return result;
}

uint64_t ccdigest_init(uint64_t a1, void *a2)
{
  v5 = timingsafe_enable_if_supported();
  memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return cc_disable_dit_with_sb(&v5);
}

unint64_t *ccdigest_update_internal(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *(v9 + v8))
  {
    *(v9 + v8) = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memcpy(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

uint64_t ccdigest_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

void *ccdrbg_factory_nistctr(void *result, uint64_t a2)
{
  *result = 88;
  result[1] = init_0;
  result[3] = generate_2;
  result[2] = reseed;
  result[4] = done;
  result[5] = a2;
  result[6] = must_reseed;
  return result;
}

uint64_t init_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 40);
  cc_clear(0x58uLL, a2);
  v18 = *v12;
  v19 = v12[1];
  *(a2 + 56) = *v12;
  *(a2 + 64) = v19;
  *(a2 + 72) = *(v12 + 4);
  v20 = v12[3];
  *(a2 + 80) = v20;
  if (v19 >= 0x21 || *(v18 + 16) != 16)
  {
    cc_try_abort();
  }

  if (!v20)
  {
    if (v19 + 16 >= a7 && v19 + 16 == a3)
    {
      v28 = 0u;
      v29 = 0u;
      __s = 0u;
      __memcpy_chk();
      for (; a7; --a7)
      {
        *(&v26 + a7 + 7) ^= *(a8 - 1 + a7);
      }

      goto LABEL_8;
    }

    v21 = 4294967233;
LABEL_16:
    cc_clear(0x20uLL, a2);
    cc_clear(0x10uLL, (a2 + 32));
    v23 = -1;
    goto LABEL_9;
  }

  v21 = 4294967233;
  if ((a3 - 65537) < 0xFFFFFFFFFFFF000FLL || a7 > 0x10000)
  {
    goto LABEL_16;
  }

  v28 = 0u;
  v29 = 0u;
  __s = 0u;
  HIBYTE(v26) = HIBYTE(a8);
  v22 = derive(a2, &__s, 3u, v13, v14, v15, v16, v17, a3);
  if (v22)
  {
    v21 = v22;
    goto LABEL_16;
  }

  v19 = *(a2 + 64);
LABEL_8:
  cc_clear(v19, a2);
  cc_clear(0x10uLL, (a2 + 32));
  update(a2, &__s);
  v21 = 0;
  v23 = 1;
LABEL_9:
  *(a2 + 48) = v23;
  cc_clear(0x30uLL, &__s);
  return v21;
}

uint64_t done(char *__s)
{
  cc_clear(0x20uLL, __s);
  result = cc_clear(0x10uLL, __s + 32);
  *(__s + 6) = -1;
  return result;
}

uint64_t derive(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  memset(v16, 0, sizeof(v16));
  v15 = &a9;
  if (a3)
  {
    v10 = a3;
    v11 = v16 + 1;
    v12 = a3;
    do
    {
      v13 = v15;
      *v11 = *v15;
      v15 += 2;
      *(v11 - 1) = v13[1];
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  return ccdrbg_df_derive_keys(*(a1 + 80), v10, v16, *(a1 + 64) + 16, a2);
}

uint64_t update(uint64_t a1, uint64_t a2)
{
  v4 = (cczp_n(*(a1 + 56)) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v8 - v4;
  bzero(&v8 - v4, v4);
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  update_with_ctr(a1, v5, a2);
  v6 = cczp_n(*(a1 + 56));
  return cc_clear(v6, v5);
}

uint64_t update_with_ctr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccctr_update_internal(*(a1 + 56), a2, *(a1 + 64), a3, a1);
  v6 = *(a1 + 56);
  v7 = a3 + *(a1 + 64);

  return ccctr_update_internal(v6, a2, 16, v7, a1 + 32);
}

uint64_t ccec_affinify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  v9 = cczp_inv_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccec_affinify_x_only_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  cczp_sqr_ws(a1, a2);
  v9 = cczp_inv_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccn_sqr_ws(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  result = ccn_mul1(a2 - 1, a3 + 1, a4 + 1, *a4);
  a3[a2] = result;
  v8 = *a4;
  v9 = (v8 * v8) >> 64;
  v10 = v8 * v8;
  v11 = a3[1];
  v12 = __CFADD__(v9, 2 * v11);
  v13 = v9 + 2 * v11;
  if (v12)
  {
    v14 = (v11 >> 63) + 1;
  }

  else
  {
    v14 = v11 >> 63;
  }

  *a3 = v10;
  a3[1] = v13;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    v16 = 0;
    v17 = &a3[a2 + 1];
    v18 = a3 + 3;
    do
    {
      result = ccn_addmul1(v15, v18, &a4[v16 + 2], a4[v16 + 1]);
      *(v17 + v16 * 8) = result;
      v19 = a4[v16 + 1];
      v20 = (v19 * v19) >> 64;
      v21 = v19 * v19;
      v12 = __CFADD__(v21, v14);
      v22 = v21 + v14;
      if (v12)
      {
        ++v20;
      }

      v23 = *(v18 - 1);
      v24 = v23 >> 63;
      v12 = __CFADD__(v20, 2 * *v18);
      v25 = v20 + 2 * *v18;
      if (v12)
      {
        v26 = (*v18 >> 63) + 1;
      }

      else
      {
        v26 = *v18 >> 63;
      }

      v12 = __CFADD__(v22, 2 * v23);
      v27 = v22 + 2 * v23;
      v29 = v12;
      v12 = __CFADD__(v12, v25);
      v28 = v29 + v25;
      v12 |= __CFADD__(v24, v28);
      v28 += v24;
      if (v12)
      {
        v14 = v26 + 1;
      }

      else
      {
        v14 = v26;
      }

      *(v18 - 1) = v27;
      *v18 = v28;
      ++v16;
      --v15;
      v18 += 2;
    }

    while (v15 != -1);
  }

  return result;
}

uint64_t ccn_mod_521_ws(uint64_t a1, uint64_t a2, uint64_t *a3, int8x16_t *a4)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  ccn_shift_right(9, v12, a4 + 4, 9);
  v13 += a4[4].i64[0] & 0x1FF;
  v8 = ccn_add_ws(a1, 8, v12, v12[0].i64, a4->i64);
  v13 += v8;
  v9 = cczp_prime(a2);
  v10 = ccn_sub_ws(a1, 9, v14, v12[0].i64, v9);
  return ccn_mux(9, v10, a3, v12[0].i64, v14);
}

uint64_t ccec_double_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  return ccec_export_affine_point_public_value(v4, 1, v3, &v6, a2);
}

uint64_t ccec_add_normalized_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *a2;
  v14 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, *a2);
  v11 = (*(a1 + 24))(a1, v9);
  (*(a1 + 24))(a1, v9);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  if (a6)
  {
    cczp_add_ws(a1, a2);
  }

  else
  {
    cczp_sub_ws(a1, a2);
  }

  if (ccn_n(v9, v10) || ccn_n(v9, v11))
  {
    if (ccn_n(v9, v10) || !ccn_n(v9, v11))
    {
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      result = cczp_div2_ws(a1, a2, &a3[v9], &a3[v9]);
    }

    else
    {
      ccn_seti(v9, a3, 1);
      cczp_to_ws(a1, a2);
      ccn_set(v9, &a3[v9], a3);
      result = cc_clear(8 * v9, &a3[2 * v9]);
    }
  }

  else
  {
    result = ccec_double_ws(a1, a2);
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_full_add_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    ccn_set(v11, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 0);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_full_add_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = cczp_n(a2);
  v16 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  ccec_map_to_homogeneous_ws(a1, a2);
  ccec_map_to_homogeneous_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v7 = cczp_n(a2);
  v8 = *a2;
  v9 = &a3[*a2];
  v10 = (*(a1 + 24))(a1, v7);
  v11 = (*(a1 + 24))(a1, v7);
  ccn_set(v7, v10, v9);
  cczp_from_ws(a1, a2);
  v12 = ccn_n(v7, v11) == 1 && *v11 == 1;
  v13 = ccn_n(v7, a3);
  if (ccn_n(v7, &a3[2 * v8]) | v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_mux(v7, v14, a3, v10, a3);
  result = ccn_mux(v7, v14, v9, v10, v9);
  *(a1 + 16) = v16;
  return result;
}

uint64_t ccec_map_to_homogeneous_ws(uint64_t a1, uint64_t a2)
{
  v4 = cczp_n(a2);
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_full_sub_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    cczp_negate(a2, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 1);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_full_sub_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * *a2);
  ccn_set(v8, v10, a5);
  cczp_negate(a2, &v10[8 * *a2], &a5[8 * *a2]);
  ccn_set(v8, &v10[16 * *a2], &a5[16 * *a2]);
  result = ccec_full_add_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_affine_point_from_x_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v7);
  if ((ccn_cmp_public_value(*a2, a4, a2 + 3) & 0x80000000) != 0)
  {
    cczp_to_ws(a1, a2);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
    result = cczp_sqrt_ws(a1, a2);
    if (!result)
    {
      cczp_from_ws(a1, a2);
      cczp_from_ws(a1, a2);
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v8;
  return result;
}

void *ccsha3_384_di()
{
  if ((MEMORY[0xFFFFFC010] & 0x100000000) != 0)
  {
    return &ccsha3_384_vng_hwassist_di;
  }

  else
  {
    return &ccsha3_384_vng_di;
  }
}

uint64_t ccec_mult_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unint64_t a5, uint64_t *a6)
{
  v12 = a2 + 4;
  if (cczp_bitlen(&a2[5 * *a2 + 4]) < a5)
  {
    return 4294967289;
  }

  v52 = a3;
  __src = a4;
  v55 = v12;
  v14 = *a2;
  v15 = (a5 + 63) >> 6;
  v54 = *(a1 + 16);
  v16 = 3 * *a2;
  v17 = (*(a1 + 24))(a1, v16);
  v18 = (*(a1 + 24))(a1, v14);
  v56 = ccn_n(v14, a6) == 0;
  if (a5 + 63 >= 0x40)
  {
    ccn_set((a5 + 63) >> 6, v18, a4);
  }

  ccn_zero(v14 - v15, v18 + 8 * v15);
  v18->i64[v15 - 1] &= 0xFFFFFFFFFFFFFFFFLL >> -a5;
  v51 = (a5 + 63) >> 6;
  v58 = v18;
  ccn_shift_right(v51, v18, v18, v56);
  ccec_double_ws(a1, a2);
  ccn_mux(3 * v14, !v56, v17, a6, v17);
  if (!ccn_n(v14, v17))
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (cczp_bitlen(&v55[5 * *a2]) >= a5)
  {
    v19 = *a2;
    if (ccn_n(*a2, v17))
    {
      v48 = v16;
      v46 = *(a1 + 16);
      v20 = (*(a1 + 24))(a1, 2 * v19);
      v21 = (*(a1 + 24))(a1, 2 * v19);
      v57 = 2 * v19;
      v22 = (*(a1 + 24))(a1, 2 * v19);
      v23 = *a2;
      v43 = *(a1 + 16);
      __dst = v22;
      (*(a1 + 24))(a1, *a2);
      v50 = v19;
      (*(a1 + 24))(a1, v23);
      (*(a1 + 24))(a1, v23);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v47 = v17;
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v24 = a1;
      v25 = a1;
      v26 = v20;
      cczp_sub_ws(v24, a2);
      cczp_mul_ws(v25, a2);
      cczp_sqr_ws(v25, a2);
      cczp_add_ws(v25, a2);
      cczp_sub_ws(v25, a2);
      v27 = v18;
      v28 = *(v18->u64 + (((a5 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
      v49 = v25;
      *(v25 + 16) = v43;
      v29 = (v28 >> (a5 - 1)) & 1;
      v30 = !((v28 >> (a5 - 1)) & 1);
      v31 = &v21[v50];
      v32 = a5 - 2;
      if (v32)
      {
        v33 = v29;
        do
        {
          v34 = v29;
          v29 = (*(v27->i64 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1;
          cczp_cond_negate(a2, v30, v31, v31);
          ccn_cond_swap(v57, v29 ^ v34 | v33 ^ 1, v26, v21);
          ccec_mult_XYCZaddC_ws(v49, a2);
          ccec_mult_XYCZadd_ws(v49, a2);
          LOBYTE(v30) = v29 & (v33 ^ 1);
          v27 = v18;
          v33 |= v29;
          --v32;
        }

        while (v32);
        v44 = v33 ^ 1;
      }

      else
      {
        v44 = v30;
      }

      cczp_cond_negate(a2, v30, v31, v31);
      ccn_cond_swap(v57, v27->i8[0] & 1 ^ v29, v26, v21);
      ccec_mult_XYCZaddC_ws(v49, a2);
      ccn_set(v57, __dst, v21);
      v35 = v27->i64[0];
      ccn_cond_swap(v57, v27->i8[0] & 1, v26, v21);
      v36 = v26;
      a1 = v49;
      v37 = v52;
      v42 = *(v49 + 16);
      cczp_sub_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_sqr_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      *(v49 + 16) = v42;
      ccn_cond_swap(v57, v35 & 1, v36, v21);
      ccec_mult_XYCZadd_ws(v49, a2);
      ccn_mux(v57, v35 & 1, v36, v21, v36);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      v38 = cczp_prime(&v55[5 * *a2]);
      ccn_sub1(v50, __dst, v38, 1uLL);
      v39 = (ccn_cmpn_internal(v51, v58, v50, __dst) & 1) == 0;
      is_point_at_infinity = ccec_is_point_at_infinity(a2, v47);
      ccn_mux(3 * v50, v44 | is_point_at_infinity | v39, v37, v47, v37);
      cczp_cond_negate(a2, v39, &v37[*a2], &v37[*a2]);
      v41 = v44 & ~v58->i32[0];
      ccn_cond_clear(v50, v44 & ~v58->i8[0] & 1, &v52[2 * *a2]);
      ccn_seti(v50, v36, 1);
      cczp_to_ws(v49, a2);
      ccn_mux(v50, v41 & 1, v37, v36, v37);
      ccn_mux(v50, v41 & 1, &v37[*a2], v36, &v37[*a2]);
      *(v49 + 16) = v46;
      ccec_full_add_ws(v49, a2);
      ccn_mux(v48, *__src & v56, v37, v47, v37);
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  result = 4294967289;
LABEL_16:
  *(a1 + 16) = v54;
  return result;
}

uint64_t ccec_mult_XYCZaddC_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_mult_XYCZadd_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

unint64_t ccn_addmul1_asm(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4 + *a2) >> 64;
    *a2++ += v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = *a2 + __PAIR128__(v7 * a4, v4);
    v9 = v8 + v6 * a4;
    v4 = (__CFADD__(__CFADD__(v8, v6 * a4), *(&v8 + 1)) | __CFADD__((v6 * a4) >> 64, *(&v9 + 1))) + (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v9;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v10 = a1 < 4;
    a1 -= 4;
    if (v10)
    {
      break;
    }

    v11 = a2[2];
    v12 = a2[3];
    v14 = *a3;
    v15 = a3[1];
    v13 = a3 + 2;
    v16 = *v13;
    v17 = v13[1];
    a3 = v13 + 2;
    v18 = (v15 * a4) >> 64;
    v19 = *a2 + __PAIR128__(v15 * a4, v4);
    v20 = __CFADD__(__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1)), v11);
    v21 = (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1))) + v11;
    v20 |= __CFADD__(v18, v21);
    v21 += v18;
    v23 = v20;
    v20 = __CFADD__(v20, v12);
    v22 = v23 + v12;
    v20 |= __CFADD__(v17 * a4, v22);
    v22 += v17 * a4;
    v24 = v20 + ((v17 * a4) >> 64);
    v25 = v19 + v14 * a4;
    *a2 = v25;
    v26 = a2 + 2;
    v27 = (v16 * a4) >> 64;
    v29 = __CFADD__(__CFADD__(v19, v14 * a4), *(&v19 + 1)) | __CFADD__((v14 * a4) >> 64, *(&v25 + 1));
    v20 = __CFADD__(v29, v21);
    v28 = v29 + v21;
    v31 = v20 | __CFADD__(v16 * a4, v28);
    v20 = __CFADD__(v31, v22);
    v30 = v31 + v22;
    v4 = (v20 | __CFADD__(v27, v30)) + v24;
    *v26 = v16 * a4 + v28;
    v26[1] = v27 + v30;
    a2 = v26 + 2;
  }

  return v4;
}

unsigned int (**ccec_projectify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t)))(void, unint64_t, uint64_t)
{
  v5 = a5;
  v9 = *(a1 + 16);
  if (a5)
  {
    v10 = cczp_bitlen(a2);
    ccn_random_bits(v10 - 1, a3 + 16 * *a2, v5);
    v5 = v11;
    ccn_set_bit(a3 + 16 * *a2, v10 - 2, 1);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
  }

  else
  {
    ccn_seti(*a2, (a3 + 16 * *a2), 1);
    cczp_to_ws(a1, a2);
  }

  cczp_to_ws(a1, a2);
  cczp_to_ws(a1, a2);
  *(a1 + 16) = v9;
  return v5;
}

uint64_t ccec_twin_mult_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v12 = *a2;
  v24 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v12);
  v13 = (*(a1 + 24))(a1, v12);
  v25 = 3 * v12;
  v14 = (*(a1 + 24))(a1, 12 * v12);
  v15 = v14 + 48 * v12;
  v26 = v14;
  v16 = v14 + 72 * v12;
  ccec_full_add_ws(a1, a2);
  ccec_full_sub_ws(a1, a2, v16, a5, a7);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v23 = cczp_inv_ws(a1, a2);
  if (!v23)
  {
    ccec_twin_mult_normalize_ws(a1, a2);
    ccec_twin_mult_normalize_ws(a1, a2);
    ccec_twin_mult_normalize_ws(a1, a2);
    ccec_twin_mult_normalize_ws(a1, a2);
    ccn_seti(v12, v13, 1);
    cczp_to_ws(a1, a2);
    ccn_set(v12, (v26 + 24 * v12 + 16 * *a2), (v26 + 16 * *a2));
    ccn_set(v12, (v15 + 16 * *a2), (v26 + 16 * *a2));
    ccn_set(v12, (v16 + 16 * *a2), (v26 + 16 * *a2));
    v17 = ccn_bitlen_internal(v12, a4);
    v18 = ccn_bitlen_internal(v12, a6);
    v27[1] = 0;
    v27[2] = 0;
    if (v17 <= v18)
    {
      v17 = v18;
    }

    v27[0] = 0;
    ccn_recode_jsf_init(v27, v17, a4, a6);
    ccn_set(v12, a3, (v26 + 16 * *a2));
    ccn_set(v12, &a3[8 * *a2], (v26 + 16 * *a2));
    cc_clear(8 * v12, &a3[16 * *a2]);
    for (; v17 != -1; --v17)
    {
      ccec_double_ws(a1, a2);
      v28 = 0;
      ccn_recode_jsf_column(v27, v17, &v28);
      if (v28)
      {
        v19 = (v26 + 8 * ccn_recode_jsf_index(&v28) * v25);
        if (ccn_recode_jsf_direction(&v28) == 1)
        {
          ccec_full_add_normalized_ws(a1, a2, a3, a3, v19);
        }

        else
        {
          ccec_full_sub_normalized_ws(a1, a2, a3, a3, v19);
        }
      }
    }
  }

  *(a1 + 16) = v24;
  return v23;
}

uint64_t ccec_twin_mult_normalize_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t cc_cmp_safe_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = timingsafe_enable_if_supported();
  v4 = v3 != 0;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cc_cmp_safe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = cc_cmp_safe_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccec_generate_key_fips(uint64_t *a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t **a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(392 * *a1);
  v7 = 49 * *a1;
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v6)
  {
    key_fips_ws = ccec_generate_key_fips_ws(v10, a1, a2, a3);
    cc_try_abort_if (key_fips_ws == -18);
    v11(v10);
  }

  else
  {
    key_fips_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return key_fips_ws;
}

uint64_t ccec_x963_export(int a1, char *a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccec_export_pub(a3, a2);
  v7 = v6;
  if (a1 && !v6)
  {
    v8 = *a3;
    v9 = **a3;
    v10 = &a3[3 * v9];
    v11 = (cczp_bitlen(*a3 + 40 * v9 + 32) + 7) >> 3;
    v12 = cczp_bitlen(v8);
    v13 = ccn_write_uint_padded_ct_internal(v9, v10 + 2, v11, &a2[((v12 + 7) >> 2) | 1]);
    v7 = v13 & (v13 >> 31);
  }

  cc_disable_dit_with_sb(&v15);
  return v7;
}

uint64_t ccec_x963_import_priv(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v8)
  {
    v10 = ccec_x963_import_priv_ws(v12, a1, a2, a3, a4);
    v13(v12);
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

uint64_t ccec_x963_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  if (!a3)
  {
    return 4294967289;
  }

  if (a3 == 1)
  {
    v10 = *a4;
    if (!*a4)
    {
      return 4294967136;
    }
  }

  else
  {
    v10 = *a4;
  }

  v12 = v10 - 2;
  if (v12 > 5 || ((0x37u >> v12) & 1) == 0)
  {
    return 4294967289;
  }

  v13 = dword_33CF40[v12];
  v14 = *(a1 + 16);
  *a5 = a2;
  result = ccec_import_affine_point_ws(a1, a2, v13, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &a5[2 * **a5 + 2], 1);
    v15 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v15, (a5 + 2));
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_x963_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (!v8)
  {
    return 4294967283;
  }

  v10 = ccec_x963_import_pub_ws(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

uint64_t ccrng_crypto_generate(uint64_t a1, rsize_t a2, char *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v7 = a3;
  while (1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      os_unfair_lock_lock(v8);
      v9 = *(a1 + 24);
      if (v9)
      {
        os_unfair_lock_assert_owner(v9);
      }
    }

    memset(v27, 0, sizeof(v27));
    v10 = *(a1 + 56);
    v11 = ccrng_schedule_read(*(a1 + 16));
    if (v11 == 1)
    {
      goto LABEL_13;
    }

    v12 = v11;
    seed = ccentropy_get_seed(*(a1 + 8), v10, v27);
    if (seed != -10)
    {
      break;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v14 = 4294967134;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

      goto LABEL_36;
    }

LABEL_13:
    if (v6 >= *(a1 + 48))
    {
      v16 = *(a1 + 48);
    }

    else
    {
      v16 = v6;
    }

    v17 = *(a1 + 24);
    if (v17)
    {
      os_unfair_lock_assert_owner(v17);
    }

    if (a2 <= 0xB && (v18 = *(a1 + 64), v18 >= v16))
    {
      v21 = *(a1 + 72);
      v22 = *(a1 + 80);
      v23 = v18 - v22;
      if (v18 - v22 >= v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = v18 - v22;
      }

      memcpy(v7, (v21 + v22), v24);
      cc_clear(v24, (v21 + v22));
      *(a1 + 80) += v24;
      if (v23 < v16)
      {
        v19 = drbg_generate(a1, *(a1 + 64), *(a1 + 72));
        if (v19)
        {
LABEL_39:
          v14 = v19;
          goto LABEL_36;
        }

        memcpy(&v7[v24], *(a1 + 72), v16 - v24);
        cc_clear(v16 - v24, *(a1 + 72));
        *(a1 + 80) = v16 - v24;
      }
    }

    else
    {
      v19 = drbg_generate(a1, v16, v7);
      if (v19)
      {
        goto LABEL_39;
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      os_unfair_lock_unlock(v20);
    }

    v7 += v16;
    v6 -= v16;
    if (!v6)
    {
      return 0;
    }
  }

  v14 = seed;
  if (seed)
  {
    goto LABEL_41;
  }

  v15 = drbg_reseed(a1, v10, v27, 0, 0);
  if (!v15)
  {
    ccrng_schedule_notify_reseed(*(a1 + 16));
    cc_clear(v10, v27);
    goto LABEL_13;
  }

  v14 = v15;
LABEL_41:
  cc_clear(v10, v27);
LABEL_36:
  v26 = *(a1 + 24);
  if (v26)
  {
    os_unfair_lock_unlock(v26);
  }

  cc_clear(a2, a3);
  return v14;
}

uint64_t ccrng_crypto_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 > 0x40)
  {
    return 4294967291;
  }

  result = 0;
  *a1 = generate_0;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  a1[5] = a6;
  a1[6] = a7;
  a1[7] = a8;
  a1[8] = a9;
  a1[9] = a10;
  a1[10] = a9;
  return result;
}

uint64_t drbg_generate(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  if (v6)
  {
    os_unfair_lock_assert_owner(v6);
  }

  v7 = a1[4];
  v8 = a1[5];

  return ccdrbg_generate(v7, v8, a2, a3, 0, 0);
}

uint64_t cczp_inv_default_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = cczp_n(a2);
  v8 = cczp_prime(v6);
  v9 = v7;
  if ((ccn_cmp_public_value(v7, a4, v8) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  __s = a3;
  v11 = v7 << 7;
  v12 = a1;
  v39 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v7);
  v14 = (*(v12 + 24))(v12, v9);
  v49 = v13;
  cczp_from_ws(a1, v6);
  v15 = cczp_prime(v6);
  ccn_set(v9, v14, v15);
  v16 = (*(v12 + 24))(v12, v9);
  v17 = (*(v12 + 24))(v12, v9);
  v44 = v16;
  ccn_seti(v9, v16, 1);
  __n = 8 * v9;
  v45 = v17;
  cc_clear(8 * v9, v17);
  __src = (*(v12 + 24))(v12, v9);
  if (v11)
  {
    v18 = 0;
    v19 = ((v11 | 0x1EuLL) * 0x842108421084211uLL) >> 64;
    v20 = (v19 + (((v11 | 0x1EuLL) - v19) >> 1)) >> 4;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v42 = v20;
    v43 = v6;
    v41 = v14;
    do
    {
      v47 = v18;
      v50 = 0;
      v51 = 0;
      ccn_gcd_approximate(v9, v49, &v51, v14, &v50);
      v21 = 0;
      v22 = 0;
      LOBYTE(v23) = v51;
      v24 = 31;
      v25 = 0x80000000;
      v26 = 0x80000000;
      do
      {
        v27 = v23 & 1;
        v28 = -v27;
        v51 >>= 1 - v27;
        v29 = -((((v51 - v50) ^ v51 | v50 ^ v51) ^ v51) >> 63) & -v27;
        v30 = v51 & ~v29 | v50 & v29;
        v50 ^= v51 ^ v30;
        v31 = v26 & ~v29 | v29 & v22;
        v22 ^= v26 ^ v31;
        v32 = v21 & ~v29 | v29 & v25;
        v25 ^= v21 ^ v32;
        v23 = (v30 - (v50 & -v27)) >> v27;
        v51 = v23;
        v26 = (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1);
        v21 = (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1);
        --v24;
      }

      while (v24);
      v33 = v9;
      updated = ccn_gcd_update_ws(a1, v9, __src, v49, (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1), v14, (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1));
      v35 = ccn_gcd_update_ws(a1, v33, v14, v49, v22, v14, v25);
      ccn_set(v33, v49, __src);
      v36 = -updated & -v26;
      v37 = (updated - 1) & v26;
      v6 = v43;
      cczp_inv_update_redc_ws(a1, v43, __src, v44, v37 | v36, v45, (updated - 1) & v21 | -updated & -v21);
      v14 = v41;
      cczp_inv_update_redc_ws(a1, v43, v45, v44, (v35 - 1) & v22 | -v35 & -v22, v45, (v35 - 1) & v25 | -v35 & -v25);
      v9 = v33;
      ccn_set(v33, v44, __src);
      v18 = v47 + 1;
    }

    while (v47 + 1 != v42);
  }

  if (ccn_n(v9, v14) == 1 && *v14 == 1)
  {
    cczp_to_ws(a1, v6);
    result = 0;
  }

  else
  {
    cc_clear(__n, __s);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
  return result;
}

uint64_t cczp_inv_update_redc_ws(uint64_t a1, void *a2, void *a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  v11 = cczp_n(a2);
  v22 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v11 + 1);
  v13 = (*(a1 + 24))(a1, v11);
  cczp_cond_negate(a2, a5 < 0, v12->i64, a4);
  cczp_cond_negate(a2, a7 < 0, v13, a6);
  v12->i64[v11] = ccn_mul1(v11, v12, v12, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  v12->i64[v11] += ccn_addmul1(v11, v12, v13, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v14 = cczp_prime(a2);
  v12->i64[v11] += ccn_addmul1(v11, v12, v14, (LODWORD(a2[*a2 + 3]) * v12->i32[0]) & 0x7FFFFFFF);
  ccn_shift_right(v11 + 1, v12, v12, 31);
  ccn_set(v11, a3, v12);
  v15 = cczp_prime(a2);
  v16 = ccn_subn(v11 + 1, v12, v12->i64, v11, v15);
  result = ccn_mux(v11, v16, a3, a3, v12->i64);
  *(a1 + 16) = v22;
  return result;
}

unint64_t md5_compress(unint64_t result, uint64_t a2, _DWORD *a3)
{
  v85 = result;
  if (a2)
  {
    v3 = *result;
    v4 = *(result + 4);
    v5 = *(result + 8);
    v6 = *(result + 12);
    do
    {
      v7 = a3[1];
      v9 = a3[2];
      v8 = a3[3];
      v11 = a3[4];
      v10 = a3[5];
      v12 = a3[6];
      v13 = a3[7];
      v14 = a3[8];
      result = a3[9];
      v16 = a3[10];
      v15 = a3[11];
      v17 = a3[12];
      v18 = a3[13];
      v20 = a3[14];
      v19 = a3[15];
      HIDWORD(v21) = v3 + (v5 & v4 | v6 & ~v4) - 680876936 + *a3;
      LODWORD(v21) = HIDWORD(v21);
      v22 = (v21 >> 25) + v4;
      HIDWORD(v21) = v6 + v7 - 389564586 + (v4 & v22 | v5 & ~v22);
      LODWORD(v21) = HIDWORD(v21);
      v23 = (v21 >> 20) + v22;
      HIDWORD(v21) = v5 + v9 + 606105819 + (v22 & v23 | v4 & ~v23);
      LODWORD(v21) = HIDWORD(v21);
      v24 = (v21 >> 15) + v23;
      HIDWORD(v21) = v4 + v8 - 1044525330 + (v23 & v24 | v22 & ~v24);
      LODWORD(v21) = HIDWORD(v21);
      v25 = (v21 >> 10) + v24;
      HIDWORD(v21) = v11 + v22 - 176418897 + (v24 & v25 | v23 & ~v25);
      LODWORD(v21) = HIDWORD(v21);
      v26 = (v21 >> 25) + v25;
      HIDWORD(v21) = v10 + v23 + 1200080426 + (v25 & v26 | v24 & ~v26);
      LODWORD(v21) = HIDWORD(v21);
      v27 = (v21 >> 20) + v26;
      HIDWORD(v21) = v12 + v24 - 1473231341 + (v26 & v27 | v25 & ~v27);
      LODWORD(v21) = HIDWORD(v21);
      v28 = (v21 >> 15) + v27;
      HIDWORD(v21) = v13 + v25 - 45705983 + (v27 & v28 | v26 & ~v28);
      LODWORD(v21) = HIDWORD(v21);
      v29 = (v21 >> 10) + v28;
      HIDWORD(v21) = v14 + v26 + 1770035416 + (v28 & v29 | v27 & ~v29);
      LODWORD(v21) = HIDWORD(v21);
      v30 = (v21 >> 25) + v29;
      HIDWORD(v21) = result + v27 - 1958414417 + (v29 & v30 | v28 & ~v30);
      LODWORD(v21) = HIDWORD(v21);
      v31 = (v21 >> 20) + v30;
      HIDWORD(v21) = v16 + v28 - 42063 + (v30 & v31 | v29 & ~v31);
      LODWORD(v21) = HIDWORD(v21);
      v32 = (v21 >> 15) + v31;
      HIDWORD(v21) = v15 + v29 - 1990404162 + (v31 & v32 | v30 & ~v32);
      LODWORD(v21) = HIDWORD(v21);
      v33 = (v21 >> 10) + v32;
      HIDWORD(v21) = v17 + v30 + 1804603682 + (v32 & v33 | v31 & ~v33);
      LODWORD(v21) = HIDWORD(v21);
      v34 = (v21 >> 25) + v33;
      HIDWORD(v21) = v18 + v31 - 40341101 + (v33 & v34 | v32 & ~v34);
      LODWORD(v21) = HIDWORD(v21);
      v35 = (v21 >> 20) + v34;
      HIDWORD(v21) = v20 + v32 - 1502002290 + (v34 & v35 | v33 & ~v35);
      LODWORD(v21) = HIDWORD(v21);
      v36 = (v21 >> 15) + v35;
      HIDWORD(v21) = v19 + v33 + 1236535329 + (v35 & v36 | v34 & ~v36);
      LODWORD(v21) = HIDWORD(v21);
      v37 = (v21 >> 10) + v36;
      HIDWORD(v21) = v7 + v34 - 165796510 + (v37 & v35 | v36 & ~v35);
      LODWORD(v21) = HIDWORD(v21);
      v38 = (v21 >> 27) + v37;
      HIDWORD(v21) = v12 + v35 - 1069501632 + (v38 & v36 | v37 & ~v36);
      LODWORD(v21) = HIDWORD(v21);
      v39 = (v21 >> 23) + v38;
      HIDWORD(v21) = v15 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
      LODWORD(v21) = HIDWORD(v21);
      v40 = (v21 >> 18) + v39;
      HIDWORD(v21) = *a3 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
      LODWORD(v21) = HIDWORD(v21);
      v41 = (v21 >> 12) + v40;
      HIDWORD(v21) = v10 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
      LODWORD(v21) = HIDWORD(v21);
      v42 = (v21 >> 27) + v41;
      HIDWORD(v21) = v16 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
      LODWORD(v21) = HIDWORD(v21);
      v43 = (v21 >> 23) + v42;
      HIDWORD(v21) = v19 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
      LODWORD(v21) = HIDWORD(v21);
      v44 = (v21 >> 18) + v43;
      HIDWORD(v21) = v11 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
      LODWORD(v21) = HIDWORD(v21);
      v45 = (v21 >> 12) + v44;
      HIDWORD(v21) = result + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
      LODWORD(v21) = HIDWORD(v21);
      v46 = (v21 >> 27) + v45;
      HIDWORD(v21) = v20 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
      LODWORD(v21) = HIDWORD(v21);
      v47 = (v21 >> 23) + v46;
      HIDWORD(v21) = v8 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
      LODWORD(v21) = HIDWORD(v21);
      v48 = (v21 >> 18) + v47;
      HIDWORD(v21) = v14 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
      LODWORD(v21) = HIDWORD(v21);
      v49 = (v21 >> 12) + v48;
      HIDWORD(v21) = v18 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
      LODWORD(v21) = HIDWORD(v21);
      v50 = (v21 >> 27) + v49;
      HIDWORD(v21) = v9 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
      LODWORD(v21) = HIDWORD(v21);
      v51 = (v21 >> 23) + v50;
      HIDWORD(v21) = v13 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
      LODWORD(v21) = HIDWORD(v21);
      v52 = (v21 >> 18) + v51;
      HIDWORD(v21) = v17 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
      LODWORD(v21) = HIDWORD(v21);
      v53 = (v21 >> 12) + v52;
      HIDWORD(v21) = v10 + v50 - 378558 + (v52 ^ v51 ^ v53);
      LODWORD(v21) = HIDWORD(v21);
      v54 = (v21 >> 28) + v53;
      HIDWORD(v21) = v14 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
      LODWORD(v21) = HIDWORD(v21);
      v55 = (v21 >> 21) + v54;
      HIDWORD(v21) = v15 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
      LODWORD(v21) = HIDWORD(v21);
      v56 = (v21 >> 16) + v55;
      HIDWORD(v21) = v20 + v53 - 35309556 + (v55 ^ v54 ^ v56);
      LODWORD(v21) = HIDWORD(v21);
      v57 = (v21 >> 9) + v56;
      HIDWORD(v21) = v7 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
      LODWORD(v21) = HIDWORD(v21);
      v58 = (v21 >> 28) + v57;
      HIDWORD(v21) = v11 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
      LODWORD(v21) = HIDWORD(v21);
      v59 = (v21 >> 21) + v58;
      HIDWORD(v21) = v13 + v56 - 155497632 + (v58 ^ v57 ^ v59);
      LODWORD(v21) = HIDWORD(v21);
      v60 = (v21 >> 16) + v59;
      HIDWORD(v21) = v16 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
      LODWORD(v21) = HIDWORD(v21);
      v61 = (v21 >> 9) + v60;
      HIDWORD(v21) = v18 + v58 + 681279174 + (v60 ^ v59 ^ v61);
      LODWORD(v21) = HIDWORD(v21);
      v62 = (v21 >> 28) + v61;
      HIDWORD(v21) = *a3 + v59 - 358537222 + (v61 ^ v60 ^ v62);
      LODWORD(v21) = HIDWORD(v21);
      v63 = (v21 >> 21) + v62;
      HIDWORD(v21) = v8 + v60 - 722521979 + (v62 ^ v61 ^ v63);
      LODWORD(v21) = HIDWORD(v21);
      v64 = (v21 >> 16) + v63;
      HIDWORD(v21) = v12 + v61 + 76029189 + (v63 ^ v62 ^ v64);
      LODWORD(v21) = HIDWORD(v21);
      v65 = (v21 >> 9) + v64;
      HIDWORD(v21) = result + v62 - 640364487 + (v64 ^ v63 ^ v65);
      LODWORD(v21) = HIDWORD(v21);
      v66 = (v21 >> 28) + v65;
      HIDWORD(v21) = v17 + v63 - 421815835 + (v65 ^ v64 ^ v66);
      LODWORD(v21) = HIDWORD(v21);
      v67 = (v21 >> 21) + v66;
      HIDWORD(v21) = v19 + v64 + 530742520 + (v66 ^ v65 ^ v67);
      LODWORD(v21) = HIDWORD(v21);
      v68 = (v21 >> 16) + v67;
      HIDWORD(v21) = v9 + v65 - 995338651 + (v67 ^ v66 ^ v68);
      LODWORD(v21) = HIDWORD(v21);
      v69 = (v21 >> 9) + v68;
      HIDWORD(v21) = *a3 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
      LODWORD(v21) = HIDWORD(v21);
      v70 = (v21 >> 26) + v69;
      HIDWORD(v21) = v13 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
      LODWORD(v21) = HIDWORD(v21);
      v71 = (v21 >> 22) + v70;
      HIDWORD(v21) = v20 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
      LODWORD(v21) = HIDWORD(v21);
      v72 = (v21 >> 17) + v71;
      HIDWORD(v21) = v10 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
      LODWORD(v21) = HIDWORD(v21);
      v73 = (v21 >> 11) + v72;
      HIDWORD(v21) = v17 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
      LODWORD(v21) = HIDWORD(v21);
      v74 = (v21 >> 26) + v73;
      HIDWORD(v21) = v8 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
      LODWORD(v21) = HIDWORD(v21);
      v75 = (v21 >> 22) + v74;
      HIDWORD(v21) = v16 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
      LODWORD(v21) = HIDWORD(v21);
      v76 = (v21 >> 17) + v75;
      HIDWORD(v21) = v7 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
      LODWORD(v21) = HIDWORD(v21);
      v77 = (v21 >> 11) + v76;
      HIDWORD(v21) = v14 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
      LODWORD(v21) = HIDWORD(v21);
      v78 = (v21 >> 26) + v77;
      HIDWORD(v21) = v19 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
      LODWORD(v21) = HIDWORD(v21);
      v79 = (v21 >> 22) + v78;
      HIDWORD(v21) = v12 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
      LODWORD(v21) = HIDWORD(v21);
      v80 = (v21 >> 17) + v79;
      HIDWORD(v21) = v18 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
      LODWORD(v21) = HIDWORD(v21);
      v81 = (v21 >> 11) + v80;
      HIDWORD(v21) = v11 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
      LODWORD(v21) = HIDWORD(v21);
      v82 = (v21 >> 26) + v81;
      HIDWORD(v21) = v15 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
      LODWORD(v21) = HIDWORD(v21);
      v83 = (v21 >> 22) + v82;
      HIDWORD(v21) = v9 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
      LODWORD(v21) = HIDWORD(v21);
      v84 = (v21 >> 17) + v83;
      v3 += v82;
      HIDWORD(v21) = result + v81 - 343485551 + ((v84 | ~v82) ^ v83);
      LODWORD(v21) = HIDWORD(v21);
      v4 += v84 + (v21 >> 11);
      v5 += v84;
      v6 += v83;
      *v85 = v3;
      v85[1] = v4;
      v85[2] = v5;
      v85[3] = v6;
      a3 += 16;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t ccec_generate_key_deterministic(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *), int a5, uint64_t **a6)
{
  v18 = timingsafe_enable_if_supported();
  v12 = cc_malloc_clear(392 * *a1);
  v13 = 49 * *a1;
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v12)
  {
    key_deterministic_ws = ccec_generate_key_deterministic_ws(v16, a1, a2, a3, a4, a5, a6);
    v17(v16);
  }

  else
  {
    key_deterministic_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return key_deterministic_ws;
}

uint64_t ccmode_ctr_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 48);
  *a2 = v8;
  v9 = (*(v8 + 16))();
  (*(a1 + 32))(a1, a2, a5);
  return v9;
}

uint64_t ccmode_gcm_finalize(uint64_t a1, size_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  ccmode_gcm_aad_finalize(a1, a4, a5, a6, a7, a8, a9);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v18 = *(a1 + 96);
  if ((v18 & 0xF) != 0)
  {
    ccmode_gcm_mult_h(a1, (a1 + 16), v12, v13, v14, v15, v16, v17);
    v18 = *(a1 + 96);
  }

  v19 = *(a1 + 88);
  *(a1 + 64) = v19 >> 53;
  *(a1 + 65) = v19 >> 45;
  *(a1 + 66) = v19 >> 37;
  *(a1 + 67) = v19 >> 29;
  *(a1 + 68) = v19 >> 21;
  *(a1 + 69) = v19 >> 13;
  *(a1 + 70) = v19 >> 5;
  *(a1 + 71) = 8 * v19;
  *(a1 + 72) = v18 >> 53;
  *(a1 + 73) = v18 >> 45;
  *(a1 + 74) = v18 >> 37;
  *(a1 + 75) = v18 >> 29;
  *(a1 + 76) = v18 >> 21;
  *(a1 + 77) = v18 >> 13;
  *(a1 + 78) = v18 >> 5;
  *(a1 + 79) = 8 * v18;
  v20 = *(a1 + 64);
  v21 = veorq_s8(v20, *(a1 + 16));
  *(a1 + 16) = v21;
  v25 = 0uLL;
  v22 = ccmode_gcm_mult_h(a1, (a1 + 16), *v21.i64, *v20.i64, v14, v15, v16, v17);
  (*(*(a1 + 104) + 24))(*(a1 + 112), 1, a1 + 48, a1 + 64, v22);
  v25 = veorq_s8(*(a1 + 64), *(a1 + 16));
  if (a2 >= 0x10)
  {
    a2 = 16;
  }

  if (*(a1 + 120) == 78647)
  {
    v23 = cc_cmp_safe_internal(a2, &v25, a3) != 0 ? 0xFFFFFFBB : 0;
  }

  else
  {
    v23 = 0;
  }

  memcpy(a3, &v25, a2);
  *(a1 + 80) = 4;
  return v23;
}

uint64_t ccrng_sequence_non_repeat_init(uint64_t (**a1)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, unint64_t a2, uint64_t a3))
{
  *a1 = non_repeat_sequence_generate;
  a1[1] = a3;
  a1[2] = a2;
  return 0;
}

uint64_t non_repeat_sequence_generate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
    return 4294967286;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      *(a3 + i) = *(*(a1 + 8) + i);
    }

    v3 = *(a1 + 16);
  }

  v4 = 0;
  *(a1 + 8) += a2;
  *(a1 + 16) = v3 - a2;
  return v4;
}

uint64_t ccn_cmpn_public_value(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  if (a1 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 < a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = ccn_cmp_public_value(v4, a2, a4);
  if (ccn_n(v6 - v4, v5 + 8 * v4))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t ccec_der_import_priv(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  v23 = timingsafe_enable_if_supported();
  v8 = 26 * *a1;
  if (20 * *a1 > v8)
  {
    v8 = 20 * *a1;
  }

  v9 = cc_malloc_clear(8 * v8);
  v10 = 26 * *a1;
  if (20 * *a1 > v10)
  {
    v10 = 20 * *a1;
  }

  v21[0] = v9;
  v21[1] = v10;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v9)
  {
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    *a4 = a1;
    if (ccder_decode_eckey_internal(&v20, &v19, &v17, &v15, &v18, &v16, a3, &a3[a2]) && (v11 = v19, v11 == (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3) && !ccn_read_uint_internal(*a1, &a4[3 * **a4 + 2], v19, v17))
    {
      if (v16 && (v12 = v18, (((cczp_bitlen(a1) + 7) >> 2) | 1) <= v12 >> 3))
      {
        if (ccec_import_pub_ws(v21, a1, v18 >> 3, v16, a4))
        {
          pub_from_priv_ws = 0xFFFFFFFFLL;
        }

        else
        {
          pub_from_priv_ws = 0;
        }
      }

      else
      {
        pub_from_priv_ws = ccec_make_pub_from_priv_ws(v21, a1, 0, &a4[3 * **a4 + 2], 0, a4);
      }
    }

    else
    {
      pub_from_priv_ws = 0xFFFFFFFFLL;
    }

    v22(v21);
  }

  else
  {
    pub_from_priv_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return pub_from_priv_ws;
}

uint64_t cczp_sqrt_tonelli_shanks_precomp_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v12 = cczp_n(a2);
  v25 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  v16 = (*(a1 + 24))(a1, v12);
  v24 = a4;
  result = cczp_power_fast_ws(a1, a2, a3, a4, a6);
  v18 = v25;
  if (!result)
  {
    ccn_seti(v12, v16, 1);
    v27 = v16;
    cczp_to_ws(a1, a2);
    ccn_set(v12, v15, a7);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v19 = a5 - 2;
    if (a5 >= 2)
    {
      while (1)
      {
        ccn_set(v12, v14, v13);
        --a5;
        v20 = v19;
        if (a5 < 2)
        {
          break;
        }

        do
        {
          cczp_sqr_ws(a1, a2);
          --v20;
        }

        while (v20);
        v21 = ccn_cmp_public_value(v12, v14, v27) & 1;
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, a3, v14, a3);
        cczp_sqr_ws(a1, a2);
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, v13, v14, v13);
        --v19;
      }

      v22 = ccn_cmp_public_value(v12, v14, v27) & 1;
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, a3, v14, a3);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, v13, v14, v13);
    }

    cczp_sqr_ws(a1, a2);
    if (ccn_cmp_public_value(v12, v14, v24))
    {
      result = 4294967289;
    }

    else
    {
      result = 0;
    }

    v18 = v25;
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t cczp_sqrt_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = ~*cczp_prime(a2) & 3;
  v9 = cczp_n(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v9);
  v12 = cczp_prime(a2);
  if (v8)
  {
    ccn_set(v9, v11, v12);
    v11->i64[0] &= ~1uLL;
    v14 = ccn_trailing_zeros(v9, v11);
    ccn_shift_right_multi(v9, v11, v11, v14);
    v15 = (*(a1 + 24))(a1, v9);
    ccn_sub1(v9, v15, v11, 1uLL);
    ccn_shift_right(v9, v15, v15, 1);
    v16 = (*(a1 + 24))(a1, v9);
    ccn_seti(v9, v16, 1);
    while (!cczp_is_quadratic_residue_ws(a1, a2, v16))
    {
      ccn_add1_ws(a1, v9, v16, v16, 1);
    }

    result = cczp_power_fast_ws(a1, a2, v16, v16, v11);
    if (!result)
    {
      result = cczp_sqrt_tonelli_shanks_precomp_ws(a1, a2, a3, a4, v14, v15, v16);
    }
  }

  else
  {
    ccn_add1_ws(a1, v9, v11, v12, 1);
    ccn_shift_right(v9, v11, v11, 2);
    result = cczp_power_fast_ws(a1, a2, a3, a4, v11);
    if (!result)
    {
      cczp_sqr_ws(a1, a2);
      if (ccn_cmp_public_value(v9, v11, a4))
      {
        result = 4294967289;
      }

      else
      {
        result = 0;
      }
    }
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccmode_gcm_reset(uint64_t a1)
{
  cc_clear(0x10uLL, (a1 + 16));
  cc_clear(0x10uLL, (a1 + 64));
  *(a1 + 84) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return 0;
}

BOOL ccec_is_point_projective_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  result = ccn_cmp_public_value(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccentropy_get_seed(uint64_t (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (**a1)(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccn_recode_jsf_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(result + 8) = a3;
  *(result + 16) = a4;
  v5 = 1;
  do
  {
    v6 = v5;
    *(result + v4) = (8 * ((*(a3 + 8 * ((a2 - 1) >> 6)) >> ((a2 - 1) & 0x3F)) & 1)) | (4 * ((*(a3 + 8 * ((a2 - 2) >> 6)) >> ((a2 - 2) & 0x3F)) & 1)) | (2 * ((*(a3 + 8 * ((a2 - 3) >> 6)) >> ((a2 - 3) & 0x3F)) & 1)) | (*(a3 + 8 * ((a2 - 4) >> 6)) >> ((a2 - 4) & 0x3F)) & 1;
    a3 = a4;
    v4 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t ccn_recode_jsf_column(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v12 = 0;
  if ((*result & 0x20) != 0)
  {
    v4 = *result & 0x1F ^ 0x1F;
  }

  else
  {
    v4 = *result & 0x1F;
  }

  LOBYTE(v12) = v4;
  if ((*(result + 1) & 0x20) != 0)
  {
    v5 = *(result + 1) & 0x1F ^ 0x1F;
  }

  else
  {
    v5 = *(result + 1) & 0x1F;
  }

  HIBYTE(v12) = v5;
  v11 = *(result + 8);
  v6 = &v11;
  v7 = 1;
  do
  {
    v8 = v7;
    if (a2 < 5)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = (*(*v6 + 8 * ((a2 - 5) >> 6)) >> ((a2 - 5) & 0x3F)) & 1;
    }

    if (*(&v12 + v3) >= F_2_2_11[*(&v12 + (v3 ^ 1))])
    {
      LOBYTE(v9) = v9 | 0x20;
      if ((*(result + v3) & 0x20) != 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = 0;
    *(a3 + 4 * v3) = v10;
    *(result + v3) = v9 ^ (2 * *(result + v3));
    v6 = (&v11 + 8);
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t ccn_recode_jsf_direction(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    if (!result && a1[1] == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ccec_compressed_x962_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  LODWORD(result) = ccec_x963_import_pub(a1, a2, a3, a4);
  if (result == -7)
  {
    return 4294967135;
  }

  else
  {
    return result;
  }
}

uint64_t cc_log_default()
{
  if (qword_51A3A0 != -1)
  {
    cc_log_default_cold_1();
  }

  return _MergedGlobals;
}

os_log_t cc_log_init(os_log_t *a1)
{
  result = os_log_create("com.apple.corecrypto", "default");
  *a1 = result;
  return result;
}

BOOL ccn_add1_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    return ccn_add1_asm(a2, a3, a4, a5);
  }

  else
  {
    return a5;
  }
}

uint64_t ccn_mux(uint64_t result, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  v6 = v5 ^ (v5 << 17);
  state = v6;
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * v6)); result; --result)
  {
    v9 = *a4++;
    v8 = v9;
    v10 = *a5++;
    *a3 = v10 ^ v6;
    *a3++ = (v10 ^ v8) & 0x5555555555555555 ^ v10 ^ v6 ^ (v10 ^ v8) & i ^ v6;
  }

  return result;
}

uint64_t ccn_mux_next_mask()
{
  v0 = state ^ (state << 13) ^ ((state ^ (state << 13)) >> 7);
  result = v0 ^ (v0 << 17);
  state = result;
  return result;
}

uint64_t cczp_power_fast_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = ccn_bitlen_internal(v10, a5);
  if (v11)
  {
    v12 = v11;
    v17 = *(a1 + 16);
    v13 = (*(a1 + 24))(a1, 3 * v10);
    ccn_set(v10, v13, a4);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v14 = (*(a5 + (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 - 1)) & 1;
    if ((v12 & 1) == 0)
    {
      v14 = (*(a5 + (((v12 - 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v12 - 2) & 0x3E)) & 1 | (2 * v14);
    }

    ccn_set(v10, a3, &v13[8 * (v14 - 1) * v10]);
    if ((v12 | 0xFFFFFFFFFFFFFFFELL) + v12)
    {
      v15 = v12 + (v12 | 0xFFFFFFFFFFFFFFFELL) - 1;
      do
      {
        cczp_sqr_ws(a1, a2);
        cczp_sqr_ws(a1, a2);
        if ((*(a5 + (((v15 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 - 1)) & 1 | (2 * ((*(a5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1)))
        {
          cczp_mul_ws(a1, a2);
        }

        v15 -= 2;
      }

      while (v15 != -1);
    }

    *(a1 + 16) = v17;
  }

  else
  {
    ccn_seti(v10, a3, 1);
    cczp_to_ws(a1, a2);
  }

  return 0;
}

unint64_t ccn_bitlen_public_value(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = 64;
    do
    {
      v4 = *a2++;
      v2 = (v3 - __clz(v4 | 1)) & -(v4 != 0) | (v4 != 0 ? 0 : v2);
      v3 += 64;
      --a1;
    }

    while (a1);
  }

  return v2;
}

uint64_t ccn_cmp(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccn_cmp_asm(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccsha3_final(unint64_t *a1, const void *a2, void *a3, uint64_t (*a4)(uint64_t *))
{
  v9 = a1[1];
  v8 = a1[2];
  v10 = a2 + v9 + 8;
  if (v8 <= *(v10 + v8))
  {
    *(v10 + v8) = 0;
  }

  v11 = (v9 + v8 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11);
  memcpy(v12, a2, v9 + v8 + 12);
  cckeccak_absorb_and_pad((v12 + 8), v8, *&v12[v9 + 8 + v8], &v12[v9 + 8], 6u);
  cckeccak_squeeze((v12 + 8), a1[2], *a1, a3, a4);
  return cc_clear(a1[1] + a1[2] + 12, v12);
}

uint64_t ccn_gcd_approximate(uint64_t result, void *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  *a3 = a2[result - 1];
  v5 = a4[result - 1];
  for (*a5 = v5; result != 1; --result)
  {
    v6 = v5 | *a3;
    v7 = __clz(v6 | 1);
    LOBYTE(v6) = v6 != 0 ? ((*a5 | *a3) >> 63) - v7 + 64 : 0;
    *a3 = (a2[result - 2] >> v6) | (*a3 << v7);
    v5 = (a4[result - 2] >> v6) | (*a5 << v7);
    *a5 = v5;
  }

  *a3 = *a3 & 0xFFFFFFFF80000000 | *a2 & 0x7FFFFFFFLL;
  *a5 = *a5 & 0xFFFFFFFF80000000 | *a4 & 0x7FFFFFFFLL;
  return result;
}