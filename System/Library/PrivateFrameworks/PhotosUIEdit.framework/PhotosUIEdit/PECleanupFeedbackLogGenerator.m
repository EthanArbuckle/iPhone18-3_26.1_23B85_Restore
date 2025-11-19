@interface PECleanupFeedbackLogGenerator
+ (id)logForCompositionController:(id)a3;
@end

@implementation PECleanupFeedbackLogGenerator

+ (id)logForCompositionController:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 inpaintAdjustmentController];
  v6 = v5;
  if (v5)
  {
    [v4 appendFormat:@"Cleanup Operations: %d", objc_msgSend(v5, "operationCount")];
    v7 = [v6 adjustment];
    v8 = [v7 objectForKeyedSubscript:@"operations"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v6;
        v36 = v3;
        v37 = v4;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v34 = v8;
        obj = v8;
        v9 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v9)
        {
          v10 = v9;
          v38 = 0;
          v11 = 0;
          v41 = 0;
          v12 = 0;
          v13 = 0;
          v14 = *v43;
          do
          {
            v15 = 0;
            v39 = v10;
            do
            {
              if (*v43 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v42 + 1) + 8 * v15);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [objc_alloc(MEMORY[0x277D3A900]) initWithDictionary:v16];
                v18 = v17;
                if (v17)
                {
                  v19 = v14;
                  v20 = v13;
                  v21 = v12;
                  v22 = [v17 isTapSelect];
                  v23 = [v18 isTargetPoints];
                  v24 = [v18 isFilledBrushStroke];
                  if ([v18 mode] == 2)
                  {
                    v25 = (v41 + 1);
                  }

                  else
                  {
                    v25 = v41;
                  }

                  v41 = v25;
                  v26 = [v16 objectForKeyedSubscript:@"mode"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v26 integerValue])
                  {
                    v38 = (v38 + 1);
                  }

                  v13 = (v20 + v22);
                  v11 = (v11 + v23);
                  v12 = (v21 + v24);

                  v14 = v19;
                  v10 = v39;
                }
              }

              ++v15;
            }

            while (v10 != v15);
            v10 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v10);
        }

        else
        {
          v38 = 0;
          v11 = 0;
          v41 = 0;
          v12 = 0;
          v13 = 0;
        }

        v4 = v37;
        [v37 appendFormat:@"\nTaps: %d", v13];
        [v37 appendFormat:@"\nLassoes: %d", v12];
        [v37 appendFormat:@"\nBrushstrokes: %d", v41];
        [v37 appendFormat:@"\nOn Demand: %d", v11];
        [v37 appendFormat:@"\nRedactions: %d", v38];
        v6 = v35;
        v3 = v36;
        v8 = v34;
      }
    }

    v27 = [MEMORY[0x277D3A908] shared];
    v28 = [v27 cleanupVersion];
    [v4 appendFormat:@"\nC: %@", v28];

    v29 = [v27 inpaintModelVersion];
    [v4 appendFormat:@"\nIN: %@", v29];

    v30 = [v27 segmentationModelVersion];
    [v4 appendFormat:@"\nSE: %@", v30];

    v31 = [v27 refinementModelVersion];
    [v4 appendFormat:@"\nRE: %@", v31];

    v32 = [MEMORY[0x277D4D330] currentModelVersion];
    [v4 appendFormat:@"\nSA: %@", v32];
  }

  return v4;
}

@end