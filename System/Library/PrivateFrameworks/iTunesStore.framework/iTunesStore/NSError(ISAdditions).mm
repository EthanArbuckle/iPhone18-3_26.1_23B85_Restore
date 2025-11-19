@interface NSError(ISAdditions)
- (uint64_t)errorBySettingFatalError:()ISAdditions;
- (uint64_t)isEqual:()ISAdditions compareUserInfo:;
- (uint64_t)isFatalError;
@end

@implementation NSError(ISAdditions)

- (uint64_t)errorBySettingFatalError:()ISAdditions
{
  __ISRecordSPIClassUsage(a1);
  [MEMORY[0x277CCABB0] numberWithBool:a3];

  return SSErrorBySettingUserInfoValue();
}

- (uint64_t)isEqual:()ISAdditions compareUserInfo:
{
  v29 = *MEMORY[0x277D85DE8];
  __ISRecordSPIClassUsage(a1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 code];
    v8 = v7 == [a3 code];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 domain];
  v10 = [a1 domain];
  if (!v8)
  {
    goto LABEL_24;
  }

  if (v9 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = [v9 isEqualToString:v10];
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (a4)
  {
    v12 = [a1 userInfo];
    v13 = [a3 userInfo];
    v14 = [v12 count];
    if (v14 == [v13 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        LOBYTE(v11) = 1;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            v20 = [v12 objectForKey:v19];
            v21 = [v13 objectForKey:v19];
            if (v11)
            {
              if (v20 == v21)
              {
                v11 = 1;
              }

              else
              {
                v11 = [v20 isEqual:v21];
              }
            }

            else
            {
              v11 = 0;
            }
          }

          v16 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v16);
      }

      else
      {
        v11 = 1;
      }

      goto LABEL_25;
    }

LABEL_24:
    v11 = 0;
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)isFatalError
{
  __ISRecordSPIClassUsage(a1);
  v2 = [objc_msgSend(a1 "userInfo")];

  return [v2 BOOLValue];
}

@end