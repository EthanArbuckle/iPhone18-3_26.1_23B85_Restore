@interface PXPeopleUserFeedbackAction
- (PXPeopleUserFeedbackAction)initWithPeople:(id)a3 feedbackType:(unint64_t)a4;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXPeopleUserFeedbackAction

- (void)performRedo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXPeopleUserFeedbackAction_performRedo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __42__PXPeopleUserFeedbackAction_performRedo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) collections];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) userFeedback];
        v9 = [MEMORY[0x1E6978990] changeRequestForPerson:v7];
        [v9 setUserFeedback:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXPeopleUserFeedbackAction *)self undoUserFeedbacks];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PXPeopleUserFeedbackAction_performUndo___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PXPhotosAction *)self performChanges:v7 completionHandler:v4];
}

void __42__PXPeopleUserFeedbackAction_performUndo___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) collections];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [MEMORY[0x1E6978990] changeRequestForPerson:v7];
        v9 = *(a1 + 40);
        v10 = [v7 localIdentifier];
        v11 = [v9 objectForKeyedSubscript:v10];
        [v8 setUserFeedback:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)performAction:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXPeopleUserFeedbackAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __44__PXPeopleUserFeedbackAction_performAction___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) collections];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        [v7 fetchPropertySetsIfNeeded];
        v8 = [v7 userFeedbackProperties];
        v9 = [v8 userFeedback];
        v10 = [v7 localIdentifier];
        [v2 setObject:v9 forKeyedSubscript:v10];

        v11 = [*(a1 + 32) userFeedback];
        v12 = [MEMORY[0x1E6978990] changeRequestForPerson:v7];
        [v12 setUserFeedback:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) setUndoUserFeedbacks:v2];
}

- (id)actionNameLocalizationKey
{
  v2 = [(PXPeopleUserFeedbackAction *)self userFeedback];
  v3 = [v2 type];

  v4 = @"PXNeverFeatureActionName";
  if (v3 != 2)
  {
    v4 = 0;
  }

  if (v3 == 3)
  {
    return @"PXFeatureLessActionName";
  }

  else
  {
    return v4;
  }
}

- (PXPeopleUserFeedbackAction)initWithPeople:(id)a3 feedbackType:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 photoLibrary];
    v17.receiver = self;
    v17.super_class = PXPeopleUserFeedbackAction;
    v10 = [(PXPhotosAction *)&v17 initWithPhotoLibrary:v9];

    if (v10)
    {
      v11 = [v6 copy];
      collections = v10->_collections;
      v10->_collections = v11;

      v13 = [objc_alloc(MEMORY[0x1E6978B00]) initWithType:a4 feature:0 context:0];
      userFeedback = v10->_userFeedback;
      v10->_userFeedback = v13;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end