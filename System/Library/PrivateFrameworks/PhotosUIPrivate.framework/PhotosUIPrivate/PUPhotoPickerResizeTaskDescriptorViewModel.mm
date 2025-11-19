@interface PUPhotoPickerResizeTaskDescriptorViewModel
- (PUPhotoPickerResizeTaskDescriptorViewModel)init;
- (PUPhotoPickerResizeTaskDescriptorViewModelDelegate)delegate;
- (id)_infoDictionaryForLocalizedTitle:(id)a3 localizedFileSizeDescription:(id)a4;
- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4;
- (void)infoUpdaterDidUpdate:(id)a3;
- (void)invalidateAssetsForResizing;
- (void)performChanges:(id)a3;
- (void)setFileSizeMenu:(id)a3;
- (void)setResizeTaskDescriptor:(id)a3;
@end

@implementation PUPhotoPickerResizeTaskDescriptorViewModel

- (PUPhotoPickerResizeTaskDescriptorViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)infoUpdaterDidUpdate:(id)a3
{
  v5 = a3;
  v6 = [v5 infoKind];
  v7 = [v6 isEqualToString:@"PUResizeTaskDescriptorInfoKind"];

  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerResizeTaskDescriptorViewModel.m" lineNumber:139 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = [v5 info];
  v9 = [v8 objectForKeyedSubscript:@"PUResizeTaskDescriptorInfoLocalizedTitleKey"];
  v10 = [v8 objectForKeyedSubscript:@"PUResizeTaskDescriptorInfoLocalizedFileSizeDescriptionKey"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PUPhotoPickerResizeTaskDescriptorViewModel_infoUpdaterDidUpdate___block_invoke;
  v14[3] = &unk_1E7B7BF60;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v11 = v10;
  v12 = v9;
  [(PUPhotoPickerResizeTaskDescriptorViewModel *)self performChanges:v14];
}

uint64_t __67__PUPhotoPickerResizeTaskDescriptorViewModel_infoUpdaterDidUpdate___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 48));
  v2 = *(a1 + 32);

  return [v2 signalChange:2];
}

- (id)_infoDictionaryForLocalizedTitle:(id)a3 localizedFileSizeDescription:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"PUResizeTaskDescriptorInfoLocalizedTitleKey";
  v10[1] = @"PUResizeTaskDescriptorInfoLocalizedFileSizeDescriptionKey";
  v11[0] = a3;
  v11[1] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self delegate];
  v10 = [v9 assetsForResizing];
  v11 = [v10 copy];

  if (![v7 isEqualToString:@"PUResizeTaskDescriptorInfoKind"])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerResizeTaskDescriptorViewModel.m" lineNumber:105 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v11)
  {
    v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    v13 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self resizeTaskDescriptor];
    v14 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self localizedFileSizeDescriptionUpdaterQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PUPhotoPickerResizeTaskDescriptorViewModel_requestInfoOfKind_withResultHandler___block_invoke;
    block[3] = &unk_1E7B7DCB0;
    v15 = v12;
    v22 = v15;
    v23 = v13;
    v24 = v11;
    v25 = self;
    v26 = v8;
    v16 = v13;
    dispatch_async(v14, block);
  }

  else
  {
    v17 = PULocalizedString(@"SIZE_PICKER_DOWNLOADING");
    v18 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self _infoDictionaryForLocalizedTitle:v17 localizedFileSizeDescription:v17];
    (*(v8 + 2))(v8, v18);

    v15 = 0;
  }

  return v15;
}

void __82__PUPhotoPickerResizeTaskDescriptorViewModel_requestInfoOfKind_withResultHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = [*(a1 + 40) localizedDescription];
    v2 = [*(a1 + 40) localizedDescriptionForAssets:*(a1 + 48)];
    v3 = [*(a1 + 56) _infoDictionaryForLocalizedTitle:v4 localizedFileSizeDescription:v2];
    (*(*(a1 + 64) + 16))();
  }
}

- (void)invalidateAssetsForResizing
{
  v2 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self localizedFileSizeDescriptionUpdater];
  [v2 invalidateInfo];
}

- (void)setFileSizeMenu:(id)a3
{
  v5 = a3;
  if (self->_fileSizeMenu != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fileSizeMenu, a3);
    [(PUPhotoPickerResizeTaskDescriptorViewModel *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setResizeTaskDescriptor:(id)a3
{
  v9 = a3;
  v5 = self->_resizeTaskDescriptor;
  v6 = v5;
  if (v5 == v9)
  {
  }

  else
  {
    v7 = [(PUPhotoPickerResizeTaskDescriptor *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_resizeTaskDescriptor, a3);
      v8 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self localizedFileSizeDescriptionUpdater];
      [v8 invalidateInfo];

      [(PUPhotoPickerResizeTaskDescriptorViewModel *)self signalChange:1];
    }
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUPhotoPickerResizeTaskDescriptorViewModel;
  [(PUPhotoPickerResizeTaskDescriptorViewModel *)&v3 performChanges:a3];
}

- (PUPhotoPickerResizeTaskDescriptorViewModel)init
{
  v12.receiver = self;
  v12.super_class = PUPhotoPickerResizeTaskDescriptorViewModel;
  v2 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)&v12 init];
  if (v2)
  {
    v3 = +[PUPhotoPickerResizeTaskDescriptor defaultActualSizeDescriptor];
    resizeTaskDescriptor = v2->_resizeTaskDescriptor;
    v2->_resizeTaskDescriptor = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.photopicker.PUPhotoPickerResizeTaskDescriptorViewModel.localizedFileSizeDescriptionUpdaterQueue", v6);
    localizedFileSizeDescriptionUpdaterQueue = v2->_localizedFileSizeDescriptionUpdaterQueue;
    v2->_localizedFileSizeDescriptionUpdaterQueue = v7;

    v9 = [objc_alloc(MEMORY[0x1E69C4530]) initWithInfoProvider:v2 infoKind:@"PUResizeTaskDescriptorInfoKind"];
    localizedFileSizeDescriptionUpdater = v2->_localizedFileSizeDescriptionUpdater;
    v2->_localizedFileSizeDescriptionUpdater = v9;

    [(PXInfoUpdater *)v2->_localizedFileSizeDescriptionUpdater setObserver:v2];
  }

  return v2;
}

@end