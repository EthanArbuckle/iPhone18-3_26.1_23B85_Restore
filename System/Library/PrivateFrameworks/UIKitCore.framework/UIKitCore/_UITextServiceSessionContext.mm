@interface _UITextServiceSessionContext
+ (CGRect)selectionBoundingBoxForTextInput:(id)a3;
+ (id)selectedTextRangeForTextInput:(id)a3;
+ (id)sessionContextForType:(int64_t)a3 withTextInput:(id)a4;
+ (id)sessionContextWithText:(id)a3 withRect:(CGRect)a4 withRange:(_NSRange)a5 withView:(id)a6;
+ (id)sessionContextWithText:(id)a3 withRect:(CGRect)a4 withView:(id)a5;
- (CGRect)presentationRect;
- (_NSRange)selectedRange;
- (_UITextServiceSessionContext)initWithCoder:(id)a3;
- (id)initForType:(int64_t)a3 withText:(id)a4 withTextInput:(id)a5 withView:(id)a6;
- (void)_gatherAdditionalContext;
- (void)convertRectToView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UITextServiceSessionContext

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  textWithContext = self->_textWithContext;
  if (textWithContext)
  {
    [v7 encodeObject:textWithContext forKey:@"textWithContext"];
  }

  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_selectedRange.location, self->_selectedRange.length}];
  [v7 encodeObject:v5 forKey:@"selectedRange"];

  v6 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_presentationRect.origin.x, self->_presentationRect.origin.y, self->_presentationRect.size.width, self->_presentationRect.size.height}];
  [v7 encodeObject:v6 forKey:@"presentationRect"];
}

- (_UITextServiceSessionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UITextServiceSessionContext;
  v5 = [(_UITextServiceSessionContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textWithContext"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    objc_storeStrong(&v5->_textWithContext, v8);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedRange"];
    v5->_selectedRange.location = [v9 rangeValue];
    v5->_selectedRange.length = v10;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentationRect"];
    [v11 CGRectValue];
    v5->_presentationRect.origin.x = v12;
    v5->_presentationRect.origin.y = v13;
    v5->_presentationRect.size.width = v14;
    v5->_presentationRect.size.height = v15;
  }

  return v5;
}

+ (id)sessionContextWithText:(id)a3 withRect:(CGRect)a4 withView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initForType:0 withText:v12 withTextInput:0 withView:v11];

  v13[7] = x;
  v13[8] = y;
  v13[9] = width;
  v13[10] = height;

  return v13;
}

+ (id)sessionContextWithText:(id)a3 withRect:(CGRect)a4 withRange:(_NSRange)a5 withView:(id)a6
{
  length = a5.length;
  location = a5.location;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a6;
  v15 = a3;
  v16 = [[a1 alloc] initForType:0 withText:v15 withTextInput:0 withView:v14];

  v16[7] = x;
  v16[8] = y;
  v16[9] = width;
  v16[10] = height;
  *(v16 + 5) = location;
  *(v16 + 6) = length;

  return v16;
}

+ (id)sessionContextForType:(int64_t)a3 withTextInput:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initForType:a3 withText:0 withTextInput:v6 withView:0];

  return v7;
}

- (id)initForType:(int64_t)a3 withText:(id)a4 withTextInput:(id)a5 withView:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v34.receiver = self;
  v34.super_class = _UITextServiceSessionContext;
  v13 = [(_UITextServiceSessionContext *)&v34 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_23;
  }

  objc_storeStrong(&v13->_textInput, a5);
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = [v11 textInputView];
  }

  view = v14->_view;
  v14->_view = v15;

  if (!v10)
  {
    v18 = [objc_opt_class() selectedTextRangeForTextInput:v11];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_15;
    }

    v19 = [v11 _rvItemForSelectedRange];
    if (v19)
    {
      objc_storeStrong(&v14->_rvItemWithContext, v19);
      if ([v19 type] == 3)
      {
        v20 = [v19 ddResult];
        v21 = [v20 matchedString];
LABEL_13:
        textWithContext = v14->_textWithContext;
        v14->_textWithContext = v21;

        goto LABEL_14;
      }

      v22 = [v19 text];

      if (v22)
      {
        v20 = [v19 text];
        v23 = [v19 highlightRange];
        v21 = [v20 substringWithRange:{v23, v24}];
        goto LABEL_13;
      }
    }

LABEL_14:

LABEL_15:
    if (!v14->_textWithContext)
    {
      v26 = [v11 textInRange:v18];
      v27 = v14->_textWithContext;
      v14->_textWithContext = v26;
    }

    goto LABEL_17;
  }

  v17 = v10;
  v18 = v14->_textWithContext;
  v14->_textWithContext = v17;
LABEL_17:

  v28 = [(NSString *)v14->_textWithContext length];
  v14->_selectedRange.location = 0;
  v14->_selectedRange.length = v28;
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)v14->_view _shortcutPresentationRect];
  }

  else
  {
    [objc_opt_class() selectionBoundingBoxForTextInput:v11];
  }

  v14->_presentationRect.origin.x = v29;
  v14->_presentationRect.origin.y = v30;
  v14->_presentationRect.size.width = v31;
  v14->_presentationRect.size.height = v32;
  if (v14->_textInput && [(_UITextServiceSessionContext *)v14 _typeRequiresContext:a3])
  {
    [(_UITextServiceSessionContext *)v14 _gatherAdditionalContext];
  }

LABEL_23:

  return v14;
}

+ (id)selectedTextRangeForTextInput:(id)a3
{
  v3 = a3;
  v4 = [v3 selectedTextRange];
  if ([v4 isEmpty] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v3 textRangeForServicesInteraction];

    v4 = v5;
  }

  return v4;
}

+ (CGRect)selectionBoundingBoxForTextInput:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionAssistant];
  v5 = [v4 _editMenuAssistant];

  [v5 selectionBoundingBox];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsEmpty(v20) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v3 textRangeForServicesInteraction];
    v11 = [v3 selectionRectsForRange:v10];
    [v5 selectionBoundingBoxForRects:v11];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_gatherAdditionalContext
{
  v3 = [(UITextInput *)self->_textInput selectedTextRange];
  textInput = self->_textInput;
  v38 = v3;
  v5 = [v3 start];
  v6 = [(UITextInput *)textInput positionFromPosition:v5 inDirection:3 offset:250];

  if (!v6 || (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isPosition:v6 atBoundary:1 inDirection:1], v7, (v8 & 1) == 0) && (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "positionFromPosition:toBoundary:inDirection:", v6, 1, 1), v10 = objc_claimAutoreleasedReturnValue(), v6, v9, (v6 = v10) == 0))
  {
    v6 = [(UITextInput *)self->_textInput beginningOfDocument];
  }

  v11 = self->_textInput;
  v12 = [v38 start];
  v13 = [(UITextInput *)v11 textRangeFromPosition:v6 toPosition:v12];
  v14 = [(UITextInput *)v11 textInRange:v13];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1EFB14550;
  }

  v17 = v16;

  v18 = self->_textInput;
  v19 = [v38 end];
  v20 = [(UITextInput *)v18 positionFromPosition:v19 inDirection:2 offset:250];

  if (!v20 || (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isPosition:v20 atBoundary:1 inDirection:0], v21, (v22 & 1) == 0) && (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "positionFromPosition:toBoundary:inDirection:", v20, 1, 0), v24 = objc_claimAutoreleasedReturnValue(), v20, v23, (v20 = v24) == 0))
  {
    v20 = [(UITextInput *)self->_textInput endOfDocument];
  }

  v25 = self->_textInput;
  v26 = [v38 end];
  v27 = [(UITextInput *)v25 textRangeFromPosition:v26 toPosition:v20];
  v28 = [(UITextInput *)v25 textInRange:v27];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = &stru_1EFB14550;
  }

  v31 = v30;

  textWithContext = self->_textWithContext;
  if (!textWithContext)
  {
    textWithContext = &stru_1EFB14550;
  }

  v33 = textWithContext;
  v34 = [(__CFString *)v17 stringByAppendingFormat:@"%@%@", v33, v31];
  v35 = self->_textWithContext;
  self->_textWithContext = v34;

  v36 = [(__CFString *)v17 length];
  v37 = [(__CFString *)v33 length];

  self->_selectedRange.location = v36;
  self->_selectedRange.length = v37;
}

- (void)convertRectToView:(id)a3
{
  textInput = self->_textInput;
  v5 = a3;
  v14 = [(UITextInput *)textInput textInputView];
  [v5 convertRect:v14 fromView:{self->_presentationRect.origin.x, self->_presentationRect.origin.y, self->_presentationRect.size.width, self->_presentationRect.size.height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  self->_presentationRect.origin.x = v7;
  self->_presentationRect.origin.y = v9;
  self->_presentationRect.size.width = v11;
  self->_presentationRect.size.height = v13;
}

- (_NSRange)selectedRange
{
  length = self->_selectedRange.length;
  location = self->_selectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)presentationRect
{
  x = self->_presentationRect.origin.x;
  y = self->_presentationRect.origin.y;
  width = self->_presentationRect.size.width;
  height = self->_presentationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end