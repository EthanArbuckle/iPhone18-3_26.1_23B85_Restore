@interface SFCollaborationPerformer
- (SFCollaborationCreationDelegate)creationDelegate;
- (SFCollaborationPerformer)initWithCollaborationItem:(id)item activityType:(id)type context:(id)context;
- (SFCollaborationPerformer)initWithCollaborationItem:(id)item activityType:(id)type deviceScreenScale:(double)scale;
- (SFCollaborationPerformerDelegate)delegate;
- (void)_createCollaborationRequestWithCompletionHandler:(id)handler;
- (void)_createSharingURLForCollaborationRequest:(id)request;
- (void)_didCreateCollaborationWithResult:(id)result;
- (void)_handleSubitemInSharedFolder;
- (void)_handleUnsharedFolderWithSharedSubitems;
- (void)_performAfterFolderCheck;
- (void)_performWithAddParticipantsAllowed:(BOOL)allowed;
- (void)cancel;
- (void)perform;
@end

@implementation SFCollaborationPerformer

- (SFCollaborationPerformer)initWithCollaborationItem:(id)item activityType:(id)type deviceScreenScale:(double)scale
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  typeCopy = type;
  v21.receiver = self;
  v21.super_class = SFCollaborationPerformer;
  v11 = [(SFCollaborationPerformer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collaborationItem, item);
    v13 = [typeCopy copy];
    activityType = v12->_activityType;
    v12->_activityType = v13;

    v12->_deviceScreenScale = scale;
    v12->_requiresParticipants = 0;
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = itemCopy;
      v24 = 2112;
      v25 = typeCopy;
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

- (SFCollaborationPerformer)initWithCollaborationItem:(id)item activityType:(id)type context:(id)context
{
  typeCopy = type;
  itemCopy = item;
  [context deviceScreenScale];
  v10 = [(SFCollaborationPerformer *)self initWithCollaborationItem:itemCopy activityType:typeCopy deviceScreenScale:?];

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
    selfCopy = self;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "performing Collaboration Performer:%@", buf, 0xCu);
  }

  creationDelegate = [(SFCollaborationPerformer *)self creationDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(buf, self);
    creationDelegate2 = [(SFCollaborationPerformer *)self creationDelegate];
    collaborationItem = [(SFCollaborationPerformer *)self collaborationItem];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__SFCollaborationPerformer_perform__block_invoke;
    v15[3] = &unk_1E788AE00;
    objc_copyWeak(&v16, buf);
    [creationDelegate2 addParticipantsAllowedForCollaborationItem:collaborationItem completionHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      collaborationItem2 = [(SFCollaborationPerformer *)self collaborationItem];
      identifier = [collaborationItem2 identifier];
      *buf = 138412290;
      selfCopy = identifier;
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

- (void)_performWithAddParticipantsAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v52 = *MEMORY[0x1E69E9840];
  collaborationItem = [(SFCollaborationPerformer *)self collaborationItem];
  type = [collaborationItem type];

  if (type == 2)
  {
    collaborationItem2 = [(SFCollaborationPerformer *)self collaborationItem];
    isURLProviderSupported = [collaborationItem2 isURLProviderSupported];

    goto LABEL_16;
  }

  collaborationItem3 = [(SFCollaborationPerformer *)self collaborationItem];
  v10 = [SFCollaborationUtilities isCollaborationItemPrivateShare:collaborationItem3];

  activityType = [(SFCollaborationPerformer *)self activityType];
  if ([activityType isEqualToString:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    activityType2 = [(SFCollaborationPerformer *)self activityType];
    v13 = [activityType2 isEqualToString:&stru_1F1D30528];

    if ((v13 & 1) == 0)
    {
      isURLProviderSupported = allowedCopy & v10;
      if (allowedCopy && v10)
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

        if (allowedCopy)
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

  isURLProviderSupported = 0;
LABEL_16:
  [(SFCollaborationPerformer *)self setRequiresParticipants:isURLProviderSupported];
  v17 = share_sheet_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    collaborationItem4 = [(SFCollaborationPerformer *)self collaborationItem];
    identifier = [collaborationItem4 identifier];
    requiresParticipants = [(SFCollaborationPerformer *)self requiresParticipants];
    v21 = @"NO";
    if (requiresParticipants)
    {
      v21 = @"YES";
    }

    *buf = 138412546;
    v49 = identifier;
    v50 = 2112;
    v51 = v21;
    _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "Collaboration performer for item %@ beginning perform with requiresParticipants:%@", buf, 0x16u);
  }

  delegate = [(SFCollaborationPerformer *)self delegate];
  v23 = objc_opt_respondsToSelector();

  delegate2 = [(SFCollaborationPerformer *)self delegate];
  if (v23)
  {
    [delegate2 didBeginCreationForCollaborationPerformer:self requiresAddParticipants:{-[SFCollaborationPerformer requiresParticipants](self, "requiresParticipants")}];
  }

  else
  {
    v25 = objc_opt_respondsToSelector();

    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }

    delegate2 = [(SFCollaborationPerformer *)self delegate];
    [delegate2 didBeginCreationForCollaborationPerformer:self];
  }

LABEL_25:
  collaborationItem5 = [(SFCollaborationPerformer *)self collaborationItem];
  metadata = [collaborationItem5 metadata];
  if (metadata)
  {
LABEL_28:

    goto LABEL_29;
  }

  metadata = [(SFCollaborationPerformer *)self collaborationItem];
  shareOptions = [metadata shareOptions];
  if (shareOptions)
  {

    goto LABEL_28;
  }

  collaborationItem6 = [(SFCollaborationPerformer *)self collaborationItem];
  metadataLoadError = [collaborationItem6 metadataLoadError];
  v39 = metadataLoadError == 0;

  if (v39)
  {
LABEL_29:
    collaborationItem7 = [(SFCollaborationPerformer *)self collaborationItem];
    if (![collaborationItem7 type])
    {
      creationDelegate = [(SFCollaborationPerformer *)self creationDelegate];
      if (objc_opt_respondsToSelector())
      {
        creationDelegate2 = [(SFCollaborationPerformer *)self creationDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          objc_initWeak(buf, self);
          collaborationItem8 = [(SFCollaborationPerformer *)self collaborationItem];
          fileURL = [collaborationItem8 fileURL];

          creationDelegate3 = [(SFCollaborationPerformer *)self creationDelegate];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __63__SFCollaborationPerformer__performWithAddParticipantsAllowed___block_invoke;
          v46[3] = &unk_1E788AE50;
          objc_copyWeak(&v47, buf);
          [creationDelegate3 shareStatusForURL:fileURL completionHandler:v46];

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

  delegate3 = [(SFCollaborationPerformer *)self delegate];
  v42 = objc_opt_respondsToSelector();

  if (v42)
  {
    delegate4 = [(SFCollaborationPerformer *)self delegate];
    collaborationItem9 = [(SFCollaborationPerformer *)self collaborationItem];
    metadataLoadError2 = [collaborationItem9 metadataLoadError];
    [delegate4 didFailCreationForCollaborationPerformer:self error:metadataLoadError2];
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
  creationDelegate = [(SFCollaborationPerformer *)self creationDelegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SFCollaborationPerformer__handleUnsharedFolderWithSharedSubitems__block_invoke;
  v5[3] = &unk_1E788AEF0;
  objc_copyWeak(&v6, buf);
  [creationDelegate canShareFolderContainingExistingSharedItemsWithCompletionHandler:v5];

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

  creationDelegate = [(SFCollaborationPerformer *)self creationDelegate];
  if (objc_opt_respondsToSelector())
  {
    creationDelegate2 = [(SFCollaborationPerformer *)self creationDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      objc_initWeak(buf, self);
      creationDelegate3 = [(SFCollaborationPerformer *)self creationDelegate];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__SFCollaborationPerformer__handleSubitemInSharedFolder__block_invoke;
      v8[3] = &unk_1E788AEF0;
      objc_copyWeak(&v9, buf);
      [creationDelegate3 canManageShareForDocumentInSharedFolderWithCompletionHandler:v8];

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

- (void)_createSharingURLForCollaborationRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  if (![(SFCollaborationPerformer *)self requiresParticipants])
  {
    creationDelegate = [(SFCollaborationPerformer *)self creationDelegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke_46;
    v10[3] = &unk_1E788AE78;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    [creationDelegate createSharingURLForCollaborationRequest:requestCopy completionHandler:v10];
    goto LABEL_5;
  }

  creationDelegate2 = [(SFCollaborationPerformer *)self creationDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    creationDelegate = [(SFCollaborationPerformer *)self creationDelegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__SFCollaborationPerformer__createSharingURLForCollaborationRequest___block_invoke;
    v12[3] = &unk_1E788AE78;
    v8 = &v13;
    objc_copyWeak(&v13, &location);
    [creationDelegate createSharingURLWithParticipantsForCollaborationRequest:requestCopy completionHandler:v12];
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
    collaborationItem = [(SFCollaborationPerformer *)self collaborationItem];
    identifier = [collaborationItem identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Cancel Collaboration creation for collaboration item %@", &v8, 0xCu);
  }

  [(SFCollaborationPerformer *)self setDidCancel:1];
  self->_isRunning = 0;
  delegate = [(SFCollaborationPerformer *)self delegate];
  [delegate didCancelCreationForCollaborationPerformer:self];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_createCollaborationRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  collaborationItem = [(SFCollaborationPerformer *)self collaborationItem];
  activityType = [(SFCollaborationPerformer *)self activityType];
  [(SFCollaborationPerformer *)self deviceScreenScale];
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SFCollaborationPerformer__createCollaborationRequestWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E788AF40;
  objc_copyWeak(&v12, &location);
  v9 = handlerCopy;
  v11 = v9;
  [SFCollaborationUtilities createCollaborationRequestWithCollaborationItem:collaborationItem activityType:activityType deviceScreenScale:v10 completionHandler:v8];

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

- (void)_didCreateCollaborationWithResult:(id)result
{
  resultCopy = result;
  if (![(SFCollaborationPerformer *)self didCancel])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Did create Collaboration", buf, 2u);
    }

    sharingURL = [resultCopy sharingURL];

    if (!sharingURL)
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SFCollaborationPerformer *)resultCopy _didCreateCollaborationWithResult:v8];
      }
    }

    self->_isRunning = 0;
    objc_storeStrong(&self->_cloudSharingResult, result);
    collaborationItem = [(SFCollaborationPerformer *)self collaborationItem];
    [collaborationItem setCloudSharingResult:resultCopy];

    delegate = [(SFCollaborationPerformer *)self delegate];
    [delegate didFinishCreationForCollaborationPerformer:self];
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