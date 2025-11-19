@interface PSGDiagnostics
+ (id)getDiagnosticsInfoForReportCrash;
@end

@implementation PSGDiagnostics

+ (id)getDiagnosticsInfoForReportCrash
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = objc_opt_new();
  v17 = [MEMORY[0x277D73660] clientWithIdentifier:103];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [&unk_28734B118 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(&unk_28734B118);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = [v17 experimentIdentifiersWithNamespaceName:v6];
        v8 = [v7 experimentId];
        v9 = [v7 deploymentId];
        v10 = [v7 treatmentId];
        if (!v7 || ![(__CFString *)v8 length]|| ![(__CFString *)v10 length])
        {

          v9 = 0xFFFFFFFFLL;
          v8 = @"<nil>";
          v10 = @"<nil>";
        }

        v25[0] = @"experimentId";
        v25[1] = @"treatmentId";
        v26[0] = v8;
        v26[1] = v10;
        v25[2] = @"deploymentId";
        v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        v12 = [v11 stringValue];
        v26[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

        [v18 setObject:v13 forKeyedSubscript:v6];
      }

      v3 = [&unk_28734B118 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v3);
  }

  v23 = @"experimentInfo";
  v24 = v18;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end