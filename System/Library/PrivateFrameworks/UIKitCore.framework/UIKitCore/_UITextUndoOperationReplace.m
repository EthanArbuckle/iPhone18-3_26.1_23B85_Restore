@interface _UITextUndoOperationReplace
- (_UITextUndoOperationReplace)initWithAffectedRange:(_NSRange)a3 inputController:(id)a4 replacementRange:(_NSRange)a5;
- (_UITextUndoOperationReplace)initWithAffectedRanges:(id)a3 inputController:(id)a4 replacementTextLength:(unint64_t)a5;
- (void)_undoRedo;
- (void)_undoRedoForMultipleSelectedRanges;
- (void)undoRedo;
@end

@implementation _UITextUndoOperationReplace

- (_UITextUndoOperationReplace)initWithAffectedRange:(_NSRange)a3 inputController:(id)a4 replacementRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a3.length;
  v8 = a3.location;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = _UITextUndoOperationReplace;
  v11 = [(_UIUndoTextOperation *)&v20 initWithAffectedRange:v8 inputController:v7, v10];
  v12 = v11;
  if (v11)
  {
    v11->_replacementRange.location = location;
    v11->_replacementRange.length = length;
    v13 = [v10 _textStorage];
    v14 = [(_UIUndoTextOperation *)v12 affectedRange];
    v16 = [v13 _UIUndoRedoAttributedSubstringFromRange:{v14, v15}];
    v17 = [v16 copy];
    attributedString = v12->_attributedString;
    v12->_attributedString = v17;
  }

  return v12;
}

- (_UITextUndoOperationReplace)initWithAffectedRanges:(id)a3 inputController:(id)a4 replacementTextLength:(unint64_t)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35.receiver = self;
  v35.super_class = _UITextUndoOperationReplace;
  v30 = a4;
  v8 = [(_UIUndoTextOperation *)&v35 initWithAffectedRanges:v7 inputController:?];
  v9 = v8;
  if (v8)
  {
    v27 = v8;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v7;
    v11 = v7;
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
          v17 = [v16 rangeValue];
          v19 = v18;
          v20 = [v30 _textStorage];
          v21 = [v20 _UIUndoRedoAttributedSubstringFromRange:{v17, v19}];

          v22 = [v11 firstObject];
          if (v16 == v22)
          {
            v23 = a5;
          }

          else
          {
            v23 = 0;
          }

          v24 = [[_UITextUndoReplacement alloc] initWithAttributedString:v21 affectedRange:v17 replacementTextRange:v19, v17, v23];
          [(NSArray *)v10 addObject:v24];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    v9 = v27;
    replacements = v27->_replacements;
    v27->_replacements = v10;

    v7 = v28;
  }

  return v9;
}

- (void)undoRedo
{
  if (_os_feature_enabled_impl() && [(NSArray *)self->_replacements count]>= 2)
  {

    [(_UITextUndoOperationReplace *)self _undoRedoForMultipleSelectedRanges];
  }

  else
  {

    [(_UITextUndoOperationReplace *)self _undoRedo];
  }
}

- (void)_undoRedoForMultipleSelectedRanges
{
  v3 = self;
  v54 = *MEMORY[0x1E69E9840];
  v4 = [(_UIUndoTextOperation *)self inputController];
  v5 = [v4 undoManager];
  v39 = [v4 _textStorage];
  if (!v39)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:v3 file:@"NSTextStorage_Undo.m" lineNumber:156 description:{@"Incorrect or nil NSTextStorage requested for undo operation %@, ", v3}];

    goto LABEL_27;
  }

  [v4 _setUndoRedoInProgress:1];
  v6 = [v5 isUndoing];
  replacements = v3->_replacements;
  if (v6)
  {
    v8 = replacements;
  }

  else
  {
    v8 = [(NSArray *)replacements bs_reverse];
  }

  v10 = v8;
  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v3->_replacements, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = v10;
  obj = v11;
  v42 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v42)
  {
LABEL_25:

    goto LABEL_26;
  }

  v36 = v3;
  v12 = 0;
  v13 = *v50;
  v43 = v5;
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
      if ([v5 isUndoing])
      {
        v16 = [v15 replacementTextRange];
      }

      else
      {
        v16 = [v15 affectedRange];
      }

      v18 = v16;
      v19 = v17;
      v20 = [v15 attributedString];
      v21 = [v20 string];
      v22 = [v4 _delegateShouldChangeTextInRange:v18 replacementText:{v19, v21}];

      if (v22)
      {
        v23 = objc_alloc(MEMORY[0x1E696AD40]);
        v24 = [v39 _UIUndoRedoAttributedSubstringFromRange:{v18, v19}];
        v41 = [v23 initWithAttributedString:v24];

        [v4 undoWillChangeText];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __65___UITextUndoOperationReplace__undoRedoForMultipleSelectedRanges__block_invoke;
        v45[3] = &unk_1E7126120;
        v47 = v18;
        v48 = v19;
        v25 = v20;
        v46 = v25;
        [v39 coordinateEditing:v45];
        if ([v43 isUndoing])
        {
          v26 = MEMORY[0x1E696B098];
          v27 = [v15 affectedRange];
          v29 = [v26 valueWithRange:{v27, v28}];
          v13 = v38;
          goto LABEL_19;
        }

        v30 = [(NSArray *)obj lastObject];

        v13 = v38;
        if (v15 == v30)
        {
          v31 = [v15 replacementTextRange];
          v29 = [MEMORY[0x1E696B098] valueWithRange:{v31 + v32, 0}];
LABEL_19:
          [v37 addObject:v29];
        }

        [v4 undoDidReplaceRange:v18 withAttributedText:{v19, v25}];
        [v15 setAttributedString:v41];

        v12 = 1;
      }

      v5 = v43;
    }

    v42 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v42);

  v3 = v36;
  if (v12)
  {
    [v4 setSelectedRanges:v37];
    v33 = [v37 firstObject];
    v34 = [v33 rangeValue];
    [v4 scrollRangeToVisible:{v34, v35}];

    v11 = [v4 _textStorage];
    [v43 registerUndoWithTarget:v11 selector:sel__UIUndoRedoTextOperation_ object:v36];
    goto LABEL_25;
  }

LABEL_26:
  [v4 _setUndoRedoInProgress:0];
  v44.receiver = v3;
  v44.super_class = _UITextUndoOperationReplace;
  [(_UIUndoTextOperation *)&v44 undoRedo];

LABEL_27:
}

- (void)_undoRedo
{
  v4 = [(_UIUndoTextOperation *)self inputController];
  v5 = [v4 undoManager];
  if ([v5 isUndoing])
  {
    location = self->_replacementRange.location;
    length = self->_replacementRange.length;
  }

  else
  {
    location = [(_UIUndoTextOperation *)self affectedRange];
    length = v8;
  }

  v9 = [v4 _textStorage];
  if (v9)
  {
    [v4 _setUndoRedoInProgress:1];
    v10 = [(NSAttributedString *)self->_attributedString string];
    v11 = [v4 _delegateShouldChangeTextInRange:location replacementText:{length, v10}];

    if (v11)
    {
      v12 = [v9 _UIUndoRedoAttributedSubstringFromRange:{location, length}];
      [v4 undoWillChangeText];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __40___UITextUndoOperationReplace__undoRedo__block_invoke;
      v21[3] = &unk_1E7126120;
      v21[5] = location;
      v21[6] = length;
      v21[4] = self;
      [v9 coordinateEditing:v21];
      if ([v5 isUndoing])
      {
        v13 = [(_UIUndoTextOperation *)self affectedRange];
        v15 = v14;
      }

      else
      {
        v15 = 0;
        v13 = self->_replacementRange.length + self->_replacementRange.location;
      }

      [v4 setSelectedRange:v13 afterDelta:v15 appliedToRange:{-[NSAttributedString length](self->_attributedString, "length") - length, location, length}];
      [v4 undoDidReplaceRange:location withAttributedText:{length, self->_attributedString}];
      [v4 scrollRangeToVisible:{v13, v15}];
      v17 = [v12 copy];
      attributedString = self->_attributedString;
      self->_attributedString = v17;

      v19 = [v4 _textStorage];
      [v5 registerUndoWithTarget:v19 selector:sel__UIUndoRedoTextOperation_ object:self];
    }

    [v4 _setUndoRedoInProgress:0];
    v20.receiver = self;
    v20.super_class = _UITextUndoOperationReplace;
    [(_UIUndoTextOperation *)&v20 undoRedo];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NSTextStorage_Undo.m" lineNumber:211 description:{@"Incorrect or nil NSTextStorage requested for undo operation: %@", self}];
  }
}

@end