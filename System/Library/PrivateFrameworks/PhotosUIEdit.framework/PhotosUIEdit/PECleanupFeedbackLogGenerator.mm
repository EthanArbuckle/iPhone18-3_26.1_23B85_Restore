@interface PECleanupFeedbackLogGenerator
+ (id)logForCompositionController:(id)controller;
@end

@implementation PECleanupFeedbackLogGenerator

+ (id)logForCompositionController:(id)controller
{
  v47 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  string = [MEMORY[0x277CCAB68] string];
  inpaintAdjustmentController = [controllerCopy inpaintAdjustmentController];
  v6 = inpaintAdjustmentController;
  if (inpaintAdjustmentController)
  {
    [string appendFormat:@"Cleanup Operations: %d", objc_msgSend(inpaintAdjustmentController, "operationCount")];
    adjustment = [v6 adjustment];
    v8 = [adjustment objectForKeyedSubscript:@"operations"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v6;
        v36 = controllerCopy;
        v37 = string;
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
                  isTapSelect = [v17 isTapSelect];
                  isTargetPoints = [v18 isTargetPoints];
                  isFilledBrushStroke = [v18 isFilledBrushStroke];
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

                  v13 = (v20 + isTapSelect);
                  v11 = (v11 + isTargetPoints);
                  v12 = (v21 + isFilledBrushStroke);

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

        string = v37;
        [v37 appendFormat:@"\nTaps: %d", v13];
        [v37 appendFormat:@"\nLassoes: %d", v12];
        [v37 appendFormat:@"\nBrushstrokes: %d", v41];
        [v37 appendFormat:@"\nOn Demand: %d", v11];
        [v37 appendFormat:@"\nRedactions: %d", v38];
        v6 = v35;
        controllerCopy = v36;
        v8 = v34;
      }
    }

    mEMORY[0x277D3A908] = [MEMORY[0x277D3A908] shared];
    cleanupVersion = [mEMORY[0x277D3A908] cleanupVersion];
    [string appendFormat:@"\nC: %@", cleanupVersion];

    inpaintModelVersion = [mEMORY[0x277D3A908] inpaintModelVersion];
    [string appendFormat:@"\nIN: %@", inpaintModelVersion];

    segmentationModelVersion = [mEMORY[0x277D3A908] segmentationModelVersion];
    [string appendFormat:@"\nSE: %@", segmentationModelVersion];

    refinementModelVersion = [mEMORY[0x277D3A908] refinementModelVersion];
    [string appendFormat:@"\nRE: %@", refinementModelVersion];

    currentModelVersion = [MEMORY[0x277D4D330] currentModelVersion];
    [string appendFormat:@"\nSA: %@", currentModelVersion];
  }

  return string;
}

@end