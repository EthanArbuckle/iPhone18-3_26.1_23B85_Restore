@interface PXRejectMemoriesAction
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
- (void)setFeatureType:(unint64_t)a3;
- (void)setRejectReason:(unint64_t)a3;
@end

@implementation PXRejectMemoriesAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXRejectMemoriesAction *)self undoUserFeedbacks];
  v6 = [(PXRejectMemoriesAction *)self undoPhotosGraphDataValues];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PXRejectMemoriesAction_performUndo___block_invoke;
  v9[3] = &unk_1E77378E0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [(PXMemoriesAction *)self performMemoryChanges:v9 completionHandler:v4];
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

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXRejectMemoriesAction *)self redoMemoryFeatures];
  v6 = [(PXRejectMemoriesAction *)self redoUserFeedbacks];
  v7 = [(PXRejectMemoriesAction *)self redoPhotosGraphDataValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__PXRejectMemoriesAction_performAction___block_invoke;
  v11[3] = &unk_1E77378B8;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [(PXMemoriesAction *)self performMemoryChanges:v11 completionHandler:v4];
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

- (void)setRejectReason:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(PXAction *)self executionStarted])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXRejectMemoriesAction.m" lineNumber:59 description:{@"%s cannot be called after the receiver has started executing.", "-[PXRejectMemoriesAction setRejectReason:]"}];
  }

  if (self->_rejectReason != a3)
  {
    self->_rejectReason = a3;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = self;
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
          v13 = [v12 px_mutatedPhotosGraphPropertiesWithRejectReason:a3];
          v14 = [v12 localIdentifier];
          [v6 setObject:v13 forKeyedSubscript:v14];

          v15 = MEMORY[0x1E69788F0];
          v16 = [v12 photosGraphProperties];
          v17 = [v15 px_photosGraphDataFromProperties:v16 error:0];
          v18 = [v12 localIdentifier];
          [v7 setObject:v17 forKeyedSubscript:v18];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    [(PXRejectMemoriesAction *)v20 setRedoPhotosGraphDataValues:v6];
    [(PXRejectMemoriesAction *)v20 setUndoPhotosGraphDataValues:v7];
  }
}

- (void)setFeatureType:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(PXAction *)self executionStarted])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXRejectMemoriesAction.m" lineNumber:34 description:{@"%s cannot be called after the receiver has started executing.", "-[PXRejectMemoriesAction setFeatureType:]"}];
  }

  if (self->_featureType != a3)
  {
    self->_featureType = a3;
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v27 = [MEMORY[0x1E695DF90] dictionary];
    v26 = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = self;
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
          v11 = [v10 blockableFeatures];
          v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * j);
                if (([v16 type] & a3) != 0)
                {
                  v17 = [v10 localIdentifier];
                  [v28 setObject:v16 forKeyedSubscript:v17];

                  [v10 fetchPropertySetsIfNeeded];
                  v18 = [v10 userFeedbackProperties];
                  v19 = [v18 userFeedback];

                  v20 = [MEMORY[0x1E6978B00] negativeUserFeedbackForMemoryFeature:v16 existingFeedback:v19];
                  v21 = [v10 localIdentifier];
                  [v27 setObject:v20 forKeyedSubscript:v21];

                  v22 = [v10 localIdentifier];
                  [v26 setObject:v19 forKeyedSubscript:v22];

                  goto LABEL_19;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
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

    [(PXRejectMemoriesAction *)v24 setRedoMemoryFeatures:v28];
    [(PXRejectMemoriesAction *)v24 setRedoUserFeedbacks:v27];
    [(PXRejectMemoriesAction *)v24 setUndoUserFeedbacks:v26];
  }
}

@end