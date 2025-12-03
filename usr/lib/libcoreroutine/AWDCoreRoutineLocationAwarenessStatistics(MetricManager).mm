@interface AWDCoreRoutineLocationAwarenessStatistics(MetricManager)
- (BOOL)valid:()MetricManager;
- (char)_init;
@end

@implementation AWDCoreRoutineLocationAwarenessStatistics(MetricManager)

- (char)_init
{
  v52.receiver = self;
  v52.super_class = &off_2846276B8;
  v1 = objc_msgSendSuper2(&v52, sel_init);
  if (v1)
  {
    v2 = objc_opt_new();
    v3 = *MEMORY[0x277D81BA0];
    v4 = *&v1[v3];
    v51 = v3;
    *&v1[v3] = v2;

    v5 = objc_opt_new();
    v6 = *MEMORY[0x277D81B58];
    v7 = *&v1[v6];
    v50 = v6;
    *&v1[v6] = v5;

    v8 = objc_opt_new();
    v9 = *MEMORY[0x277D81BC0];
    v10 = *&v1[v9];
    v49 = v9;
    *&v1[v9] = v8;

    v11 = objc_opt_new();
    v12 = *MEMORY[0x277D81BA8];
    v13 = *&v1[v12];
    v48 = v12;
    *&v1[v12] = v11;

    v14 = objc_opt_new();
    v15 = *MEMORY[0x277D81BB8];
    v16 = *&v1[v15];
    v47 = v15;
    *&v1[v15] = v14;

    v17 = objc_opt_new();
    v18 = *MEMORY[0x277D81BB0];
    v19 = *&v1[v18];
    v46 = v18;
    *&v1[v18] = v17;

    v20 = objc_opt_new();
    v21 = *MEMORY[0x277D81B90];
    v22 = *&v1[v21];
    *&v1[v21] = v20;

    v23 = objc_opt_new();
    v24 = *MEMORY[0x277D81B98];
    v25 = *&v1[v24];
    *&v1[v24] = v23;

    v26 = objc_opt_new();
    v27 = *MEMORY[0x277D81B68];
    v28 = *&v1[v27];
    *&v1[v27] = v26;

    v29 = objc_opt_new();
    v30 = *MEMORY[0x277D81B70];
    v31 = *&v1[v30];
    *&v1[v30] = v29;

    v32 = objc_opt_new();
    v33 = *MEMORY[0x277D81B78];
    v34 = *&v1[v33];
    *&v1[v33] = v32;

    v35 = objc_opt_new();
    v36 = *MEMORY[0x277D81B80];
    v37 = *&v1[v36];
    *&v1[v36] = v35;

    v38 = objc_opt_new();
    v39 = *MEMORY[0x277D81B88];
    v40 = *&v1[v39];
    *&v1[v39] = v38;

    v41 = objc_opt_new();
    v42 = *MEMORY[0x277D81B60];
    v43 = *&v1[v42];
    *&v1[v42] = v41;

    v44 = 24;
    do
    {
      [*&v1[v51] addCount:{0, v46}];
      [*&v1[v50] addCount:0];
      [*&v1[v49] addCount:0];
      [*&v1[v48] addCount:0];
      [*&v1[v47] addCount:0];
      [*&v1[v46] addCount:0];
      [*&v1[v21] addCount:0];
      [*&v1[v24] addCount:0];
      [*&v1[v27] addCount:0];
      [*&v1[v30] addCount:0];
      [*&v1[v33] addCount:0];
      [*&v1[v36] addCount:0];
      [*&v1[v39] addCount:0];
      [*&v1[v42] addCount:0];
      --v44;
    }

    while (v44);
  }

  return v1;
}

- (BOOL)valid:()MetricManager
{
  v25[14] = *MEMORY[0x277D85DE8];
  if (([self conformsToProtocol:&unk_284624910] & 1) == 0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = NSStringFromProtocol(&unk_284624910);
    v15 = [v16 stringWithFormat:@"Invalid metric. metric does not conform to the %@ protocol.", v17];

    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = @"Invalid metric. the metric does not have an ID.";
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = *&self[*MEMORY[0x277D81B58]];
  v25[0] = *&self[*MEMORY[0x277D81BA0]];
  v25[1] = v5;
  v6 = *&self[*MEMORY[0x277D81BA8]];
  v25[2] = *&self[*MEMORY[0x277D81BC0]];
  v25[3] = v6;
  v7 = *&self[*MEMORY[0x277D81BB0]];
  v25[4] = *&self[*MEMORY[0x277D81BB8]];
  v25[5] = v7;
  v8 = *&self[*MEMORY[0x277D81B98]];
  v25[6] = *&self[*MEMORY[0x277D81B90]];
  v25[7] = v8;
  v9 = *&self[*MEMORY[0x277D81B70]];
  v25[8] = *&self[*MEMORY[0x277D81B68]];
  v25[9] = v9;
  v10 = *&self[*MEMORY[0x277D81B80]];
  v25[10] = *&self[*MEMORY[0x277D81B78]];
  v25[11] = v10;
  v11 = *&self[*MEMORY[0x277D81B60]];
  v25[12] = *&self[*MEMORY[0x277D81B88]];
  v25[13] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:14];
  if ([v12 count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v12 objectAtIndexedSubscript:v13];
      if ([v14 countsCount] != 24)
      {
        break;
      }

      if ([v12 count] <= ++v13)
      {
        goto LABEL_7;
      }
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "countsCount")}];
    v15 = [v18 stringWithFormat:@"Invalid metric. Incorrect bin count, %@, for histogram field at index %d.", v19, v13];
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

  if (a3)
  {
LABEL_14:
    if (v15)
    {
      v20 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24 = v15;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *a3 = [v20 errorWithDomain:@"RTMetricManagerErrorDomain" code:1 userInfo:v21];
    }
  }

LABEL_16:

  return v15 == 0;
}

@end