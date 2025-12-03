@interface UITextPasteController
+ (id)combineAttributedStrings:(id)strings addingSeparation:(BOOL)separation;
- (BOOL)_pasteDelegateHandlesPasting;
- (BOOL)shouldMatchStyleForItem:(id)item;
- (UITextPasteConfigurationSupporting_Internal)supportingView;
- (UITextPasteController)initWithSupportingView:(id)view;
- (id)_clampRange:(id)range;
- (id)_combineItemAttributedStrings:(id)strings forRange:(id)range;
- (id)beginDroppingItems:(id)items toSelectedRange:(id)range progressSupport:(id)support animated:(BOOL)animated delegate:(id)delegate;
- (id)beginPastingItems:(id)items toRange:(id)range delegate:(id)delegate matchesTextStyles:(BOOL)styles;
- (void)_executePasteForSession:(id)session;
- (void)_performPasteOfAttributedString:(id)string toRange:(id)range forSession:(id)session completion:(id)completion;
- (void)_restorePasteResultForSession:(id)session;
- (void)_transformTextPasteItem:(id)item;
- (void)coordinator:(id)coordinator endPastingItems:(id)items;
@end

@implementation UITextPasteController

- (UITextPasteController)initWithSupportingView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = UITextPasteController;
  v5 = [(UITextPasteController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_supportingView, viewCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    sessions = v6->_sessions;
    v6->_sessions = strongToStrongObjectsMapTable;
  }

  return v6;
}

- (id)beginDroppingItems:(id)items toSelectedRange:(id)range progressSupport:(id)support animated:(BOOL)animated delegate:(id)delegate
{
  animatedCopy = animated;
  v61 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  rangeCopy = range;
  supportCopy = support;
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  _inputController = [WeakRetained _inputController];
  typingAttributes = [_inputController typingAttributes];
  v19 = [typingAttributes copy];
  v20 = v19;
  v21 = MEMORY[0x1E695E0F8];
  if (v19)
  {
    v21 = v19;
  }

  v50 = v21;

  v22 = [[UITextPasteCoordinator alloc] initWithDelegate:self];
  v23 = objc_opt_new();
  [v23 setController:self];
  [v23 setCoordinator:v22];
  [v23 setRange:rangeCopy];
  [v23 setProgressSupport:supportCopy];
  [v23 setDelegate:delegateCopy];
  v48 = v23;
  [(NSMapTable *)self->_sessions setObject:v23 forKey:v22];
  v24 = objc_loadWeakRetained(&self->_supportingView);
  objc_opt_class();
  v46 = supportCopy;
  v47 = rangeCopy;
  v45 = delegateCopy;
  v44 = animatedCopy;
  if (objc_opt_respondsToSelector())
  {
    v25 = objc_loadWeakRetained(&self->_supportingView);
    _textPasteItemClass = [objc_opt_class() _textPasteItemClass];
  }

  else
  {
    _textPasteItemClass = objc_opt_class();
  }

  v27 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = itemsCopy;
  v28 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v56;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v55 + 1) + 8 * i);
        v33 = [[_textPasteItemClass alloc] initWithTextPasteCoordinator:v22];
        itemProvider = [v32 itemProvider];
        [v33 setItemProvider:itemProvider];

        localObject = [v32 localObject];
        [v33 setLocalObject:localObject];

        [v33 setDefaultAttributes:v50];
        [v33 setForcesDefaultAttributes:{-[UITextPasteController shouldMatchStyleForItem:](self, "shouldMatchStyleForItem:", v33)}];
        v36 = objc_loadWeakRetained(&self->_supportingView);
        _implicitPasteConfigurationClasses = [v36 _implicitPasteConfigurationClasses];
        [v33 setSupportedPasteConfigurationClasses:_implicitPasteConfigurationClasses];

        [(UITextPasteCoordinator *)v22 addItem:v33];
        [v27 addObject:v33];
      }

      v29 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v29);
  }

  [v48 setOriginalItems:v27];
  if (v44)
  {
    [v48 animationStarted];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = v27;
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v52;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(UITextPasteController *)self _transformTextPasteItem:*(*(&v51 + 1) + 8 * j)];
      }

      v40 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v40);
  }

  return v48;
}

- (BOOL)shouldMatchStyleForItem:(id)item
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  itemProvider = [item itemProvider];
  registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];

  v5 = [registeredTypeIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:@"com.apple.sticker"])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [registeredTypeIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)beginPastingItems:(id)items toRange:(id)range delegate:(id)delegate matchesTextStyles:(BOOL)styles
{
  stylesCopy = styles;
  v59 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  rangeCopy = range;
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  _inputController = [WeakRetained _inputController];
  typingAttributes = [_inputController typingAttributes];
  v15 = [typingAttributes copy];
  v16 = v15;
  v17 = MEMORY[0x1E695E0F8];
  if (v15)
  {
    v17 = v15;
  }

  v47 = v17;

  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = objc_loadWeakRetained(&self->_supportingView);
  v19 = [UITextInputController _shouldUseStandardTextScaling:v18];

  if (v19)
  {
    [v48 setObject:&unk_1EFE336B8 forKey:*off_1E70EC9E0];
  }

  v20 = [[UITextPasteCoordinator alloc] initWithDelegate:self];
  v21 = objc_opt_new();
  [v21 setController:self];
  [v21 setCoordinator:v20];
  [v21 setRange:rangeCopy];
  [v21 setProgressSupport:0];
  [v21 setDelegate:delegateCopy];
  [(NSMapTable *)self->_sessions setObject:v21 forKey:v20];
  v46 = objc_opt_new();
  v22 = objc_loadWeakRetained(&self->_supportingView);
  objc_opt_class();
  v41 = delegateCopy;
  v42 = rangeCopy;
  if (objc_opt_respondsToSelector())
  {
    v23 = objc_loadWeakRetained(&self->_supportingView);
    _textPasteItemClass = [objc_opt_class() _textPasteItemClass];
  }

  else
  {
    _textPasteItemClass = objc_opt_class();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = itemsCopy;
  v24 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    v27 = *off_1E70EC8E8;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v53 + 1) + 8 * i);
        v30 = [[_textPasteItemClass alloc] initWithTextPasteCoordinator:v20];
        [v30 setItemProvider:v29];
        [v30 setDefaultAttributes:v47];
        v31 = objc_loadWeakRetained(&self->_supportingView);
        [v31 _implicitPasteConfigurationClasses];
        v33 = v32 = self;
        [v30 setSupportedPasteConfigurationClasses:v33];

        self = v32;
        [v30 setForcesDefaultAttributes:stylesCopy];
        [v48 setObject:v47 forKey:v27];
        [v30 setDocumentOptions:v48];
        [(UITextPasteCoordinator *)v20 addItem:v30];
        [v46 addObject:v30];
      }

      v25 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v25);
  }

  v34 = v21;
  [v21 setOriginalItems:v46];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = v46;
  v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v50;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(UITextPasteController *)self _transformTextPasteItem:*(*(&v49 + 1) + 8 * j)];
      }

      v37 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v37);
  }

  return v34;
}

+ (id)combineAttributedStrings:(id)strings addingSeparation:(BOOL)separation
{
  separationCopy = separation;
  v25 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  if ([stringsCopy count] < 2)
  {
    if ([stringsCopy count] == 1)
    {
      firstObject = [stringsCopy firstObject];
    }

    else
    {
      firstObject = objc_opt_new();
    }

    v16 = firstObject;
  }

  else
  {
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = stringsCopy;
    v7 = stringsCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if (separationCopy && [v6 length])
          {
            v13 = objc_alloc(MEMORY[0x1E696AAB0]);
            v14 = [v6 attributesAtIndex:objc_msgSend(v6 effectiveRange:{"length") - 1, 0}];
            v15 = [v13 initWithString:@" " attributes:v14];

            [v6 appendAttributedString:v15];
          }

          [v6 appendAttributedString:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v16 = [v6 copy];
    stringsCopy = v19;
  }

  return v16;
}

- (void)coordinator:(id)coordinator endPastingItems:(id)items
{
  coordinatorCopy = coordinator;
  itemsCopy = items;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__209;
  v20 = __Block_byref_object_dispose__209;
  v21 = 0;
  v8 = self->_sessions;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_sessions objectForKey:coordinatorCopy];
  range = [v9 range];
  v11 = v17[5];
  v17[5] = range;

  objc_sync_exit(v8);
  if (v17[5])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__UITextPasteController_coordinator_endPastingItems___block_invoke;
    v12[3] = &unk_1E7103C20;
    v15 = &v16;
    v12[4] = self;
    v13 = itemsCopy;
    v14 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  _Block_object_dispose(&v16, 8);
}

void __53__UITextPasteController_coordinator_endPastingItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clampRange:*(*(*(a1 + 56) + 8) + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) _combineItemAttributedStrings:*(a1 + 40) forRange:*(*(*(a1 + 56) + 8) + 40)];
  if (v5)
  {
    v6 = v5;
    [*(a1 + 48) setPasteResult:v5];
    [*(a1 + 32) _executePasteForSession:*(a1 + 48)];
    v5 = v6;
  }
}

- (void)_executePasteForSession:(id)session
{
  sessionCopy = session;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("TextPasteCoordinator", &_MergedGlobals_1329);
  v6 = *(CategoryCachedImpl + 8);
  v7 = os_signpost_id_generate(*(CategoryCachedImpl + 8));
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ExecutePasteForSession", "", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__209;
  v22 = __Block_byref_object_dispose__209;
  range = [sessionCopy range];
  if (*(v19 + 5) && ([sessionCopy pasteResult], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__UITextPasteController__executePasteForSession___block_invoke;
    block[3] = &unk_1E7125BC0;
    v13 = sessionCopy;
    selfCopy = self;
    v15 = v8;
    v16 = buf;
    v17 = v7;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("TextPasteCoordinator", &qword_1ED4A22D8) + 8);
    v9 = v10;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_END, v7, "ExecutePasteForSession", "", v11, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __49__UITextPasteController__executePasteForSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 textPasteSessionWillBeginPasting:*(a1 + 32)];
  }

  v3 = [*(a1 + 40) _clampRange:*(*(*(a1 + 56) + 8) + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 48);
  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__UITextPasteController__executePasteForSession___block_invoke_2;
  v13[3] = &unk_1E7125B98;
  v14 = v2;
  v10 = v8;
  v11 = *(a1 + 40);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 64);
  v12 = v2;
  [v9 _performPasteOfAttributedString:v6 toRange:v7 forSession:v10 completion:v13];
}

void __49__UITextPasteController__executePasteForSession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) textPasteSessionDidEndPasting:*(a1 + 40)];
  }

  if (v3 && [*(a1 + 40) isAnimating])
  {
    if (objc_opt_respondsToSelector())
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
      [WeakRetained layoutIfNeeded];

      [*(a1 + 32) textPasteSessionWillHidePasteResult:*(a1 + 40)];
    }

    v5 = objc_loadWeakRetained((*(a1 + 48) + 16));
    [v5 addInvisibleRange:v3];

    [*(a1 + 40) setHiddenRange:v3];
  }

  else
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = [*(a1 + 40) coordinator];
    [v6 removeObjectForKey:v7];
  }

  v8 = *(__UILogGetCategoryCachedImpl("TextPasteCoordinator", &_block_invoke___s_category_6) + 8);
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_END, v10, "ExecutePasteForSession", "", v11, 2u);
  }
}

- (void)_restorePasteResultForSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    hiddenRange = [sessionCopy hiddenRange];

    if (hiddenRange)
    {
      WeakRetained = objc_loadWeakRetained(&self->_supportingView);
      hiddenRange2 = [sessionCopy hiddenRange];
      [WeakRetained removeInvisibleRange:hiddenRange2];

      delegate = [sessionCopy delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = objc_loadWeakRetained(&self->_supportingView);
        [v8 layoutIfNeeded];

        [delegate textPasteSessionDidRevealPasteResult:sessionCopy];
      }

      sessions = self->_sessions;
      coordinator = [sessionCopy coordinator];
      [(NSMapTable *)sessions removeObjectForKey:coordinator];
    }
  }
}

- (BOOL)_pasteDelegateHandlesPasting
{
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  pasteDelegate = [WeakRetained pasteDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)_clampRange:(id)range
{
  rangeCopy = range;
  start = [rangeCopy start];
  v6 = [rangeCopy end];
  v7 = objc_loadWeakRetained(&self->_supportingView);
  endOfDocument = [v7 endOfDocument];
  v9 = [v7 comparePosition:start toPosition:endOfDocument];

  v10 = v9 == 1;
  if (v9 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_supportingView);
    endOfDocument2 = [WeakRetained endOfDocument];

    start = endOfDocument2;
  }

  v13 = objc_loadWeakRetained(&self->_supportingView);
  beginningOfDocument = [v13 beginningOfDocument];
  v15 = [v13 comparePosition:start toPosition:beginningOfDocument];

  if (v15 == -1)
  {
    v16 = objc_loadWeakRetained(&self->_supportingView);
    beginningOfDocument2 = [v16 beginningOfDocument];

    v10 = 1;
    start = beginningOfDocument2;
  }

  v18 = objc_loadWeakRetained(&self->_supportingView);
  endOfDocument3 = [v18 endOfDocument];
  v20 = [v18 comparePosition:v6 toPosition:endOfDocument3];

  if (v20 == 1)
  {
    v21 = objc_loadWeakRetained(&self->_supportingView);
    endOfDocument4 = [v21 endOfDocument];

    v10 = 1;
    v6 = endOfDocument4;
  }

  v23 = objc_loadWeakRetained(&self->_supportingView);
  v24 = [v23 comparePosition:v6 toPosition:start];

  if (v24 == -1 || v10)
  {
    v25 = v24 == -1;
    if (v24 == -1)
    {
      v26 = v6;
    }

    else
    {
      v26 = start;
    }

    if (v25)
    {
      v6 = start;
    }

    v27 = objc_loadWeakRetained(&self->_supportingView);
    v28 = [v27 textRangeFromPosition:v26 toPosition:v6];

    start = v26;
    rangeCopy = v28;
  }

  return rangeCopy;
}

- (void)_transformTextPasteItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  pasteDelegate = [WeakRetained pasteDelegate];
  if (pasteDelegate)
  {
    v6 = pasteDelegate;
    v7 = objc_loadWeakRetained(&self->_supportingView);
    pasteDelegate2 = [v7 pasteDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_supportingView);
      pasteDelegate3 = [v10 pasteDelegate];
      v12 = objc_loadWeakRetained(&self->_supportingView);
      [pasteDelegate3 textPasteConfigurationSupporting:v12 transformPasteItem:itemCopy];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [itemCopy setDefaultResult];
LABEL_6:
}

- (id)_combineItemAttributedStrings:(id)strings forRange:(id)range
{
  stringsCopy = strings;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  pasteDelegate = [WeakRetained pasteDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_supportingView);
    pasteDelegate2 = [v11 pasteDelegate];
    v13 = objc_loadWeakRetained(&self->_supportingView);
    v14 = [pasteDelegate2 textPasteConfigurationSupporting:v13 combineItemAttributedStrings:stringsCopy forRange:rangeCopy];

    if (![v14 length])
    {
      v18 = 0;
      goto LABEL_8;
    }

    v15 = objc_loadWeakRetained(&self->_supportingView);
    v16 = [v15 _attributedStringForInsertionOfAttributedString:v14];

    v17 = v16;
    v14 = v17;
LABEL_6:
    v18 = v17;
LABEL_8:

    goto LABEL_9;
  }

  if ([stringsCopy count])
  {
    v14 = objc_loadWeakRetained(&self->_supportingView);
    v17 = +[UITextPasteController combineAttributedStrings:addingSeparation:](UITextPasteController, "combineAttributedStrings:addingSeparation:", stringsCopy, [v14 smartInsertDeleteType] != 1);
    goto LABEL_6;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (void)_performPasteOfAttributedString:(id)string toRange:(id)range forSession:(id)session completion:(id)completion
{
  stringCopy = string;
  rangeCopy = range;
  sessionCopy = session;
  completionCopy = completion;
  progressSupport = [sessionCopy progressSupport];
  v15 = progressSupport;
  if (progressSupport)
  {
    _textPasteRangeBehavior = [progressSupport _textPasteRangeBehavior];
    v17 = (_textPasteRangeBehavior >> 2) & 1;
    v18 = (_textPasteRangeBehavior >> 1) & 1;
  }

  else
  {
    LOBYTE(v17) = 0;
    LODWORD(v18) = 0;
  }

  _pasteDelegateHandlesPasting = [(UITextPasteController *)self _pasteDelegateHandlesPasting];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__UITextPasteController__performPasteOfAttributedString_toRange_forSession_completion___block_invoke;
  aBlock[3] = &unk_1E7125BE8;
  aBlock[4] = self;
  v40 = v17;
  v20 = sessionCopy;
  v38 = v20;
  v41 = _pasteDelegateHandlesPasting;
  v21 = completionCopy;
  v39 = v21;
  v22 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v24 = WeakRetained;
  if (v18)
  {
    [WeakRetained setSelectedTextRange:rangeCopy];
  }

  else
  {
    selectedTextRange = [WeakRetained selectedTextRange];

    if (!selectedTextRange)
    {
      goto LABEL_9;
    }

    v24 = objc_loadWeakRetained(&self->_supportingView);
    selectedTextRange2 = [v24 selectedTextRange];

    rangeCopy = selectedTextRange2;
  }

LABEL_9:
  v27 = objc_loadWeakRetained(&self->_supportingView);
  _inputController = [v27 _inputController];
  v29 = _inputController;
  if (_pasteDelegateHandlesPasting)
  {
    [_inputController _pasteDelegateWillPasteText:stringCopy toTextRange:rangeCopy];

    v30 = objc_loadWeakRetained(&self->_supportingView);
    pasteDelegate = [v30 pasteDelegate];
    v32 = objc_loadWeakRetained(&self->_supportingView);
    v33 = [pasteDelegate textPasteConfigurationSupporting:v32 performPasteOfAttributedString:stringCopy toRange:rangeCopy];

    v22[2](v22, v33, stringCopy);
    rangeCopy = v33;
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __87__UITextPasteController__performPasteOfAttributedString_toRange_forSession_completion___block_invoke_2;
    v34[3] = &unk_1E7125C10;
    v35 = v20;
    v36 = v22;
    [v29 _pasteAttributedString:stringCopy toRange:rangeCopy completion:v34];
  }
}

void __87__UITextPasteController__performPasteOfAttributedString_toRange_forSession_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v16 = [*(a1 + 32) _clampRange:v5];

    if (*(a1 + 56) == 1)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      [WeakRetained setSelectedTextRange:v16];
    }

    else
    {
      WeakRetained = [v16 end];
      v8 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v9 = [v8 textRangeFromPosition:WeakRetained toPosition:WeakRetained];
      v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v10 setSelectedTextRange:v9];
    }
  }

  else
  {
    v16 = 0;
  }

  v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v13 _pasteSessionDidFinish:*(a1 + 40)];
  }

  if (*(a1 + 57) == 1)
  {
    v14 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v15 = [v14 _inputController];
    [v15 _pasteDelegateDidPasteText:v6 toTextRange:v16];
  }

  (*(*(a1 + 48) + 16))();
}

void __87__UITextPasteController__performPasteOfAttributedString_toRange_forSession_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) progressSupport];

  if (v6)
  {
    v7 = [*(a1 + 32) progressSupport];
    v8 = [v7 _textPasteSelectableRangeForResult:v5 fromRange:v10];

    v9 = v8;
  }

  else
  {
    v9 = v10;
  }

  v11 = v9;
  (*(*(a1 + 40) + 16))();
}

- (UITextPasteConfigurationSupporting_Internal)supportingView
{
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);

  return WeakRetained;
}

@end