@interface UPContextualizerUtilities
+ (BOOL)hasTopCandidate:(id)candidate excedingProbability:(double)probability matchingOneOfIntents:(id)intents;
+ (id)buildPayloadResultFromQuery:(id)query modelIdentifier:(id)identifier intent:(id)intent entityName:(id)name serializer:(id)serializer;
+ (id)createConfirmOrRejectedDialogActsFor:(id)for reference:(id)reference;
+ (id)entityLabelsFromCandidate:(id)candidate;
+ (id)filterResult:(id)result byEntityName:(id)name serializer:(id)serializer;
+ (id)filterResult:(id)result serializer:(id)serializer predicate:(id)predicate;
+ (id)resultFromResult:(id)result withNewIntent:(id)intent;
@end

@implementation UPContextualizerUtilities

+ (id)createConfirmOrRejectedDialogActsFor:(id)for reference:(id)reference
{
  forCopy = for;
  referenceCopy = reference;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(forCopy, "candidateCount")}];
  if ([forCopy candidateCount] >= 1)
  {
    v7 = 0;
    v8 = @"yes";
    v31 = forCopy;
    v30 = v6;
    while (1)
    {
      v9 = [forCopy candidateAtRank:v7];
      intent = [v9 intent];
      v11 = [intent isEqualToString:v8];

      if (v11)
      {
        break;
      }

      intent2 = [v9 intent];
      v24 = [intent2 isEqualToString:@"no"];

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
      calibratedProbability = [v9 calibratedProbability];
      utterance = [v9 utterance];
      intent3 = [v9 intent];
      entities = [v9 entities];
      [v9 modelIdentifier];
      v21 = v20 = v8;
      v22 = [(UPResultCandidate *)v13 initWithUncalibratedProbability:calibratedProbability calibratedProbability:utterance utterance:intent3 intent:entities entities:v21 modelIdentifier:v12 task:v15];

      v8 = v20;
      v6 = v30;
      forCopy = v31;

      [v30 addObject:v22];
LABEL_12:

      if ([forCopy candidateCount] <= ++v7)
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
    [v12 setReference:referenceCopy];
    goto LABEL_6;
  }

LABEL_13:
  v25 = [UPResult alloc];
  queryUUID = [forCopy queryUUID];
  v27 = [(UPResult *)v25 initWithCandidates:v6 queryUUID:queryUUID];

  return v27;
}

+ (id)filterResult:(id)result serializer:(id)serializer predicate:(id)predicate
{
  resultCopy = result;
  predicateCopy = predicate;
  array = [MEMORY[0x277CBEB18] array];
  candidateCount = [resultCopy candidateCount];
  if (candidateCount >= 1)
  {
    v10 = candidateCount;
    for (i = 0; i != v10; ++i)
    {
      v12 = [resultCopy candidateAtRank:i];
      if (predicateCopy[2](predicateCopy, v12))
      {
        [array addObject:v12];
      }
    }
  }

  v13 = [UPResult alloc];
  queryUUID = [resultCopy queryUUID];
  v15 = [(UPResult *)v13 initWithCandidates:array queryUUID:queryUUID];

  return v15;
}

+ (id)entityLabelsFromCandidate:(id)candidate
{
  v18 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  entities = [candidateCopy entities];
  v6 = [entities countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(entities);
        }

        label = [*(*(&v13 + 1) + 8 * i) label];
        [array addObject:label];
      }

      v7 = [entities countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)buildPayloadResultFromQuery:(id)query modelIdentifier:(id)identifier intent:(id)intent entityName:(id)name serializer:(id)serializer
{
  v40[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  identifierCopy = identifier;
  intentCopy = intent;
  nameCopy = name;
  serializerCopy = serializer;
  utterance = [queryCopy utterance];
  if (!utterance)
  {
    __assert_rtn("+[UPContextualizerUtilities buildPayloadResultFromQuery:modelIdentifier:intent:entityName:serializer:]", "UPContextualizerUtilities.m", 96, "utterance != nil");
  }

  v17 = utterance;
  v18 = -[UPResultCandidateEntity initWithRange:label:text:groupId:semanticValue:sharedEntityGraph:]([UPResultCandidateEntity alloc], "initWithRange:label:text:groupId:semanticValue:sharedEntityGraph:", 0, [utterance length], nameCopy, utterance, 0, 0, 0);
  v40[0] = v18;
  v37 = nameCopy;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  appBundleId = [identifierCopy appBundleId];
  v36 = [serializerCopy serializeFromIntent:intentCopy andEntities:v19 forBundleId:appBundleId];

  v21 = [objc_alloc(MEMORY[0x277D5F5E0]) initWithTask:v36];
  v22 = [UPResultCandidate alloc];
  [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v23 = v35 = serializerCopy;
  v39 = v18;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v25 = [(UPResultCandidate *)v22 initWithUncalibratedProbability:v23 calibratedProbability:v17 utterance:intentCopy intent:v24 entities:identifierCopy modelIdentifier:v21 task:1.0];
  v34 = intentCopy;
  v26 = queryCopy;
  v27 = v25;

  v28 = [UPResult alloc];
  v38 = v27;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  uuid = [v26 uuid];
  v31 = [(UPResult *)v28 initWithCandidates:v29 queryUUID:uuid];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)resultFromResult:(id)result withNewIntent:(id)intent
{
  resultCopy = result;
  intentCopy = intent;
  if ([resultCopy candidateCount])
  {
    array = [MEMORY[0x277CBEB18] array];
    candidateCount = [resultCopy candidateCount];
    v27 = intentCopy;
    if (candidateCount >= 1)
    {
      v9 = 0;
      v26 = candidateCount;
      do
      {
        v10 = [resultCopy candidateAtRank:{v9, v26}];
        v11 = [UPResultCandidate alloc];
        [v10 uncalibratedProbability];
        v13 = v12;
        calibratedProbability = [v10 calibratedProbability];
        utterance = [v10 utterance];
        entities = [v10 entities];
        modelIdentifier = [v10 modelIdentifier];
        [v10 task];
        v18 = array;
        v20 = v19 = resultCopy;
        v21 = [(UPResultCandidate *)v11 initWithUncalibratedProbability:calibratedProbability calibratedProbability:utterance utterance:v27 intent:entities entities:modelIdentifier modelIdentifier:v20 task:v13];

        resultCopy = v19;
        array = v18;

        [v18 addObject:v21];
        ++v9;
      }

      while (v26 != v9);
    }

    v22 = [UPResult alloc];
    queryUUID = [resultCopy queryUUID];
    v24 = [(UPResult *)v22 initWithCandidates:array queryUUID:queryUUID];

    intentCopy = v27;
  }

  else
  {
    v24 = resultCopy;
  }

  return v24;
}

+ (id)filterResult:(id)result byEntityName:(id)name serializer:(id)serializer
{
  nameCopy = name;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__UPContextualizerUtilities_filterResult_byEntityName_serializer___block_invoke;
  v12[3] = &unk_2784B6BF0;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = [self filterResult:result serializer:serializer predicate:v12];

  return v10;
}

uint64_t __66__UPContextualizerUtilities_filterResult_byEntityName_serializer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) entityLabelsFromCandidate:a2];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

+ (BOOL)hasTopCandidate:(id)candidate excedingProbability:(double)probability matchingOneOfIntents:(id)intents
{
  candidateCopy = candidate;
  intentsCopy = intents;
  if ([candidateCopy candidateCount])
  {
    v9 = [candidateCopy candidateAtRank:0];
    intent = [v9 intent];
    [v9 uncalibratedProbability];
    v12 = v11;
    v13 = [intentsCopy containsObject:intent];
    if (v12 > probability)
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