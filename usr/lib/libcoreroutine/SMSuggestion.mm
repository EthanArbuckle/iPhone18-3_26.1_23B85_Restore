@interface SMSuggestion
@end

@implementation SMSuggestion

void __64__SMSuggestion_RTCoreDataTransformable__createWithSuggestionMO___block_invoke(uint64_t a1)
{
  v36 = objc_alloc(MEMORY[0x277D4AC10]);
  v35 = [*(a1 + 32) suggestionTrigger];
  v34 = [*(a1 + 32) suggestionUserType];
  v33 = [*(a1 + 32) suppressionReason];
  v32 = [*(a1 + 32) sessionType];
  v2 = objc_alloc(MEMORY[0x277D01160]);
  [*(a1 + 32) sourceLocationLatitude];
  v4 = v3;
  [*(a1 + 32) sourceLocationLongitude];
  v37 = [v2 initWithLatitude:0 longitude:v4 horizontalUncertainty:v5 date:0.0];
  v6 = objc_alloc(MEMORY[0x277D01160]);
  [*(a1 + 32) destinationLocationLatitude];
  v8 = v7;
  [*(a1 + 32) destinationLocationLongitude];
  v10 = [v6 initWithLatitude:0 longitude:v8 horizontalUncertainty:v9 date:0.0];
  v11 = objc_alloc(MEMORY[0x277D4AA88]);
  v12 = [*(a1 + 32) buddyEmail];
  v13 = [*(a1 + 32) buddyPhoneNumber];
  v14 = [v11 initWithEmail:v12 phoneNumber:v13];
  v15 = [*(a1 + 32) startDate];
  if (v15)
  {
    v16 = [*(a1 + 32) endDate];
    if (v16)
    {
      v31 = v16;
      v17 = [*(a1 + 32) startDate];
      v29 = [*(a1 + 32) endDate];
      v30 = v17;
      if ([v17 compare:v29] == -1)
      {
        v25 = objc_alloc(MEMORY[0x277CCA970]);
        v26 = [*(a1 + 32) startDate];
        v27 = [*(a1 + 32) endDate];
        v28 = v26;
        v19 = [v25 initWithStartDate:v26 endDate:?];
        v20 = 1;
        v18 = 1;
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 1;
      }
    }

    else
    {
      v31 = 0;
      v20 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
    v19 = 0;
  }

  v21 = [*(a1 + 32) creationDate];
  v22 = [v36 initWithSuggestionTrigger:v35 suggestionUserType:v34 suppressionReason:v33 sessionType:v32 sourceLocation:v37 destinationLocation:v10 buddy:v14 dateInterval:v19 creationDate:v21];
  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  if (v18)
  {
  }

  if (v20)
  {
  }

  if (v15)
  {
  }
}

@end