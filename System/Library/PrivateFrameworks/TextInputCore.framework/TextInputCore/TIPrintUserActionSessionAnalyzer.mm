@interface TIPrintUserActionSessionAnalyzer
- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence;
@end

@implementation TIPrintUserActionSessionAnalyzer

- (BOOL)analyzeSession:(id)session alignedSession:(id)alignedSession withConfidence:(unint64_t)confidence
{
  v38 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  alignedSessionCopy = alignedSession;
  v32 = sessionCopy;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  userActionHistory = [sessionCopy userActionHistory];
  v8 = [userActionHistory countByEnumeratingWithState:&v33 objects:v37 count:16];
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
        objc_enumerationMutation(userActionHistory);
      }

      v13 = *(*(&v33 + 1) + 8 * v12);
      documentState = [v13 documentState];
      contextBeforeInput = [documentState contextBeforeInput];
      printf("%s: ", [contextBeforeInput UTF8String]);

      actionType = [v13 actionType];
      if (actionType > 1)
      {
        switch(actionType)
        {
          case 2:
            puts("CM");
            documentState2 = [v13 documentState];
            contextAfterInput = [documentState2 contextAfterInput];

            if (!contextAfterInput)
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

      if (actionType)
      {
        if (actionType == 1)
        {
          v17 = "<-DEL-";
          goto LABEL_21;
        }

LABEL_20:
        v17 = "OTHER";
        goto LABEL_21;
      }

      v20 = v13;

      originalCandidate = [v20 originalCandidate];

      if (originalCandidate)
      {
        originalCandidate2 = [v20 originalCandidate];
        isContinuousPathConversion = [originalCandidate2 isContinuousPathConversion];

        originalAcceptedString = [v20 originalAcceptedString];
        [originalAcceptedString UTF8String];
        acceptedString = [v20 acceptedString];
        [acceptedString UTF8String];
        if (isContinuousPathConversion)
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
        acceptedCandidate = [v20 acceptedCandidate];
        isContinuousPathConversion2 = [acceptedCandidate isContinuousPathConversion];

        originalAcceptedString = [v20 acceptedString];
        [originalAcceptedString UTF8String];
        if (isContinuousPathConversion2)
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
    v28 = [userActionHistory countByEnumeratingWithState:&v33 objects:v37 count:16];
    v9 = v28;
  }

  while (v28);
LABEL_33:

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

@end