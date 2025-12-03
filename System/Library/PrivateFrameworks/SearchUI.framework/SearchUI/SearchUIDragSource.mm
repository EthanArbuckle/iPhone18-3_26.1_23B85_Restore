@interface SearchUIDragSource
+ (id)dragSourceForView:(id)view dragObject:(id)object feedbackDelegate:(id)delegate;
- (SearchUIDragSource)initWithView:(id)view dragObject:(id)object feedbackDelegate:(id)delegate;
- (SearchUIFeedbackDelegateInternal)feedbackDelegate;
- (UIView)dragSourceView;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragParametersForPreviewView:(id)view;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)sendDragFeedback;
@end

@implementation SearchUIDragSource

- (UIView)dragSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSourceView);

  return WeakRetained;
}

+ (id)dragSourceForView:(id)view dragObject:(id)object feedbackDelegate:(id)delegate
{
  viewCopy = view;
  objectCopy = object;
  delegateCopy = delegate;
  if ([MEMORY[0x1E69DC988] isEnabledByDefault])
  {
    v11 = [[self alloc] initWithView:viewCopy dragObject:objectCopy feedbackDelegate:delegateCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SearchUIDragSource)initWithView:(id)view dragObject:(id)object feedbackDelegate:(id)delegate
{
  viewCopy = view;
  objectCopy = object;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SearchUIDragSource;
  v11 = [(SearchUIDragSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(SearchUIDragSource *)v11 setDragSourceView:viewCopy];
    [(SearchUIDragSource *)v12 setDragObject:objectCopy];
    [(SearchUIDragSource *)v12 setFeedbackDelegate:delegateCopy];
    v13 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v12];
    dragSourceView = [(SearchUIDragSource *)v12 dragSourceView];
    [dragSourceView addInteraction:v13];
  }

  return v12;
}

- (id)dragParametersForPreviewView:(id)view
{
  v3 = MEMORY[0x1E69DC9A0];
  viewCopy = view;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x1E69DC728];
  [viewCopy bounds];
  v7 = [v6 bezierPathWithRoundedRect:? cornerRadius:?];
  [v5 setVisiblePath:v7];

  v8 = [MEMORY[0x1E69D9108] bestAppearanceForView:viewCopy];

  LODWORD(viewCopy) = [v8 isDark];
  if (viewCopy)
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [v5 setBackgroundColor:grayColor];
  }

  return v5;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v26[1] = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  feedbackDelegate = [(SearchUIDragSource *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    feedbackDelegate2 = [(SearchUIDragSource *)self feedbackDelegate];
    if (([feedbackDelegate2 dragInteractionEnabled] & 1) == 0)
    {

      goto LABEL_13;
    }
  }

  view = [interactionCopy view];
  v10 = [SearchUIUtilities deviceIsAuthenticatedForView:view];

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
  dragObject = [(SearchUIDragSource *)self dragObject];
  v12 = [SearchUICommandHandler handlerForRowModel:dragObject environment:0];
  itemProvider = [v12 itemProvider];
  if (!itemProvider)
  {
    if ([dragObject isDraggable] && objc_msgSend(v12, "supportsDrag") && (objc_msgSend(dragObject, "dragText"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
    {
      itemProvider = objc_opt_new();
      dragText = [dragObject dragText];
      [itemProvider registerObject:dragText visibility:0];
    }

    else
    {
      itemProvider = 0;
    }
  }

  suggestedName = [itemProvider suggestedName];

  if (!suggestedName)
  {
    identifyingResult = [dragObject identifyingResult];
    resultBundleId = [identifyingResult resultBundleId];
    v22 = [SearchUIUtilities bundleIdentifierForApp:8];
    v23 = [resultBundleId isEqualToString:v22];

    if (v23)
    {
      [dragObject dragSubtitle];
    }

    else
    {
      [dragObject dragTitle];
    }
    v24 = ;
    [itemProvider setSuggestedName:v24];

    if (itemProvider)
    {
      goto LABEL_17;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  if (!itemProvider)
  {
    goto LABEL_22;
  }

LABEL_17:
  v19 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:itemProvider];
  v26[0] = v19;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

LABEL_23:
LABEL_24:

  return v17;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  v8 = [(SearchUIDragSource *)self dragParametersForPreviewView:view];

  v9 = objc_alloc(MEMORY[0x1E69DD068]);
  view2 = [interactionCopy view];

  v11 = [v9 initWithView:view2 parameters:v8];

  return v11;
}

- (void)sendDragFeedback
{
  feedbackDelegate = [(SearchUIDragSource *)self feedbackDelegate];
  dragObject = [(SearchUIDragSource *)self dragObject];
  identifyingResult = [dragObject identifyingResult];

  if (identifyingResult && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:identifyingResult triggerEvent:18 destination:0];
    [feedbackDelegate didEngageResult:v5];
  }
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  [(SearchUIDragSource *)self sendDragFeedback];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SearchUIWillInitiateDragNotification" object:0 userInfo:0];

  items = [beginCopy items];

  firstObject = [items firstObject];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SearchUIDragSource_dragInteraction_sessionWillBegin___block_invoke;
  v9[3] = &unk_1E85B2AA0;
  v9[4] = self;
  [firstObject setPreviewProvider:v9];
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

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  v5 = [(SearchUIDragSource *)self dragObject:interaction];
  identifyingResult = [v5 identifyingResult];
  applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    v8 = [applicationBundleIdentifier hasPrefix:@"com.apple."];
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v10 = [mEMORY[0x1E69ADFB8] dragDropSourceManagementStateForBundleID:applicationBundleIdentifier];
    if (v8)
    {

      mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
      isOpenInRestrictionInEffect = [mEMORY[0x1E69ADFB8]2 isOpenInRestrictionInEffect];

      dataOwnerType = 0;
      if (v10 && isOpenInRestrictionInEffect)
      {
        dragObject = [(SearchUIDragSource *)self dragObject];
        identifyingResult2 = [dragObject identifyingResult];
        dataOwnerType = [identifyingResult2 dataOwnerType];
      }
    }

    else
    {

      if (v10 == 1)
      {
        dataOwnerType = 2;
      }

      else
      {
        dataOwnerType = v10 == 0;
      }
    }
  }

  else
  {
    dataOwnerType = 0;
  }

  return dataOwnerType;
}

- (SearchUIFeedbackDelegateInternal)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end