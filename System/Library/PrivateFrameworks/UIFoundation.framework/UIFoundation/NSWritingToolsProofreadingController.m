@interface NSWritingToolsProofreadingController
- (BOOL)replaceCharactersInRange:(_NSRange)a3 attributedString:(id)a4 state:(int64_t)a5 identifier:(id)a6 completion:(id)a7;
- (NSWritingToolsProofreadingController)init;
- (NSWritingToolsProofreadingController)initWithContextString:(id)a3 contextRange:(_NSRange)a4 delegate:(id)a5;
- (NSWritingToolsProofreadingControllerDelegate)delegate;
- (id)replacementTextForSuggestion:(id)a3 state:(int64_t)a4;
- (void)_addSuggestion:(id)a3;
- (void)_finalizeNextSuggestion:(id)a3 enumerator:(id)a4 state:(int64_t)a5 completion:(id)a6;
- (void)addSuggestionWithUUID:(id)a3 originalRange:(_NSRange)a4 replacementString:(id)a5;
- (void)addSuggestionWithUUID:(id)a3 originalRange:(_NSRange)a4 replacementString:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)finish;
- (void)finish:(BOOL)a3;
- (void)finish:(BOOL)a3 completion:(id)a4;
- (void)updateSuggestionWithUUID:(id)a3 state:(int64_t)a4;
- (void)updateSuggestionWithUUID:(id)a3 state:(int64_t)a4 completion:(id)a5;
@end

@implementation NSWritingToolsProofreadingController

- (NSWritingToolsProofreadingController)init
{
  [(NSWritingToolsProofreadingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSWritingToolsProofreadingController)initWithContextString:(id)a3 contextRange:(_NSRange)a4 delegate:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = NSWritingToolsProofreadingController;
  v11 = [(NSWritingToolsProofreadingController *)&v30 init];
  if (v11)
  {
    v12 = [v9 copy];
    contextString = v11->_contextString;
    v11->_contextString = v12;

    objc_storeWeak(&v11->_delegate, v10);
    v14 = [[NSWritingToolsEditTracker alloc] initWithContextRange:location, length];
    editTracker = v11->_editTracker;
    v11->_editTracker = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    suggestionsByUUID = v11->_suggestionsByUUID;
    v11->_suggestionsByUUID = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    suggestionsByRange = v11->_suggestionsByRange;
    v11->_suggestionsByRange = v18;

    *&v11->_finished = 257;
    WeakRetained = objc_loadWeakRetained(&v11->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = v11->_delegateVersion != -1;
    }

    else
    {
      v23 = objc_loadWeakRetained(&v11->_delegate);
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v11->_delegateVersion = 2;
        v22 = 1;
      }

      else
      {
        v25 = objc_loadWeakRetained(&v11->_delegate);
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          v22 = 1;
          v11->_delegateVersion = 1;
        }

        else
        {
          v22 = 0;
          v11->_delegateVersion = -1;
        }
      }
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__NSWritingToolsProofreadingController_initWithContextString_contextRange_delegate___block_invoke;
    v28[3] = &unk_1E7266C18;
    v29 = v11;
    _UIFoundationAssert(v29, @"NSWritingTools", v22, v28);
  }

  return v11;
}

id __84__NSWritingToolsProofreadingController_initWithContextString_contextRange_delegate___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = [v1 stringWithFormat:@"%@ is not implementing any of the replacement methods in NSWritingToolsProofreadingControllerDelegate.", WeakRetained];

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  _UIFoundationAssert(self, v4, self->_finished, &__block_literal_global_10);

  v5.receiver = self;
  v5.super_class = NSWritingToolsProofreadingController;
  [(NSWritingToolsProofreadingController *)&v5 dealloc];
}

- (BOOL)replaceCharactersInRange:(_NSRange)a3 attributedString:(id)a4 state:(int64_t)a5 identifier:(id)a6 completion:(id)a7
{
  length = a3.length;
  location = a3.location;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  delegateVersion = self->_delegateVersion;
  if (delegateVersion == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = v13;
    v20 = [WeakRetained proofreadingController:self replaceCharactersInRange:location state:length replacementAttributedString:{a5, &v23}];
    v18 = v23;

    v15[2](v15, v14, v18, v20);
  }

  else
  {
    if (delegateVersion)
    {
      v21 = 0;
      goto LABEL_7;
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __110__NSWritingToolsProofreadingController_replaceCharactersInRange_attributedString_state_identifier_completion___block_invoke;
    v24[3] = &unk_1E7266C40;
    v25 = v15;
    [v17 proofreadingController:self replaceCharactersInRange:location attributedString:length state:v13 identifier:a5 completion:{v14, v24}];

    v18 = v25;
  }

  v21 = 1;
LABEL_7:

  return v21;
}

- (void)_addSuggestion:(id)a3
{
  editTracker = self->_editTracker;
  v5 = a3;
  v6 = [v5 originalRange];
  v8 = v7;
  v9 = [v5 lengthDelta];
  v10 = [v5 uuid];
  [(NSWritingToolsEditTracker *)editTracker addEditForSuggestionWithRange:v6 lengthDelta:v8 UUID:v9, v10];

  suggestionsByUUID = self->_suggestionsByUUID;
  v12 = [v5 uuid];
  [(NSMutableDictionary *)suggestionsByUUID setObject:v5 forKeyedSubscript:v12];

  [(NSMutableArray *)self->_suggestionsByRange addObject:v5];
  self->_finished = 0;
}

- (void)addSuggestionWithUUID:(id)a3 originalRange:(_NSRange)a4 replacementString:(id)a5 completion:(id)a6
{
  length = a4.length;
  v9 = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableArray *)self->_suggestionsByRange lastObject];
  if (v14)
  {
    v15 = [(NSMutableArray *)self->_suggestionsByRange lastObject];
    v16 = [v15 originalRange];
    v18 = v16 + v17 <= v9;
  }

  else
  {
    v18 = 1;
  }

  v19 = [(NSMutableDictionary *)self->_suggestionsByUUID objectForKeyedSubscript:v11];

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __105__NSWritingToolsProofreadingController_addSuggestionWithUUID_originalRange_replacementString_completion___block_invoke;
  v39[3] = &__block_descriptor_33_e18___NSString_16__0_8l;
  v40 = v18;
  _UIFoundationAssert(self, v21, v22, v39);

  if (v22 == 1)
  {
    v23 = [(NSWritingToolsEditTracker *)self->_editTracker rangeOfSuggestionWithRange:v9 UUID:length applyDelta:v11, 0];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v23;
      v26 = v24;
      v27 = self->_delegateVersion == 1;
      objc_initWeak(&location, self);
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __105__NSWritingToolsProofreadingController_addSuggestionWithUUID_originalRange_replacementString_completion___block_invoke_2;
      v33 = &unk_1E7266C88;
      objc_copyWeak(v36, &location);
      v28 = v11;
      v34 = v28;
      v36[1] = v9;
      v36[2] = length;
      v36[3] = 0;
      v36[4] = v25;
      v37 = v27;
      v36[5] = v26;
      v35 = v13;
      v29 = MEMORY[0x193AD48B0](&v30);
      if (![(NSWritingToolsProofreadingController *)self replaceCharactersInRange:v25 attributedString:v26 state:v12 identifier:0 completion:v28, v29, v30, v31, v32, v33])
      {
        (v29)[2](v29, v28, v12, 1);
      }

      objc_destroyWeak(v36);
      objc_destroyWeak(&location);
    }
  }
}

__CFString *__105__NSWritingToolsProofreadingController_addSuggestionWithUUID_originalRange_replacementString_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return @"suggestion with uuid already exists.";
  }

  else
  {
    return @"suggestion received out of sequential order.";
  }
}

void __105__NSWritingToolsProofreadingController_addSuggestionWithUUID_originalRange_replacementString_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, int a4)
{
  v13 = a2;
  v7 = a3;
  if (a4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      WeakRetained = [[NSWritingToolsProofreadingSuggestion alloc] initWithUUID:*(a1 + 32) originalRange:*(a1 + 56) replacementString:*(a1 + 64) state:v7, *(a1 + 72)];
      if (*(a1 + 96) == 1)
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        v10 = [v9 delegate];
        v11 = objc_loadWeakRetained((a1 + 48));
        [v10 proofreadingController:v11 replaceCharactersInRange:*(a1 + 80) withSuggestion:*(a1 + 88) state:{WeakRetained, 0}];
      }

      v12 = objc_loadWeakRetained((a1 + 48));
      [v12 _addSuggestion:WeakRetained];
    }
  }

  else
  {
    WeakRetained = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)replacementTextForSuggestion:(id)a3 state:(int64_t)a4
{
  if (a4 == 3)
  {
    contextString = self->_contextString;
    v5 = [a3 originalRange];
    [(NSAttributedString *)contextString attributedSubstringFromRange:v5, v6];
  }

  else
  {
    [a3 replacementString];
  }
  v7 = ;

  return v7;
}

- (void)updateSuggestionWithUUID:(id)a3 state:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_suggestionsByUUID objectForKeyedSubscript:v8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  _UIFoundationAssert(self, v12, v10 != 0, &__block_literal_global_69);

  if (v10)
  {
    v13 = ![v10 state] || objc_msgSend(v10, "state") == 1 || objc_msgSend(v10, "state") == 2;
    editTracker = self->_editTracker;
    v15 = [v10 originalRange];
    v17 = v16;
    v18 = [v10 uuid];
    v19 = [(NSWritingToolsEditTracker *)editTracker rangeOfSuggestionWithRange:v15 UUID:v17 applyDelta:v18, v13];
    v21 = v20;

    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 setState:4];
      v9[2](v9, v8, v10);
    }

    else
    {
      objc_initWeak(&location, self);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __82__NSWritingToolsProofreadingController_updateSuggestionWithUUID_state_completion___block_invoke_2;
      v27[3] = &unk_1E7266CB0;
      objc_copyWeak(v30, &location);
      v22 = v10;
      v28 = v22;
      v30[1] = a4;
      v29 = v9;
      v23 = MEMORY[0x193AD48B0](v27);
      v24 = [(NSWritingToolsProofreadingController *)self replacementTextForSuggestion:v22 state:a4];
      if (a4 == 4)
      {
        [v22 setState:4];
        (v23)[2](v23, v8, v24, 1);
      }

      else if (![(NSWritingToolsProofreadingController *)self replaceCharactersInRange:v19 attributedString:v21 state:v24 identifier:a4 completion:v8, v23])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v25 = [WeakRetained proofreadingController:self replaceCharactersInRange:v19 withSuggestion:v21 state:{v22, a4}];

        (v23)[2](v23, v8, v24, v25);
      }

      objc_destroyWeak(v30);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v9[2](v9, v8, 0);
  }
}

void __82__NSWritingToolsProofreadingController_updateSuggestionWithUUID_state_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v15 = a2;
  if (a4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((a1 + 48));
      v8 = [v7 editTracker];

      v9 = [*(a1 + 32) uuid];
      [v8 removeEditForSuggestionWithUUID:v9];

      if (*(a1 + 56) != 3)
      {
        v10 = [*(a1 + 32) originalRange];
        v12 = v11;
        v13 = [*(a1 + 32) lengthDelta];
        v14 = [*(a1 + 32) uuid];
        [v8 addEditForSuggestionWithRange:v10 lengthDelta:v12 UUID:{v13, v14}];
      }
    }
  }

  [*(a1 + 32) setState:*(a1 + 56)];
  (*(*(a1 + 40) + 16))();
}

- (void)_finalizeNextSuggestion:(id)a3 enumerator:(id)a4 state:(int64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9)
  {
    while (1)
    {
      if (![v9 state] || objc_msgSend(v9, "state") == 1)
      {
        editTracker = self->_editTracker;
        v13 = [v9 originalRange];
        v15 = v14;
        v16 = [v9 uuid];
        v17 = [(NSWritingToolsEditTracker *)editTracker rangeOfSuggestionWithRange:v13 UUID:v15 applyDelta:v16, 1];
        v19 = v18;

        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v20 = [v10 nextObject];

      v9 = v20;
      if (!v20)
      {
        goto LABEL_6;
      }
    }

    v21 = [(NSWritingToolsProofreadingController *)self replacementTextForSuggestion:v9 state:a5];
    v22 = [v9 uuid];
    objc_initWeak(&location, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__NSWritingToolsProofreadingController__finalizeNextSuggestion_enumerator_state_completion___block_invoke;
    v28[3] = &unk_1E7266CB0;
    v31[1] = a5;
    objc_copyWeak(v31, &location);
    v29 = v10;
    v30 = v11;
    v23 = MEMORY[0x193AD48B0](v28);
    v26 = v21;
    if (![(NSWritingToolsProofreadingController *)self replaceCharactersInRange:v17 attributedString:v19 state:v21 identifier:a5 completion:v22, v23])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v25 = [WeakRetained proofreadingController:self replaceCharactersInRange:v17 withSuggestion:v19 state:{v9, a5}];

      (v23)[2](v23, v22, v26, v25);
    }

    objc_destroyWeak(v31);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    [(NSMutableArray *)self->_suggestionsByRange removeAllObjects];
    [(NSMutableDictionary *)self->_suggestionsByUUID removeAllObjects];
    self->_finished = 1;
    v11[2](v11);
  }
}

void __92__NSWritingToolsProofreadingController__finalizeNextSuggestion_enumerator_state_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 56) == 3)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained editTracker];
    [v5 removeEditForSuggestionWithUUID:v3];
  }

  v7 = objc_loadWeakRetained((a1 + 48));
  v6 = [*(a1 + 32) nextObject];
  [v7 _finalizeNextSuggestion:v6 enumerator:*(a1 + 32) state:*(a1 + 56) completion:*(a1 + 40)];
}

- (void)finish:(BOOL)a3 completion:(id)a4
{
  if (self->_finished)
  {
    v4 = *(a4 + 2);
    v12 = a4;
    v4();
  }

  else
  {
    v5 = a3;
    suggestionsByRange = self->_suggestionsByRange;
    v8 = a4;
    v9 = [(NSMutableArray *)suggestionsByRange objectEnumerator];
    v12 = v9;
    if (v5)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = [v9 nextObject];
    [(NSWritingToolsProofreadingController *)self _finalizeNextSuggestion:v11 enumerator:v12 state:v10 completion:v8];
  }
}

- (void)addSuggestionWithUUID:(id)a3 originalRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  delegateVersion = self->_delegateVersion;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __94__NSWritingToolsProofreadingController_addSuggestionWithUUID_originalRange_replacementString___block_invoke;
  v16 = &unk_1E7266CD8;
  v10 = delegateVersion != 0;
  v17 = self;
  v18 = a2;
  v11 = a5;
  v12 = a3;
  _UIFoundationAssert(self, @"NSWritingTools", v10, &v13);
  [(NSWritingToolsProofreadingController *)self addSuggestionWithUUID:v12 originalRange:location replacementString:length completion:v11, &__block_literal_global_78_0, v13, v14, v15, v16, v17, v18];
}

id __94__NSWritingToolsProofreadingController_addSuggestionWithUUID_originalRange_replacementString___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromSelector(*(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [v2 stringWithFormat:@"Synchronous %@ invoked with aynchronous %@", v3, WeakRetained];

  return v5;
}

- (void)updateSuggestionWithUUID:(id)a3 state:(int64_t)a4
{
  delegateVersion = self->_delegateVersion;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __71__NSWritingToolsProofreadingController_updateSuggestionWithUUID_state___block_invoke;
  v12 = &unk_1E7266CD8;
  v7 = delegateVersion != 0;
  v13 = self;
  v14 = a2;
  v8 = a3;
  _UIFoundationAssert(self, @"NSWritingTools", v7, &v9);
  [(NSWritingToolsProofreadingController *)self updateSuggestionWithUUID:v8 state:a4 completion:&__block_literal_global_80, v9, v10, v11, v12, v13, v14];
}

id __71__NSWritingToolsProofreadingController_updateSuggestionWithUUID_state___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromSelector(*(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [v2 stringWithFormat:@"Synchronous %@ invoked with aynchronous %@", v3, WeakRetained];

  return v5;
}

- (void)finish:(BOOL)a3
{
  v3 = a3;
  delegateVersion = self->_delegateVersion;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __47__NSWritingToolsProofreadingController_finish___block_invoke;
  v9 = &unk_1E7266CD8;
  v10 = self;
  v11 = a2;
  _UIFoundationAssert(self, @"NSWritingTools", delegateVersion != 0, &v6);
  [(NSWritingToolsProofreadingController *)self finish:v3 completion:&__block_literal_global_83, v6, v7, v8, v9];
}

id __47__NSWritingToolsProofreadingController_finish___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromSelector(*(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [v2 stringWithFormat:@"Synchronous %@ invoked with aynchronous %@", v3, WeakRetained];

  return v5;
}

- (void)finish
{
  v3 = [(NSWritingToolsProofreadingController *)self acceptOpenSuggestionsInFinish];

  [(NSWritingToolsProofreadingController *)self finish:v3];
}

- (NSWritingToolsProofreadingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end