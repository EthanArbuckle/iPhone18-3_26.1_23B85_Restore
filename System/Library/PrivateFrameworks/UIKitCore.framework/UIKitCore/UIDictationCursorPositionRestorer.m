@interface UIDictationCursorPositionRestorer
- (void)_restoreCursorLocationWithCompletion:(id)a3;
- (void)_withCurrentSelectionOffsets:(id)a3;
- (void)saveCursorLocationAndRestoreAfterPerforming:(id)a3 completion:(id)a4;
- (void)setCursorToOffset:(unint64_t)a3 completion:(id)a4;
@end

@implementation UIDictationCursorPositionRestorer

- (void)saveCursorLocationAndRestoreAfterPerforming:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__UIDictationCursorPositionRestorer_saveCursorLocationAndRestoreAfterPerforming_completion___block_invoke;
  v10[3] = &unk_1E7117B18;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(UIDictationCursorPositionRestorer *)self _withCurrentSelectionOffsets:v10];
}

uint64_t __92__UIDictationCursorPositionRestorer_saveCursorLocationAndRestoreAfterPerforming_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) set_selectionStartOffsetFromBeginningPriorToOperation:a2];
  [*(a1 + 32) set_selectionEndOffsetFromEndPriorToOperation:a3];
  [*(a1 + 32) set_selectionLengthPriorToOperation:a4];
  v7 = _UIDictationControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) _selectionStartOffsetFromBeginningPriorToOperation];
    v9 = [*(a1 + 32) _selectionEndOffsetFromEndPriorToOperation];
    v10 = [*(a1 + 32) _selectionLengthPriorToOperation];
    v12 = 136315906;
    v13 = "[UIDictationCursorPositionRestorer saveCursorLocationAndRestoreAfterPerforming:completion:]_block_invoke";
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s Saving selection offsets prior to operation: selection start offset from beginning: %ld selection end offset from end: %lu selection length: %ld", &v12, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) _restoreCursorLocationWithCompletion:*(a1 + 48)];
}

- (void)setCursorToOffset:(unint64_t)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 inputDelegateManager];

  if ([v7 hasAsyncCapableInputDelegate])
  {
    v8 = objc_alloc_init(UIWKDocumentRequest);
    [(UIWKDocumentRequest *)v8 setFlags:1];
    [(UIWKDocumentRequest *)v8 setSurroundingGranularity:3];
    [(UIWKDocumentRequest *)v8 setGranularityCount:3];
    v9 = [v7 textInputView];
    [v9 visibleBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v7 textInteractionAssistant];
    v19 = [v18 view];
    v20 = [v19 isEditing];

    if (v20)
    {
      v21 = +[UIKeyboardImpl activeInstance];
      [v21 subtractKeyboardFrameFromRect:v9 inView:{v11, v13, v15, v17}];
      v11 = v22;
      v13 = v23;
      v15 = v24;
      v17 = v25;
    }

    [(UIWKDocumentRequest *)v8 setDocumentRect:v11, v13, v15, v17];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__UIDictationCursorPositionRestorer_setCursorToOffset_completion___block_invoke;
    v28[3] = &unk_1E7117B40;
    v31 = a3;
    v29 = v7;
    v30 = v5;
    [v29 requestDocumentContext:v8 completionHandler:v28];
  }

  else
  {
    v26 = [v7 beginningOfDocument];
    v8 = [v7 positionFromPosition:v26 offset:a3];

    v9 = [v7 textRangeFromPosition:v8 toPosition:v8];
    v27 = _UIDictationControllerLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[UIDictationCursorPositionRestorer setCursorToOffset:completion:]";
      v34 = 2048;
      v35 = a3;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "%s Moving selection to index %ld", buf, 0x16u);
    }

    [v7 setSelectedTextRange:v9];
    if (v5)
    {
      v5[2](v5);
    }
  }
}

void __66__UIDictationCursorPositionRestorer_setCursorToOffset_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a2 directionalRangeForSelectionRange:{*(a1 + 48), 0}];
  v5 = v4;
  v6 = _UIDictationControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 136315906;
    v12 = "[UIDictationCursorPositionRestorer setCursorToOffset:completion:]_block_invoke";
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s WebKit moving selection to index %ld using directional range (offset: %ld, length: %ld)", buf, 0x2Au);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__UIDictationCursorPositionRestorer_setCursorToOffset_completion___block_invoke_2;
  v9[3] = &unk_1E70F0F78;
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v8 adjustSelection:v3 completionHandler:{v5, v9}];
}

uint64_t __66__UIDictationCursorPositionRestorer_setCursorToOffset_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _UIDictationControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UIDictationCursorPositionRestorer setCursorToOffset:completion:]_block_invoke";
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "%s WebKit completed adjusting of selection", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_withCurrentSelectionOffsets:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69C6F30]);
  [v4 setFlags:9];
  [v4 setTextGranularity:3];
  [v4 setSurroundingGranularityCount:3];
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 remoteTextInputPartnerPrivate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__UIDictationCursorPositionRestorer__withCurrentSelectionOffsets___block_invoke;
  v8[3] = &unk_1E71150D8;
  v9 = v3;
  v7 = v3;
  [v6 _performDocumentRequest:v4 completion:v8];
}

void __66__UIDictationCursorPositionRestorer__withCurrentSelectionOffsets___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26 = a1;
    v5 = [v3 documentState];
    v6 = [v4 selectedTextRange];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v5 contextBeforeInput];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v11 = [v5 selectedText];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1EFB14550;
    }

    v14 = [v5 contextAfterInput];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1EFB14550;
    }

    v17 = [v7 stringWithFormat:@"%@%@%@", v10, v13, v16];

    v18 = [v17 length];
    v19 = [v4 selectedTextRange];
    v21 = v18 - (v19 + v20);
    [v4 selectedTextRange];
    v23 = v22;
    v24 = _UIDictationControllerLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v28 = "[UIDictationCursorPositionRestorer _withCurrentSelectionOffsets:]_block_invoke";
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v6;
      v33 = 2048;
      v34 = v21;
      v35 = 2048;
      v36 = v23;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "%s Got document of length %ld, selectionStartOffsetFromBeginning: %ld, selectionEndOffsetFromEnd: %ld,  selectionLength: %ld", buf, 0x34u);
    }

    v25 = *(v26 + 32);
    if (v25)
    {
      (*(v25 + 16))(v25, v6, v21, v23, v18);
    }
  }

  else
  {
    v5 = _UIDictationControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[UIDictationCursorPositionRestorer _withCurrentSelectionOffsets:]_block_invoke";
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%s Received nil RTIDocumentState", buf, 0xCu);
    }
  }
}

- (void)_restoreCursorLocationWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__UIDictationCursorPositionRestorer__restoreCursorLocationWithCompletion___block_invoke;
  v6[3] = &unk_1E7117B68;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIDictationCursorPositionRestorer *)self _withCurrentSelectionOffsets:v6];
}

uint64_t __74__UIDictationCursorPositionRestorer__restoreCursorLocationWithCompletion___block_invoke(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = _UIDictationControllerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315906;
    v20 = "[UIDictationCursorPositionRestorer _restoreCursorLocationWithCompletion:]_block_invoke";
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%s Cursor offsets after operation: selection start offset from beginning: %ld selection end offset from end: %ld selection length: %ld", &v19, 0x2Au);
  }

  v11 = [*(a1 + 32) _selectionStartOffsetFromBeginningPriorToOperation];
  v12 = [*(a1 + 32) _selectionLengthPriorToOperation];
  v13 = [*(a1 + 32) _selectionEndOffsetFromEndPriorToOperation];
  v14 = a4 + a2;
  if (v13 | a3)
  {
    v15 = v12 + v11;
    if (v15 <= a2)
    {
      v16 = _UIDictationControllerLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[UIDictationCursorPositionRestorer _restoreCursorLocationWithCompletion:]_block_invoke";
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "%s Prior cursor position is before the new selection start, so maintaining prior cursor offset from beginning", &v19, 0xCu);
      }

      v14 = v15;
    }

    else if (v13 >= a3)
    {
      v16 = _UIDictationControllerLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[UIDictationCursorPositionRestorer _restoreCursorLocationWithCompletion:]_block_invoke";
        v17 = "%s Prior cursor position is within new selection, so using new selection end as target";
        goto LABEL_15;
      }
    }

    else
    {
      v14 = a5 - v13;
      v16 = _UIDictationControllerLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[UIDictationCursorPositionRestorer _restoreCursorLocationWithCompletion:]_block_invoke";
        v17 = "%s Prior cursor position is after the new selection end, so maintaining prior cursor offset from end";
LABEL_15:
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, v17, &v19, 0xCu);
      }
    }
  }

  else
  {
    v16 = _UIDictationControllerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[UIDictationCursorPositionRestorer _restoreCursorLocationWithCompletion:]_block_invoke";
      v17 = "%s Prior cursor position was end of text and so was new selection end, so maintaining cursor at end";
      goto LABEL_15;
    }
  }

  return [*(a1 + 32) setCursorToOffset:v14 completion:*(a1 + 40)];
}

@end