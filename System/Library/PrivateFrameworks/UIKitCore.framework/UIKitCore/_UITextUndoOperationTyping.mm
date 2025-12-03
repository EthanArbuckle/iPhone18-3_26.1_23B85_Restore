@interface _UITextUndoOperationTyping
- (BOOL)coalesceAffectedRange:(_NSRange)range replacementRange:(_NSRange)replacementRange selectedRange:(_NSRange)selectedRange textStorage:(id)storage;
- (_UITextUndoOperationTyping)initWithAffectedRange:(_NSRange)range inputController:(id)controller replacementRange:(_NSRange)replacementRange;
- (_UITextUndoOperationTyping)initWithAffectedRanges:(id)ranges inputController:(id)controller replacementTextLength:(unint64_t)length;
- (void)_undoRedo;
- (void)_undoRedoForMultipleSelectedRanges;
- (void)undoRedo;
@end

@implementation _UITextUndoOperationTyping

- (_UITextUndoOperationTyping)initWithAffectedRange:(_NSRange)range inputController:(id)controller replacementRange:(_NSRange)replacementRange
{
  length = replacementRange.length;
  location = replacementRange.location;
  v7 = range.length;
  v8 = range.location;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = _UITextUndoOperationTyping;
  controllerCopy = [(_UIUndoTextOperation *)&v20 initWithAffectedRange:v8 inputController:v7, controllerCopy];
  v12 = controllerCopy;
  if (controllerCopy)
  {
    controllerCopy->_replacementRange.location = location;
    controllerCopy->_replacementRange.length = length;
    v13 = objc_alloc(MEMORY[0x1E696AD40]);
    _textStorage = [controllerCopy _textStorage];
    v15 = [_textStorage _UIUndoRedoAttributedSubstringFromRange:{v8, v7}];
    v16 = [v13 initWithAttributedString:v15];
    attributedString = v12->_attributedString;
    v12->_attributedString = v16;

    v18 = v12;
  }

  return v12;
}

- (_UITextUndoOperationTyping)initWithAffectedRanges:(id)ranges inputController:(id)controller replacementTextLength:(unint64_t)length
{
  v37 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v35.receiver = self;
  v35.super_class = _UITextUndoOperationTyping;
  controllerCopy = controller;
  v8 = [(_UIUndoTextOperation *)&v35 initWithAffectedRanges:rangesCopy inputController:?];
  v9 = v8;
  if (v8)
  {
    v27 = v8;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(rangesCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = rangesCopy;
    v11 = rangesCopy;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          rangeValue = [v16 rangeValue];
          v19 = v18;
          _textStorage = [controllerCopy _textStorage];
          v21 = [_textStorage _UIUndoRedoAttributedSubstringFromRange:{rangeValue, v19}];

          firstObject = [v11 firstObject];
          if (v16 == firstObject)
          {
            lengthCopy = length;
          }

          else
          {
            lengthCopy = 0;
          }

          lengthCopy = [[_UITextUndoReplacement alloc] initWithAttributedString:v21 affectedRange:rangeValue replacementTextRange:v19, rangeValue, lengthCopy];
          [(NSArray *)v10 addObject:lengthCopy];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    v9 = v27;
    replacements = v27->_replacements;
    v27->_replacements = v10;

    rangesCopy = v28;
  }

  return v9;
}

- (BOOL)coalesceAffectedRange:(_NSRange)range replacementRange:(_NSRange)replacementRange selectedRange:(_NSRange)selectedRange textStorage:(id)storage
{
  length = selectedRange.length;
  v7 = replacementRange.length;
  v8 = range.length;
  location = range.location;
  storageCopy = storage;
  if (length)
  {
    goto LABEL_2;
  }

  p_replacementRange = &self->_replacementRange;
  v15 = self->_replacementRange.location;
  v14 = self->_replacementRange.length;
  v16 = v14 + v15;
  if (!v7 || (v16 == location ? (v17 = v8 == 0) : (v17 = 0), !v17))
  {
    if (location + v8 != v16)
    {
LABEL_2:
      [(_UIUndoTextOperation *)self affectedRange];
      v12 = 0;
      goto LABEL_15;
    }

    if (v14 >= v8)
    {
      v14 -= v8;
    }

    else
    {
      v18 = v15 - v8 + v14;
      v14 = 0;
      p_replacementRange->location = v18;
    }
  }

  self->_replacementRange.length = v14 + v7;
  affectedRange = [(_UIUndoTextOperation *)self affectedRange];
  if (p_replacementRange->location < affectedRange)
  {
    v21 = affectedRange;
    v22 = v20;
    attributedString = self->_attributedString;
    v24 = [storageCopy _UIUndoRedoAttributedSubstringFromRange:{location, v8}];
    [(NSMutableAttributedString *)attributedString replaceCharactersInRange:0 withAttributedString:0, v24];

    [(_UIUndoTextOperation *)self setAffectedRange:p_replacementRange->location, v22 + v21 - p_replacementRange->location];
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)undoRedo
{
  if (_os_feature_enabled_impl() && [(NSArray *)self->_replacements count]>= 2)
  {

    [(_UITextUndoOperationTyping *)self _undoRedoForMultipleSelectedRanges];
  }

  else
  {

    [(_UITextUndoOperationTyping *)self _undoRedo];
  }
}

- (void)_undoRedoForMultipleSelectedRanges
{
  selfCopy = self;
  v54 = *MEMORY[0x1E69E9840];
  inputController = [(_UIUndoTextOperation *)self inputController];
  undoManager = [inputController undoManager];
  _textStorage = [inputController _textStorage];
  if (!_textStorage)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"NSTextStorage_Undo.m" lineNumber:450 description:{@"Incorrect or nil NSTextStorage requested for undo operation %@, ", selfCopy}];

    goto LABEL_27;
  }

  [inputController _setUndoRedoInProgress:1];
  isUndoing = [undoManager isUndoing];
  replacements = selfCopy->_replacements;
  if (isUndoing)
  {
    bs_reverse = replacements;
  }

  else
  {
    bs_reverse = [(NSArray *)replacements bs_reverse];
  }

  v10 = bs_reverse;
  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](selfCopy->_replacements, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  _textStorage2 = v10;
  obj = _textStorage2;
  v42 = [(NSArray *)_textStorage2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v42)
  {
LABEL_25:

    goto LABEL_26;
  }

  v36 = selfCopy;
  v12 = 0;
  v13 = *v50;
  v43 = undoManager;
  v38 = *v50;
  do
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v50 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v49 + 1) + 8 * i);
      if ([undoManager isUndoing])
      {
        replacementTextRange = [v15 replacementTextRange];
      }

      else
      {
        replacementTextRange = [v15 affectedRange];
      }

      v18 = replacementTextRange;
      v19 = v17;
      attributedString = [v15 attributedString];
      string = [attributedString string];
      v22 = [inputController _delegateShouldChangeTextInRange:v18 replacementText:{v19, string}];

      if (v22)
      {
        v23 = objc_alloc(MEMORY[0x1E696AD40]);
        v24 = [_textStorage _UIUndoRedoAttributedSubstringFromRange:{v18, v19}];
        v41 = [v23 initWithAttributedString:v24];

        [inputController undoWillChangeText];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __64___UITextUndoOperationTyping__undoRedoForMultipleSelectedRanges__block_invoke;
        v45[3] = &unk_1E7126120;
        v47 = v18;
        v48 = v19;
        v25 = attributedString;
        v46 = v25;
        [_textStorage coordinateEditing:v45];
        if ([v43 isUndoing])
        {
          v26 = MEMORY[0x1E696B098];
          affectedRange = [v15 affectedRange];
          v29 = [v26 valueWithRange:{affectedRange, v28}];
          v13 = v38;
          goto LABEL_19;
        }

        lastObject = [(NSArray *)obj lastObject];

        v13 = v38;
        if (v15 == lastObject)
        {
          replacementTextRange2 = [v15 replacementTextRange];
          v29 = [MEMORY[0x1E696B098] valueWithRange:{replacementTextRange2 + v32, 0}];
LABEL_19:
          [v37 addObject:v29];
        }

        [inputController undoDidReplaceRange:v18 withAttributedText:{v19, v25}];
        [v15 setAttributedString:v41];

        v12 = 1;
      }

      undoManager = v43;
    }

    v42 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v42);

  selfCopy = v36;
  if (v12)
  {
    [inputController setSelectedRanges:v37];
    firstObject = [v37 firstObject];
    rangeValue = [firstObject rangeValue];
    [inputController scrollRangeToVisible:{rangeValue, v35}];

    _textStorage2 = [inputController _textStorage];
    [v43 registerUndoWithTarget:_textStorage2 selector:sel__UIUndoRedoTextOperation_ object:v36];
    goto LABEL_25;
  }

LABEL_26:
  [inputController _setUndoRedoInProgress:0];
  v44.receiver = selfCopy;
  v44.super_class = _UITextUndoOperationTyping;
  [(_UIUndoTextOperation *)&v44 undoRedo];

LABEL_27:
}

- (void)_undoRedo
{
  inputController = [(_UIUndoTextOperation *)self inputController];
  undoManager = [inputController undoManager];
  if ([undoManager isUndoing])
  {
    location = self->_replacementRange.location;
    length = self->_replacementRange.length;
  }

  else
  {
    location = [(_UIUndoTextOperation *)self affectedRange];
    length = v8;
  }

  _textStorage = [inputController _textStorage];
  if (_textStorage)
  {
    [inputController _setUndoRedoInProgress:1];
    string = [(NSMutableAttributedString *)self->_attributedString string];
    v11 = [inputController _delegateShouldChangeTextInRange:location replacementText:{length, string}];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696AD40]);
      v13 = [_textStorage _UIUndoRedoAttributedSubstringFromRange:{location, length}];
      v14 = [v12 initWithAttributedString:v13];

      [inputController undoWillChangeText];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __39___UITextUndoOperationTyping__undoRedo__block_invoke;
      v23[3] = &unk_1E7126120;
      v23[5] = location;
      v23[6] = length;
      v23[4] = self;
      [_textStorage coordinateEditing:v23];
      if ([undoManager isUndoing])
      {
        affectedRange = [(_UIUndoTextOperation *)self affectedRange];
        v17 = v16;
      }

      else
      {
        v17 = 0;
        affectedRange = self->_replacementRange.length + self->_replacementRange.location;
      }

      [inputController setSelectedRange:{affectedRange, v17}];
      [inputController undoDidReplaceRange:location withAttributedText:{length, self->_attributedString}];
      [inputController scrollRangeToVisible:{affectedRange, v17}];
      attributedString = self->_attributedString;
      self->_attributedString = v14;
      v20 = v14;

      _textStorage2 = [inputController _textStorage];
      [undoManager registerUndoWithTarget:_textStorage2 selector:sel__UIUndoRedoTextOperation_ object:self];
    }

    [inputController _setUndoRedoInProgress:0];
    v22.receiver = self;
    v22.super_class = _UITextUndoOperationTyping;
    [(_UIUndoTextOperation *)&v22 undoRedo];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSTextStorage_Undo.m" lineNumber:504 description:{@"Incorrect or nil NSTextStorage requested for undo operation %@, ", self}];
  }
}

@end