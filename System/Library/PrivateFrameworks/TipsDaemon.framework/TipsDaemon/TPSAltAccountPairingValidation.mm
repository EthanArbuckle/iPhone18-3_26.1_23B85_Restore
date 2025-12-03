@interface TPSAltAccountPairingValidation
+ (id)deviceSelectorBlockForMatchingType:(int64_t)type;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAltAccountPairingValidation

- (void)validateWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  value = [(TPSTargetingValidation *)self value];
  v6 = 0x277D71000uLL;
  if (value && (v7 = value, [(TPSTargetingValidation *)self value], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) != 0))
  {
    value2 = [(TPSTargetingValidation *)self value];
    v11 = [value2 TPSSafeIntegerForKey:@"matchingType"];

    value3 = [(TPSTargetingValidation *)self value];
    v13 = [value3 TPSSafeBoolForKey:@"value"];

    targeting = [objc_opt_class() deviceSelectorBlockForMatchingType:v11];
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    v16 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:targeting];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v31 = completionCopy;
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
          bOOLValue = [v23 BOOLValue];

          if (v13 == bOOLValue)
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
      completionCopy = v31;
      v6 = 0x277D71000;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
    {
      value4 = [(TPSTargetingValidation *)self value];
      value5 = [(TPSTargetingValidation *)self value];
      *buf = 138412546;
      v37 = value4;
      v38 = 2112;
      v39 = objc_opt_class();
      v28 = v39;
      _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@.", buf, 0x16u);
    }

    v25 = 0;
  }

  targeting2 = [*(v6 + 1912) targeting];
  if (os_log_type_enabled(targeting2, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v25, targeting2];
  }

  completionCopy[2](completionCopy, v25, 0);
  v30 = *MEMORY[0x277D85DE8];
}

+ (id)deviceSelectorBlockForMatchingType:(int64_t)type
{
  if (type == 1)
  {
    activeDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
  }

  else
  {
    if (type == 2)
    {
      [MEMORY[0x277D2BCF8] pairedDevicesSelectorBlock];
    }

    else
    {
      [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    }
    activeDeviceSelectorBlock = ;
  }

  return activeDeviceSelectorBlock;
}

@end