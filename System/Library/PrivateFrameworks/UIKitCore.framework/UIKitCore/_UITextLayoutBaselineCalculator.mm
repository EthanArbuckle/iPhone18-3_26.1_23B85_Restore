@interface _UITextLayoutBaselineCalculator
- (_UITextLayoutBaselineCalculator)initWithTextLayoutController:(id)controller typingAttributes:(id)attributes usesLineFragmentOrigin:(BOOL)origin coordinateSpace:(id)space scale:(double)scale fallbackTextContainerOrigin:(CGPoint)containerOrigin;
- (double)_baselineOffsetAtPosition:(id)position;
- (double)_convertOffset:(double)offset;
- (double)firstBaselineOffsetFromTop;
- (double)lastBaselineOffsetFromBottom;
@end

@implementation _UITextLayoutBaselineCalculator

- (double)firstBaselineOffsetFromTop
{
  beginningOfDocument = [(_UITextLayoutController *)self->_textLayoutController beginningOfDocument];
  [(_UITextLayoutBaselineCalculator *)self _baselineOffsetAtPosition:beginningOfDocument];
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
  endOfDocument = [(_UITextLayoutController *)self->_textLayoutController endOfDocument];
  [(_UITextLayoutBaselineCalculator *)self _baselineOffsetAtPosition:endOfDocument];
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

- (_UITextLayoutBaselineCalculator)initWithTextLayoutController:(id)controller typingAttributes:(id)attributes usesLineFragmentOrigin:(BOOL)origin coordinateSpace:(id)space scale:(double)scale fallbackTextContainerOrigin:(CGPoint)containerOrigin
{
  y = containerOrigin.y;
  x = containerOrigin.x;
  controllerCopy = controller;
  attributesCopy = attributes;
  spaceCopy = space;
  v22.receiver = self;
  v22.super_class = _UITextLayoutBaselineCalculator;
  v19 = [(_UITextLayoutBaselineCalculator *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_textLayoutController, controller);
    objc_storeStrong(&v20->_typingAttributes, attributes);
    objc_storeStrong(&v20->_coordinateSpace, space);
    v20->_scale = scale;
    v20->_usesLineFragmentOrigin = origin;
    v20->_fallbackTextContainerOrigin.x = x;
    v20->_fallbackTextContainerOrigin.y = y;
  }

  return v20;
}

- (double)_baselineOffsetAtPosition:(id)position
{
  positionCopy = position;
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
  [(_UITextLayoutController *)textLayoutController requestTextGeometryAtPosition:positionCopy typingAttributes:typingAttributes resultBlock:v31];
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
    textStorage = [(_UITextLayoutController *)self->_textLayoutController textStorage];
    v19 = objc_opt_respondsToSelector();
    coordinateSpace = textStorage;
    if ((v19 & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_11;
      }

      coordinateSpace = self->_coordinateSpace;
    }

    font = [(UICoordinateSpace *)coordinateSpace font];
    if (font)
    {
LABEL_12:
      MinY = CGRectGetMinY(v43[1]);
      [font ascender];
      v39[3] = MinY + v23;

      goto LABEL_13;
    }

LABEL_11:
    [off_1E70ECC18 defaultFontSize];
    font = [off_1E70ECC18 systemFontOfSize:?];
    goto LABEL_12;
  }

LABEL_13:
  [v33[5] size];
  y = 0.0;
  if (v25 > 0.0)
  {
    textView = [v33[5] textView];
    if (textView)
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

- (double)_convertOffset:(double)offset
{
  if (self->_coordinateSpace)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UICoordinateSpace *)self->_coordinateSpace _baselineCalculatorSourceCoordinateSpace], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      textView = v5;
    }

    else
    {
      firstTextContainer = [(_UITextLayoutController *)self->_textLayoutController firstTextContainer];
      textView = [firstTextContainer textView];

      if (!textView)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (textView != self->_coordinateSpace)
    {
      [(UICoordinateSpace *)textView convertPoint:0.0 toCoordinateSpace:offset];
      offset = v8;
    }

    goto LABEL_8;
  }

LABEL_9:
  scale = self->_scale;

  UIRoundToScale(offset, scale);
  return result;
}

@end