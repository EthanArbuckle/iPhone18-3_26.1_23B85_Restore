@interface PLBatteryUIResponseTypeUrsaIssues
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUrsaIssues

- (void)configure:(id)configure
{
  v4 = [(PLOperator *)PLEnergyIssuesService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"UrsaDefinition"];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [monotonicDate dateByAddingTimeInterval:-1209600.0];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, MAX(%@) AS %@, MAX(%@) AS %@, MAX(%@) AS %@, MAX(%@) AS %@, MAX(%@) AS %@, COUNT(*) AS %@", @"driMessage", @"hitIn", @"hitIn", @"fixedIn", @"fixedIn", @"impact", @"impact", @"radar", @"radar", @"timestampEnd", @"timestampEnd", @"isCritical"];
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSince1970];
  v10 = [v9 numberWithDouble:?];
  v11 = [v8 stringWithFormat:@"%@ >= %@ AND INSTR(%@, ':') > 0", @"timestampEnd", v10, @"driMessage"];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUBSTR(%@, INSTR(%@, ':') + 1)", @"driMessage", @"driMessage"];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ GROUP BY %@ ORDER BY %@ DESC", v7, v4, v11, v12, @"timestampEnd"];;
  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(PLBatteryUIResponseTypeUrsaIssues *)v13 configure:v14];
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v17 = [storage entriesForKey:v4 withQuery:v13];
  [(PLBatteryUIResponseTypeUrsaIssues *)self setDbResult:v17];
}

- (void)run
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(PLBatteryUIResponseTypeUrsaIssues *)self setIssues:v3];

  dbResult = [(PLBatteryUIResponseTypeUrsaIssues *)self dbResult];

  if (dbResult)
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    dbResult2 = [(PLBatteryUIResponseTypeUrsaIssues *)self dbResult];
    v7 = [dbResult2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(dbResult2);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          if (v11)
          {
            dictionary = [v11 dictionary];
            [v5 addObject:dictionary];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [dbResult2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      issues = [(PLBatteryUIResponseTypeUrsaIssues *)self issues];
      [issues setObject:v5 forKey:@"UrsaDefinition"];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  issues = [(PLBatteryUIResponseTypeUrsaIssues *)self issues];
  v3 = [issues copy];

  return v3;
}

- (void)configure:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "ursaQuery=%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end