@interface PXRejectSocialGroupsAction
- (PXRejectSocialGroupsAction)initWithSocialGroups:(id)groups;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRejectSocialGroupsAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXRejectSocialGroupsAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
}

void __42__PXRejectSocialGroupsAction_performUndo___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) collections];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AE0] changeRequestForSocialGroup:*(*(&v7 + 1) + 8 * v5) userAction:1];
        [v6 unrejectSocialGroup];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)performAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PXRejectSocialGroupsAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:action];
}

void __44__PXRejectSocialGroupsAction_performAction___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) collections];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AE0] changeRequestForSocialGroup:*(*(&v7 + 1) + 8 * v5) userAction:1];
        [v6 rejectSocialGroup];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (PXRejectSocialGroupsAction)initWithSocialGroups:(id)groups
{
  groupsCopy = groups;
  firstObject = [groupsCopy firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    photoLibrary = [firstObject photoLibrary];
    v13.receiver = self;
    v13.super_class = PXRejectSocialGroupsAction;
    v8 = [(PXPhotosAction *)&v13 initWithPhotoLibrary:photoLibrary];

    if (v8)
    {
      v9 = [groupsCopy copy];
      collections = v8->_collections;
      v8->_collections = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end