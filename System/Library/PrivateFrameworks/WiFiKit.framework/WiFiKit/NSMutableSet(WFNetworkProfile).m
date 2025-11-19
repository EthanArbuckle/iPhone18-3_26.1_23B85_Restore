@interface NSMutableSet(WFNetworkProfile)
- (BOOL)removeNetworkProfile:()WFNetworkProfile;
- (id)_equivalentExistingNetworkProfile:()WFNetworkProfile;
- (uint64_t)replaceNetworkProfile:()WFNetworkProfile;
@end

@implementation NSMutableSet(WFNetworkProfile)

- (uint64_t)replaceNetworkProfile:()WFNetworkProfile
{
  v4 = a3;
  v5 = [a1 _equivalentExistingNetworkProfile:v4];
  if (v5)
  {
    [a1 removeObject:v5];
  }

  else
  {
    [NSMutableSet(WFNetworkProfile) replaceNetworkProfile:v4];
  }

  [a1 addObject:v4];

  return 1;
}

- (BOOL)removeNetworkProfile:()WFNetworkProfile
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _equivalentExistingNetworkProfile:v4];
  if (v5)
  {
    [a1 removeObject:v5];
  }

  else
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
    {
      v10 = 136315394;
      v11 = "[NSMutableSet(WFNetworkProfile) removeNetworkProfile:]";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_273ECD000, v6, v7, "%s: no existing network matching profile %{public}@", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (id)_equivalentExistingNetworkProfile:()WFNetworkProfile
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__NSMutableSet_WFNetworkProfile___equivalentExistingNetworkProfile___block_invoke;
  v8[3] = &unk_279EBE610;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)replaceNetworkProfile:()WFNetworkProfile .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315394;
    v6 = "[NSMutableSet(WFNetworkProfile) replaceNetworkProfile:]";
    v7 = 2114;
    v8 = a1;
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: no existing network matching profile %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end