@interface SFCollaborationItem
- (BOOL)isLoading;
- (BOOL)isPostShare;
- (NSArray)sendCopyItemPlaceholderValues;
- (NSArray)sendCopyItems;
- (NSString)description;
- (SFCollaborationItem)initWithItemProvider:(id)a3 activityItem:(id)a4 placeholderActivityItem:(id)a5 defaultCollaboration:(BOOL)a6;
- (id)_optionsSummary;
- (id)createCollaborationFooterViewModel;
- (id)workQueue;
- (void)_didLoadMetadata:(id)a3;
- (void)_didLoadOptions:(id)a3 ckOptions:(id)a4;
- (void)_didLoadSendCopyRepresentation:(id)a3;
- (void)_loadMetadataIfNeeded;
- (void)_loadOptionsIfNeeded;
- (void)_loadSendCopyRepresentationIfNeeded;
- (void)_startLoading;
- (void)_updateLoadingState;
- (void)registerChangeObserver:(id)a3;
- (void)setCanAddPeople:(id)a3;
- (void)setCloudSharingResult:(id)a3;
- (void)setShareOptions:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
@end

@implementation SFCollaborationItem

- (SFCollaborationItem)initWithItemProvider:(id)a3 activityItem:(id)a4 placeholderActivityItem:(id)a5 defaultCollaboration:(BOOL)a6
{
  v6 = a6;
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v27.receiver = self;
  v27.super_class = SFCollaborationItem;
  v14 = [(SFCollaborationItem *)&v27 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    objc_storeStrong(&v14->_itemProvider, a3);
    objc_storeStrong(&v14->_activityItem, a4);
    objc_storeStrong(&v14->_placeholderActivityItem, a5);
    v17 = objc_alloc_init(SFChangePublisher);
    changePublisher = v14->_changePublisher;
    v14->_changePublisher = v17;

    v14->_defaultCollaboration = v6;
    v19 = [MEMORY[0x1E696AAE8] mainBundle];
    v20 = [v19 bundleIdentifier];
    contentIdentifier = v14->_contentIdentifier;
    v14->_contentIdentifier = v20;

    v22 = share_sheet_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "no";
      v24 = v14->_identifier;
      *buf = 138413571;
      if (v6)
      {
        v23 = "yes";
      }

      v29 = v14;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v11;
      v34 = 2113;
      v35 = v12;
      v36 = 2113;
      v37 = v13;
      v38 = 2080;
      v39 = v23;
      _os_log_impl(&dword_1A9662000, v22, OS_LOG_TYPE_DEFAULT, "%@: identifier:%@ itemProvider:%@ activityItem:%{private}@ placeholderActivityItem:%{private}@ defaultCollaboration:%s", buf, 0x3Eu);
    }

    [(SFCollaborationItem *)v14 _startLoading];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSArray)sendCopyItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SFCollaborationItem *)self sendCopyRepresentation];
  v5 = [(SFCollaborationItem *)self type];
  if (!v5)
  {
    v8 = [(SFCollaborationItem *)self sendCopyRepresentationURL];

    if (!v8)
    {
      v9 = [(SFCollaborationItem *)self activityItem];

      v4 = v9;
    }

    goto LABEL_9;
  }

  if (v5 != 2 && v5 != 1)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    v6 = [(SFCollaborationItem *)self itemProvider];
    v7 = [v6 supportsShareSheetSendCopyRepresentation];

    if (!v7)
    {
      goto LABEL_11;
    }

    v4 = [(SFCollaborationItem *)self itemProvider];
LABEL_9:
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  [v3 addObject:v4];

LABEL_11:
  v10 = [(SFCollaborationItem *)self sendCopyActivityItems];
  [v3 addObjectsFromArray:v10];

  v11 = [v3 copy];

  return v11;
}

- (NSArray)sendCopyItemPlaceholderValues
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SFCollaborationItem *)self sendCopyRepresentation];
  v5 = [(SFCollaborationItem *)self type];
  if (!v5)
  {
    v8 = self;
    v9 = [(SFCollaborationItem *)v8 sendCopyRepresentationURL];

    if (v9)
    {
      [(SFCollaborationItem *)v8 sendCopyRepresentationURL];
    }

    else
    {
      [(SFCollaborationItem *)v8 fileURL];
    }
    v10 = ;

    v4 = v10;
    goto LABEL_11;
  }

  if (v5 != 2 && v5 != 1)
  {
    goto LABEL_11;
  }

  if (!v4)
  {
    v6 = [(SFCollaborationItem *)self itemProvider];
    v7 = [v6 supportsShareSheetSendCopyRepresentation];

    if (!v7)
    {
      goto LABEL_13;
    }

    v4 = [(SFCollaborationItem *)self itemProvider];
LABEL_11:
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  [v3 addObject:v4];

LABEL_13:
  v11 = [(SFCollaborationItem *)self sendCopyActivityItemValues];
  [v3 addObjectsFromArray:v11];

  v12 = [v3 copy];

  return v12;
}

- (id)workQueue
{
  if (workQueue_onceToken != -1)
  {
    [SFCollaborationItem workQueue];
  }

  v3 = workQueue_workQueue;

  return v3;
}

void __32__SFCollaborationItem_workQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.sharing.sfcollaborationitem.work-queue", 0);
  v1 = workQueue_workQueue;
  workQueue_workQueue = v0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = SFCollaborationItem;
  v4 = [(SFCollaborationItem *)&v15 description];
  v5 = [(SFCollaborationItem *)self identifier];
  v6 = [(SFCollaborationItem *)self type];
  v7 = [(SFCollaborationItem *)self itemProvider];
  v8 = [(SFCollaborationItem *)self activityItem];
  v9 = [(SFCollaborationItem *)self placeholderActivityItem];
  v10 = [(SFCollaborationItem *)self options];
  v11 = [(SFCollaborationItem *)self sendCopyRepresentation];
  v12 = [(SFCollaborationItem *)self canAddPeople];
  v13 = [v3 stringWithFormat:@"%@ identifier:%@, type:%ld, itemProvider:%@, activityItem:%@, placeholderActivityItem:%@, options:%@, sendCopyRepresentation:%@, canAddPeople:%@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (void)_startLoading
{
  [(SFCollaborationItem *)self setIsLoadingCanAddPeople:1];
  [(SFCollaborationItem *)self _loadMetadataIfNeeded];
  [(SFCollaborationItem *)self _loadOptionsIfNeeded];

  [(SFCollaborationItem *)self _loadSendCopyRepresentationIfNeeded];
}

- (void)_loadMetadataIfNeeded
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "No metadata to load: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_loadOptionsIfNeeded
{
  v3 = [(SFCollaborationItem *)self options];

  if (!v3)
  {
    [(SFCollaborationItem *)self setIsLoadingOptions:1];
    objc_initWeak(&location, self);
    v4 = [(SFCollaborationItem *)self itemProvider];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke;
    v5[3] = &unk_1E788CDB8;
    objc_copyWeak(&v6, &location);
    [SFCollaborationUtilities loadShareOptionsForItemProvider:v4 completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke_2;
  block[3] = &unk_1E788CD90;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __43__SFCollaborationItem__loadOptionsIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didLoadOptions:*(a1 + 32) ckOptions:*(a1 + 40)];
}

- (void)_loadSendCopyRepresentationIfNeeded
{
  v3 = [(SFCollaborationItem *)self sendCopyRepresentation];
  if (v3)
  {
  }

  else
  {
    v4 = [(SFCollaborationItem *)self itemProvider];
    v5 = [v4 supportsShareSheetSendCopyRepresentation];

    if (v5)
    {
      [(SFCollaborationItem *)self setIsLoadingSendCopyRepresentation:1];
      objc_initWeak(&location, self);
      v6 = [(SFCollaborationItem *)self itemProvider];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke;
      v7[3] = &unk_1E788CDE0;
      objc_copyWeak(&v8, &location);
      [SFCollaborationUtilities loadSendCopyRepresentationIfNeededForItemProvider:v6 completion:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke_2;
  v5[3] = &unk_1E788AEA0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __58__SFCollaborationItem__loadSendCopyRepresentationIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadSendCopyRepresentation:*(a1 + 32)];
}

- (void)_didLoadMetadata:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did load metadata:%@", &v12, 0xCu);
  }

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 defaultShareOptions];
    v8 = [SFCollaborationUtilities descriptionForShareOptions:v7];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "loaded options:%@", &v12, 0xCu);
  }

  [(SFCollaborationItem *)self setIsLoadingMetadata:0];
  if (v4)
  {
    [(SFCollaborationItem *)self setMetadata:v4];
    v9 = [v4 defaultShareOptions];
    [(SFCollaborationItem *)self setShareOptions:v9];

    v10 = [(SFCollaborationItem *)self changePublisher];
    [v10 publishChangeDescriptor:1 forObservable:self];
  }

  [(SFCollaborationItem *)self _updateLoadingState];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_didLoadOptions:(id)a3 ckOptions:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [SFCollaborationUtilities descriptionForShareOptions:v6];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_DEFAULT, "did load options:%@", &v11, 0xCu);
  }

  [(SFCollaborationItem *)self setIsLoadingOptions:0];
  if (v7 && [(SFCollaborationItem *)self type]== 1)
  {
    [(SFCollaborationItem *)self setCkOptions:v7];
  }

  if (v6)
  {
    [(SFCollaborationItem *)self setShareOptions:v6];
  }

  [(SFCollaborationItem *)self _updateLoadingState];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_didLoadSendCopyRepresentation:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did load send copy representation:%@", &v8, 0xCu);
  }

  [(SFCollaborationItem *)self setIsLoadingSendCopyRepresentation:0];
  if (v4)
  {
    [(SFCollaborationItem *)self setSendCopyRepresentation:v4];
    v6 = [(SFCollaborationItem *)self changePublisher];
    [v6 publishChangeDescriptor:8 forObservable:self];
  }

  [(SFCollaborationItem *)self _updateLoadingState];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setCanAddPeople:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 BOOLValue];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "did load can add people:%@", &v11, 0xCu);
    }

    [(SFCollaborationItem *)self setIsLoadingCanAddPeople:0];
    objc_storeStrong(&self->_canAddPeople, a3);
    v9 = [(SFCollaborationItem *)self changePublisher];
    [v9 publishChangeDescriptor:16 forObservable:self];

    [(SFCollaborationItem *)self _updateLoadingState];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateLoadingState
{
  v8 = *MEMORY[0x1E69E9840];
  if (![(SFCollaborationItem *)self isLoading])
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Did finish loading for collaboration item:%@", &v6, 0xCu);
    }

    v4 = [(SFCollaborationItem *)self changePublisher];
    [v4 publishChangeDescriptor:4 forObservable:self];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)isLoading
{
  if ([(SFCollaborationItem *)self isLoadingMetadata]|| [(SFCollaborationItem *)self isLoadingOptions]|| [(SFCollaborationItem *)self isLoadingSendCopyRepresentation])
  {
    return 1;
  }

  return [(SFCollaborationItem *)self isLoadingCanAddPeople];
}

- (BOOL)isPostShare
{
  v3 = [(SFCollaborationItem *)self type];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = [(SFCollaborationItem *)self itemProvider];
      v5 = [SFCollaborationUtilities isPostCKShareItemProvider:v4];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(SFCollaborationItem *)self isShared];
  }
}

- (void)registerChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SFCollaborationItem *)self changePublisher];
  [v5 registerChangeObserver:v4];
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SFCollaborationItem *)self changePublisher];
  [v5 unregisterChangeObserver:v4];
}

- (id)createCollaborationFooterViewModel
{
  v2 = [(SFCollaborationItem *)self _optionsSummary];
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getSLCollaborationFooterViewModelClass_softClass;
    v11 = getSLCollaborationFooterViewModelClass_softClass;
    if (!getSLCollaborationFooterViewModelClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getSLCollaborationFooterViewModelClass_block_invoke;
      v7[3] = &unk_1E788A938;
      v7[4] = &v8;
      __getSLCollaborationFooterViewModelClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithTitle:0 subtitle:0];
    [v5 setOptionsSummary:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_optionsSummary
{
  if (![(SFCollaborationItem *)self _canShowOptions])
  {
    goto LABEL_10;
  }

  if (![(SFCollaborationItem *)self isLoading])
  {
    v5 = [(SFCollaborationItem *)self canAddPeople];
    if (v5)
    {
      v6 = v5;
      v7 = [(SFCollaborationItem *)self canAddPeople];
      v8 = [v7 BOOLValue];

      if (!v8)
      {
        v4 = @"SHARE_OPTIONS_CANNOT_ADD";
        goto LABEL_12;
      }
    }

    v9 = [(SFCollaborationItem *)self shareOptions];
    v10 = [v9 summary];

    if (v10)
    {
      goto LABEL_14;
    }

    v11 = [(SFCollaborationItem *)self options];

    if (v11)
    {
      v4 = @"SHARE_OPTIONS";
      goto LABEL_12;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_14;
  }

  v3 = [(SFCollaborationItem *)self _defaultLoadingOptionsSummary];
  if (!v3)
  {
    v4 = @"PREPARING_SHARE_OPTIONS";
LABEL_12:
    v3 = SFLocalizedStringForKey(v4);
  }

  v10 = v3;
LABEL_14:

  return v10;
}

- (void)setShareOptions:(id)a3
{
  v5 = a3;
  shareOptions = self->_shareOptions;
  if (shareOptions != v5)
  {
    v10 = v5;
    if (shareOptions)
    {
      self->_optionsChanged = 1;
    }

    objc_storeStrong(&self->_shareOptions, a3);
    v7 = [(_SWCollaborationShareOptions *)v10 optionsGroups];
    options = self->_options;
    self->_options = v7;

    v9 = [(SFCollaborationItem *)self changePublisher];
    [v9 publishChangeDescriptor:2 forObservable:self];

    v5 = v10;
  }
}

- (void)setCloudSharingResult:(id)a3
{
  v5 = a3;
  if (self->_cloudSharingResult != v5)
  {
    objc_storeStrong(&self->_cloudSharingResult, a3);
    if ([(SFCollaborationItem *)self type]== 1)
    {
      v6 = [(SFCollaborationCloudSharingResult *)v5 error];
      v15 = 0;
      v7 = [SFCollaborationUtilities isOplockError:v6 updatedShare:&v15];
      v8 = v15;

      if (v7 && v8)
      {
        v9 = share_sheet_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Received updated share from oplock error, updating options", buf, 2u);
        }

        [(SFCollaborationItem *)self setUpdatedShare:v8];
        [(SFCollaborationItem *)self setIsLoadingOptions:1];
        v10 = [(SFCollaborationItem *)self ckOptions];
        v13 = 0;
        v11 = [SFCollaborationUtilities optionsFromCKShare:v8 previousCKOptions:v10 newCKOptions:&v13];
        v12 = v13;
        [(SFCollaborationItem *)self _didLoadOptions:v11 ckOptions:v12];
      }
    }
  }
}

+ (void)collaborationItemForFileURL:(uint64_t)a3 itemProvider:activityItem:defaultCollaboration:managedFileURL:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SFCollaborationItem.m" lineNumber:124 description:{@"url is not a fileURL: %@", a3}];
}

@end