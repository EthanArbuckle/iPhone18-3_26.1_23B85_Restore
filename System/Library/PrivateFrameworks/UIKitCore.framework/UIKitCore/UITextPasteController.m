@interface UITextPasteController
+ (id)combineAttributedStrings:(id)a3 addingSeparation:(BOOL)a4;
- (BOOL)_pasteDelegateHandlesPasting;
- (BOOL)shouldMatchStyleForItem:(id)a3;
- (UITextPasteConfigurationSupporting_Internal)supportingView;
- (UITextPasteController)initWithSupportingView:(id)a3;
- (id)_clampRange:(id)a3;
- (id)_combineItemAttributedStrings:(id)a3 forRange:(id)a4;
- (id)beginDroppingItems:(id)a3 toSelectedRange:(id)a4 progressSupport:(id)a5 animated:(BOOL)a6 delegate:(id)a7;
- (id)beginPastingItems:(id)a3 toRange:(id)a4 delegate:(id)a5 matchesTextStyles:(BOOL)a6;
- (void)_executePasteForSession:(id)a3;
- (void)_performPasteOfAttributedString:(id)a3 toRange:(id)a4 forSession:(id)a5 completion:(id)a6;
- (void)_restorePasteResultForSession:(id)a3;
- (void)_transformTextPasteItem:(id)a3;
- (void)coordinator:(id)a3 endPastingItems:(id)a4;
@end

@implementation UITextPasteController

- (UITextPasteController)initWithSupportingView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UITextPasteController;
  v5 = [(UITextPasteController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_supportingView, v4);
    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    sessions = v6->_sessions;
    v6->_sessions = v7;
  }

  return v6;
}

- (id)beginDroppingItems:(id)a3 toSelectedRange:(id)a4 progressSupport:(id)a5 animated:(BOOL)a6 delegate:(id)a7
{
  v8 = a6;
  v61 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v17 = [WeakRetained _inputController];
  v18 = [v17 typingAttributes];
  v19 = [v18 copy];
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
  [v23 setRange:v13];
  [v23 setProgressSupport:v14];
  [v23 setDelegate:v15];
  v48 = v23;
  [(NSMapTable *)self->_sessions setObject:v23 forKey:v22];
  v24 = objc_loadWeakRetained(&self->_supportingView);
  objc_opt_class();
  v46 = v14;
  v47 = v13;
  v45 = v15;
  v44 = v8;
  if (objc_opt_respondsToSelector())
  {
    v25 = objc_loadWeakRetained(&self->_supportingView);
    v26 = [objc_opt_class() _textPasteItemClass];
  }

  else
  {
    v26 = objc_opt_class();
  }

  v27 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v12;
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
        v33 = [[v26 alloc] initWithTextPasteCoordinator:v22];
        v34 = [v32 itemProvider];
        [v33 setItemProvider:v34];

        v35 = [v32 localObject];
        [v33 setLocalObject:v35];

        [v33 setDefaultAttributes:v50];
        [v33 setForcesDefaultAttributes:{-[UITextPasteController shouldMatchStyleForItem:](self, "shouldMatchStyleForItem:", v33)}];
        v36 = objc_loadWeakRetained(&self->_supportingView);
        v37 = [v36 _implicitPasteConfigurationClasses];
        [v33 setSupportedPasteConfigurationClasses:v37];

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

- (BOOL)shouldMatchStyleForItem:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 itemProvider];
  v4 = [v3 registeredTypeIdentifiers];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:@"com.apple.sticker"])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)beginPastingItems:(id)a3 toRange:(id)a4 delegate:(id)a5 matchesTextStyles:(BOOL)a6
{
  v45 = a6;
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v13 = [WeakRetained _inputController];
  v14 = [v13 typingAttributes];
  v15 = [v14 copy];
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
  [v21 setRange:v10];
  [v21 setProgressSupport:0];
  [v21 setDelegate:v11];
  [(NSMapTable *)self->_sessions setObject:v21 forKey:v20];
  v46 = objc_opt_new();
  v22 = objc_loadWeakRetained(&self->_supportingView);
  objc_opt_class();
  v41 = v11;
  v42 = v10;
  if (objc_opt_respondsToSelector())
  {
    v23 = objc_loadWeakRetained(&self->_supportingView);
    v44 = [objc_opt_class() _textPasteItemClass];
  }

  else
  {
    v44 = objc_opt_class();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v9;
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
        v30 = [[v44 alloc] initWithTextPasteCoordinator:v20];
        [v30 setItemProvider:v29];
        [v30 setDefaultAttributes:v47];
        v31 = objc_loadWeakRetained(&self->_supportingView);
        [v31 _implicitPasteConfigurationClasses];
        v33 = v32 = self;
        [v30 setSupportedPasteConfigurationClasses:v33];

        self = v32;
        [v30 setForcesDefaultAttributes:v45];
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

+ (id)combineAttributedStrings:(id)a3 addingSeparation:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count] < 2)
  {
    if ([v5 count] == 1)
    {
      v17 = [v5 firstObject];
    }

    else
    {
      v17 = objc_opt_new();
    }

    v16 = v17;
  }

  else
  {
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v7 = v5;
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
          if (v4 && [v6 length])
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
    v5 = v19;
  }

  return v16;
}

- (void)coordinator:(id)a3 endPastingItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__209;
  v20 = __Block_byref_object_dispose__209;
  v21 = 0;
  v8 = self->_sessions;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_sessions objectForKey:v6];
  v10 = [v9 range];
  v11 = v17[5];
  v17[5] = v10;

  objc_sync_exit(v8);
  if (v17[5])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__UITextPasteController_coordinator_endPastingItems___block_invoke;
    v12[3] = &unk_1E7103C20;
    v15 = &v16;
    v12[4] = self;
    v13 = v7;
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

- (void)_executePasteForSession:(id)a3
{
  v4 = a3;
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
  v23 = [v4 range];
  if (*(v19 + 5) && ([v4 pasteResult], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__UITextPasteController__executePasteForSession___block_invoke;
    block[3] = &unk_1E7125BC0;
    v13 = v4;
    v14 = self;
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

- (void)_restorePasteResultForSession:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v4 = [v11 hiddenRange];

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_supportingView);
      v6 = [v11 hiddenRange];
      [WeakRetained removeInvisibleRange:v6];

      v7 = [v11 delegate];
      if (objc_opt_respondsToSelector())
      {
        v8 = objc_loadWeakRetained(&self->_supportingView);
        [v8 layoutIfNeeded];

        [v7 textPasteSessionDidRevealPasteResult:v11];
      }

      sessions = self->_sessions;
      v10 = [v11 coordinator];
      [(NSMapTable *)sessions removeObjectForKey:v10];
    }
  }
}

- (BOOL)_pasteDelegateHandlesPasting
{
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v3 = [WeakRetained pasteDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)_clampRange:(id)a3
{
  v4 = a3;
  v5 = [v4 start];
  v6 = [v4 end];
  v7 = objc_loadWeakRetained(&self->_supportingView);
  v8 = [v7 endOfDocument];
  v9 = [v7 comparePosition:v5 toPosition:v8];

  v10 = v9 == 1;
  if (v9 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_supportingView);
    v12 = [WeakRetained endOfDocument];

    v5 = v12;
  }

  v13 = objc_loadWeakRetained(&self->_supportingView);
  v14 = [v13 beginningOfDocument];
  v15 = [v13 comparePosition:v5 toPosition:v14];

  if (v15 == -1)
  {
    v16 = objc_loadWeakRetained(&self->_supportingView);
    v17 = [v16 beginningOfDocument];

    v10 = 1;
    v5 = v17;
  }

  v18 = objc_loadWeakRetained(&self->_supportingView);
  v19 = [v18 endOfDocument];
  v20 = [v18 comparePosition:v6 toPosition:v19];

  if (v20 == 1)
  {
    v21 = objc_loadWeakRetained(&self->_supportingView);
    v22 = [v21 endOfDocument];

    v10 = 1;
    v6 = v22;
  }

  v23 = objc_loadWeakRetained(&self->_supportingView);
  v24 = [v23 comparePosition:v6 toPosition:v5];

  if (v24 == -1 || v10)
  {
    v25 = v24 == -1;
    if (v24 == -1)
    {
      v26 = v6;
    }

    else
    {
      v26 = v5;
    }

    if (v25)
    {
      v6 = v5;
    }

    v27 = objc_loadWeakRetained(&self->_supportingView);
    v28 = [v27 textRangeFromPosition:v26 toPosition:v6];

    v5 = v26;
    v4 = v28;
  }

  return v4;
}

- (void)_transformTextPasteItem:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v5 = [WeakRetained pasteDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = objc_loadWeakRetained(&self->_supportingView);
    v8 = [v7 pasteDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_supportingView);
      v11 = [v10 pasteDelegate];
      v12 = objc_loadWeakRetained(&self->_supportingView);
      [v11 textPasteConfigurationSupporting:v12 transformPasteItem:v13];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [v13 setDefaultResult];
LABEL_6:
}

- (id)_combineItemAttributedStrings:(id)a3 forRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v9 = [WeakRetained pasteDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_supportingView);
    v12 = [v11 pasteDelegate];
    v13 = objc_loadWeakRetained(&self->_supportingView);
    v14 = [v12 textPasteConfigurationSupporting:v13 combineItemAttributedStrings:v6 forRange:v7];

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

  if ([v6 count])
  {
    v14 = objc_loadWeakRetained(&self->_supportingView);
    v17 = +[UITextPasteController combineAttributedStrings:addingSeparation:](UITextPasteController, "combineAttributedStrings:addingSeparation:", v6, [v14 smartInsertDeleteType] != 1);
    goto LABEL_6;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (void)_performPasteOfAttributedString:(id)a3 toRange:(id)a4 forSession:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 progressSupport];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 _textPasteRangeBehavior];
    v17 = (v16 >> 2) & 1;
    v18 = (v16 >> 1) & 1;
  }

  else
  {
    LOBYTE(v17) = 0;
    LODWORD(v18) = 0;
  }

  v19 = [(UITextPasteController *)self _pasteDelegateHandlesPasting];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__UITextPasteController__performPasteOfAttributedString_toRange_forSession_completion___block_invoke;
  aBlock[3] = &unk_1E7125BE8;
  aBlock[4] = self;
  v40 = v17;
  v20 = v12;
  v38 = v20;
  v41 = v19;
  v21 = v13;
  v39 = v21;
  v22 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_supportingView);
  v24 = WeakRetained;
  if (v18)
  {
    [WeakRetained setSelectedTextRange:v11];
  }

  else
  {
    v25 = [WeakRetained selectedTextRange];

    if (!v25)
    {
      goto LABEL_9;
    }

    v24 = objc_loadWeakRetained(&self->_supportingView);
    v26 = [v24 selectedTextRange];

    v11 = v26;
  }

LABEL_9:
  v27 = objc_loadWeakRetained(&self->_supportingView);
  v28 = [v27 _inputController];
  v29 = v28;
  if (v19)
  {
    [v28 _pasteDelegateWillPasteText:v10 toTextRange:v11];

    v30 = objc_loadWeakRetained(&self->_supportingView);
    v31 = [v30 pasteDelegate];
    v32 = objc_loadWeakRetained(&self->_supportingView);
    v33 = [v31 textPasteConfigurationSupporting:v32 performPasteOfAttributedString:v10 toRange:v11];

    v22[2](v22, v33, v10);
    v11 = v33;
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __87__UITextPasteController__performPasteOfAttributedString_toRange_forSession_completion___block_invoke_2;
    v34[3] = &unk_1E7125C10;
    v35 = v20;
    v36 = v22;
    [v29 _pasteAttributedString:v10 toRange:v11 completion:v34];
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