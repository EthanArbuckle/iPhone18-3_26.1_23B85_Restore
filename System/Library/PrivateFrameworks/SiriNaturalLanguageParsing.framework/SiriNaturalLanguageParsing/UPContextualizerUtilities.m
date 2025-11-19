@interface UPContextualizerUtilities
+ (BOOL)hasTopCandidate:(id)a3 excedingProbability:(double)a4 matchingOneOfIntents:(id)a5;
+ (id)buildPayloadResultFromQuery:(id)a3 modelIdentifier:(id)a4 intent:(id)a5 entityName:(id)a6 serializer:(id)a7;
+ (id)createConfirmOrRejectedDialogActsFor:(id)a3 reference:(id)a4;
+ (id)entityLabelsFromCandidate:(id)a3;
+ (id)filterResult:(id)a3 byEntityName:(id)a4 serializer:(id)a5;
+ (id)filterResult:(id)a3 serializer:(id)a4 predicate:(id)a5;
+ (id)resultFromResult:(id)a3 withNewIntent:(id)a4;
@end

@implementation UPContextualizerUtilities

+ (id)createConfirmOrRejectedDialogActsFor:(id)a3 reference:(id)a4
{
  v5 = a3;
  v29 = a4;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "candidateCount")}];
  if ([v5 candidateCount] >= 1)
  {
    v7 = 0;
    v8 = @"yes";
    v31 = v5;
    v30 = v6;
    while (1)
    {
      v9 = [v5 candidateAtRank:v7];
      v10 = [v9 intent];
      v11 = [v10 isEqualToString:v8];

      if (v11)
      {
        break;
      }

      v23 = [v9 intent];
      v24 = [v23 isEqualToString:@"no"];

      if (!v24)
      {
LABEL_11:
        [v6 addObject:v9];
        goto LABEL_12;
      }

      v12 = objc_alloc_init(MEMORY[0x277D5F5D8]);
      if ([MEMORY[0x277D5F5D8] instancesRespondToSelector:sel_setReference_])
      {
        goto LABEL_5;
      }

LABEL_6:
      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = [UPResultCandidate alloc];
      [v9 uncalibratedProbability];
      v15 = v14;
      v16 = [v9 calibratedProbability];
      v17 = [v9 utterance];
      v18 = [v9 intent];
      v19 = [v9 entities];
      [v9 modelIdentifier];
      v21 = v20 = v8;
      v22 = [(UPResultCandidate *)v13 initWithUncalibratedProbability:v16 calibratedProbability:v17 utterance:v18 intent:v19 entities:v21 modelIdentifier:v12 task:v15];

      v8 = v20;
      v6 = v30;
      v5 = v31;

      [v30 addObject:v22];
LABEL_12:

      if ([v5 candidateCount] <= ++v7)
      {
        goto LABEL_13;
      }
    }

    v12 = objc_alloc_init(MEMORY[0x277D5F5C0]);
    if (([MEMORY[0x277D5F5C0] instancesRespondToSelector:sel_setReference_] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v12 setReference:v29];
    goto LABEL_6;
  }

LABEL_13:
  v25 = [UPResult alloc];
  v26 = [v5 queryUUID];
  v27 = [(UPResult *)v25 initWithCandidates:v6 queryUUID:v26];

  return v27;
}

+ (id)filterResult:(id)a3 serializer:(id)a4 predicate:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 candidateCount];
  if (v9 >= 1)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v6 candidateAtRank:i];
      if (v7[2](v7, v12))
      {
        [v8 addObject:v12];
      }
    }
  }

  v13 = [UPResult alloc];
  v14 = [v6 queryUUID];
  v15 = [(UPResult *)v13 initWithCandidates:v8 queryUUID:v14];

  return v15;
}

+ (id)entityLabelsFromCandidate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 entities];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) label];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildPayloadResultFromQuery:(id)a3 modelIdentifier:(id)a4 intent:(id)a5 entityName:(id)a6 serializer:(id)a7
{
  v40[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v11 utterance];
  if (!v16)
  {
    __assert_rtn("+[UPContextualizerUtilities buildPayloadResultFromQuery:modelIdentifier:intent:entityName:serializer:]", "UPContextualizerUtilities.m", 96, "utterance != nil");
  }

  v17 = v16;
  v18 = -[UPResultCandidateEntity initWithRange:label:text:groupId:semanticValue:sharedEntityGraph:]([UPResultCandidateEntity alloc], "initWithRange:label:text:groupId:semanticValue:sharedEntityGraph:", 0, [v16 length], v14, v16, 0, 0, 0);
  v40[0] = v18;
  v37 = v14;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v20 = [v12 appBundleId];
  v36 = [v15 serializeFromIntent:v13 andEntities:v19 forBundleId:v20];

  v21 = [objc_alloc(MEMORY[0x277D5F5E0]) initWithTask:v36];
  v22 = [UPResultCandidate alloc];
  [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v23 = v35 = v15;
  v39 = v18;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v25 = [(UPResultCandidate *)v22 initWithUncalibratedProbability:v23 calibratedProbability:v17 utterance:v13 intent:v24 entities:v12 modelIdentifier:v21 task:1.0];
  v34 = v13;
  v26 = v11;
  v27 = v25;

  v28 = [UPResult alloc];
  v38 = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v30 = [v26 uuid];
  v31 = [(UPResult *)v28 initWithCandidates:v29 queryUUID:v30];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)resultFromResult:(id)a3 withNewIntent:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 candidateCount])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [v5 candidateCount];
    v27 = v6;
    if (v8 >= 1)
    {
      v9 = 0;
      v26 = v8;
      do
      {
        v10 = [v5 candidateAtRank:{v9, v26}];
        v11 = [UPResultCandidate alloc];
        [v10 uncalibratedProbability];
        v13 = v12;
        v14 = [v10 calibratedProbability];
        v15 = [v10 utterance];
        v16 = [v10 entities];
        v17 = [v10 modelIdentifier];
        [v10 task];
        v18 = v7;
        v20 = v19 = v5;
        v21 = [(UPResultCandidate *)v11 initWithUncalibratedProbability:v14 calibratedProbability:v15 utterance:v27 intent:v16 entities:v17 modelIdentifier:v20 task:v13];

        v5 = v19;
        v7 = v18;

        [v18 addObject:v21];
        ++v9;
      }

      while (v26 != v9);
    }

    v22 = [UPResult alloc];
    v23 = [v5 queryUUID];
    v24 = [(UPResult *)v22 initWithCandidates:v7 queryUUID:v23];

    v6 = v27;
  }

  else
  {
    v24 = v5;
  }

  return v24;
}

+ (id)filterResult:(id)a3 byEntityName:(id)a4 serializer:(id)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__UPContextualizerUtilities_filterResult_byEntityName_serializer___block_invoke;
  v12[3] = &unk_2784B6BF0;
  v13 = v8;
  v14 = a1;
  v9 = v8;
  v10 = [a1 filterResult:a3 serializer:a5 predicate:v12];

  return v10;
}

uint64_t __66__UPContextualizerUtilities_filterResult_byEntityName_serializer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) entityLabelsFromCandidate:a2];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

+ (BOOL)hasTopCandidate:(id)a3 excedingProbability:(double)a4 matchingOneOfIntents:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 candidateCount])
  {
    v9 = [v7 candidateAtRank:0];
    v10 = [v9 intent];
    [v9 uncalibratedProbability];
    v12 = v11;
    v13 = [v8 containsObject:v10];
    if (v12 > a4)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end