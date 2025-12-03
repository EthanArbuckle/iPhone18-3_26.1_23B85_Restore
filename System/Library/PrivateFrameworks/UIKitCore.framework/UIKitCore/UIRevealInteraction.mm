@interface UIRevealInteraction
+ (id)revealItemForTextInput:(id)input locationInTextInputView:(CGPoint)view;
@end

@implementation UIRevealInteraction

+ (id)revealItemForTextInput:(id)input locationInTextInputView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  v33[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v7 = [inputCopy closestPositionToPoint:{x, y}];
  v8 = [inputCopy positionFromPosition:v7 offset:-1];
  if (v8)
  {
    v9 = [inputCopy textRangeFromPosition:v8 toPosition:v7];
  }

  else
  {
    v8 = [inputCopy positionFromPosition:v7 offset:1];
    if (!v8)
    {
      v10 = 0;
      goto LABEL_18;
    }

    v9 = [inputCopy textRangeFromPosition:v7 toPosition:v8];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [inputCopy _nsrangeForTextRange:v9];
    _selectedNSRange = [inputCopy _selectedNSRange];
    v13 = v12;
    beginningOfDocument = [inputCopy beginningOfDocument];
    endOfDocument = [inputCopy endOfDocument];
    v16 = [inputCopy textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];
    v17 = [inputCopy textInRange:v16];

    v18 = [v17 length];
    if (v18 && v18 == v11)
    {
      --v11;
    }

    else
    {
      v19 = 0;
      if (!v18 || v11 > v18)
      {
LABEL_16:

        goto LABEL_19;
      }
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v20 = _MergedGlobals_1324;
    v32 = _MergedGlobals_1324;
    if (!_MergedGlobals_1324)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __getRVItemClass_block_invoke;
      v28[3] = &unk_1E70F2F20;
      v28[4] = &v29;
      __getRVItemClass_block_invoke(v28);
      v20 = v30[3];
    }

    v21 = v20;
    _Block_object_dispose(&v29, 8);
    v22 = [v20 alloc];
    v23 = v22;
    if (v13)
    {
      v24 = [MEMORY[0x1E696B098] valueWithRange:{_selectedNSRange, v13}];
      v33[0] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v19 = [v23 initWithText:v17 clickedIndex:v11 selectionRanges:v25 shouldUpdateSelection:0];
    }

    else
    {
      v19 = [v22 initWithText:v17 clickedIndex:v11 selectionRanges:0 shouldUpdateSelection:0];
    }

    goto LABEL_16;
  }

LABEL_18:
  v19 = 0;
LABEL_19:

  return v19;
}

@end