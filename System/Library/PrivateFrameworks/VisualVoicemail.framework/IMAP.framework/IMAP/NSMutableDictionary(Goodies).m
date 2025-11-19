@interface NSMutableDictionary(Goodies)
- (uint64_t)mf_setBool:()Goodies forKey:;
- (void)mf_addObject:()Goodies forKey:;
- (void)mf_setInteger:()Goodies forKey:;
@end

@implementation NSMutableDictionary(Goodies)

- (uint64_t)mf_setBool:()Goodies forKey:
{
  if (a3)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  return [a1 setObject:v3 forKey:?];
}

- (void)mf_setInteger:()Goodies forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:a3];
  [a1 setObject:v8 forKey:v7];
}

- (void)mf_addObject:()Goodies forKey:
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 copyWithZone:0];

    CFDictionaryAddValue(a1, v9, v6);
    v8 = v9;
  }

  else
  {
    v10 = vm_imap_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "Bad arguments to %@, %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end