@interface SFCollaborationPerformer
- (SFCollaborationCreationDelegate)creationDelegate;
- (SFCollaborationPerformer)initWithCollaborationItem:(id)a3 activityType:(id)a4 context:(id)a5;
- (SFCollaborationPerformer)initWithCollaborationItem:(id)a3 activityType:(id)a4 deviceScreenScale:(double)a5;
- (SFCollaborationPerformerDelegate)delegate;
- (void)_createCollaborationRequestWithCompletionHandler:(id)a3;
- (void)_createSharingURLForCollaborationRequest:(id)a3;
- (void)_didCreateCollaborationWithResult:(id)a3;
- (void)_handleSubitemInSharedFolder;
- (void)_handleUnsharedFolderWithSharedSubitems;
- (void)_performAfterFolderCheck;
- (void)_performWithAddParticipantsAllowed:(BOOL)a3;
- (void)cancel;
- (void)perform;
@end

@implementation SFCollaborationPerformer

- (SFCollaborationPerformer)initWithCollaborationItem:(id)a3 activityType:(id)a4 deviceScreenScale:(double)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = SFCollaborationPerformer;
  v11 = [(SFCollaborationPerformer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collaborationItem, a3);
    v13 = [v10 copy];
    activityType = v12->_activityType;
    v12->_activityType = v13;

    v12->_deviceScreenScale = a5;
    v12->_requiresParticipants = 0;
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_1A9662000, v15, OS_LOG_TYPE_DEFAULT, "New Collaboration Performer for item:%@ activityType:%@", buf, 0x16u);
    }

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.sharesheet.SFCollaborationPerformer.performQueue", v16);
    performQueue = v12->_performQueue;
    v12->_performQueue = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (SFCollaborationPerformer)initWithCollaborationItem:(id)a3 activityType:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a3;
  [a5 deviceScreenScale];
  v10 = [(SFCollaborationPerformer *)self initWithCollaborationItem:v9 activityType:v8 deviceScreenScale:?];

  return v10;
}

- (void)perform
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = gelato_sharing_log();
  v4 = gelato_sharing_log();
  v5 = os_signpost_id_make_with_pointer(v4, self->_collaborationItem);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PerformCollaboration", "", buf, 2u);
  }

  [(SFCollaborationPerformer *)self setDidCancel:0];
  self->_isRunning = 1;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = self;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "performing Collaboration Performer:%@", buf, 0xCu);
  }

  v7 = [(SFCollaborationPerformer *)self creationDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(buf, self);
    v9 = [(SFCollaborationPerformer *)self creationDelegate];
    v10 = [(SFCollaborationPerformer *)self collaborationItem];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__SFCollaborationPerformer_perform__block_invoke;
    v15[3] = &unk_1E788AE00;
    objc_copyWeak(&v16, buf);
    [v9 addParticipantsAllowedForCollaborationItem:v10 completionHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(SFCollaborationPerformer *)self collaborationItem];
      v13 = [v12 identifier];
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Collaboration performer for item %@ assuming Add Participants Allowed is true because the creation delegate doesn't implement the delegate function", buf, 0xCu);
    }

    [(SFCollaborationPerformer *)self _performWithAddParticipantsAllowed:1];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __35__SFCollaborationPerformer_perform__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __35__SFCollaborationPerformer_perform__block_invoke_cold_1(v5, v6);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SFCollaborationPerformer_perform__block_invoke_18;
  v7[3] = &unk_1E788ADD8;
  objc_copyWeak(&v8, (a1 + 32));
  v9 = a2;
  sf_dispatch_on_main_queue(v7);
  objc_destroyWeak(&v8);
}

void __35__SFCollaborationPerformer_perform__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performWithAddParticipantsAllowed:*(a1 + 40)];
}

- (void)_performWithAddParticipantsAllowed:(BOOL)a3
{
  v3 = a3;
  v52 = *MEMORY[0x1E69E9840];
  v5 = [(SFCollaborationPerformer *)self collaborationItem];
  v6 = [v5 type];

  if (v6 == 2)
  {
    v7 = [(SFCollaborationPerformer *)self collaborationItem];
    v8 = [v7 isURLProviderSupported];

    goto LABEL_16;
  }

  v9 = [(SFCollaborationPerformer *)self collaborationItem];
  v10 = [SFCollaborationUtilities isCollaborationItemPrivateShare:v9];

  v11 = [(SFCollaborationPerformer *)self activityType];
  if ([v11 isEqualToString:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    v12 = [(SFCollaborationPerformer *)self activityType];
    v13 = [v12 isEqualToString:&stru_1F1D30528];

    if ((v13 & 1) == 0)
    {
      v8 = v3 & v10;
      if (v3 && v10)
      {
        goto LABEL_16;
      }

      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"YES";
        if (v10)
        {
          v16 = @"NO";
        }

        else
        {
          v16 = @"YES";
        }

        if (v3)
        {
          v15 = @"NO";
        }

        *buf = 138412546;
        v49 = v16;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "not requesting Participants for Collaboration creation since access type is public (%@) or adding participants is not allowed (%@)", buf, 0x16u);
      }
    }
  }

  v8 = 0;
LABEL_16:
  [(SFCollaborationPerformer *)self setRequiresParticipants:v8];
  v17 = share_sheet_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(SFCollaborationPerformer *)self collaborationItem];
    v19 = [v18 identifier];
    v20 = [(SFCollaborationPerformer *)self requiresParticipants];
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    *buf = 138412546;
    v49 = v19;
    v50 = 2112;
    v51 = v21;
    _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Collaboration performer for item %@ beginning perform with requiresParticipants:%@", buf, 0x16u);
  }

  v22 = [(SFCollaborationPerformer *)self delegate];
  v23 = objc_opt_respondsToSelector();

  v24 = [(SFCollaborationPerformer *)self delegate];
  if (v23)
  {
    [v24 didBeginCreationForCollaborationPerformer:self requiresAddParticipants:{-[SFCollaborationPerformer requiresParticipants](self, "requiresParticipants")}];
  }

  else
  {
    v25 = objc_opt_respondsToSelector();

    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }

    v24 = [(SFCollaborationPerformer *)self delegate];
    [v24 didBeginCreationForCollaborationPerformer:self];
  }

LABEL_25:
  v26 = [(SFCollaborationPerformer *)self collaborationItem];
  v27 = [v26 metadata];
  if (v27)
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = [(SFCollaborationPerformer *)self collaborationItem];
  v28 = [v27 shareOptions];
  if (v28)
  {

    goto LABEL_28;
  }

  v37 = [(SFCollaborationPerformer *)self collaborationItem];
  v38 = [v37 metadataLoadError];
  v39 = v38 == 0;

  if (v39)
  {
LABEL_29:
    v29 = [(SFCollaborationPerformer *)self collaborationItem];
    if (![v29 type])
    {
      v30 = [(SFCollaborationPerformer *)self creationDelegate];
      if (objc_opt_respondsToSelector())
      {
        v31 = [(SFCollaborationPerformer *)self creationDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          objc_initWeak(buf, self);
          v33 = [(SFCollaborationPerformer *)self collaborationItem];
          v34 = [v33 fileURL];

          v35 = [(SFCollaborationPerformer *)self creationDelegate];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __63__SFCollaborationPerformer__performWithAddParticipantsAllowed___block_invoke;
          v46[3] = &unk_1E788AE50;
          objc_copyWeak(&v47, buf);
          [v35 shareStatusForURL:v34 completionHandler:v46];

          objc_destroyWeak(&v47);
          objc_destroyWeak(buf);
          goto LABEL_36;
        }

LABEL_35:
        [(SFCollaborationPerformer *)self _performAfterFolderCheck];
        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

  v40 = share_sheet_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [(SFCollaborationPerformer *)self _performWithAddParticipantsAllowed:v40];
  }

  v41 = [(SFCollaborationPerformer *)self delegate];
  v42 = objc_opt_respondsToSelector();

  if (v42)
  {
    v43 = [(SFCollaborationPerformer *)self delegate];
    v44 = [(SFCollaborationPerformer *)self collaborationItem];
    v45 = [v44 metadataLoadError];
    [v43 didFailCreationForCollaborationPerformer:self error:v45];
  }

  [(SFCollaborationPerformer *)self cancel];
LABEL_36:
  v36 = *MEMORY[0x1E69E9840];
}

void __63__SFCollaborationPerformer__performWithAddParticipantsAllowed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__SFCollaborationPerformer__performWithAddParticipantsAllowed___block_invoke_2;
  v6[3] = &unk_1E788AE28;
  v7[1] = a2;
  objc_copyWeak(v7, (a1 + 32));
  sf_dispatch_on_main_queue(v6);
  objc_destroyWeak(v7);
}

void __63__SFCollaborationPerformer__performWithAddParticipantsAllowed___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (v1 == 5)
  {
    [WeakRetained _handleSubitemInSharedFolder];
  }

  else if (v1 == 6)
  {
    [WeakRetained _handleUnsharedFolderWithSharedSubitems];
  }

  else
  {
    [WeakRetained _performAfterFolderCheck];
  }
}

- (void)_handleUnsharedFolderWithSharedSubitems
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Collaboration item is an unshared folder with shared subitems", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [(SFCollaborationPerformer *)self creationDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke;
  v5[3] = &unk_1E788AEF0;
  objc_copyWeak(&v6, buf);
  [v4 canShareFolderContainingExistingSharedItemsWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Received user permission to override shared subitems", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke_36;
    v6[3] = &unk_1E788AEC8;
    objc_copyWeak(&v7, (a1 + 32));
    [WeakRetained _createCollaborationRequestWithCompletionHandler:v6];

    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 cancel];
  }
}

void __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke_2;
  v5[3] = &unk_1E788AEA0;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = v3;
  v6 = v4;
  sf_dispatch_on_main_queue(v5);

  objc_destroyWeak(&v7);
}

void __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained creationDelegate];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke_3;
  v5[3] = &unk_1E788AE78;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 createSharingURLForCollaborationRequest:v4 completionHandler:v5];

  objc_destroyWeak(&v6);
}

void __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAfterFolderCheck];
}

- (void)_handleSubitemInSharedFolder
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Collaboration item is a file in a shared folder", buf, 2u);
  }

  v4 = [(SFCollaborationPerformer *)self creationDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SFCollaborationPerformer *)self creationDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      objc_initWeak(buf, self);
      v7 = [(SFCollaborationPerformer *)self creationDelegate];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__SFCollaborationPerformer__handleSubitemInSharedFolder__block_invoke;
      v8[3] = &unk_1E788AEF0;
      objc_copyWeak(&v9, buf);
      [v7 canManageShareForDocumentInSharedFolderWithCompletionHandler:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
      return;
    }
  }

  else
  {
  }

  [(SFCollaborationPerformer *)self _performAfterFolderCheck];
}

void __56__SFCollaborationPerformer__handleSubitemInSharedFolder__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    v4 = [WeakRetained creationDelegate];
    [v4 manageShareForDocumentInSharedFolder];
  }

  else
  {
    [WeakRetained cancel];
  }
}

- (void)_createSharingURLForCollaborationRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (![(SFCollaborationPerformer *)self requiresParticipants])
  {
    v7 = [(SFCollaborationPerformer *)self creationDelegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_46;
    v10[3] = &unk_1E788AE78;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    [v7 createSharingURLForCollaborationRequest:v4 completionHandler:v10];
    goto LABEL_5;
  }

  v5 = [(SFCollaborationPerformer *)self creationDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SFCollaborationPerformer *)self creationDelegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke;
    v12[3] = &unk_1E788AE78;
    v8 = &v13;
    objc_copyWeak(&v13, &location);
    [v7 createSharingURLWithParticipantsForCollaborationRequest:v4 completionHandler:v12];
LABEL_5:

    objc_destroyWeak(v8);
    goto LABEL_9;
  }

  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SFCollaborationPerformer _createSharingURLForCollaborationRequest:v9];
  }

  [(SFCollaborationPerformer *)self cancel];
LABEL_9:
  objc_destroyWeak(&location);
}

void __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_2;
  v5[3] = &unk_1E788AF18;
  v4 = v3;
  v6 = v4;
  objc_copyWeak(&v7, (a1 + 32));
  sf_dispatch_on_main_queue(v5);
  objc_destroyWeak(&v7);
}

void __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {

LABEL_4:
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _didCreateCollaborationWithResult:*(a1 + 32)];
    goto LABEL_5;
  }

  v3 = [*(a1 + 32) sharingURL];

  if (v3)
  {
    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];
LABEL_5:
}

void __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_2_47;
  v5[3] = &unk_1E788AEA0;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = v3;
  v6 = v4;
  sf_dispatch_on_main_queue(v5);

  objc_destroyWeak(&v7);
}

void __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_2_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didCreateCollaborationWithResult:*(a1 + 32)];
}

- (void)_performAfterFolderCheck
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__SFCollaborationPerformer__performAfterFolderCheck__block_invoke;
  v3[3] = &unk_1E788AEC8;
  objc_copyWeak(&v4, &location);
  [(SFCollaborationPerformer *)self _createCollaborationRequestWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__SFCollaborationPerformer__performAfterFolderCheck__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SFCollaborationPerformer__performAfterFolderCheck__block_invoke_2;
  v5[3] = &unk_1E788AEA0;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = v3;
  v6 = v4;
  sf_dispatch_on_main_queue(v5);

  objc_destroyWeak(&v7);
}

void __52__SFCollaborationPerformer__performAfterFolderCheck__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createSharingURLForCollaborationRequest:*(a1 + 32)];
}

- (void)cancel
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SFCollaborationPerformer *)self collaborationItem];
    v5 = [v4 identifier];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Cancel Collaboration creation for collaboration item %@", &v8, 0xCu);
  }

  [(SFCollaborationPerformer *)self setDidCancel:1];
  self->_isRunning = 0;
  v6 = [(SFCollaborationPerformer *)self delegate];
  [v6 didCancelCreationForCollaborationPerformer:self];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_createCollaborationRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SFCollaborationPerformer *)self collaborationItem];
  v6 = [(SFCollaborationPerformer *)self activityType];
  [(SFCollaborationPerformer *)self deviceScreenScale];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SFCollaborationPerformer__createCollaborationRequestWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E788AF40;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [SFCollaborationUtilities createCollaborationRequestWithCollaborationItem:v5 activityType:v6 deviceScreenScale:v10 completionHandler:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __77__SFCollaborationPerformer__createCollaborationRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained cancel];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_didCreateCollaborationWithResult:(id)a3
{
  v5 = a3;
  if (![(SFCollaborationPerformer *)self didCancel])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Did create Collaboration", buf, 2u);
    }

    v7 = [v5 sharingURL];

    if (!v7)
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SFCollaborationPerformer *)v5 _didCreateCollaborationWithResult:v8];
      }
    }

    self->_isRunning = 0;
    objc_storeStrong(&self->_cloudSharingResult, a3);
    v9 = [(SFCollaborationPerformer *)self collaborationItem];
    [v9 setCloudSharingResult:v5];

    v10 = [(SFCollaborationPerformer *)self delegate];
    [v10 didFinishCreationForCollaborationPerformer:self];
  }

  v11 = gelato_sharing_log();
  v12 = gelato_sharing_log();
  v13 = os_signpost_id_make_with_pointer(v12, self->_collaborationItem);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_END, v13, "PerformCollaboration", "", v14, 2u);
  }
}

- (SFCollaborationPerformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SFCollaborationCreationDelegate)creationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_creationDelegate);

  return WeakRetained;
}

void __35__SFCollaborationPerformer_perform__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Add Participants Allowed load returned error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_performWithAddParticipantsAllowed:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 collaborationItem];
  v4 = [v3 metadataLoadError];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Collaboration Performer failed because metadata was not loaded: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_didCreateCollaborationWithResult:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "error:%@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end