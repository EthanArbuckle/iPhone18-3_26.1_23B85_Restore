@interface TPSNRDeviceCapabilityValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSNRDeviceCapabilityValidation

- (void)validateWithCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v35 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    queries = [(TPSDeviceCapabilityValidation *)self queries];
    v8 = [queries count];

    if (v8)
    {
      v33 = completionCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      queries2 = [(TPSDeviceCapabilityValidation *)self queries];
      allKeys = [queries2 allKeys];

      obj = allKeys;
      v11 = [allKeys countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v11)
      {
        v13 = v11;
        v14 = *v37;
        LOBYTE(v15) = 1;
        *&v12 = 138412546;
        v32 = v12;
        do
        {
          v16 = 0;
          do
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v36 + 1) + 8 * v16);
            v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
            if (v18)
            {
              v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v35, "supportsCapability:", v18)}];
              queries3 = [(TPSDeviceCapabilityValidation *)self queries];
              v21 = [queries3 objectForKeyedSubscript:v17];

              targeting = [MEMORY[0x277D71778] targeting];
              if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
              {
                v25 = objc_opt_class();
                *buf = 138413058;
                v41 = v25;
                v42 = 2112;
                v43 = v17;
                v44 = 2112;
                v45 = v19;
                v46 = 2112;
                v47 = v21;
                v26 = v25;
                _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking %@...Answer: %@. Expected: %@", buf, 0x2Au);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 isEqual:v21])
              {
                if (v15)
                {
                  v23 = 1;
                  v15 = 1;
                  if ([(TPSTargetingValidation *)self joinType]== 1)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  v15 = 0;
                }
              }

              else
              {
                v23 = 0;
                v15 = 0;
                if (![(TPSTargetingValidation *)self joinType])
                {
LABEL_31:

LABEL_32:
                  v15 = v23;
                  goto LABEL_33;
                }
              }
            }

            else
            {
              targeting2 = [MEMORY[0x277D71778] targeting];
              if (os_log_type_enabled(targeting2, OS_LOG_TYPE_ERROR))
              {
                v27 = objc_opt_class();
                *buf = v32;
                v41 = v27;
                v42 = 2112;
                v43 = v17;
                v28 = v27;
                _os_log_error_impl(&dword_232D6F000, targeting2, OS_LOG_TYPE_ERROR, "%@ - Invalid Key: %@", buf, 0x16u);
              }

              v23 = 0;
              v15 = 0;
              if (![(TPSTargetingValidation *)self joinType])
              {
                goto LABEL_32;
              }
            }

            ++v16;
          }

          while (v13 != v16);
          v29 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
          v13 = v29;
        }

        while (v29);
      }

      else
      {
        v15 = 1;
      }

LABEL_33:

      completionCopy = v33;
      v33[2](v33, v15, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    targeting3 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting3, OS_LOG_TYPE_DEBUG))
    {
      [(TPSNRDeviceCapabilityValidation *)self validateWithCompletion:targeting3];
    }

    completionCopy[2](completionCopy, 0, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - No active paired device", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end