@interface _UITextUndoOperationSetAttributes
- (_UITextUndoOperationSetAttributes)initWithAffectedRange:(_NSRange)a3 inputController:(id)a4;
- (_UITextUndoOperationSetAttributes)initWithAffectedRanges:(id)a3 inputController:(id)a4;
- (void)_undoRedo;
- (void)_undoRedoForMultipleSelectedRanges;
- (void)undoRedo;
@end

@implementation _UITextUndoOperationSetAttributes

- (_UITextUndoOperationSetAttributes)initWithAffectedRange:(_NSRange)a3 inputController:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _UITextUndoOperationSetAttributes;
  v8 = [(_UIUndoTextOperation *)&v17 initWithAffectedRange:location inputController:length, v7];
  if (v8)
  {
    v9 = [off_1E70ECC38 alloc];
    v10 = [v7 _textStorage];
    v11 = [(_UIUndoTextOperation *)v8 affectedRange];
    v13 = [v9 initWithTextStorage:v10 range:{v11, v12}];
    attributes = v8->_attributes;
    v8->_attributes = v13;

    v15 = v8;
  }

  return v8;
}

- (_UITextUndoOperationSetAttributes)initWithAffectedRanges:(id)a3 inputController:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = _UITextUndoOperationSetAttributes;
  v8 = [(_UIUndoTextOperation *)&v32 initWithAffectedRanges:v6 inputController:v7];
  v9 = v8;
  if (v8)
  {
    v25 = v8;
    v10 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v6;
    obj = v6;
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

          v15 = [*(*(&v28 + 1) + 8 * v14) rangeValue];
          v17 = v16;
          v18 = [off_1E70ECC38 alloc];
          v19 = [v7 _textStorage];
          v20 = [v18 initWithTextStorage:v19 range:{v15, v17}];

          v21 = [[_UITextUndoAttributes alloc] initWithAttributesRun:v20 affectedRange:v15, v17];
          [v10 addObject:v21];

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    v22 = [v10 copy];
    v9 = v25;
    attributesArray = v25->_attributesArray;
    v25->_attributesArray = v22;

    v6 = v26;
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
  v3 = self;
  v44 = *MEMORY[0x1E69E9840];
  v4 = [(_UIUndoTextOperation *)self inputController];
  v5 = [v4 _textStorage];
  if (v5)
  {
    [v4 _setUndoRedoInProgress:1];
    v37 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = v3->_attributesArray;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v36 = v3;
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
          v13 = [v12 affectedRange];
          if ([v4 _delegateShouldChangeTextInRange:v13 replacementText:{v14, 0}])
          {
            v15 = [off_1E70ECC38 alloc];
            v16 = [v12 affectedRange];
            v18 = [v15 initWithTextStorage:v5 range:{v16, v17}];
            [v4 undoWillChangeText];
            v19 = [v12 attributesRun];
            [v19 restoreAttributesOfTextStorage:v5];

            [v12 setAttributesRun:v18];
            v20 = MEMORY[0x1E696B098];
            v21 = [v12 affectedRange];
            v23 = [v20 valueWithRange:{v21, v22}];
            [v37 addObject:v23];

            v24 = [v12 affectedRange];
            v26 = v25;
            v27 = [v12 affectedRange];
            v29 = [v5 attributedSubstringFromRange:{v27, v28}];
            [v4 undoDidReplaceRange:v24 withAttributedText:{v26, v29}];

            v9 = 1;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v8);

      v3 = v36;
      if (v9)
      {
        [v4 setSelectedRanges:v37];
        v30 = [v37 firstObject];
        v31 = [v30 rangeValue];
        [v4 scrollRangeToVisible:{v31, v32}];

        v33 = [v4 undoManager];
        v34 = [v4 _textStorage];
        [v33 registerUndoWithTarget:v34 selector:sel__UIUndoRedoTextOperation_ object:v36];

        [v4 _invalidateTypingAttributes];
      }
    }

    else
    {
    }

    [v4 _setUndoRedoInProgress:0];
    v38.receiver = v3;
    v38.super_class = _UITextUndoOperationSetAttributes;
    [(_UIUndoTextOperation *)&v38 undoRedo];
  }

  else
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:v3 file:@"NSTextStorage_Undo.m" lineNumber:287 description:{@"Incorrect or nil NSTextStorage requested for undo operation: %@", v3}];
  }
}

- (void)_undoRedo
{
  v4 = [(_UIUndoTextOperation *)self inputController];
  v5 = [v4 _textStorage];
  if (v5)
  {
    [v4 _setUndoRedoInProgress:1];
    v6 = [(_NSAttributeRun *)self->_attributes range];
    if ([v4 _delegateShouldChangeTextInRange:v6 replacementText:{v7, 0}])
    {
      v8 = [(_UIUndoTextOperation *)self affectedRange];
      v10 = v9;
      v11 = [[off_1E70ECC38 alloc] initWithTextStorage:v5 range:{v8, v9}];
      [v4 undoWillChangeText];
      [(_NSAttributeRun *)self->_attributes restoreAttributesOfTextStorage:v5];
      attributes = self->_attributes;
      self->_attributes = v11;
      v13 = v11;

      v14 = [(_UIUndoTextOperation *)self affectedRange];
      v16 = v15;
      [v4 setSelectedRange:{v14, v15}];
      v17 = [v5 attributedSubstringFromRange:{v14, v16}];
      [v4 undoDidReplaceRange:v8 withAttributedText:{v10, v17}];

      [v4 scrollRangeToVisible:{v14, v16}];
      v18 = [v4 undoManager];
      v19 = [v4 _textStorage];
      [v18 registerUndoWithTarget:v19 selector:sel__UIUndoRedoTextOperation_ object:self];

      [v4 _invalidateTypingAttributes];
    }

    [v4 _setUndoRedoInProgress:0];
    v21.receiver = self;
    v21.super_class = _UITextUndoOperationSetAttributes;
    [(_UIUndoTextOperation *)&v21 undoRedo];
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"NSTextStorage_Undo.m" lineNumber:328 description:{@"Incorrect or nil NSTextStorage requested for undo operation: %@", self}];
  }
}

@end