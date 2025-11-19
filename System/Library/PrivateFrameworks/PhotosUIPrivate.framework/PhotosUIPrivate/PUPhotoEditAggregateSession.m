@interface PUPhotoEditAggregateSession
- (NSArray)_autoCropKeys;
- (__CFString)_keyForSessionEnd:(int64_t)a3;
- (id)_sessionKeysWithEnd:(int64_t)a3;
- (id)finishSessionWithEnd:(int64_t)a3 newCompositionController:(id)a4 oldCompositionController:(id)a5;
- (void)_recordKeys:(id)a3;
- (void)notifyDidAdjustCrop;
- (void)notifyDidApplyAutoCrop;
- (void)notifyDidResetCrop;
@end

@implementation PUPhotoEditAggregateSession

- (id)finishSessionWithEnd:(int64_t)a3 newCompositionController:(id)a4 oldCompositionController:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(PUPhotoEditAggregateSession *)self _sessionKeysWithEnd:a3];
  v11 = [v10 mutableCopy];
  if (v8 && v9)
  {
    v12 = [MEMORY[0x1E69BE360] compositionController:v8 aggregateKeysForPreviousComposition:v9];
    [v11 addObjectsFromArray:v12];
    if (!a3)
    {
      v13 = [v9 composition];
      v28[0] = *MEMORY[0x1E69BE180];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v15 = [v8 isEqual:v13 forKeys:v14 visualChangesOnly:0];

      if ((v15 & 1) == 0)
      {
        v16 = [v8 trimAdjustmentController];

        if (v16)
        {
          v17 = [v8 trimAdjustmentController];
          v18 = v17;
          if (v17)
          {
            [v17 endTime];
          }

          else
          {
            memset(&v26, 0, sizeof(v26));
          }

          CMTimeGetSeconds(&v26);
          v19 = [v8 trimAdjustmentController];
          v20 = v19;
          if (v19)
          {
            [v19 startTime];
          }

          else
          {
            memset(&v26, 0, sizeof(v26));
          }

          CMTimeGetSeconds(&v26);

          [(PUPhotoEditAggregateSession *)self originalDuration];
          [v11 pu_addCFString:PLSAggregateDictionaryKeyForVideoEditOriginalTrimDuration()];
          [v11 pu_addCFString:PLSAggregateDictionaryKeyForVideoEditFinalTrimDuration()];
        }
      }

      v21 = [v9 composition];
      v27 = *MEMORY[0x1E69BE160];
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v23 = [v8 isEqual:v21 forKeys:v22 visualChangesOnly:0];

      if ((v23 & 1) == 0)
      {
        v24 = [v8 slomoAdjustmentController];

        if (v24)
        {
          [v11 pu_addCFString:*MEMORY[0x1E69BEE48]];
        }
      }
    }
  }

  [(PUPhotoEditAggregateSession *)self _recordKeys:v11];

  return v11;
}

- (void)_recordKeys:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    v7 = MEMORY[0x1E695E0F8];
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [MEMORY[0x1E6991F28] sendEvent:*(*(&v9 + 1) + 8 * v8++) withPayload:v7];
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_sessionKeysWithEnd:(int64_t)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  [v5 pu_addCFString:*MEMORY[0x1E69BEE00]];
  [v5 pu_addCFString:{-[PUPhotoEditAggregateSession _keyForSessionEnd:](self, "_keyForSessionEnd:", a3)}];
  if (!a3)
  {
    v6 = [(PUPhotoEditAggregateSession *)self _autoCropKeys];
    [v5 addObjectsFromArray:v6];
  }

  if ([(PUPhotoEditAggregateSession *)self toggledOriginal])
  {
    [v5 pu_addCFString:*MEMORY[0x1E69BEE18]];
  }

  if ([(PUPhotoEditAggregateSession *)self pluginStarted])
  {
    v7 = [(PUPhotoEditAggregateSession *)self shouldUseVideoKeys];
    v8 = MEMORY[0x1E69BEE38];
    if (!v7)
    {
      v8 = MEMORY[0x1E69BEDA0];
    }

    [v5 pu_addCFString:*v8];
  }

  if ([(PUPhotoEditAggregateSession *)self pluginSaved])
  {
    v9 = [(PUPhotoEditAggregateSession *)self shouldUseVideoKeys];
    v10 = MEMORY[0x1E69BEE30];
    if (!v9)
    {
      v10 = MEMORY[0x1E69BED98];
    }

    [v5 pu_addCFString:*v10];
  }

  return v5;
}

- (NSArray)_autoCropKeys
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if ([(PUPhotoEditAggregateSession *)self _hasCropSuggestion])
  {
    [v3 pu_addCFString:*MEMORY[0x1E69BED18]];
  }

  if ([(PUPhotoEditAggregateSession *)self _hasPerspectiveCropSuggestion])
  {
    [v3 pu_addCFString:*MEMORY[0x1E69BED08]];
  }

  if ([(PUPhotoEditAggregateSession *)self _autoCropAdjusted])
  {
    v4 = MEMORY[0x1E69BED00];
  }

  else
  {
    if (![(PUPhotoEditAggregateSession *)self _autoCropReset])
    {
      goto LABEL_10;
    }

    v4 = MEMORY[0x1E69BED10];
  }

  [v3 pu_addCFString:*v4];
LABEL_10:

  return v3;
}

- (void)notifyDidAdjustCrop
{
  if ([(PUPhotoEditAggregateSession *)self _hasCropSuggestion]&& ![(PUPhotoEditAggregateSession *)self _autoCropReset])
  {

    [(PUPhotoEditAggregateSession *)self _setAutoCropAdjusted:1];
  }
}

- (void)notifyDidResetCrop
{
  if ([(PUPhotoEditAggregateSession *)self _hasCropSuggestion])
  {
    [(PUPhotoEditAggregateSession *)self _setAutoCropReset:1];

    [(PUPhotoEditAggregateSession *)self _setAutoCropAdjusted:0];
  }
}

- (void)notifyDidApplyAutoCrop
{
  [(PUPhotoEditAggregateSession *)self _setHasCropSuggestion:1];
  [(PUPhotoEditAggregateSession *)self _setAutoCropAdjusted:0];

  [(PUPhotoEditAggregateSession *)self _setAutoCropReset:0];
}

- (__CFString)_keyForSessionEnd:(int64_t)a3
{
  result = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v7 = MEMORY[0x1E69BED58];
        break;
      case 4:
        v7 = MEMORY[0x1E69BED60];
        break;
      case 5:
        v7 = MEMORY[0x1E69BED40];
        break;
      default:
        return result;
    }

    return *v7;
  }

  if (!a3)
  {
    v7 = MEMORY[0x1E69BEDC8];
    return *v7;
  }

  if (a3 == 1)
  {
    v8 = [(PUPhotoEditAggregateSession *)self shouldUseVideoKeys:v3];
    v9 = MEMORY[0x1E69BEE40];
    if (!v8)
    {
      v9 = MEMORY[0x1E69BEDB0];
    }

    return *v9;
  }

  return result;
}

@end