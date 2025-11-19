@interface TRISysdiagnoseOutputFormatter
+ (id)formatRecords:(id)a3;
@end

@implementation TRISysdiagnoseOutputFormatter

+ (id)formatRecords:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v34 = v3;
    v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_8];
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [v5 setTimeZone:v6];
    v37 = v5;
    [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];

    v7 = [&unk_28436FB40 mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v4;
    v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v38)
    {
      v8 = -1;
      v36 = *v44;
      v9 = &stru_28435FC98;
      v10 = &stru_28435FC98;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * i);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __47__TRISysdiagnoseOutputFormatter_formatRecords___block_invoke_2;
          v39[3] = &unk_27885EBC8;
          v39[4] = v12;
          v13 = v10;
          v40 = v13;
          v42 = v8;
          v14 = v9;
          v41 = v14;
          if (__47__TRISysdiagnoseOutputFormatter_formatRecords___block_invoke_2(v39))
          {
            v15 = objc_alloc(MEMORY[0x277CCACA8]);
            v16 = [v12 experimentId];
            v17 = [v15 initWithFormat:@"    - experiment: %@.%d", v16, objc_msgSend(v12, "deploymentId")];

            v18 = objc_alloc(MEMORY[0x277CCACA8]);
            v19 = [v12 treatmentId];
            v20 = [v18 initWithFormat:@"      treatment : %@", v19];

            v21 = [v12 namespaces];
            v22 = [v21 _pas_mappedArrayWithTransform:&__block_literal_global_59];

            v23 = [v22 componentsJoinedByString:{@", "}];

            v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"      namespaces: [%@]", v23];
            [v7 addObject:v17];
            [v7 addObject:v20];
            [v7 addObject:v24];
            [v7 addObject:@"      states    :"];
          }

          v25 = objc_autoreleasePoolPush();
          v26 = objc_alloc(MEMORY[0x277CCACA8]);
          v27 = [v12 eventType] - 1;
          v28 = @"unknown";
          if (v27 <= 8)
          {
            v28 = off_27885EC08[v27];
          }

          v29 = [v12 eventDate];
          v30 = [v37 stringFromDate:v29];
          v31 = [v26 initWithFormat:@"        - %@ -> %@", v28, v30];

          [v7 addObject:v31];
          objc_autoreleasePoolPop(v25);
          v10 = [v12 experimentId];

          v8 = [v12 deploymentId];
          v9 = [v12 treatmentId];
        }

        v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v38);
    }

    else
    {
      v9 = &stru_28435FC98;
      v10 = &stru_28435FC98;
    }

    v3 = v34;
  }

  else
  {
    v7 = &unk_28436FB28;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __47__TRISysdiagnoseOutputFormatter_formatRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 experimentId];
  v7 = [v5 experimentId];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "deploymentId")}];
    v8 = [v9 compare:v10];

    if (!v8)
    {
      v11 = [v4 treatmentId];
      v12 = [v5 treatmentId];
      v8 = [v11 compare:v12];

      if (!v8)
      {
        v13 = [v4 eventDate];
        v14 = [v5 eventDate];
        v8 = [v13 compare:v14];
      }
    }
  }

  return v8;
}

uint64_t __47__TRISysdiagnoseOutputFormatter_formatRecords___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) experimentId];
  if ([v2 isEqualToString:*(a1 + 40)] && objc_msgSend(*(a1 + 32), "deploymentId") == *(a1 + 56))
  {
    v3 = [*(a1 + 32) treatmentId];
    v4 = [v3 isEqualToString:*(a1 + 48)];

    v5 = v4 ^ 1u;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end