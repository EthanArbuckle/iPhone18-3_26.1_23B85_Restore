@interface ISFileProtectionClassMigrator
+ (BOOL)migrate;
@end

@implementation ISFileProtectionClassMigrator

+ (BOOL)migrate
{
  v104 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
  v69 = CPSharedResourcesDirectory();
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 1;
  if (!v69)
  {
    mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v52 = mEMORY[0x277D69B38]2;
    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [v52 shouldLogToDisk];
    oSLogObject = [v52 OSLogObject];
    v56 = oSLogObject;
    if (shouldLogToDisk)
    {
      v57 = shouldLog | 2;
    }

    else
    {
      v57 = shouldLog;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v58 = v57;
    }

    else
    {
      v58 = v57 & 2;
    }

    if (v58)
    {
      LOWORD(v101) = 0;
      LODWORD(v64) = 2;
      v59 = _os_log_send_and_compose_impl();

      if (!v59)
      {
LABEL_86:

        v50 = 0;
        *(v94 + 24) = 0;
        goto LABEL_88;
      }

      v56 = [MEMORY[0x277CCACA8] stringWithCString:v59 encoding:{4, &v101, v64}];
      free(v59);
      SSFileLog();
    }

    goto LABEL_86;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v2 = [&unk_2884CA938 countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = *v90;
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v90 != v3)
      {
        objc_enumerationMutation(&unk_2884CA938);
      }

      v5 = [v69 stringByAppendingPathComponent:{*(*(&v89 + 1) + 8 * i), v62, v64}];
      v6 = v5;
      if ((_set_path_class([v5 fileSystemRepresentation], 0) & 0xFFFFFFFD) != 0)
      {
        mEMORY[0x277D69B38]3 = mEMORY[0x277D69B38];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v8 = mEMORY[0x277D69B38]3;
        shouldLog2 = [mEMORY[0x277D69B38]3 shouldLog];
        shouldLogToDisk2 = [v8 shouldLogToDisk];
        oSLogObject2 = [v8 OSLogObject];
        v12 = oSLogObject2;
        if (shouldLogToDisk2)
        {
          v13 = shouldLog2 | 2;
        }

        else
        {
          v13 = shouldLog2;
        }

        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 2;
        }

        if (v14)
        {
          v101 = 138543362;
          v102 = v5;
          LODWORD(v64) = 12;
          v62 = &v101;
          v15 = _os_log_send_and_compose_impl();

          if (v15)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v101, v64}];
            free(v15);
            v62 = v12;
            SSFileLog();
            goto LABEL_19;
          }
        }

        else
        {
LABEL_19:
        }

        *(v94 + 24) = 0;
      }
    }

    v2 = [&unk_2884CA938 countByEnumeratingWithState:&v89 objects:v103 count:16];
  }

  while (v2);
LABEL_23:
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v16 = [&unk_2884CA950 countByEnumeratingWithState:&v85 objects:v100 count:{16, v62}];
  if (!v16)
  {
    goto LABEL_65;
  }

  v65 = *v86;
  v17 = *MEMORY[0x277CBE868];
  while (2)
  {
    v18 = 0;
    v67 = v16;
    while (2)
    {
      if (*v86 != v65)
      {
        objc_enumerationMutation(&unk_2884CA950);
      }

      v19 = [v69 stringByAppendingPathComponent:{*(*(&v85 + 1) + 8 * v18), v63, v64}];
      v84 = 0;
      v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19 isDirectory:1];
      v99 = v17;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __40__ISFileProtectionClassMigrator_migrate__block_invoke;
      v81[3] = &unk_27A670968;
      v22 = mEMORY[0x277D69B38];
      v82 = v22;
      v83 = &v93;
      v23 = [defaultManager enumeratorAtURL:v20 includingPropertiesForKeys:v21 options:0 errorHandler:v81];
      v70 = v19;
      v68 = v18;

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v77 objects:v98 count:16];
      if (v25)
      {
        v26 = *v78;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v78 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v77 + 1) + 8 * j);
            v76 = 0;
            if (![v28 getResourceValue:&v76 forKey:v17 error:{&v84, v63}])
            {
              mEMORY[0x277D69B38]4 = v22;
              if (!mEMORY[0x277D69B38])
              {
                mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
              }

              v31 = mEMORY[0x277D69B38]4;
              shouldLog3 = [mEMORY[0x277D69B38]4 shouldLog];
              shouldLogToDisk3 = [v31 shouldLogToDisk];
              oSLogObject3 = [v31 OSLogObject];
              v42 = oSLogObject3;
              if (shouldLogToDisk3)
              {
                shouldLog3 |= 2u;
              }

              if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
              {
                v43 = shouldLog3;
              }

              else
              {
                v43 = shouldLog3 & 2;
              }

              if (v43)
              {
                v101 = 138543362;
                v102 = v84;
                LODWORD(v64) = 12;
                v63 = &v101;
                v44 = _os_log_send_and_compose_impl();

                if (v44)
                {
                  v42 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v101, v64}];
                  free(v44);
                  v63 = v42;
                  SSFileLog();
                  goto LABEL_58;
                }
              }

              else
              {
LABEL_58:
              }

LABEL_59:

              *(v94 + 24) = 0;
              continue;
            }

            if ([v76 BOOLValue])
            {
              v29 = v28;
              if ((_set_path_class([v28 fileSystemRepresentation], 0) & 0xFFFFFFFD) == 0)
              {
                continue;
              }

              mEMORY[0x277D69B38]5 = v22;
              if (!mEMORY[0x277D69B38])
              {
                mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
              }

              v31 = mEMORY[0x277D69B38]5;
              shouldLog4 = [mEMORY[0x277D69B38]5 shouldLog];
              shouldLogToDisk4 = [v31 shouldLogToDisk];
              oSLogObject4 = [v31 OSLogObject];
              v35 = oSLogObject4;
              if (shouldLogToDisk4)
              {
                shouldLog4 |= 2u;
              }

              if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
              {
                v36 = shouldLog4;
              }

              else
              {
                v36 = shouldLog4 & 2;
              }

              if (v36)
              {
                v101 = 138543362;
                v102 = v70;
                LODWORD(v64) = 12;
                v63 = &v101;
                v37 = _os_log_send_and_compose_impl();

                if (!v37)
                {
                  goto LABEL_59;
                }

                v35 = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:{4, &v101, v64}];
                free(v37);
                v63 = v35;
                SSFileLog();
              }

              goto LABEL_59;
            }

            path = [v28 path];
            setFileClassC(path, v22, v94 + 24);
          }

          v25 = [v24 countByEnumeratingWithState:&v77 objects:v98 count:16];
        }

        while (v25);
      }

      v18 = v68 + 1;
      if (v68 + 1 != v67)
      {
        continue;
      }

      break;
    }

    v16 = [&unk_2884CA950 countByEnumeratingWithState:&v85 objects:v100 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_65:
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = [&unk_2884CA968 countByEnumeratingWithState:&v72 objects:v97 count:{16, v63}];
  if (v46)
  {
    v47 = *v73;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v73 != v47)
        {
          objc_enumerationMutation(&unk_2884CA968);
        }

        v49 = [v69 stringByAppendingPathComponent:*(*(&v72 + 1) + 8 * k)];
        setFileClassC(v49, mEMORY[0x277D69B38], v94 + 24);
      }

      v46 = [&unk_2884CA968 countByEnumeratingWithState:&v72 objects:v97 count:16];
    }

    while (v46);
  }

  if (v94[3])
  {
    CFPreferencesSetAppValue(@"NeedsFileProtectionClassMigration", *MEMORY[0x277CBED28], @"com.apple.itunesstored");
    v50 = *(v94 + 24);
  }

  else
  {
    v50 = 0;
  }

LABEL_88:
  _Block_object_dispose(&v93, 8);

  v60 = *MEMORY[0x277D85DE8];
  return v50 & 1;
}

uint64_t __40__ISFileProtectionClassMigrator_migrate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v18 = 138543362;
  v19 = v6;
  LODWORD(v17) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v18, v17}];
    free(v12);
    SSFileLog();
LABEL_12:
  }

  if ([v6 code] != 260 || (objc_msgSend(v6, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x277CCA050]), v13, (v14 & 1) == 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

@end