@interface UIDictationStreamingOperations
- (BOOL)hasOperations;
- (BOOL)isEmpty;
- (BOOL)isNotEmpty;
- (UIDictationStreamingOperations)init;
- (double)delayAfterSelector:(SEL)selector;
- (id)pop;
- (unint64_t)selectionChangeDelta;
- (void)_performReplaceSelectedText:(id)text;
- (void)clearOperations;
- (void)performSelectRangeForSpeech:(_NSRange)speech;
- (void)popAndInvoke;
- (void)pushInsertTextForSpeech:(id)speech;
- (void)pushReplaceSelectionWithText:(id)text;
- (void)pushSelectRangeForSpeech:(_NSRange)speech;
- (void)pushSpeechOperation:(id)operation;
- (void)pushSpeechOperationWithSelectionChangeDelta:(int64_t)delta block:(id)block;
- (void)setDocument:(id)document;
- (void)willEndEditingInInputDelegate:(id)delegate;
@end

@implementation UIDictationStreamingOperations

- (UIDictationStreamingOperations)init
{
  v6.receiver = self;
  v6.super_class = UIDictationStreamingOperations;
  v2 = [(UIDictationStreamingOperations *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    [v2 setOperations:array];

    *(v2 + 8) = xmmword_18A67F5A0;
    v4 = v2;
  }

  return v2;
}

- (void)clearOperations
{
  operations = [(UIDictationStreamingOperations *)self operations];
  [operations removeAllObjects];

  v4 = MEMORY[0x1E69E58C0];

  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel_popAndInvoke object:0];
}

- (BOOL)hasOperations
{
  operations = [(UIDictationStreamingOperations *)self operations];
  v3 = [operations count] != 0;

  return v3;
}

- (id)pop
{
  operations = [(UIDictationStreamingOperations *)self operations];
  v4 = [operations count];

  if (v4)
  {
    operations2 = [(UIDictationStreamingOperations *)self operations];
    v6 = [operations2 objectAtIndex:0];

    operations3 = [(UIDictationStreamingOperations *)self operations];
    [operations3 removeObjectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)delayAfterSelector:(SEL)selector
{
  operations = [(UIDictationStreamingOperations *)self operations];
  v5 = 1.0;
  if ([operations count] >= 3)
  {
    operations2 = [(UIDictationStreamingOperations *)self operations];
    v5 = vcvtd_n_f64_u64([operations2 count], 1uLL);
  }

  return 1.0 / v5 * self->_timeAfterInsertion;
}

- (void)popAndInvoke
{
  if ([(UIDictationStreamingOperations *)self hasOperations])
  {
    if ([(UIDictationStreamingOperations *)self hasOperations])
    {
      do
      {
        v3 = [(UIDictationStreamingOperations *)self pop];
        [v3 start];
      }

      while ([(UIDictationStreamingOperations *)self hasOperations]);
    }

    +[UIDictationController poppedLastStreamingOperation];
  }
}

- (void)pushSpeechOperation:(id)operation
{
  operationCopy = operation;
  operations = [(UIDictationStreamingOperations *)self operations];
  [operations addObject:operationCopy];
}

- (void)pushSpeechOperationWithSelectionChangeDelta:(int64_t)delta block:(id)block
{
  blockCopy = block;
  if ([(UIDictationStreamingOperations *)self isEmpty])
  {
    blockCopy[2]();
    v6 = blockCopy;
  }

  else
  {
    v7 = [(NSBlockOperation *)UIDictationStreamingOperation blockOperationWithBlock:blockCopy];

    [v7 setSelectionChangeDelta:delta];
    [(UIDictationStreamingOperations *)self pushSpeechOperation:v7];
    v6 = v7;
  }
}

- (void)performSelectRangeForSpeech:(_NSRange)speech
{
  length = speech.length;
  location = speech.location;
  v6 = self->_document;
  beginningOfDocument = [(UITextInput *)v6 beginningOfDocument];
  v8 = [(UITextInput *)v6 positionFromPosition:beginningOfDocument inDirection:2 offset:location];

  v9 = [(UITextInput *)v6 positionFromPosition:v8 inDirection:2 offset:length];
  v10 = [(UITextInput *)v6 textRangeFromPosition:v8 toPosition:v9];

  [(UITextInput *)self->_document setSelectedTextRange:v10];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  if (self->_document != documentCopy)
  {
    v6 = documentCopy;
    [(UIDictationStreamingOperations *)self clearOperations];
    objc_storeStrong(&self->_document, document);
    documentCopy = v6;
  }
}

- (void)pushSelectRangeForSpeech:(_NSRange)speech
{
  if (self->_document)
  {
    length = speech.length;
    v4 = speech.location;
    objc_initWeak(location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__UIDictationStreamingOperations_pushSelectRangeForSpeech___block_invoke;
    v8[3] = &unk_1E71007B0;
    objc_copyWeak(v9, location);
    v9[1] = v4;
    v9[2] = length;
    [(UIDictationStreamingOperations *)self pushSpeechOperationWithSelectionChangeDelta:-length block:v8];
    objc_destroyWeak(v9);
    objc_destroyWeak(location);
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Shouldn't be pushing more editing operations if dictation is stopped.", location, 2u);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &pushSelectRangeForSpeech____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't be pushing more editing operations if dictation is stopped.", location, 2u);
    }
  }
}

void __59__UIDictationStreamingOperations_pushSelectRangeForSpeech___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectRangeForSpeech:{*(a1 + 40), *(a1 + 48)}];
}

- (void)pushInsertTextForSpeech:(id)speech
{
  speechCopy = speech;
  document = self->_document;
  if (document)
  {
    objc_initWeak(location, document);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__UIDictationStreamingOperations_pushInsertTextForSpeech___block_invoke;
    v8[3] = &unk_1E70F2F80;
    objc_copyWeak(&v10, location);
    v9 = speechCopy;
    [(UIDictationStreamingOperations *)self pushSpeechOperationWithSelectionChangeDelta:1 block:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Shouldn't be pushing more editing operations if dictation is stopped.", location, 2u);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &pushInsertTextForSpeech____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Shouldn't be pushing more editing operations if dictation is stopped.", location, 2u);
    }
  }
}

void __58__UIDictationStreamingOperations_pushInsertTextForSpeech___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained insertText:*(a1 + 32)];
}

- (void)_performReplaceSelectedText:(id)text
{
  textCopy = text;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  document = self->_document;
  if (has_internal_diagnostics)
  {
    if (!document)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Shouldn't be pushing more edit notifications if dictation is stopped.", buf, 2u);
      }
    }
  }

  else if (!document)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_performReplaceSelectedText____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Shouldn't be pushing more edit notifications if dictation is stopped.", v11, 2u);
    }
  }

  v7 = self->_document;
  selectedTextRange = [(UITextInput *)v7 selectedTextRange];
  [(UITextInput *)v7 replaceRange:selectedTextRange withText:textCopy];
}

- (void)pushReplaceSelectionWithText:(id)text
{
  textCopy = text;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  document = self->_document;
  if (has_internal_diagnostics)
  {
    if (!document)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Shouldn't be pushing more edit notifications if dictation is stopped.", location, 2u);
      }
    }
  }

  else if (!document)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &pushReplaceSelectionWithText____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Shouldn't be pushing more edit notifications if dictation is stopped.", location, 2u);
    }
  }

  objc_initWeak(location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__UIDictationStreamingOperations_pushReplaceSelectionWithText___block_invoke;
  v10[3] = &unk_1E70F2F80;
  objc_copyWeak(&v12, location);
  v7 = textCopy;
  v11 = v7;
  [(UIDictationStreamingOperations *)self pushSpeechOperationWithSelectionChangeDelta:1 block:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

void __63__UIDictationStreamingOperations_pushReplaceSelectionWithText___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performReplaceSelectedText:*(a1 + 32)];
}

- (void)willEndEditingInInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self->_document == delegateCopy)
  {
    [(UIDictationStreamingOperations *)self setDocument:0];
    [(UIDictationStreamingOperations *)self clearOperations];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "We were never set up properly to stream in this document.", buf, 2u);
    }
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &willEndEditingInInputDelegate____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "We were never set up properly to stream in this document.", v7, 2u);
    }
  }
}

- (BOOL)isEmpty
{
  operations = [(UIDictationStreamingOperations *)self operations];
  v3 = [operations count] == 0;

  return v3;
}

- (BOOL)isNotEmpty
{
  operations = [(UIDictationStreamingOperations *)self operations];
  v3 = [operations count] != 0;

  return v3;
}

- (unint64_t)selectionChangeDelta
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  operations = [(UIDictationStreamingOperations *)self operations];
  v3 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(operations);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) selectionChangeDelta];
      }

      v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end