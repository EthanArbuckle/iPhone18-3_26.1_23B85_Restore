@interface PUPhotoEditAggregateSession
- (NSArray)_autoCropKeys;
- (__CFString)_keyForSessionEnd:(int64_t)end;
- (id)_sessionKeysWithEnd:(int64_t)end;
- (id)finishSessionWithEnd:(int64_t)end newCompositionController:(id)controller oldCompositionController:(id)compositionController;
- (void)_recordKeys:(id)keys;
- (void)notifyDidAdjustCrop;
- (void)notifyDidApplyAutoCrop;
- (void)notifyDidResetCrop;
@end

@implementation PUPhotoEditAggregateSession

- (id)finishSessionWithEnd:(int64_t)end newCompositionController:(id)controller oldCompositionController:(id)compositionController
{
  v28[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  compositionControllerCopy = compositionController;
  v10 = [(PUPhotoEditAggregateSession *)self _sessionKeysWithEnd:end];
  v11 = [v10 mutableCopy];
  if (controllerCopy && compositionControllerCopy)
  {
    v12 = [MEMORY[0x1E69BE360] compositionController:controllerCopy aggregateKeysForPreviousComposition:compositionControllerCopy];
    [v11 addObjectsFromArray:v12];
    if (!end)
    {
      composition = [compositionControllerCopy composition];
      v28[0] = *MEMORY[0x1E69BE180];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      v15 = [controllerCopy isEqual:composition forKeys:v14 visualChangesOnly:0];

      if ((v15 & 1) == 0)
      {
        trimAdjustmentController = [controllerCopy trimAdjustmentController];

        if (trimAdjustmentController)
        {
          trimAdjustmentController2 = [controllerCopy trimAdjustmentController];
          v18 = trimAdjustmentController2;
          if (trimAdjustmentController2)
          {
            [trimAdjustmentController2 endTime];
          }

          else
          {
            memset(&v26, 0, sizeof(v26));
          }

          CMTimeGetSeconds(&v26);
          trimAdjustmentController3 = [controllerCopy trimAdjustmentController];
          v20 = trimAdjustmentController3;
          if (trimAdjustmentController3)
          {
            [trimAdjustmentController3 startTime];
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

      composition2 = [compositionControllerCopy composition];
      v27 = *MEMORY[0x1E69BE160];
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v23 = [controllerCopy isEqual:composition2 forKeys:v22 visualChangesOnly:0];

      if ((v23 & 1) == 0)
      {
        slomoAdjustmentController = [controllerCopy slomoAdjustmentController];

        if (slomoAdjustmentController)
        {
          [v11 pu_addCFString:*MEMORY[0x1E69BEE48]];
        }
      }
    }
  }

  [(PUPhotoEditAggregateSession *)self _recordKeys:v11];

  return v11;
}

- (void)_recordKeys:(id)keys
{
  v14 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        [MEMORY[0x1E6991F28] sendEvent:*(*(&v9 + 1) + 8 * v8++) withPayload:v7];
      }

      while (v5 != v8);
      v5 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_sessionKeysWithEnd:(int64_t)end
{
  array = [MEMORY[0x1E695DF70] array];
  [array pu_addCFString:*MEMORY[0x1E69BEE00]];
  [array pu_addCFString:{-[PUPhotoEditAggregateSession _keyForSessionEnd:](self, "_keyForSessionEnd:", end)}];
  if (!end)
  {
    _autoCropKeys = [(PUPhotoEditAggregateSession *)self _autoCropKeys];
    [array addObjectsFromArray:_autoCropKeys];
  }

  if ([(PUPhotoEditAggregateSession *)self toggledOriginal])
  {
    [array pu_addCFString:*MEMORY[0x1E69BEE18]];
  }

  if ([(PUPhotoEditAggregateSession *)self pluginStarted])
  {
    shouldUseVideoKeys = [(PUPhotoEditAggregateSession *)self shouldUseVideoKeys];
    v8 = MEMORY[0x1E69BEE38];
    if (!shouldUseVideoKeys)
    {
      v8 = MEMORY[0x1E69BEDA0];
    }

    [array pu_addCFString:*v8];
  }

  if ([(PUPhotoEditAggregateSession *)self pluginSaved])
  {
    shouldUseVideoKeys2 = [(PUPhotoEditAggregateSession *)self shouldUseVideoKeys];
    v10 = MEMORY[0x1E69BEE30];
    if (!shouldUseVideoKeys2)
    {
      v10 = MEMORY[0x1E69BED98];
    }

    [array pu_addCFString:*v10];
  }

  return array;
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

- (__CFString)_keyForSessionEnd:(int64_t)end
{
  result = 0;
  if (end > 2)
  {
    switch(end)
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

  if (!end)
  {
    v7 = MEMORY[0x1E69BEDC8];
    return *v7;
  }

  if (end == 1)
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