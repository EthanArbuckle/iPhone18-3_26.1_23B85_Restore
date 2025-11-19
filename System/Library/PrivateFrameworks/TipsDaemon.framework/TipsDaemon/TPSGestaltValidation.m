@interface TPSGestaltValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSGestaltValidation

- (void)validateWithCompletion:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSDeviceCapabilityValidation *)self queries];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(TPSDeviceCapabilityValidation *)self queries];
    v8 = [v7 allKeys];
    v9 = MGCopyMultipleAnswers();

    if (v9)
    {
      v29 = v4;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = [(TPSDeviceCapabilityValidation *)self queries];
      v11 = [v10 allKeys];

      obj = v11;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v32;
        LOBYTE(v16) = 1;
        *&v13 = 138413058;
        v28 = v13;
        do
        {
          v17 = 0;
          do
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v31 + 1) + 8 * v17);
            v19 = [v9 objectForKeyedSubscript:{v18, v28}];
            v20 = [(TPSDeviceCapabilityValidation *)self queries];
            v21 = [v20 objectForKeyedSubscript:v18];

            v22 = [MEMORY[0x277D71778] targeting];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_opt_class();
              *buf = v28;
              v36 = v24;
              v37 = 2112;
              v38 = v18;
              v39 = 2112;
              v40 = v19;
              v41 = 2112;
              v42 = v21;
              v25 = v24;
              _os_log_debug_impl(&dword_232D6F000, v22, OS_LOG_TYPE_DEBUG, "%@ - checking %@...Answer: %@. Expected: %@", buf, 0x2Au);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 isEqual:v21])
            {
              if (v16)
              {
                v23 = 1;
                v16 = 1;
                if ([(TPSTargetingValidation *)self joinType]== 1)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v23 = 0;
              v16 = 0;
              if (![(TPSTargetingValidation *)self joinType])
              {
LABEL_22:

                v16 = v23;
                goto LABEL_25;
              }
            }

            ++v17;
          }

          while (v14 != v17);
          v26 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
          v14 = v26;
        }

        while (v26);
      }

      else
      {
        v16 = 1;
      }

LABEL_25:

      v4 = v29;
      (*(v29 + 2))(v29, v16, 0);
    }

    else
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end