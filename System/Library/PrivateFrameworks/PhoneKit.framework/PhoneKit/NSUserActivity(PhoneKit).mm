@interface NSUserActivity(PhoneKit)
- (id)callProviderIdentifier;
- (id)handle;
- (uint64_t)callService;
@end

@implementation NSUserActivity(PhoneKit)

- (id)callProviderIdentifier
{
  v1 = [a1 userInfo];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277D6F128]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 copy];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)callService
{
  v1 = [a1 userInfo];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"TUCallUserActivityServiceKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 intValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)handle
{
  v1 = [a1 userInfo];
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277D6F120]];
  if (!v3)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "User activity is missing the required key TUCallUserActivityHandleKey.", buf, 2u);
    }

    goto LABEL_9;
  }

  v4 = [MEMORY[0x277D6EEE8] handleWithDictionaryRepresentation:v3];
  if (!v4)
  {
LABEL_9:
    v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6F118]];
    if (v6)
    {
      v4 = [MEMORY[0x277D6EEE8] handleWithDestinationID:v6];
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "User activity is missing the required key TUCallUserActivityDestinationIDKey.", v9, 2u);
      }

      v4 = 0;
    }
  }

LABEL_16:

  return v4;
}

@end