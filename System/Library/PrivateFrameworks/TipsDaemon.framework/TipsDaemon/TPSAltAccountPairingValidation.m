@interface TPSAltAccountPairingValidation
+ (id)deviceSelectorBlockForMatchingType:(int64_t)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSAltAccountPairingValidation

- (void)validateWithCompletion:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSTargetingValidation *)self value];
  v6 = 0x277D71000uLL;
  if (v5 && (v7 = v5, [(TPSTargetingValidation *)self value], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) != 0))
  {
    v10 = [(TPSTargetingValidation *)self value];
    v11 = [v10 TPSSafeIntegerForKey:@"matchingType"];

    v12 = [(TPSTargetingValidation *)self value];
    v13 = [v12 TPSSafeBoolForKey:@"value"];

    v14 = [objc_opt_class() deviceSelectorBlockForMatchingType:v11];
    v15 = [MEMORY[0x277D2BCF8] sharedInstance];
    v16 = [v15 getAllDevicesWithArchivedAltAccountDevicesMatching:v14];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v31 = v4;
      v20 = *v33;
      v21 = *MEMORY[0x277D2BB28];
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = [*(*(&v32 + 1) + 8 * i) valueForProperty:v21];
          v24 = [v23 BOOLValue];

          if (v13 == v24)
          {
            v25 = 1;
            goto LABEL_16;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v25 = 0;
LABEL_16:
      v4 = v31;
      v6 = 0x277D71000;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v26 = [(TPSTargetingValidation *)self value];
      v27 = [(TPSTargetingValidation *)self value];
      *buf = 138412546;
      v37 = v26;
      v38 = 2112;
      v39 = objc_opt_class();
      v28 = v39;
      _os_log_impl(&dword_232D6F000, v14, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@.", buf, 0x16u);
    }

    v25 = 0;
  }

  v29 = [*(v6 + 1912) targeting];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v25, v29];
  }

  v4[2](v4, v25, 0);
  v30 = *MEMORY[0x277D85DE8];
}

+ (id)deviceSelectorBlockForMatchingType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
  }

  else
  {
    if (a3 == 2)
    {
      [MEMORY[0x277D2BCF8] pairedDevicesSelectorBlock];
    }

    else
    {
      [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    }
    v3 = ;
  }

  return v3;
}

@end