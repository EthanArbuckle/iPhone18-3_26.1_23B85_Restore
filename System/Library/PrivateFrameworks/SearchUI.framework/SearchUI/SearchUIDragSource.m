@interface SearchUIDragSource
+ (id)dragSourceForView:(id)a3 dragObject:(id)a4 feedbackDelegate:(id)a5;
- (SearchUIDragSource)initWithView:(id)a3 dragObject:(id)a4 feedbackDelegate:(id)a5;
- (SearchUIFeedbackDelegateInternal)feedbackDelegate;
- (UIView)dragSourceView;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragParametersForPreviewView:(id)a3;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)sendDragFeedback;
@end

@implementation SearchUIDragSource

- (UIView)dragSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSourceView);

  return WeakRetained;
}

+ (id)dragSourceForView:(id)a3 dragObject:(id)a4 feedbackDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x1E69DC988] isEnabledByDefault])
  {
    v11 = [[a1 alloc] initWithView:v8 dragObject:v9 feedbackDelegate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SearchUIDragSource)initWithView:(id)a3 dragObject:(id)a4 feedbackDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SearchUIDragSource;
  v11 = [(SearchUIDragSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(SearchUIDragSource *)v11 setDragSourceView:v8];
    [(SearchUIDragSource *)v12 setDragObject:v9];
    [(SearchUIDragSource *)v12 setFeedbackDelegate:v10];
    v13 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v12];
    v14 = [(SearchUIDragSource *)v12 dragSourceView];
    [v14 addInteraction:v13];
  }

  return v12;
}

- (id)dragParametersForPreviewView:(id)a3
{
  v3 = MEMORY[0x1E69DC9A0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x1E69DC728];
  [v4 bounds];
  v7 = [v6 bezierPathWithRoundedRect:? cornerRadius:?];
  [v5 setVisiblePath:v7];

  v8 = [MEMORY[0x1E69D9108] bestAppearanceForView:v4];

  LODWORD(v4) = [v8 isDark];
  if (v4)
  {
    v9 = [MEMORY[0x1E69DC888] grayColor];
    [v5 setBackgroundColor:v9];
  }

  return v5;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SearchUIDragSource *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    v4 = [(SearchUIDragSource *)self feedbackDelegate];
    if (([v4 dragInteractionEnabled] & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  v9 = [v6 view];
  v10 = [SearchUIUtilities deviceIsAuthenticatedForView:v9];

  if ((v8 & 1) == 0)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_13:
    v17 = 0;
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = [(SearchUIDragSource *)self dragObject];
  v12 = [SearchUICommandHandler handlerForRowModel:v11 environment:0];
  v13 = [v12 itemProvider];
  if (!v13)
  {
    if ([v11 isDraggable] && objc_msgSend(v12, "supportsDrag") && (objc_msgSend(v11, "dragText"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
    {
      v13 = objc_opt_new();
      v16 = [v11 dragText];
      [v13 registerObject:v16 visibility:0];
    }

    else
    {
      v13 = 0;
    }
  }

  v18 = [v13 suggestedName];

  if (!v18)
  {
    v20 = [v11 identifyingResult];
    v21 = [v20 resultBundleId];
    v22 = [SearchUIUtilities bundleIdentifierForApp:8];
    v23 = [v21 isEqualToString:v22];

    if (v23)
    {
      [v11 dragSubtitle];
    }

    else
    {
      [v11 dragTitle];
    }
    v24 = ;
    [v13 setSuggestedName:v24];

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_17:
  v19 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v13];
  v26[0] = v19;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

LABEL_23:
LABEL_24:

  return v17;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = a3;
  v7 = [v6 view];
  v8 = [(SearchUIDragSource *)self dragParametersForPreviewView:v7];

  v9 = objc_alloc(MEMORY[0x1E69DD068]);
  v10 = [v6 view];

  v11 = [v9 initWithView:v10 parameters:v8];

  return v11;
}

- (void)sendDragFeedback
{
  v6 = [(SearchUIDragSource *)self feedbackDelegate];
  v3 = [(SearchUIDragSource *)self dragObject];
  v4 = [v3 identifyingResult];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:v4 triggerEvent:18 destination:0];
    [v6 didEngageResult:v5];
  }
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = a4;
  [(SearchUIDragSource *)self sendDragFeedback];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"SearchUIWillInitiateDragNotification" object:0 userInfo:0];

  v7 = [v5 items];

  v8 = [v7 firstObject];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SearchUIDragSource_dragInteraction_sessionWillBegin___block_invoke;
  v9[3] = &unk_1E85B2AA0;
  v9[4] = self;
  [v8 setPreviewProvider:v9];
}

id __55__SearchUIDragSource_dragInteraction_sessionWillBegin___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dragObject];
  v3 = [SearchUICommandHandler handlerForRowModel:v2 environment:0];

  if ([v3 useSourceViewAsPreviewForDragging])
  {
    v4 = objc_alloc(MEMORY[0x1E69DC998]);
    v5 = [*(a1 + 32) dragSourceView];
    v6 = *(a1 + 32);
    v7 = [v6 dragSourceView];
    v8 = [v6 dragParametersForPreviewView:v7];
    v9 = [v4 initWithView:v5 parameters:v8];

    goto LABEL_9;
  }

  v10 = [*(a1 + 32) dragObject];
  v11 = [v10 dragURL];
  if (!v11)
  {

    goto LABEL_7;
  }

  v12 = v11;
  v13 = [*(a1 + 32) dragObject];
  v14 = [v13 dragURL];
  v15 = [v14 isFileURL];

  if (v15)
  {
LABEL_7:
    v22 = MEMORY[0x1E69DD230];
    v17 = [*(a1 + 32) dragObject];
    v18 = [v17 dragTitle];
    v19 = [*(a1 + 32) dragObject];
    v20 = [v19 dragSubtitle];
    v21 = [v22 viewWithTitle:v18 URLText:v20];
    goto LABEL_8;
  }

  v16 = MEMORY[0x1E69DD230];
  v17 = [*(a1 + 32) dragObject];
  v18 = [v17 dragTitle];
  v19 = [*(a1 + 32) dragObject];
  v20 = [v19 dragURL];
  v21 = [v16 viewWithTitle:v18 URL:v20];
LABEL_8:
  v23 = v21;

  v24 = objc_alloc(MEMORY[0x1E69DC9A0]);
  v25 = MEMORY[0x1E696B098];
  [v23 bounds];
  v26 = [v25 valueWithCGRect:?];
  v37[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v28 = [v24 initWithTextLineRects:v27];

  [v23 layoutBelowIfNeeded];
  [v23 frame];
  v30 = v29;
  v32 = v31;
  [v23 systemLayoutSizeFittingSize:{v33, 0.0}];
  [v23 setFrame:{v30, v32, v34, v35}];
  v9 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:v23 parameters:v28];

LABEL_9:

  return v9;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = [(SearchUIDragSource *)self dragObject:a3];
  v6 = [v5 identifyingResult];
  v7 = [v6 applicationBundleIdentifier];

  if (v7)
  {
    v8 = [v7 hasPrefix:@"com.apple."];
    v9 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v10 = [v9 dragDropSourceManagementStateForBundleID:v7];
    if (v8)
    {

      v11 = [MEMORY[0x1E69ADFB8] sharedConnection];
      v12 = [v11 isOpenInRestrictionInEffect];

      v13 = 0;
      if (v10 && v12)
      {
        v14 = [(SearchUIDragSource *)self dragObject];
        v15 = [v14 identifyingResult];
        v13 = [v15 dataOwnerType];
      }
    }

    else
    {

      if (v10 == 1)
      {
        v13 = 2;
      }

      else
      {
        v13 = v10 == 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (SearchUIFeedbackDelegateInternal)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end