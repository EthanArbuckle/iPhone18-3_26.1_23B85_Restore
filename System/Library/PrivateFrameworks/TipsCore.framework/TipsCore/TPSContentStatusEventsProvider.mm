@interface TPSContentStatusEventsProvider
- (BOOL)_isStatusType:(int64_t)a3 observedInStatus:(id)a4;
- (BOOL)_isStatusType:(int64_t)a3 observedInStatuses:(id)a4;
- (TPSContentStatusEventsProvider)init;
- (void)queryEvents:(id)a3;
@end

@implementation TPSContentStatusEventsProvider

- (TPSContentStatusEventsProvider)init
{
  v7.receiver = self;
  v7.super_class = TPSContentStatusEventsProvider;
  v2 = [(TPSContentStatusEventsProvider *)&v7 init];
  if (v2)
  {
    v3 = +[TPSCommonDefines sharedInstance];
    v4 = [v3 tipStatusController];
    tipStatusController = v2->_tipStatusController;
    v2->_tipStatusController = v4;
  }

  return v2;
}

- (void)queryEvents:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v33;
    *&v5 = 138412290;
    v29 = v5;
    v8 = 0x1E8100000uLL;
    v9 = 0x1E695D000;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [v11 minObservationCount];
        if (v12 <= [v11 currentObservationCount])
        {
          LOBYTE(v19) = 0;
        }

        else
        {
          v13 = v6;
          v14 = v7;
          v15 = v8;
          v16 = v11;
          v19 = [v16 statusType];
          v17 = [v16 contentID];
          v18 = [(TPSTipStatusController *)self->_tipStatusController statusesForCorrelationIdentifier:v17];

          LODWORD(v19) = [(TPSContentStatusEventsProvider *)self _isStatusType:v19 observedInStatuses:v18];
          if (v19)
          {
            v19 = +[TPSLogger default];
            v8 = v15;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v16 description];
              *buf = v29;
              v40 = v20;
              _os_log_impl(&dword_1C00A7000, v19, OS_LOG_TYPE_DEFAULT, "Status observed for event: %@", buf, 0xCu);
            }

            LOBYTE(v19) = 1;
          }

          else
          {
            v8 = v15;
          }

          v7 = v14;
          v6 = v13;
          v9 = 0x1E695D000uLL;
        }

        v21 = objc_alloc_init(*(v8 + 2456));
        v22 = [v11 identifier];
        [v21 setIdentifier:v22];
        v23 = [*(v9 + 3840) date];
        [v21 setResultDate:v23];

        if (v19)
        {
          v37 = v22;
          v24 = [v21 resultDate];
          v38 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          [v21 setObservationMap:v25];
        }

        else
        {
          [v21 setObservationMap:0];
        }

        v26 = [(TPSEventsProvider *)self delegate];
        v36 = v21;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        [v26 dataProvider:self didFinishQueryWithResults:v27];

        objc_autoreleasePoolPop(context);
        ++v10;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v6);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isStatusType:(int64_t)a3 observedInStatuses:(id)a4
{
  v6 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__TPSContentStatusEventsProvider__isStatusType_observedInStatuses___block_invoke;
  v8[3] = &unk_1E8101220;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = self;
  [v6 enumerateObjectsUsingBlock:v8];
  LOBYTE(a3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return a3;
}

uint64_t __67__TPSContentStatusEventsProvider__isStatusType_observedInStatuses___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _isStatusType:*(a1 + 48) observedInStatus:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_isStatusType:(int64_t)a3 observedInStatus:(id)a4
{
  v5 = a4;
  v6 = v5;
  LOBYTE(v7) = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        v8 = [v5 isContentViewed];
        goto LABEL_23;
      }

      if (a3 == 8)
      {
        v8 = [v5 isDesiredOutcomePerformed];
        goto LABEL_23;
      }
    }

    else
    {
      if (a3 != 5)
      {
        v8 = [v5 isHintDismissed];
        goto LABEL_23;
      }

      if ([v5 isHintDisplayedOnAnyDevice])
      {
        v7 = [v6 isHintDisplayed] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    goto LABEL_24;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v8 = [v5 isHintDisplayedOnAnyDevice];
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if ([v5 isDesiredOutcomePerformed])
    {
LABEL_17:
      LOBYTE(v7) = 1;
      goto LABEL_24;
    }

LABEL_18:
    v8 = [v6 isHintDisplayed];
    goto LABEL_23;
  }

  if (a3 == 2)
  {
    if (([v5 isDesiredOutcomePerformed] & 1) == 0 && (objc_msgSend(v6, "isHintDisplayedOnAnyDevice") & 1) == 0)
    {
      v8 = [v6 isHintIneligible];
LABEL_23:
      LOBYTE(v7) = v8;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_24:

  return v7;
}

@end