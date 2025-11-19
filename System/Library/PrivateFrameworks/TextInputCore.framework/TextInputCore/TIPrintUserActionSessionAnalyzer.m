@interface TIPrintUserActionSessionAnalyzer
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
@end

@implementation TIPrintUserActionSessionAnalyzer

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = a4;
  v32 = v6;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 userActionHistory];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_33;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v34;
  do
  {
    v12 = 0;
    do
    {
      if (*v34 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v33 + 1) + 8 * v12);
      v14 = [v13 documentState];
      v15 = [v14 contextBeforeInput];
      printf("%s: ", [v15 UTF8String]);

      v16 = [v13 actionType];
      if (v16 > 1)
      {
        switch(v16)
        {
          case 2:
            puts("CM");
            v18 = [v13 documentState];
            v19 = [v18 contextAfterInput];

            if (!v19)
            {
              goto LABEL_22;
            }

            v17 = "MOVEMENT FOUND";
            goto LABEL_21;
          case 3:
            v17 = "DOC STATE CHANGE";
            goto LABEL_21;
          case 4:
            v17 = "PATH";
LABEL_21:
            puts(v17);
            goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v17 = "<-DEL-";
          goto LABEL_21;
        }

LABEL_20:
        v17 = "OTHER";
        goto LABEL_21;
      }

      v20 = v13;

      v21 = [v20 originalCandidate];

      if (v21)
      {
        v22 = [v20 originalCandidate];
        v23 = [v22 isContinuousPathConversion];

        v24 = [v20 originalAcceptedString];
        [v24 UTF8String];
        v25 = [v20 acceptedString];
        [v25 UTF8String];
        if (v23)
        {
          printf("{%s}<-PB-%s-\n");
        }

        else
        {
          printf("[%s]<-PB-%s-\n");
        }
      }

      else
      {
        v26 = [v20 acceptedCandidate];
        v27 = [v26 isContinuousPathConversion];

        v24 = [v20 acceptedString];
        [v24 UTF8String];
        if (v27)
        {
          printf("{%s}\n");
        }

        else
        {
          printf("[%s]\n");
        }
      }

      v10 = v20;
LABEL_22:
      ++v12;
    }

    while (v9 != v12);
    v28 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    v9 = v28;
  }

  while (v28);
LABEL_33:

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

@end