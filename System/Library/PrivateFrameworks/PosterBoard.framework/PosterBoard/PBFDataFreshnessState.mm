@interface PBFDataFreshnessState
+ (id)new;
- (BOOL)isDataComponentFresh:(id)fresh;
- (BOOL)isFresh;
- (NSSet)dataComponents;
- (NSSet)freshComponents;
- (NSSet)outOfDateComponents;
- (NSString)freshnessDebugDescription;
- (PBFDataFreshnessState)init;
- (PBFDataFreshnessState)initWithFreshnessProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dumpFreshnessStateToLogCategory:(id)category type:(unsigned __int8)type;
- (void)enumerateComponentEntities:(id)entities;
@end

@implementation PBFDataFreshnessState

- (PBFDataFreshnessState)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not supported"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"PBFDataFreshnessState.m";
    v17 = 1024;
    v18 = 61;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not supported"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"PBFDataFreshnessState.m";
    v17 = 1024;
    v18 = 66;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PBFDataFreshnessState)initWithFreshnessProvider:(id)provider
{
  providerCopy = provider;
  NSClassFromString(&cfstr_Nsset.isa);
  if (!providerCopy)
  {
    [PBFDataFreshnessState initWithFreshnessProvider:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFDataFreshnessState initWithFreshnessProvider:a2];
  }

  v10.receiver = self;
  v10.super_class = PBFDataFreshnessState;
  v6 = [(PBFDataFreshnessState *)&v10 init];
  if (v6)
  {
    v7 = [providerCopy copy];
    freshnessProviders = v6->_freshnessProviders;
    v6->_freshnessProviders = v7;
  }

  return v6;
}

- (BOOL)isFresh
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  freshnessProviders = [(PBFDataFreshnessState *)self freshnessProviders];
  v3 = [freshnessProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(freshnessProviders);
        }

        determineRefreshState = [*(*(&v11 + 1) + 8 * i) determineRefreshState];
        needsRefresh = [determineRefreshState needsRefresh];

        if (needsRefresh)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [freshnessProviders countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (BOOL)isDataComponentFresh:(id)fresh
{
  freshCopy = fresh;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PBFDataFreshnessState_isDataComponentFresh___block_invoke;
  v7[3] = &unk_2782C9820;
  v5 = freshCopy;
  v8 = v5;
  v9 = &v10;
  [(PBFDataFreshnessState *)self enumerateComponentEntities:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __46__PBFDataFreshnessState_isDataComponentFresh___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 component];
  v6 = [v5 isEqual:*(a1 + 32)];

  v7 = v9;
  if (v6)
  {
    v8 = [v9 determineRefreshState];
    if ([v8 needsRefresh])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a3 = 1;
    }

    v7 = v9;
  }
}

- (void)enumerateComponentEntities:(id)entities
{
  entitiesCopy = entities;
  freshnessProviders = [(PBFDataFreshnessState *)self freshnessProviders];
  [freshnessProviders enumerateObjectsUsingBlock:entitiesCopy];
}

- (NSSet)dataComponents
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PBFDataFreshnessState_dataComponents__block_invoke;
  v6[3] = &unk_2782C9848;
  v4 = v3;
  v7 = v4;
  [(PBFDataFreshnessState *)self enumerateComponentEntities:v6];

  return v4;
}

void __39__PBFDataFreshnessState_dataComponents__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 component];
  [v2 addObject:v3];
}

- (NSSet)freshComponents
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PBFDataFreshnessState_freshComponents__block_invoke;
  v6[3] = &unk_2782C9848;
  v4 = v3;
  v7 = v4;
  [(PBFDataFreshnessState *)self enumerateComponentEntities:v6];

  return v4;
}

void __40__PBFDataFreshnessState_freshComponents__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 determineRefreshState];
  if (([v3 needsRefresh] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v6 component];
    [v4 addObject:v5];
  }
}

- (NSSet)outOfDateComponents
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PBFDataFreshnessState_outOfDateComponents__block_invoke;
  v6[3] = &unk_2782C9848;
  v4 = v3;
  v7 = v4;
  [(PBFDataFreshnessState *)self enumerateComponentEntities:v6];

  return v4;
}

void __44__PBFDataFreshnessState_outOfDateComponents__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 determineRefreshState];
  if ([v3 needsRefresh])
  {
    v4 = *(a1 + 32);
    v5 = [v6 component];
    [v4 addObject:v5];
  }
}

- (NSString)freshnessDebugDescription
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __50__PBFDataFreshnessState_freshnessDebugDescription__block_invoke;
  v42[3] = &unk_2782C9848;
  v29 = v3;
  v43 = v29;
  [(PBFDataFreshnessState *)self enumerateComponentEntities:v42];
  v4 = MEMORY[0x277CCAB68];
  isFresh = [(PBFDataFreshnessState *)self isFresh];
  v6 = @"NO.";
  if (isFresh)
  {
    v6 = @"YES!";
  }

  v7 = [v4 stringWithFormat:@"Is our data up to date? %@\n", v6];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v45[0] = @"PBFDataComponentGallery";
  v45[1] = @"PBFDataComponentDynamicDescriptors";
  v45[2] = @"PBFDataComponentStaticDescriptors";
  v45[3] = @"PBFDataComponentSnapshots";
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  v30 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v30)
  {
    v28 = *v39;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = [v29 objectForKeyedSubscript:v9];
        v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_38];

        if (v11)
        {
          v33 = i;
          v31 = [v9 stringByReplacingOccurrencesOfString:@"PBFDataComponent" withString:&stru_282CD3858];
          [v7 appendFormat:@"\n%@:", v31];
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = v11;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v35;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v35 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v34 + 1) + 8 * j);
                determineRefreshState = [v17 determineRefreshState];
                object = [v17 object];
                if ([determineRefreshState needsRefresh])
                {
                  v20 = @"YES";
                }

                else
                {
                  v20 = @"NO";
                }

                refreshReason = [determineRefreshState refreshReason];
                [v7 appendFormat:@"\n\t'%@':\n\t\tNeeds Update? %@\n\t\tReason: %@", object, v20, refreshReason];

                context = [v17 context];
                lastRefreshDate = [context lastRefreshDate];

                if (lastRefreshDate)
                {
                  context2 = [v17 context];
                  lastRefreshDate2 = [context2 lastRefreshDate];
                  [v7 appendFormat:@"\n\t\tLast Update Date: %@", lastRefreshDate2];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v14);
          }

          v11 = v32;
          i = v33;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v30);
  }

  return v7;
}

void __50__PBFDataFreshnessState_freshnessDebugDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 component];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [v9 component];
    [v7 setObject:v6 forKey:v8];
  }

  [v6 addObject:v9];
}

uint64_t __50__PBFDataFreshnessState_freshnessDebugDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 determineRefreshState];
  v6 = [v4 determineRefreshState];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "needsRefresh")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "needsRefresh")}];
  v9 = [v7 compare:v8];

  return v9;
}

- (void)dumpFreshnessStateToLogCategory:(id)category type:(unsigned __int8)type
{
  v61 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 1;
  v7 = objc_opt_new();
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __62__PBFDataFreshnessState_dumpFreshnessStateToLogCategory_type___block_invoke;
  v45[3] = &unk_2782C9890;
  v47 = v48;
  v29 = v7;
  v46 = v29;
  [(PBFDataFreshnessState *)self enumerateComponentEntities:v45];
  v8 = categoryCopy;
  if (os_log_type_enabled(v8, type))
  {
    date = [MEMORY[0x277CBEAA8] date];
    *buf = 138543362;
    v51 = date;
    _os_log_impl(&dword_21B526000, v8, type, "FRESHNESS REPORT FOR %{public}@", buf, 0xCu);
  }

  v10 = v8;
  log = v10;
  if (os_log_type_enabled(v10, type))
  {
    isFresh = [(PBFDataFreshnessState *)self isFresh];
    *buf = 67109120;
    LODWORD(v51) = isFresh;
    _os_log_impl(&dword_21B526000, v10, type, "Is our data up to date? %{BOOL}u", buf, 8u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v59[0] = @"PBFDataComponentGallery";
  v59[1] = @"PBFDataComponentDynamicDescriptors";
  v59[2] = @"PBFDataComponentStaticDescriptors";
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
  v30 = [obj countByEnumeratingWithState:&v41 objects:v60 count:16];
  if (v30)
  {
    v28 = *v42;
    *&v12 = 138543362;
    v26 = v12;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = [v29 objectForKeyedSubscript:{v13, v26}];
        v33 = [v14 sortedArrayUsingComparator:&__block_literal_global_73];

        if (v33)
        {
          v31 = [v13 stringByReplacingOccurrencesOfString:@"PBFDataComponent" withString:&stru_282CD3858];
          if (os_log_type_enabled(log, type))
          {
            *buf = v26;
            v51 = v31;
            _os_log_impl(&dword_21B526000, log, type, "\n%{public}@:", buf, 0xCu);
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v34 = v33;
          v15 = [v34 countByEnumeratingWithState:&v37 objects:v58 count:16];
          if (v15)
          {
            v16 = *v38;
            do
            {
              v36 = v15;
              for (j = 0; j != v36; ++j)
              {
                if (*v38 != v16)
                {
                  objc_enumerationMutation(v34);
                }

                v18 = *(*(&v37 + 1) + 8 * j);
                determineRefreshState = [v18 determineRefreshState];
                v20 = log;
                if (os_log_type_enabled(v20, type))
                {
                  object = [v18 object];
                  needsRefresh = [determineRefreshState needsRefresh];
                  refreshReason = [determineRefreshState refreshReason];
                  context = [v18 context];
                  lastRefreshDate = [context lastRefreshDate];
                  *buf = 138413058;
                  v51 = object;
                  v52 = 1024;
                  v53 = needsRefresh;
                  v54 = 2114;
                  v55 = refreshReason;
                  v56 = 2114;
                  v57 = lastRefreshDate;
                  _os_log_impl(&dword_21B526000, v20, type, "\t'%@':\n\t\tNeeds Update? %{BOOL}u\n\t\tReason: %{public}@\n\t\tLast Update Date: %{public}@", buf, 0x26u);
                }
              }

              v15 = [v34 countByEnumeratingWithState:&v37 objects:v58 count:16];
            }

            while (v15);
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v41 objects:v60 count:16];
    }

    while (v30);
  }

  _Block_object_dispose(v48, 8);
}

void __62__PBFDataFreshnessState_dumpFreshnessStateToLogCategory_type___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 determineRefreshState];
  if ([v3 needsRefresh])
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(a1 + 32);
  v5 = [v9 component];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [v9 component];
    [v7 setObject:v6 forKey:v8];
  }

  [v6 addObject:v9];
}

uint64_t __62__PBFDataFreshnessState_dumpFreshnessStateToLogCategory_type___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 determineRefreshState];
  v6 = [v4 determineRefreshState];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "needsRefresh")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "needsRefresh")}];
  v9 = [v7 compare:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PBFDataFreshnessState allocWithZone:zone];
  freshnessProviders = self->_freshnessProviders;

  return [(PBFDataFreshnessState *)v4 initWithFreshnessProvider:freshnessProviders];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PBFMutableDataFreshnessState allocWithZone:zone];
  freshnessProviders = self->_freshnessProviders;

  return [(PBFDataFreshnessState *)v4 initWithFreshnessProvider:freshnessProviders];
}

- (void)initWithFreshnessProvider:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSSetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFreshnessProvider:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end