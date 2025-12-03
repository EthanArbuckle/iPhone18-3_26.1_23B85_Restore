@interface PXRejectMemoriesAction
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
- (void)setFeatureType:(unint64_t)type;
- (void)setRejectReason:(unint64_t)reason;
@end

@implementation PXRejectMemoriesAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  undoUserFeedbacks = [(PXRejectMemoriesAction *)self undoUserFeedbacks];
  undoPhotosGraphDataValues = [(PXRejectMemoriesAction *)self undoPhotosGraphDataValues];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PXRejectMemoriesAction_performUndo___block_invoke;
  v9[3] = &unk_1E77378E0;
  v10 = undoUserFeedbacks;
  v11 = undoPhotosGraphDataValues;
  v7 = undoPhotosGraphDataValues;
  v8 = undoUserFeedbacks;
  [(PXMemoriesAction *)self performMemoryChanges:v9 completionHandler:undoCopy];
}

void __38__PXRejectMemoriesAction_performUndo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [v8 setRejected:0];
  [v8 setBlacklistedFeature:0];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    [v8 setUserFeedback:v6];
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (v7)
  {
    [v8 setPhotosGraphData:v7];
  }
}

- (void)performAction:(id)action
{
  actionCopy = action;
  redoMemoryFeatures = [(PXRejectMemoriesAction *)self redoMemoryFeatures];
  redoUserFeedbacks = [(PXRejectMemoriesAction *)self redoUserFeedbacks];
  redoPhotosGraphDataValues = [(PXRejectMemoriesAction *)self redoPhotosGraphDataValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__PXRejectMemoriesAction_performAction___block_invoke;
  v11[3] = &unk_1E77378B8;
  v12 = redoMemoryFeatures;
  v13 = redoUserFeedbacks;
  v14 = redoPhotosGraphDataValues;
  v8 = redoPhotosGraphDataValues;
  v9 = redoUserFeedbacks;
  v10 = redoMemoryFeatures;
  [(PXMemoriesAction *)self performMemoryChanges:v11 completionHandler:actionCopy];
}

void __40__PXRejectMemoriesAction_performAction___block_invoke(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [v9 setRejected:1];
  v6 = [a1[4] objectForKeyedSubscript:v5];
  if (v6)
  {
    [v9 setBlacklistedFeature:v6];
  }

  v7 = [a1[5] objectForKeyedSubscript:v5];
  if (v7)
  {
    [v9 setUserFeedback:v7];
  }

  v8 = [a1[6] objectForKeyedSubscript:v5];
  if (v8)
  {
    [v9 setPhotosGraphData:v8];
  }
}

- (void)setRejectReason:(unint64_t)reason
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRejectMemoriesAction.m" lineNumber:59 description:{@"%s cannot be called after the receiver has started executing.", "-[PXRejectMemoriesAction setRejectReason:]"}];
  }

  if (self->_rejectReason != reason)
  {
    self->_rejectReason = reason;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    selfCopy = self;
    obj = [(PXMemoriesAction *)self collections];
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 px_mutatedPhotosGraphPropertiesWithRejectReason:reason];
          localIdentifier = [v12 localIdentifier];
          [dictionary setObject:v13 forKeyedSubscript:localIdentifier];

          v15 = MEMORY[0x1E69788F0];
          photosGraphProperties = [v12 photosGraphProperties];
          v17 = [v15 px_photosGraphDataFromProperties:photosGraphProperties error:0];
          localIdentifier2 = [v12 localIdentifier];
          [dictionary2 setObject:v17 forKeyedSubscript:localIdentifier2];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [(PXRejectMemoriesAction *)selfCopy setRedoPhotosGraphDataValues:dictionary];
    [(PXRejectMemoriesAction *)selfCopy setUndoPhotosGraphDataValues:dictionary2];
  }
}

- (void)setFeatureType:(unint64_t)type
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRejectMemoriesAction.m" lineNumber:34 description:{@"%s cannot be called after the receiver has started executing.", "-[PXRejectMemoriesAction setFeatureType:]"}];
  }

  if (self->_featureType != type)
  {
    self->_featureType = type;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    selfCopy = self;
    obj = [(PXMemoriesAction *)self collections];
    v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          blockableFeatures = [v10 blockableFeatures];
          v12 = [blockableFeatures countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(blockableFeatures);
                }

                v16 = *(*(&v29 + 1) + 8 * j);
                if (([v16 type] & type) != 0)
                {
                  localIdentifier = [v10 localIdentifier];
                  [dictionary setObject:v16 forKeyedSubscript:localIdentifier];

                  [v10 fetchPropertySetsIfNeeded];
                  userFeedbackProperties = [v10 userFeedbackProperties];
                  userFeedback = [userFeedbackProperties userFeedback];

                  v20 = [MEMORY[0x1E6978B00] negativeUserFeedbackForMemoryFeature:v16 existingFeedback:userFeedback];
                  localIdentifier2 = [v10 localIdentifier];
                  [dictionary2 setObject:v20 forKeyedSubscript:localIdentifier2];

                  localIdentifier3 = [v10 localIdentifier];
                  [dictionary3 setObject:userFeedback forKeyedSubscript:localIdentifier3];

                  goto LABEL_19;
                }
              }

              v13 = [blockableFeatures countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v7);
    }

    [(PXRejectMemoriesAction *)selfCopy setRedoMemoryFeatures:dictionary];
    [(PXRejectMemoriesAction *)selfCopy setRedoUserFeedbacks:dictionary2];
    [(PXRejectMemoriesAction *)selfCopy setUndoUserFeedbacks:dictionary3];
  }
}

@end