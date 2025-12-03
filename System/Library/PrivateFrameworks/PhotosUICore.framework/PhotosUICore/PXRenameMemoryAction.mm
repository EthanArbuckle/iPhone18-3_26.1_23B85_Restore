@interface PXRenameMemoryAction
- (PXRenameMemoryAction)initWithMemory:(id)memory title:(id)title subtitle:(id)subtitle;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRenameMemoryAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__PXRenameMemoryAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
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

- (void)performAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__PXRenameMemoryAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:action];
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

- (PXRenameMemoryAction)initWithMemory:(id)memory title:(id)title subtitle:(id)subtitle
{
  memoryCopy = memory;
  titleCopy = title;
  subtitleCopy = subtitle;
  if ([memoryCopy canPerformEditOperation:7])
  {
    v32 = titleCopy;
    v12 = [titleCopy copy];
    localizedTitle = [memoryCopy localizedTitle];
    v14 = localizedTitle;
    if (localizedTitle)
    {
      v15 = localizedTitle;
    }

    else
    {
      v15 = &stru_1F1741150;
    }

    v29 = v15;
    v16 = v15;

    v17 = [subtitleCopy copy];
    subtitle = [memoryCopy subtitle];
    v19 = subtitle;
    if (subtitle)
    {
      v20 = subtitle;
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
      selfCopy = 0;
      titleCopy = v32;
    }

    else
    {
      v31 = v21;
      pendingState = [memoryCopy pendingState];
      photoLibrary = [memoryCopy photoLibrary];
      v34.receiver = self;
      v34.super_class = PXRenameMemoryAction;
      v27 = [(PXPhotosAction *)&v34 initWithPhotoLibrary:photoLibrary];

      if (v27)
      {
        objc_storeStrong(&v27->_memory, memory);
        objc_storeStrong(&v27->_redoTitle, obj);
        objc_storeStrong(&v27->_undoTitle, v30);
        objc_storeStrong(&v27->_redoSubtitle, v17);
        objc_storeStrong(&v27->_undoSubtitle, v20);
        v27->_undoUserEdited = pendingState == 3;
      }

      self = v27;
      selfCopy = self;
      v21 = v31;
      titleCopy = v32;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end