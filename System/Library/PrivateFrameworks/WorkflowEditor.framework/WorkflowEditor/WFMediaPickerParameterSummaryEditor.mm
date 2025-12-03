@interface WFMediaPickerParameterSummaryEditor
- (UIViewController)presentedViewController;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)mediaPicker:(id)picker didPickMediaItems:(id)items;
- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive;
- (void)mediaPickerDidCancel:(id)cancel;
@end

@implementation WFMediaPickerParameterSummaryEditor

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection horizontalSizeClass] == 1)
  {
    return 2;
  }

  else
  {
    return -1;
  }
}

- (void)mediaPickerDidCancel:(id)cancel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__WFMediaPickerParameterSummaryEditor_mediaPickerDidCancel___block_invoke;
  v3[3] = &unk_279EDC288;
  v3[4] = self;
  [cancel dismissViewControllerAnimated:1 completion:v3];
}

- (void)mediaPicker:(id)picker didPickMediaItems:(id)items
{
  itemsCopy = items;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__WFMediaPickerParameterSummaryEditor_mediaPicker_didPickMediaItems___block_invoke;
  v8[3] = &unk_279EDBC70;
  v9 = itemsCopy;
  selfCopy = self;
  v7 = itemsCopy;
  [picker dismissViewControllerAnimated:1 completion:v8];
}

void __69__WFMediaPickerParameterSummaryEditor_mediaPicker_didPickMediaItems___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) itemsQuery];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v25 = 0u;
  v1 = [v17 filterPredicates];
  v2 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v23;
    v21 = *MEMORY[0x277CD5940];
    v19 = *MEMORY[0x277CD56C8];
    v18 = *MEMORY[0x277D7CD80];
    v20 = *MEMORY[0x277D7CD90];
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        if (!v7)
        {
          v14 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = v7;
          v7 = 0;
          goto LABEL_13;
        }

        v8 = [v7 property];
        v9 = [v8 isEqualToString:v21];

        v10 = v20;
        if ((v9 & 1) != 0 || ([v7 property], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v19), v11, v10 = v18, v12))
        {
          v13 = objc_alloc(MEMORY[0x277D7C640]);
          v14 = [v7 value];
          v15 = [v13 initWithMediaType:v10 persistentID:v14];

          v4 = v15;
LABEL_13:
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v3)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = 0;
LABEL_18:

  [*(a1 + 40) commitState:v4];
  [*(a1 + 40) completeEditing];
}

- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__WFMediaPickerParameterSummaryEditor_mediaPicker_didPickPlaybackArchive___block_invoke;
  v8[3] = &unk_279EDBC70;
  v9 = archiveCopy;
  selfCopy = self;
  v7 = archiveCopy;
  [picker dismissViewControllerAnimated:1 completion:v8];
}

void __74__WFMediaPickerParameterSummaryEditor_mediaPicker_didPickPlaybackArchive___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) copyWithOptions:8];
  v2 = [v7 displayProperties];
  v3 = [v2 title];

  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v5 = [objc_alloc(MEMORY[0x277D7C638]) initWithMediaItemName:v3 playbackArchiveData:v4];
  v6 = [objc_alloc(MEMORY[0x277D7C640]) initWithValue:v5];
  [*(a1 + 40) commitState:v6];
  [*(a1 + 40) completeEditing];
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__WFMediaPickerParameterSummaryEditor_cancelEditingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279EDC180;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFMediaPickerParameterSummaryEditor;
  v5 = handlerCopy;
  [(WFModuleSummaryEditor *)&v6 cancelEditingWithCompletionHandler:v7];
}

void __74__WFMediaPickerParameterSummaryEditor_cancelEditingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v4 = [*(a1 + 32) presentedViewController];
    [v4 dismissViewControllerAnimated:1 completion:*(a1 + 40)];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  v5 = MEMORY[0x277CD5E18];
  anchorCopy = anchor;
  obj = [[v5 alloc] initWithSupportedTypeIdentifiers:&unk_288386A40 selectionMode:4];
  [obj setShowsCloudItems:1];
  [obj setShowsItemsWithProtectedAssets:1];
  [obj setShowsCatalogContent:1];
  [obj setAllowsPickingMultipleItems:0];
  [obj setDelegate:self];
  [obj setModalPresentationStyle:7];
  popoverPresentationController = [obj popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  sourceView = [anchorCopy sourceView];
  popoverPresentationController2 = [obj popoverPresentationController];
  [popoverPresentationController2 setSourceView:sourceView];

  [anchorCopy sourceRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  popoverPresentationController3 = [obj popoverPresentationController];
  [popoverPresentationController3 setSourceRect:{v11, v13, v15, v17}];

  sourceViewController = [anchorCopy sourceViewController];

  [sourceViewController presentViewController:obj animated:1 completion:0];
  objc_storeWeak(&self->_presentedViewController, obj);
}

@end