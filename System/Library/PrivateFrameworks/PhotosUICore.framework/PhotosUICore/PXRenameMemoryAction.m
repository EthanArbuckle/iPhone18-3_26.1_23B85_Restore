@interface PXRenameMemoryAction
- (PXRenameMemoryAction)initWithMemory:(id)a3 title:(id)a4 subtitle:(id)a5;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXRenameMemoryAction

- (void)performUndo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__PXRenameMemoryAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __36__PXRenameMemoryAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978900];
  v3 = [*(a1 + 32) memory];
  v6 = [v2 changeRequestForMemory:v3];

  v4 = [*(a1 + 32) undoTitle];
  [v6 setTitle:v4];

  v5 = [*(a1 + 32) undoSubtitle];
  [v6 setSubtitle:v5];

  [v6 setUserEdited:{objc_msgSend(*(a1 + 32), "undoUserEdited")}];
}

- (void)performAction:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PXRenameMemoryAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __38__PXRenameMemoryAction_performAction___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978900];
  v3 = [*(a1 + 32) memory];
  v6 = [v2 changeRequestForMemory:v3];

  v4 = [*(a1 + 32) redoTitle];
  [v6 setTitle:v4];

  v5 = [*(a1 + 32) redoSubtitle];
  [v6 setSubtitle:v5];

  [v6 setUserEdited:1];
}

- (PXRenameMemoryAction)initWithMemory:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 canPerformEditOperation:7])
  {
    v32 = v10;
    v12 = [v10 copy];
    v13 = [v9 localizedTitle];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1F1741150;
    }

    v29 = v15;
    v16 = v15;

    v17 = [v11 copy];
    v18 = [v9 subtitle];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F1741150;
    }

    v21 = v20;

    obj = v12;
    v22 = v12;
    v23 = v16;
    if ([v22 isEqualToString:v16] && (objc_msgSend(v17, "isEqualToString:", v21, v29) & 1) != 0)
    {
      v24 = 0;
      v10 = v32;
    }

    else
    {
      v31 = v21;
      v25 = [v9 pendingState];
      v26 = [v9 photoLibrary];
      v34.receiver = self;
      v34.super_class = PXRenameMemoryAction;
      v27 = [(PXPhotosAction *)&v34 initWithPhotoLibrary:v26];

      if (v27)
      {
        objc_storeStrong(&v27->_memory, a3);
        objc_storeStrong(&v27->_redoTitle, obj);
        objc_storeStrong(&v27->_undoTitle, v30);
        objc_storeStrong(&v27->_redoSubtitle, v17);
        objc_storeStrong(&v27->_undoSubtitle, v20);
        v27->_undoUserEdited = v25 == 3;
      }

      self = v27;
      v24 = self;
      v21 = v31;
      v10 = v32;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end