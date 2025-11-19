@interface TIStandardTypingSessionConfidenceEvaluator
+ (double)calculateAlignedTypingSessionConfidence:(id)a3;
+ (unint64_t)evaluateConfidenceInSession:(id)a3 alignedSession:(id)a4;
@end

@implementation TIStandardTypingSessionConfidenceEvaluator

+ (double)calculateAlignedTypingSessionConfidence:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [v3 alignedEntries];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__TIStandardTypingSessionConfidenceEvaluator_calculateAlignedTypingSessionConfidence___block_invoke;
  v11[3] = &unk_27872FF48;
  v11[4] = &v12;
  [v4 enumerateObjectsUsingBlock:v11];

  v5 = [v3 alignedEntries];
  v6 = [v5 count];

  if (v6)
  {
    v7 = v13[3];
    v8 = [v3 alignedEntries];
    v9 = v7 / ([v8 count] * 3.0);
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

+ (unint64_t)evaluateConfidenceInSession:(id)a3 alignedSession:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [a3 userActionHistory];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        objc_enumerationMutation(v4);
      }

      v14 = *(*(&v24 + 1) + 8 * v12);
      v15 = [v14 actionType];
      if (v15 > 5)
      {
        if ((v15 - 7) < 5)
        {
          goto LABEL_29;
        }

        if (v15 != 6)
        {
          if (v15 == 12)
          {
            v11 = 1;
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        v9 = 1;
      }

      else if (v15 <= 1)
      {
        if (v15)
        {
          if (v15 != 1)
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
        if (v15 == 2)
        {
          v17 = [v14 documentState];
          v18 = [v17 contextAfterInput];
          v19 = v18 != 0;

          v9 |= v19;
          goto LABEL_29;
        }

        if (v15 != 3)
        {
          if (v15 == 4)
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
    v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);

LABEL_33:
  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

@end