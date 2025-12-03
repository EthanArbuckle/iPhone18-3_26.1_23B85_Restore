@interface NSError(ISAdditions)
- (uint64_t)errorBySettingFatalError:()ISAdditions;
- (uint64_t)isEqual:()ISAdditions compareUserInfo:;
- (uint64_t)isFatalError;
@end

@implementation NSError(ISAdditions)

- (uint64_t)errorBySettingFatalError:()ISAdditions
{
  __ISRecordSPIClassUsage(self);
  [MEMORY[0x277CCABB0] numberWithBool:a3];

  return SSErrorBySettingUserInfoValue();
}

- (uint64_t)isEqual:()ISAdditions compareUserInfo:
{
  v29 = *MEMORY[0x277D85DE8];
  __ISRecordSPIClassUsage(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    code = [self code];
    v8 = code == [a3 code];
  }

  else
  {
    v8 = 0;
  }

  domain = [self domain];
  domain2 = [self domain];
  if (!v8)
  {
    goto LABEL_24;
  }

  if (domain == domain2)
  {
    v11 = 1;
  }

  else
  {
    v11 = [domain isEqualToString:domain2];
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (a4)
  {
    userInfo = [self userInfo];
    userInfo2 = [a3 userInfo];
    v14 = [userInfo count];
    if (v14 == [userInfo2 count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [userInfo countByEnumeratingWithState:&v24 objects:v28 count:16];
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
              objc_enumerationMutation(userInfo);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            v20 = [userInfo objectForKey:v19];
            v21 = [userInfo2 objectForKey:v19];
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

          v16 = [userInfo countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  __ISRecordSPIClassUsage(self);
  v2 = [objc_msgSend(self "userInfo")];

  return [v2 BOOLValue];
}

@end