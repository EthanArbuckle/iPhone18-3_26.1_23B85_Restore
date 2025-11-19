@interface PSCalendarEventPredictor
@end

@implementation PSCalendarEventPredictor

uint64_t __78___PSCalendarEventPredictor_eventComparatorWithPredictionContext_contactsMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) seedRecipients];
  if (![v7 count])
  {

LABEL_24:
    v31 = [_PSCalendarEventPredictor hasFaceTimeSignalInEvent:v5];
    v32 = [_PSCalendarEventPredictor hasFaceTimeSignalInEvent:v6];
    if (!v31 || v32)
    {
      if (v31 || !v32)
      {
        v33 = [v5 startDate];
        [v33 timeIntervalSinceNow];
        v35 = fabs(v34);

        v36 = [v6 startDate];
        [v36 timeIntervalSinceNow];
        v38 = fabs(v37);

        if (v35 < v38)
        {
          v30 = -1;
        }

        else
        {
          v30 = v35 > v38;
        }
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = -1;
    }

    goto LABEL_32;
  }

  v8 = _os_feature_enabled_impl();

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = MEMORY[0x1E695DFD8];
  v10 = [*(a1 + 32) seedRecipients];
  v11 = [v9 setWithArray:v10];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = v6;
  v42 = v5;
  v55[0] = v5;
  v55[1] = v6;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v12 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    v43 = *v51;
    do
    {
      v15 = 0;
      v44 = v13;
      do
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v50 + 1) + 8 * v15);
        v17 = [v16 eventIdentifier];
        v18 = [*(a1 + 40) objectForKeyedSubscript:v17];

        if (!v18)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v19 = [v16 attendees];
          v20 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v20)
          {
            v21 = v20;
            LODWORD(v22) = 0;
            v23 = *v47;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v47 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v22 = v22 + [_PSCalendarEventPredictor isCorecipientParticipant:*(*(&v46 + 1) + 8 * i) seedRecipients:v11 contactsMap:*(a1 + 48)];
              }

              v21 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
            }

            while (v21);
          }

          else
          {
            v22 = 0;
          }

          v25 = [MEMORY[0x1E696AD98] numberWithInt:v22];
          [*(a1 + 40) setObject:v25 forKeyedSubscript:v17];

          v14 = v43;
          v13 = v44;
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v13);
  }

  v5 = v42;
  v26 = [v42 eventIdentifier];
  v6 = v41;
  v27 = [v41 eventIdentifier];
  v28 = [*(a1 + 40) objectForKeyedSubscript:v27];
  v29 = [*(a1 + 40) objectForKeyedSubscript:v26];
  v30 = [v28 compare:v29];

  if (!v30)
  {
    goto LABEL_24;
  }

LABEL_32:

  v39 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t __66___PSCalendarEventPredictor_participantComparatorWithContactsMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    goto LABEL_10;
  }

  if (!v7 && v8)
  {
    goto LABEL_7;
  }

  v11 = [v5 participantStatus];
  v12 = [v6 participantStatus];
  if (v11 == 3 && v12 != 3)
  {
    goto LABEL_10;
  }

  if (v11 != 3 && v12 == 3)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_11;
  }

  if (v11 == 2 && v12 != 2)
  {
LABEL_10:
    v10 = -1;
    goto LABEL_11;
  }

  v10 = v11 != 2 && v12 == 2;
LABEL_11:

  return v10;
}

void __111___PSCalendarEventPredictor_zkwSuggestionsFromCalendarWithPredictionContext_startDate_endDate_maxParticipants___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = v3;
  if ([_PSCalendarEventPredictor isMaybeFaceTimeEvent:"isMaybeFaceTimeEvent:earliestStartDate:latestStartDate:maxParticipants:" earliestStartDate:? latestStartDate:? maxParticipants:?])
  {
    [*(a1 + 48) addObject:v7];
  }
}

@end