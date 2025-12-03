@interface TIStandardTypingSessionConfidenceEvaluator
+ (double)calculateAlignedTypingSessionConfidence:(id)confidence;
+ (unint64_t)evaluateConfidenceInSession:(id)session alignedSession:(id)alignedSession;
@end

@implementation TIStandardTypingSessionConfidenceEvaluator

+ (double)calculateAlignedTypingSessionConfidence:(id)confidence
{
  confidenceCopy = confidence;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  alignedEntries = [confidenceCopy alignedEntries];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__TIStandardTypingSessionConfidenceEvaluator_calculateAlignedTypingSessionConfidence___block_invoke;
  v11[3] = &unk_27872FF48;
  v11[4] = &v12;
  [alignedEntries enumerateObjectsUsingBlock:v11];

  alignedEntries2 = [confidenceCopy alignedEntries];
  v6 = [alignedEntries2 count];

  if (v6)
  {
    v7 = v13[3];
    alignedEntries3 = [confidenceCopy alignedEntries];
    v9 = v7 / ([alignedEntries3 count] * 3.0);
  }

  else
  {
    v9 = 1.0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __86__TIStandardTypingSessionConfidenceEvaluator_calculateAlignedTypingSessionConfidence___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 inSessionAlignmentConfidence];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

+ (unint64_t)evaluateConfidenceInSession:(id)session alignedSession:(id)alignedSession
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  userActionHistory = [session userActionHistory];
  v5 = [userActionHistory countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    v11 = 2;
    goto LABEL_33;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v25;
  v11 = 2;
  do
  {
    v12 = 0;
    v22 = v7;
    v23 = -v7;
    do
    {
      v13 = v8;
      if (*v25 != v10)
      {
        objc_enumerationMutation(userActionHistory);
      }

      v14 = *(*(&v24 + 1) + 8 * v12);
      actionType = [v14 actionType];
      if (actionType > 5)
      {
        if ((actionType - 7) < 5)
        {
          goto LABEL_29;
        }

        if (actionType != 6)
        {
          if (actionType == 12)
          {
            v11 = 1;
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        v9 = 1;
      }

      else if (actionType <= 1)
      {
        if (actionType)
        {
          if (actionType != 1)
          {
            goto LABEL_27;
          }

          v9 = 0;
          v16 = [v13 actionType] == 0;
        }

        else
        {
          v16 = (v9 & 1) == 0;
          v9 = 0;
        }

        if (!v16)
        {
          v11 = 1;
        }
      }

      else
      {
        if (actionType == 2)
        {
          documentState = [v14 documentState];
          contextAfterInput = [documentState contextAfterInput];
          v19 = contextAfterInput != 0;

          v9 |= v19;
          goto LABEL_29;
        }

        if (actionType != 3)
        {
          if (actionType == 4)
          {
            goto LABEL_29;
          }

LABEL_27:
          v11 = 0;
          goto LABEL_29;
        }

        if (v23 != v12)
        {
          v11 = 0;
        }
      }

LABEL_29:
      v8 = v14;

      ++v12;
    }

    while (v6 != v12);
    v7 = v22 + v6;
    v6 = [userActionHistory countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);

LABEL_33:
  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

@end