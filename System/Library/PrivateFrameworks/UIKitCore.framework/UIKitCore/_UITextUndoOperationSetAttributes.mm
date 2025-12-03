@interface _UITextUndoOperationSetAttributes
- (_UITextUndoOperationSetAttributes)initWithAffectedRange:(_NSRange)range inputController:(id)controller;
- (_UITextUndoOperationSetAttributes)initWithAffectedRanges:(id)ranges inputController:(id)controller;
- (void)_undoRedo;
- (void)_undoRedoForMultipleSelectedRanges;
- (void)undoRedo;
@end

@implementation _UITextUndoOperationSetAttributes

- (_UITextUndoOperationSetAttributes)initWithAffectedRange:(_NSRange)range inputController:(id)controller
{
  length = range.length;
  location = range.location;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = _UITextUndoOperationSetAttributes;
  controllerCopy = [(_UIUndoTextOperation *)&v17 initWithAffectedRange:location inputController:length, controllerCopy];
  if (controllerCopy)
  {
    v9 = [off_1E70ECC38 alloc];
    _textStorage = [controllerCopy _textStorage];
    affectedRange = [(_UIUndoTextOperation *)controllerCopy affectedRange];
    v13 = [v9 initWithTextStorage:_textStorage range:{affectedRange, v12}];
    attributes = controllerCopy->_attributes;
    controllerCopy->_attributes = v13;

    v15 = controllerCopy;
  }

  return controllerCopy;
}

- (_UITextUndoOperationSetAttributes)initWithAffectedRanges:(id)ranges inputController:(id)controller
{
  v34 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  controllerCopy = controller;
  v32.receiver = self;
  v32.super_class = _UITextUndoOperationSetAttributes;
  v8 = [(_UIUndoTextOperation *)&v32 initWithAffectedRanges:rangesCopy inputController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    v25 = v8;
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = rangesCopy;
    obj = rangesCopy;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          rangeValue = [*(*(&v28 + 1) + 8 * v14) rangeValue];
          v17 = v16;
          v18 = [off_1E70ECC38 alloc];
          _textStorage = [controllerCopy _textStorage];
          v20 = [v18 initWithTextStorage:_textStorage range:{rangeValue, v17}];

          v21 = [[_UITextUndoAttributes alloc] initWithAttributesRun:v20 affectedRange:rangeValue, v17];
          [array addObject:v21];

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v22 = [array copy];
    v9 = v25;
    attributesArray = v25->_attributesArray;
    v25->_attributesArray = v22;

    rangesCopy = v26;
  }

  return v9;
}

- (void)undoRedo
{
  if (_os_feature_enabled_impl() && [(NSArray *)self->_replacements count]>= 2)
  {

    [(_UITextUndoOperationSetAttributes *)self _undoRedoForMultipleSelectedRanges];
  }

  else
  {

    [(_UITextUndoOperationSetAttributes *)self _undoRedo];
  }
}

- (void)_undoRedoForMultipleSelectedRanges
{
  selfCopy = self;
  v44 = *MEMORY[0x1E69E9840];
  inputController = [(_UIUndoTextOperation *)self inputController];
  _textStorage = [inputController _textStorage];
  if (_textStorage)
  {
    [inputController _setUndoRedoInProgress:1];
    array = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = selfCopy->_attributesArray;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v36 = selfCopy;
      v9 = 0;
      v10 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          affectedRange = [v12 affectedRange];
          if ([inputController _delegateShouldChangeTextInRange:affectedRange replacementText:{v14, 0}])
          {
            v15 = [off_1E70ECC38 alloc];
            affectedRange2 = [v12 affectedRange];
            v18 = [v15 initWithTextStorage:_textStorage range:{affectedRange2, v17}];
            [inputController undoWillChangeText];
            attributesRun = [v12 attributesRun];
            [attributesRun restoreAttributesOfTextStorage:_textStorage];

            [v12 setAttributesRun:v18];
            v20 = MEMORY[0x1E696B098];
            affectedRange3 = [v12 affectedRange];
            v23 = [v20 valueWithRange:{affectedRange3, v22}];
            [array addObject:v23];

            affectedRange4 = [v12 affectedRange];
            v26 = v25;
            affectedRange5 = [v12 affectedRange];
            v29 = [_textStorage attributedSubstringFromRange:{affectedRange5, v28}];
            [inputController undoDidReplaceRange:affectedRange4 withAttributedText:{v26, v29}];

            v9 = 1;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v8);

      selfCopy = v36;
      if (v9)
      {
        [inputController setSelectedRanges:array];
        firstObject = [array firstObject];
        rangeValue = [firstObject rangeValue];
        [inputController scrollRangeToVisible:{rangeValue, v32}];

        undoManager = [inputController undoManager];
        _textStorage2 = [inputController _textStorage];
        [undoManager registerUndoWithTarget:_textStorage2 selector:sel__UIUndoRedoTextOperation_ object:v36];

        [inputController _invalidateTypingAttributes];
      }
    }

    else
    {
    }

    [inputController _setUndoRedoInProgress:0];
    v38.receiver = selfCopy;
    v38.super_class = _UITextUndoOperationSetAttributes;
    [(_UIUndoTextOperation *)&v38 undoRedo];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"NSTextStorage_Undo.m" lineNumber:287 description:{@"Incorrect or nil NSTextStorage requested for undo operation: %@", selfCopy}];
  }
}

- (void)_undoRedo
{
  inputController = [(_UIUndoTextOperation *)self inputController];
  _textStorage = [inputController _textStorage];
  if (_textStorage)
  {
    [inputController _setUndoRedoInProgress:1];
    range = [(_NSAttributeRun *)self->_attributes range];
    if ([inputController _delegateShouldChangeTextInRange:range replacementText:{v7, 0}])
    {
      affectedRange = [(_UIUndoTextOperation *)self affectedRange];
      v10 = v9;
      v11 = [[off_1E70ECC38 alloc] initWithTextStorage:_textStorage range:{affectedRange, v9}];
      [inputController undoWillChangeText];
      [(_NSAttributeRun *)self->_attributes restoreAttributesOfTextStorage:_textStorage];
      attributes = self->_attributes;
      self->_attributes = v11;
      v13 = v11;

      affectedRange2 = [(_UIUndoTextOperation *)self affectedRange];
      v16 = v15;
      [inputController setSelectedRange:{affectedRange2, v15}];
      v17 = [_textStorage attributedSubstringFromRange:{affectedRange2, v16}];
      [inputController undoDidReplaceRange:affectedRange withAttributedText:{v10, v17}];

      [inputController scrollRangeToVisible:{affectedRange2, v16}];
      undoManager = [inputController undoManager];
      _textStorage2 = [inputController _textStorage];
      [undoManager registerUndoWithTarget:_textStorage2 selector:sel__UIUndoRedoTextOperation_ object:self];

      [inputController _invalidateTypingAttributes];
    }

    [inputController _setUndoRedoInProgress:0];
    v21.receiver = self;
    v21.super_class = _UITextUndoOperationSetAttributes;
    [(_UIUndoTextOperation *)&v21 undoRedo];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSTextStorage_Undo.m" lineNumber:328 description:{@"Incorrect or nil NSTextStorage requested for undo operation: %@", self}];
  }
}

@end