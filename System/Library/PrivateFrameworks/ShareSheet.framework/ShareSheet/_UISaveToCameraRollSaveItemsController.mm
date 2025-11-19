@interface _UISaveToCameraRollSaveItemsController
- (_UISaveToCameraRollSaveItemsController)initWithItems:(id)a3 saveCompletionBlock:(id)a4;
- (void)_didCompleteSavingItem:(id)a3 error:(id)a4 contextInfo:(void *)a5;
- (void)_invokeSaveCompletionBlock;
- (void)_noteDidCompleteSavingItem:(id)a3 error:(id)a4;
- (void)beginSaving;
- (void)beginSavingItem:(id)a3;
@end

@implementation _UISaveToCameraRollSaveItemsController

- (_UISaveToCameraRollSaveItemsController)initWithItems:(id)a3 saveCompletionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _UISaveToCameraRollSaveItemsController;
  v9 = [(_UISaveToCameraRollSaveItemsController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemsToSchedule, a3);
    v10->_successToReport = 1;
    v11 = MEMORY[0x18CFF58E0](v8);
    saveCompletionBlock = v10->_saveCompletionBlock;
    v10->_saveCompletionBlock = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.ShareSheet.UISaveToCameraRollActivity.FileReading", v13);
    backgroundQueueForFileReading = v10->_backgroundQueueForFileReading;
    v10->_backgroundQueueForFileReading = v14;
  }

  return v10;
}

- (void)beginSaving
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = self->_itemsToSchedule;
  itemsToSchedule = self->_itemsToSchedule;
  self->_itemsToSchedule = 0;

  self->_pendingSaveCount += [(NSArray *)v3 count];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_UISaveToCameraRollSaveItemsController *)self beginSavingItem:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)beginSavingItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UISaveToCameraRollSaveItemsController *)self _saveImage:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_UISaveToCameraRollSaveItemsController *)self backgroundQueueForFileReading];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58___UISaveToCameraRollSaveItemsController_beginSavingItem___block_invoke;
      block[3] = &unk_1E71F91A0;
      v10 = v4;
      v11 = self;
      dispatch_async(v5, block);

      v6 = v10;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_UISaveToCameraRollSaveItemsController *)self _saveImageData:v4];
        goto LABEL_11;
      }

      if (!_UIActivityItemIsLivePhoto(v4))
      {
        [(_UISaveToCameraRollSaveItemsController *)self _saveVideoAtPath:v4];
        goto LABEL_11;
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58___UISaveToCameraRollSaveItemsController_beginSavingItem___block_invoke_2;
      v7[3] = &unk_1E71FAF80;
      v7[4] = self;
      v8 = v4;
      [v8 saveToPhotoLibraryWithCompletionHandler:v7];
      v6 = v8;
    }
  }

LABEL_11:
}

- (void)_didCompleteSavingItem:(id)a3 error:(id)a4 contextInfo:(void *)a5
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___UISaveToCameraRollSaveItemsController__didCompleteSavingItem_error_contextInfo___block_invoke;
  block[3] = &unk_1E71F9638;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_noteDidCompleteSavingItem:(id)a3 error:(id)a4
{
  p_errorToReport = &self->_errorToReport;
  errorToReport = self->_errorToReport;
  --self->_pendingSaveCount;
  if (errorToReport)
  {
    a4 = errorToReport;
  }

  objc_storeStrong(&self->_errorToReport, a4);
  v8 = *(p_errorToReport - 1);
  *(p_errorToReport - 32) = *p_errorToReport == 0;
  if (!v8)
  {

    [(_UISaveToCameraRollSaveItemsController *)self _invokeSaveCompletionBlock];
  }
}

- (void)_invokeSaveCompletionBlock
{
  v4 = MEMORY[0x18CFF58E0](self->_saveCompletionBlock, a2);
  saveCompletionBlock = self->_saveCompletionBlock;
  self->_saveCompletionBlock = 0;

  v4[2](v4, self->_successToReport, self->_errorToReport);
}

@end