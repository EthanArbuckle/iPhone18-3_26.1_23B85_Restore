@interface _UITextLayoutBaselineCalculator
- (_UITextLayoutBaselineCalculator)initWithTextLayoutController:(id)a3 typingAttributes:(id)a4 usesLineFragmentOrigin:(BOOL)a5 coordinateSpace:(id)a6 scale:(double)a7 fallbackTextContainerOrigin:(CGPoint)a8;
- (double)_baselineOffsetAtPosition:(id)a3;
- (double)_convertOffset:(double)a3;
- (double)firstBaselineOffsetFromTop;
- (double)lastBaselineOffsetFromBottom;
@end

@implementation _UITextLayoutBaselineCalculator

- (double)firstBaselineOffsetFromTop
{
  v3 = [(_UITextLayoutController *)self->_textLayoutController beginningOfDocument];
  [(_UITextLayoutBaselineCalculator *)self _baselineOffsetAtPosition:v3];
  v5 = v4;

  v6 = self->_coordinateSpace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = _UIBaselineLayoutBoundsConsultingContentSizeConstraints(v6);
  }

  else
  {
    [(UICoordinateSpace *)v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v16.origin.x = v11;
  v16.origin.y = v12;
  v16.size.width = v13;
  v16.size.height = v14;
  return v5 + CGRectGetMinY(v16);
}

- (double)lastBaselineOffsetFromBottom
{
  v3 = [(_UITextLayoutController *)self->_textLayoutController endOfDocument];
  [(_UITextLayoutBaselineCalculator *)self _baselineOffsetAtPosition:v3];
  v5 = v4;

  v6 = self->_coordinateSpace;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = _UIBaselineLayoutBoundsConsultingContentSizeConstraints(v6);
  }

  else
  {
    [(UICoordinateSpace *)v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v18.origin.x = v11;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  MaxY = CGRectGetMaxY(v18);
  [(UICoordinateSpace *)self->_coordinateSpace bounds];
  v16 = CGRectGetHeight(v19) - MaxY;
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  result = MaxY - v5 + v16;
  if (self->_usesLineFragmentOrigin)
  {
    return MaxY - v5;
  }

  return result;
}

- (_UITextLayoutBaselineCalculator)initWithTextLayoutController:(id)a3 typingAttributes:(id)a4 usesLineFragmentOrigin:(BOOL)a5 coordinateSpace:(id)a6 scale:(double)a7 fallbackTextContainerOrigin:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = _UITextLayoutBaselineCalculator;
  v19 = [(_UITextLayoutBaselineCalculator *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_textLayoutController, a3);
    objc_storeStrong(&v20->_typingAttributes, a4);
    objc_storeStrong(&v20->_coordinateSpace, a6);
    v20->_scale = a7;
    v20->_usesLineFragmentOrigin = a5;
    v20->_fallbackTextContainerOrigin.x = x;
    v20->_fallbackTextContainerOrigin.y = y;
  }

  return v20;
}

- (double)_baselineOffsetAtPosition:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x4010000000;
  v45 = "";
  v5 = *(MEMORY[0x1E695F058] + 16);
  v46 = *MEMORY[0x1E695F058];
  v47 = v5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__85;
  v36 = __Block_byref_object_dispose__85;
  v37 = 0;
  textLayoutController = self->_textLayoutController;
  typingAttributes = self->_typingAttributes;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __61___UITextLayoutBaselineCalculator__baselineOffsetAtPosition___block_invoke;
  v31[3] = &unk_1E7108760;
  v31[4] = &v32;
  v31[5] = &v42;
  v31[6] = &v38;
  [(_UITextLayoutController *)textLayoutController requestTextGeometryAtPosition:v4 typingAttributes:typingAttributes resultBlock:v31];
  if (CGRectIsNull(v43[1]))
  {
    v8 = self->_coordinateSpace;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = _UIBaselineLayoutBoundsConsultingContentSizeConstraints(v8);
    }

    else
    {
      [(UICoordinateSpace *)v8 bounds];
    }

    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;

    p_x = &v43->origin.x;
    v43[1].origin.x = v13;
    p_x[5] = v14;
    p_x[6] = v15;
    p_x[7] = v16;
  }

  if (v39[3] == 0.0)
  {
    v18 = [(_UITextLayoutController *)self->_textLayoutController textStorage];
    v19 = objc_opt_respondsToSelector();
    coordinateSpace = v18;
    if ((v19 & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_11;
      }

      coordinateSpace = self->_coordinateSpace;
    }

    v21 = [(UICoordinateSpace *)coordinateSpace font];
    if (v21)
    {
LABEL_12:
      MinY = CGRectGetMinY(v43[1]);
      [v21 ascender];
      v39[3] = MinY + v23;

      goto LABEL_13;
    }

LABEL_11:
    [off_1E70ECC18 defaultFontSize];
    v21 = [off_1E70ECC18 systemFontOfSize:?];
    goto LABEL_12;
  }

LABEL_13:
  [v33[5] size];
  y = 0.0;
  if (v25 > 0.0)
  {
    v26 = [v33[5] textView];
    if (v26)
    {
      [v33[5] textContainerOrigin];
      y = v27;
    }

    else
    {
      y = self->_fallbackTextContainerOrigin.y;
    }
  }

  [(_UITextLayoutBaselineCalculator *)self _convertOffset:y + CGRectGetMinY(v43[1]) + v39[3]];
  v29 = v28;
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v29;
}

- (double)_convertOffset:(double)a3
{
  if (self->_coordinateSpace)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UICoordinateSpace *)self->_coordinateSpace _baselineCalculatorSourceCoordinateSpace], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
    }

    else
    {
      v7 = [(_UITextLayoutController *)self->_textLayoutController firstTextContainer];
      v6 = [v7 textView];

      if (!v6)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (v6 != self->_coordinateSpace)
    {
      [(UICoordinateSpace *)v6 convertPoint:0.0 toCoordinateSpace:a3];
      a3 = v8;
    }

    goto LABEL_8;
  }

LABEL_9:
  scale = self->_scale;

  UIRoundToScale(a3, scale);
  return result;
}

@end