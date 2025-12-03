@interface UIKeyboardMediaController
+ (id)sharedKeyboardMediaController;
- (BOOL)_stickerIsSupportedPayload;
- (BOOL)recentsViewWillBeVisible;
- (BOOL)shouldPrefetchRemoteView;
- (UIKeyboardMediaControllerDelegate)delegate;
- (void)_didInsertMedia;
- (void)_didPresentCard;
- (void)_displayiMessageAppWithID:(id)d;
- (void)_embedRecentlyUsedMediaViewInView:(id)view animated:(BOOL)animated;
- (void)_instantiateCardFromViewService;
- (void)_instantiateViewServiceRecentlyUsedMediaWithCompletionHandler:(id)handler;
- (void)_keyboardDidChangeFrame:(id)frame;
- (void)_presentiMessageApp;
- (void)_setRecentlyUsedMediaViewControllerHostBundleID;
- (void)_tearDownRemoteViews;
- (void)dismissCardAnimated;
- (void)dismissCardIfNeeded;
- (void)draggedStickerToPoint:(CGPoint)point;
- (void)handleStickerSuggestionWithTISticker:(id)sticker;
- (void)pasteImageAtFileHandle:(id)handle;
- (void)prefetchRecentsViewControllerWithCompletion:(id)completion;
- (void)presentCard;
- (void)releaseRecentlyUsedMediaViewIfNeeded;
- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler;
- (void)requestInsertionPointCompletion:(id)completion;
- (void)showRecentlyUsedMediaInView:(id)view;
- (void)stageSticker:(id)sticker;
- (void)stageStickerWithFileHandle:(id)handle url:(id)url accessibilityLabel:(id)label;
- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label;
@end

@implementation UIKeyboardMediaController

- (void)dismissCardIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UIKeyboardMediaController_dismissCardIfNeeded__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__UIKeyboardMediaController_sharedKeyboardMediaController__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_1081;
  _MergedGlobals_1081 = v1;
}

- (void)releaseRecentlyUsedMediaViewIfNeeded
{
  self->_hasRequestedRecentlyUsedMediaViewController = 0;
  recentlyUsedMediaViewController = self->_recentlyUsedMediaViewController;
  if (recentlyUsedMediaViewController)
  {
    [(UIViewController *)recentlyUsedMediaViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_recentlyUsedMediaViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_recentlyUsedMediaViewController removeFromParentViewController];
    v5 = self->_recentlyUsedMediaViewController;
    self->_recentlyUsedMediaViewController = 0;
  }
}

+ (id)sharedKeyboardMediaController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIKeyboardMediaController_sharedKeyboardMediaController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49DC00 != -1)
  {
    dispatch_once(&qword_1ED49DC00, block);
  }

  v2 = _MergedGlobals_1081;

  return v2;
}

- (BOOL)recentsViewWillBeVisible
{
  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    return 0;
  }

  v3 = +[UIKeyboardEmojiPreferences sharedInstance];
  v4 = +[UIKeyboardEmojiCategory categoryForType:](UIKeyboardEmojiCategory, "categoryForType:", [v3 selectedCategoryType]);

  if ([v4 categoryType])
  {
    v2 = 0;
  }

  else
  {
    v5 = +[UIKeyboardEmojiPreferences sharedInstance];
    v6 = [v5 emojiCategoryDefaultsIndex:v4];

    v2 = v6 == 0;
  }

  return v2;
}

- (void)handleStickerSuggestionWithTISticker:(id)sticker
{
  v68 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  array = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  representations = [stickerCopy representations];
  v4 = [representations countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v4)
  {
    v5 = *v59;
    do
    {
      v6 = 0;
      do
      {
        if (*v59 != v5)
        {
          objc_enumerationMutation(representations);
        }

        v7 = *(*(&v58 + 1) + 8 * v6);
        v8 = objc_alloc_init(_UIStickerRepresentation);
        data = [v7 data];
        [(_UIStickerRepresentation *)v8 setData:data];

        v10 = [v7 uti];
        identifier = [v10 identifier];
        [(_UIStickerRepresentation *)v8 setType:identifier];

        role = [v7 role];
        [(_UIStickerRepresentation *)v8 setRole:role];

        [v7 size];
        [(_UIStickerRepresentation *)v8 setSize:?];
        [array addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [representations countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v4);
  }

  v43 = objc_opt_new();
  identifier2 = [stickerCopy identifier];
  uUIDString = [identifier2 UUIDString];
  [v43 setIdentifier:uUIDString];

  [v43 setRepresentations:array];
  name = [stickerCopy name];
  [v43 setName:name];

  externalURI = [stickerCopy externalURI];
  [v43 setExternalURI:externalURI];

  accessibilityLabel = [stickerCopy accessibilityLabel];
  [v43 setAccessibilityLabel:accessibilityLabel];

  metadata = [stickerCopy metadata];
  [v43 setMetadata:metadata];

  searchText = [stickerCopy searchText];
  [v43 setSearchText:searchText];

  accessibilityName = [stickerCopy accessibilityName];
  [v43 setAccessibilityName:accessibilityName];

  attributionInfo = [stickerCopy attributionInfo];
  [v43 setAttributionInfo:attributionInfo];

  [v43 setEffectType:{objc_msgSend(stickerCopy, "effectType")}];
  metadata2 = [stickerCopy metadata];
  [v43 setMetadata:metadata2];

  v62 = 0;
  v63 = &v62;
  v64 = 0x2050000000;
  v23 = qword_1ED49DC08;
  v65 = qword_1ED49DC08;
  if (!qword_1ED49DC08)
  {
    v48 = MEMORY[0x1E69E9820];
    v49 = 3221225472;
    v50 = __getVKCStickerEffectClass_block_invoke;
    v51 = &unk_1E70F2F20;
    v52 = &v62;
    __getVKCStickerEffectClass_block_invoke(&v48);
    v23 = v63[3];
  }

  v24 = v23;
  _Block_object_dispose(&v62, 8);
  v42 = [v23 effectWithType:{objc_msgSend(stickerCopy, "effectType")}];
  if ([v42 type])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [v43 representations];
    v25 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v25)
    {
      v26 = *v55;
      do
      {
        v27 = 0;
        do
        {
          if (*v55 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v54 + 1) + 8 * v27);
          v29 = dispatch_semaphore_create(0);
          data2 = [v28 data];
          ImageFromData = _UIStickerCreateImageFromData(data2);

          v32 = [[UIImage alloc] initWithCGImage:ImageFromData];
          CGImageRelease(ImageFromData);
          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = __Block_byref_object_copy__78;
          v52 = __Block_byref_object_dispose__78;
          v53 = 0;
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __66__UIKeyboardMediaController_handleStickerSuggestionWithTISticker___block_invoke;
          v45[3] = &unk_1E7107420;
          v47 = &v48;
          v33 = v29;
          v46 = v33;
          [v42 applyToImage:v32 completion:v45];
          dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
          cGImage = [*(v49 + 40) CGImage];
          type = [v28 type];
          metadata3 = [v43 metadata];
          v37 = _UIStickerDataFromImageWithMetadata(cGImage, type, metadata3);

          [v28 setData:v37];
          _Block_object_dispose(&v48, 8);

          ++v27;
        }

        while (v25 != v27);
        v25 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v25);
    }
  }

  v38 = [[_UIStickerUsageEvent alloc] initWithSuggestedSticker:v43];
  [(_UIStickerUsageEvent *)v38 setUsageType:0];
  [(_UIStickerUsageEvent *)v38 send];
  v39 = +[UIKeyboardImpl activeInstance];
  [v39 insertSticker:v43];
}

void __66__UIKeyboardMediaController_handleStickerSuggestionWithTISticker___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)shouldPrefetchRemoteView
{
  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled]|| self->_recentlyUsedMediaViewController || self->_hasRequestedRecentlyUsedMediaViewController)
  {
    return 0;
  }

  return [(UIKeyboardMediaController *)self recentsViewWillBeVisible];
}

- (void)_embedRecentlyUsedMediaViewInView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  parentViewController = [(UIViewController *)self->_recentlyUsedMediaViewController parentViewController];

  if (parentViewController)
  {
    view = [(UIViewController *)self->_recentlyUsedMediaViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_recentlyUsedMediaViewController removeFromParentViewController];
  }

  _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
  [_viewControllerForAncestor addChildViewController:self->_recentlyUsedMediaViewController];
  view2 = [(UIViewController *)self->_recentlyUsedMediaViewController view];
  [viewCopy bounds];
  [view2 setFrame:?];
  if (animatedCopy)
  {
    [view2 setAlpha:0.0];
    [viewCopy addSubview:view2];
    [(UIViewController *)self->_recentlyUsedMediaViewController didMoveToParentViewController:_viewControllerForAncestor];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__UIKeyboardMediaController__embedRecentlyUsedMediaViewInView_animated___block_invoke;
    v11[3] = &unk_1E70F3590;
    v12 = view2;
    [UIView animateWithDuration:v11 animations:0.15];
  }

  else
  {
    [viewCopy addSubview:view2];
    [(UIViewController *)self->_recentlyUsedMediaViewController didMoveToParentViewController:_viewControllerForAncestor];
  }
}

- (void)showRecentlyUsedMediaInView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (self->_recentlyUsedMediaViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIKeyboardMediaController *)self _setRecentlyUsedMediaViewControllerHostBundleID];
    }

    [(UIKeyboardMediaController *)self _embedRecentlyUsedMediaViewInView:v5 animated:0];
  }

  else
  {
    objc_storeWeak(&self->_targetViewAwaitingRecents, viewCopy);
    [(UIKeyboardMediaController *)self _instantiateViewServiceRecentlyUsedMediaWithCompletionHandler:0];
  }
}

- (void)prefetchRecentsViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__UIKeyboardMediaController_prefetchRecentsViewControllerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E70FCF18;
  v13 = v14;
  v5 = completionCopy;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  [(UIKeyboardMediaController *)self _instantiateViewServiceRecentlyUsedMediaWithCompletionHandler:v6];
  v7 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__UIKeyboardMediaController_prefetchRecentsViewControllerWithCompletion___block_invoke_2;
  block[3] = &unk_1E70F0F78;
  v10 = v6;
  v8 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v14, 8);
}

uint64_t __73__UIKeyboardMediaController_prefetchRecentsViewControllerWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_instantiateViewServiceRecentlyUsedMediaWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_hasRequestedRecentlyUsedMediaViewController)
  {
    self->_hasRequestedRecentlyUsedMediaViewController = 1;
    kdebug_trace();
    v5 = perfLog();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0x35uLL, "remote-view-fetch", "enableTelemetry=YES", buf, 2u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91__UIKeyboardMediaController__instantiateViewServiceRecentlyUsedMediaWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7107448;
    v8[4] = self;
    v9 = handlerCopy;
    v6 = [UIKeyboardMediaServiceRemoteViewController requestInlineViewControllerWithConnectionHandler:v8];
    recentlyUsedMediaViewControllerRequest = self->_recentlyUsedMediaViewControllerRequest;
    self->_recentlyUsedMediaViewControllerRequest = v6;
  }
}

void __91__UIKeyboardMediaController__instantiateViewServiceRecentlyUsedMediaWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  kdebug_trace();
  v7 = perfLog();
  if (os_signpost_enabled(v7))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v7, OS_SIGNPOST_INTERVAL_END, 0x35uLL, "remote-view-fetch", "enableTelemetry=YES", v14, 2u);
  }

  if (v6 && !a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setDelegate:*(a1 + 32)];
      [*(a1 + 32) _setRecentlyUsedMediaViewControllerHostBundleID];
    }

    objc_storeStrong((*(a1 + 32) + 24), a2);
    *(*(a1 + 32) + 48) = 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));

    if (WeakRetained)
    {
      v9 = *(a1 + 32);
      v10 = objc_loadWeakRetained(v9 + 5);
      [v9 _embedRecentlyUsedMediaViewInView:v10 animated:1];

      objc_storeWeak((*(a1 + 32) + 40), 0);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))();
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    *(v12 + 32) = 0;
  }
}

- (void)_setRecentlyUsedMediaViewControllerHostBundleID
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = +[UIKeyboard keyboardBundleIdentifier];
  }

  else
  {
    v3 = &stru_1EFB14550;
  }

  v4 = v3;
  [(UIViewController *)self->_recentlyUsedMediaViewController setHostBundleID:v3];
}

void __48__UIKeyboardMediaController_dismissCardIfNeeded__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 8) setDelegate:0];
    }

    [*(*(a1 + 32) + 8) willMoveToParentViewController:0];
    v2 = [*(*(a1 + 32) + 8) view];
    [v2 removeFromSuperview];

    [*(*(a1 + 32) + 8) removeFromParentViewController];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    v5 = [*(a1 + 32) delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 didDismissCardForKeyboardMediaController:*(a1 + 32)];
    }
  }
}

- (void)_keyboardDidChangeFrame:(id)frame
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    serviceViewControllerProxy = [(UIViewController *)self->_remoteCardViewController serviceViewControllerProxy];
    if (objc_opt_respondsToSelector())
    {
      v4 = +[UIKeyboard activeKeyboard];
      +[UIKeyboard sizeForInterfaceOrientation:](UIKeyboard, "sizeForInterfaceOrientation:", [v4 interfaceOrientation]);
      v6 = v5;

      [serviceViewControllerProxy updateCompactCardHeight:v6];
    }
  }
}

- (void)_displayiMessageAppWithID:(id)d
{
  v13[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    inputSystemSourceSession = [v4 inputSystemSourceSession];

    v12 = *MEMORY[0x1E69D9878];
    v13[0] = dCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v6 mutableCopy];
    textOperations = [inputSystemSourceSession textOperations];
    keyboardOutput = [textOperations keyboardOutput];
    [keyboardOutput setCustomInfo:v7];

    [inputSystemSourceSession flushOperations];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__UIKeyboardMediaController__displayiMessageAppWithID___block_invoke;
    v10[3] = &unk_1E70F3590;
    v11 = dCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
    inputSystemSourceSession = v11;
  }
}

void __55__UIKeyboardMediaController__displayiMessageAppWithID___block_invoke(uint64_t a1)
{
  v3 = +[UITextInputPayloadController sharedInstance];
  v2 = [v3 payloadDelegate];
  [v2 handlePayload:0 withPayloadId:*(a1 + 32)];
}

- (void)_tearDownRemoteViews
{
  v3 = self->_viewServiceTerminationCount + 1;
  self->_viewServiceTerminationCount = v3;
  v4 = v3 <= 2 && [UIApp applicationState] == 0;
  self->_shouldRetryFetchingRecents = v4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 didTearDownRecentsViewForKeyboardMediaController:self];
  }

  if (self->_shouldRetryFetchingRecents)
  {
    [(UIKeyboardMediaController *)self prefetchRecentsViewControllerWithCompletion:0];
  }

  [(UIKeyboardMediaController *)self releaseRecentlyUsedMediaViewIfNeeded];

  [(UIKeyboardMediaController *)self dismissCardIfNeeded];
}

- (void)_presentiMessageApp
{
  if (_os_feature_enabled_impl())
  {
    v3 = @"com.apple.messages.stickers";
  }

  else
  {
    v3 = @"com.apple.messages.animoji.stickers";
  }

  [(UIKeyboardMediaController *)self _displayiMessageAppWithID:v3];

  [(UIKeyboardMediaController *)self _didPresentCard];
}

- (void)presentCard
{
  if (!self->_remoteCardViewControllerRequest)
  {
    parentViewController = [(UIViewController *)self->_remoteCardViewController parentViewController];

    if (!parentViewController)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_dismissCardAnimated name:@"UIKeyboardPrivateInteractiveDismissalDidBeginNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardDidChangeFrameNotification" object:0];

      v11 = +[UIKeyboard keyboardBundleIdentifier];
      if ([v11 isEqualToString:@"com.apple.MobileSMS"] && (+[UITextInputPayloadController sharedInstance](UITextInputPayloadController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "supportsStickerTapbackPayload"), v6, (v7 & 1) == 0))
      {
        [(UIKeyboardMediaController *)self _presentiMessageApp];
      }

      else if (_os_feature_enabled_impl())
      {
        v8 = +[UIKeyboard isKeyboardProcess];
        v9 = +[UIKeyboardImpl activeInstance];
        v10 = v9;
        if (v8)
        {
          [v9 forwardStickerEvent_presentCard];
        }

        else
        {
          [v9 handleStickerEvent_presentCard];
        }
      }

      else
      {
        [(UIKeyboardMediaController *)self _instantiateCardFromViewService];
      }
    }
  }
}

- (void)dismissCardAnimated
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardPrivateInteractiveDismissalDidBeginNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"UIKeyboardDidChangeFrameNotification" object:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    serviceViewControllerProxy = [(UIViewController *)self->_remoteCardViewController serviceViewControllerProxy];
    if (objc_opt_respondsToSelector())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__UIKeyboardMediaController_dismissCardAnimated__block_invoke;
      v6[3] = &unk_1E70F3590;
      v6[4] = self;
      [serviceViewControllerProxy animateCardHiddenWithCompletion:v6];
    }
  }
}

- (void)_instantiateCardFromViewService
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UIKeyboardMediaController__instantiateCardFromViewService__block_invoke;
  v5[3] = &unk_1E7107470;
  v5[4] = self;
  v3 = [UIKeyboardMediaServiceRemoteViewController requestCardViewControllerWithConnectionHandler:v5];
  remoteCardViewControllerRequest = self->_remoteCardViewControllerRequest;
  self->_remoteCardViewControllerRequest = v3;
}

void __60__UIKeyboardMediaController__instantiateCardFromViewService__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!a3)
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setDelegate:*(a1 + 32)];
      v7 = [v6 serviceViewControllerProxy];
      if (objc_opt_respondsToSelector())
      {
        v8 = +[UIKeyboard activeKeyboard];
        +[UIKeyboard sizeForInterfaceOrientation:](UIKeyboard, "sizeForInterfaceOrientation:", [v8 interfaceOrientation]);
        v10 = v9;

        [v7 updateCompactCardHeight:v10];
      }
    }

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v31 = [v11 keyboardWindow];

    v30 = [v31 rootViewController];
    [v30 addChildViewController:*(*(a1 + 32) + 8)];
    v12 = [v30 view];
    v13 = [v6 view];
    [v12 addSubview:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x1E69977A0];
    v29 = [v13 topAnchor];
    v28 = [v12 topAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v32[0] = v27;
    v26 = [v13 leadingAnchor];
    v25 = [v12 leadingAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v32[1] = v23;
    v22 = [v13 bottomAnchor];
    v14 = [v12 bottomAnchor];
    v15 = [v22 constraintEqualToAnchor:v14];
    v32[2] = v15;
    v16 = [v13 trailingAnchor];
    v17 = [v12 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v32[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v24 activateConstraints:v19];

    [*(*(a1 + 32) + 8) didMoveToParentViewController:v30];
    v20 = *(a1 + 32);
    v21 = *(v20 + 16);
    *(v20 + 16) = 0;

    [*(a1 + 32) _didPresentCard];
  }
}

- (void)_didPresentCard
{
  delegate = [(UIKeyboardMediaController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UIKeyboardMediaController *)self delegate];
    [delegate2 didPresentCardForKeyboardMediaController:self];
  }
}

- (void)pasteImageAtFileHandle:(id)handle
{
  handleCopy = handle;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = handleCopy;
  selfCopy = self;
  v5 = handleCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputDelegateManager];
  v4 = [v3 delegateRespectingForwardingDelegate:0];

  if (([v4 __isKindOfUIResponder] & 1) == 0)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    v6 = [v5 delegateAsResponder];

    v4 = v6;
  }

  v7 = [v4 _responderForEditing];

  v8 = [*(a1 + 32) readDataToEndOfFile];
  v9 = [[UIImage alloc] _initWithData:v8 preserveScale:1];
  v10 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  [v10 registerObject:v9 visibility:3];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke_2;
  v21[3] = &unk_1E70F6AD0;
  v11 = v8;
  v22 = v11;
  [v10 registerDataRepresentationForTypeIdentifier:@"com.apple.png-sticker" visibility:0 loadHandler:v21];
  v12 = +[UIPasteboard generalPasteboard];
  v23[0] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.5];
  [v12 _pinItemProviders:v13 expirationDate:v14];

  v15 = [v7 targetForAction:sel_paste_ withSender:0];
  v16 = v15;
  if (v15)
  {
    if ([v15 conformsToProtocol:&unk_1F016C810])
    {
      v17 = v16;
      if (objc_opt_respondsToSelector())
      {
        [v17 pasteWithCompletionHandler:&__block_literal_global_208];
      }

      goto LABEL_15;
    }

    if ([v16 conformsToProtocol:&unk_1F016C7B0])
    {
      v19 = &__block_literal_global_650;
    }

    else
    {
      if (![v16 conformsToProtocol:&unk_1F016CC30])
      {
        [v16 paste:0];
        v20 = dispatch_time(0, 500000000);
        dispatch_after(v20, MEMORY[0x1E69E96A0], &__block_literal_global_677_0);
        goto LABEL_15;
      }

      v19 = &__block_literal_global_675;
    }

    [v16 pasteWithCompletionHandler:v19];
LABEL_15:
    [*(a1 + 40) _didInsertMedia];
    goto LABEL_16;
  }

  v18 = +[UIPasteboard generalPasteboard];
  [v18 _clearPinnedItemProviders];

LABEL_16:
}

void __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke_3()
{
  v0 = +[UIPasteboard generalPasteboard];
  [v0 _clearPinnedItemProviders];
}

void __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke_4()
{
  v0 = +[UIPasteboard generalPasteboard];
  [v0 _clearPinnedItemProviders];
}

void __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke_5()
{
  v0 = +[UIPasteboard generalPasteboard];
  [v0 _clearPinnedItemProviders];
}

void __52__UIKeyboardMediaController_pasteImageAtFileHandle___block_invoke_6()
{
  v0 = +[UIPasteboard generalPasteboard];
  [v0 _clearPinnedItemProviders];
}

- (void)stageStickerWithFileHandle:(id)handle url:(id)url accessibilityLabel:(id)label
{
  handleCopy = handle;
  urlCopy = url;
  labelCopy = label;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__UIKeyboardMediaController_stageStickerWithFileHandle_url_accessibilityLabel___block_invoke;
  v14[3] = &unk_1E70F6B40;
  v15 = handleCopy;
  v16 = urlCopy;
  v17 = labelCopy;
  selfCopy = self;
  v11 = labelCopy;
  v12 = urlCopy;
  v13 = handleCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __79__UIKeyboardMediaController_stageStickerWithFileHandle_url_accessibilityLabel___block_invoke(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard isInputSystemUI])
  {
    v2 = +[UIKeyboardImpl activeInstance];
    v3 = [v2 inputDelegateManager];
    v4 = [v3 inputSystemSourceSession];

    if (!v4)
    {
LABEL_7:
      [*(a1 + 56) _didInsertMedia];

      return;
    }

    v5 = [v4 textOperations];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v16[0] = @"url";
    v16[1] = @"accessibilityLabel";
    v8 = *(a1 + 48);
    v17[0] = v6;
    v17[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    [v5 insertImageWithFileHandle:v7 typeIdentifier:@"com.apple.png-sticker" imageUserInfo:v9];

    [v4 flushOperations];
LABEL_6:

    goto LABEL_7;
  }

  if ([*(a1 + 56) _stickerIsSupportedPayload])
  {
    v14[0] = @"url";
    v14[1] = @"accessibilityLabel";
    v10 = *(a1 + 48);
    v15[0] = *(a1 + 40);
    v15[1] = v10;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v5 = +[UITextInputPayloadController sharedInstance];
    v11 = [v5 payloadDelegate];
    [v11 handlePayload:v4 withPayloadId:@"com.apple.messages.stageSticker"];

    goto LABEL_6;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 32);

  [v12 pasteImageAtFileHandle:v13];
}

- (void)stageSticker:(id)sticker
{
  v10 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v5 = _UIKBMediaLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [stickerCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "UIKeyboardMediaController: Staging sticker with identifier %@", &v8, 0xCu);
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 insertSticker:stickerCopy];

  [(UIKeyboardMediaController *)self _didInsertMedia];
}

- (void)stageStickerWithIdentifier:(id)identifier representations:(id)representations name:(id)name externalURI:(id)i accessibilityLabel:(id)label
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  labelCopy = label;
  iCopy = i;
  nameCopy = name;
  representationsCopy = representations;
  v17 = _UIKBMediaLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = identifierCopy;
    _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "UIKeyboardMediaController: Staging sticker using old protocol with identifier %@", &v20, 0xCu);
  }

  v18 = objc_opt_new();
  [v18 setIdentifier:identifierCopy];
  [v18 setRepresentations:representationsCopy];

  [v18 setName:nameCopy];
  [v18 setExternalURI:iCopy];

  [v18 setAccessibilityLabel:labelCopy];
  v19 = +[UIKeyboardImpl activeInstance];
  [v19 insertSticker:v18];

  [(UIKeyboardMediaController *)self _didInsertMedia];
}

- (void)_didInsertMedia
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 didInsertMediaForKeyboardMediaController:self];
  }
}

- (void)remoteHandlesRecentsStickerDonationWithCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    handlerCopy[2](handlerCopy, [(UIKeyboardMediaController *)self _stickerIsSupportedPayload]^ 1);
  }
}

- (BOOL)_stickerIsSupportedPayload
{
  v2 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v2 inputDelegateManager];
  keyboardStateDelegate = [inputDelegateManager keyboardStateDelegate];
  keyboardState = [keyboardStateDelegate keyboardState];
  supportedPayloadIds = [keyboardState supportedPayloadIds];

  LOBYTE(v2) = [supportedPayloadIds containsObject:@"com.apple.messages.stageSticker"];
  return v2;
}

- (void)requestInsertionPointCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__UIKeyboardMediaController_requestInsertionPointCompletion___block_invoke;
    v6[3] = &unk_1E70F37C0;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __61__UIKeyboardMediaController_requestInsertionPointCompletion___block_invoke(uint64_t a1)
{
  v2 = +[UIWindow _applicationKeyWindow];
  v22 = [v2 firstResponder];

  if ([v22 conformsToProtocol:&unk_1EFE8B2D0])
  {
    v3 = v22;
    v4 = *(*(a1 + 32) + 64);
    if (v4)
    {
      [v4 position];
      v5 = [v3 closestPositionToPoint:?];
      v6 = [v3 textRangeFromPosition:v5 toPosition:v5];
      [v3 setSelectedTextRange:v6];
      [*(*(a1 + 32) + 64) remove];
      v7 = *(a1 + 32);
      v8 = *(v7 + 64);
      *(v7 + 64) = 0;
    }

    v9 = [v3 selectedTextRange];
    v10 = [v3 positionWithinRange:v9 farthestInDirection:5];
    [v3 caretRectForPosition:v10];
    v13 = v12 + v11 * 0.5;
    v16 = v15 + v14 * 0.5;
    v17 = [v3 textInputView];
    [v17 convertPoint:0 toView:{v13, v16}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = *MEMORY[0x1E695EFF8];
    v21 = *(MEMORY[0x1E695EFF8] + 8);
  }

  (*(*(a1 + 40) + 16))(v19, v21);
}

- (void)draggedStickerToPoint:(CGPoint)point
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKeyboardMediaController_draggedStickerToPoint___block_invoke;
  block[3] = &unk_1E70F6848;
  pointCopy = point;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__UIKeyboardMediaController_draggedStickerToPoint___block_invoke(uint64_t a1)
{
  v2 = +[UIWindow _applicationKeyWindow];
  v15 = [v2 firstResponder];

  if ([v15 conformsToProtocol:&unk_1EFE8B2D0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v15;
      v4 = [v3 textInputView];
      [v4 convertPoint:0 fromView:{*(a1 + 40), *(a1 + 48)}];
      v6 = v5;
      v8 = v7;

      v9 = [v3 closestPositionToPoint:{v6, v8 + -35.0}];
      v10 = [v3 textRangeFromPosition:v9 toPosition:v9];
      v11 = *(*(a1 + 32) + 64);
      if (v11)
      {
        [v11 updateToRange:v10 animations:0 completion:0 animated:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(*(a1 + 32) + 64) frame];
          v18 = CGRectInset(v17, -24.0, -24.0);
          [v3 scrollRectToVisible:1 animated:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
        }
      }

      else
      {
        [v3 setSelectedTextRange:0];
        v12 = [[_UITextDragCaretView alloc] initWithTextInputView:v3];
        v13 = *(a1 + 32);
        v14 = *(v13 + 64);
        *(v13 + 64) = v12;

        [*(*(a1 + 32) + 64) insertAtRange:v10 animations:0 completion:0 animated:1];
      }
    }
  }
}

- (UIKeyboardMediaControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end