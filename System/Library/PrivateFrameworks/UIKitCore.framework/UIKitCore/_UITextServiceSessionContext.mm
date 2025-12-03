@interface _UITextServiceSessionContext
+ (CGRect)selectionBoundingBoxForTextInput:(id)input;
+ (id)selectedTextRangeForTextInput:(id)input;
+ (id)sessionContextForType:(int64_t)type withTextInput:(id)input;
+ (id)sessionContextWithText:(id)text withRect:(CGRect)rect withRange:(_NSRange)range withView:(id)view;
+ (id)sessionContextWithText:(id)text withRect:(CGRect)rect withView:(id)view;
- (CGRect)presentationRect;
- (_NSRange)selectedRange;
- (_UITextServiceSessionContext)initWithCoder:(id)coder;
- (id)initForType:(int64_t)type withText:(id)text withTextInput:(id)input withView:(id)view;
- (void)_gatherAdditionalContext;
- (void)convertRectToView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UITextServiceSessionContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  textWithContext = self->_textWithContext;
  if (textWithContext)
  {
    [coderCopy encodeObject:textWithContext forKey:@"textWithContext"];
  }

  v5 = [MEMORY[0x1E696B098] valueWithRange:{self->_selectedRange.location, self->_selectedRange.length}];
  [coderCopy encodeObject:v5 forKey:@"selectedRange"];

  v6 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_presentationRect.origin.x, self->_presentationRect.origin.y, self->_presentationRect.size.width, self->_presentationRect.size.height}];
  [coderCopy encodeObject:v6 forKey:@"presentationRect"];
}

- (_UITextServiceSessionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _UITextServiceSessionContext;
  v5 = [(_UITextServiceSessionContext *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textWithContext"];
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

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedRange"];
    v5->_selectedRange.location = [v9 rangeValue];
    v5->_selectedRange.length = v10;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentationRect"];
    [v11 CGRectValue];
    v5->_presentationRect.origin.x = v12;
    v5->_presentationRect.origin.y = v13;
    v5->_presentationRect.size.width = v14;
    v5->_presentationRect.size.height = v15;
  }

  return v5;
}

+ (id)sessionContextWithText:(id)text withRect:(CGRect)rect withView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  textCopy = text;
  v13 = [[self alloc] initForType:0 withText:textCopy withTextInput:0 withView:viewCopy];

  v13[7] = x;
  v13[8] = y;
  v13[9] = width;
  v13[10] = height;

  return v13;
}

+ (id)sessionContextWithText:(id)text withRect:(CGRect)rect withRange:(_NSRange)range withView:(id)view
{
  length = range.length;
  location = range.location;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  textCopy = text;
  v16 = [[self alloc] initForType:0 withText:textCopy withTextInput:0 withView:viewCopy];

  v16[7] = x;
  v16[8] = y;
  v16[9] = width;
  v16[10] = height;
  *(v16 + 5) = location;
  *(v16 + 6) = length;

  return v16;
}

+ (id)sessionContextForType:(int64_t)type withTextInput:(id)input
{
  inputCopy = input;
  v7 = [[self alloc] initForType:type withText:0 withTextInput:inputCopy withView:0];

  return v7;
}

- (id)initForType:(int64_t)type withText:(id)text withTextInput:(id)input withView:(id)view
{
  textCopy = text;
  inputCopy = input;
  viewCopy = view;
  v34.receiver = self;
  v34.super_class = _UITextServiceSessionContext;
  v13 = [(_UITextServiceSessionContext *)&v34 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_23;
  }

  objc_storeStrong(&v13->_textInput, input);
  if (viewCopy)
  {
    textInputView = viewCopy;
  }

  else
  {
    textInputView = [inputCopy textInputView];
  }

  view = v14->_view;
  v14->_view = textInputView;

  if (!textCopy)
  {
    v18 = [objc_opt_class() selectedTextRangeForTextInput:inputCopy];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_15;
    }

    _rvItemForSelectedRange = [inputCopy _rvItemForSelectedRange];
    if (_rvItemForSelectedRange)
    {
      objc_storeStrong(&v14->_rvItemWithContext, _rvItemForSelectedRange);
      if ([_rvItemForSelectedRange type] == 3)
      {
        ddResult = [_rvItemForSelectedRange ddResult];
        matchedString = [ddResult matchedString];
LABEL_13:
        textWithContext = v14->_textWithContext;
        v14->_textWithContext = matchedString;

        goto LABEL_14;
      }

      text = [_rvItemForSelectedRange text];

      if (text)
      {
        ddResult = [_rvItemForSelectedRange text];
        highlightRange = [_rvItemForSelectedRange highlightRange];
        matchedString = [ddResult substringWithRange:{highlightRange, v24}];
        goto LABEL_13;
      }
    }

LABEL_14:

LABEL_15:
    if (!v14->_textWithContext)
    {
      v26 = [inputCopy textInRange:v18];
      v27 = v14->_textWithContext;
      v14->_textWithContext = v26;
    }

    goto LABEL_17;
  }

  v17 = textCopy;
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
    [objc_opt_class() selectionBoundingBoxForTextInput:inputCopy];
  }

  v14->_presentationRect.origin.x = v29;
  v14->_presentationRect.origin.y = v30;
  v14->_presentationRect.size.width = v31;
  v14->_presentationRect.size.height = v32;
  if (v14->_textInput && [(_UITextServiceSessionContext *)v14 _typeRequiresContext:type])
  {
    [(_UITextServiceSessionContext *)v14 _gatherAdditionalContext];
  }

LABEL_23:

  return v14;
}

+ (id)selectedTextRangeForTextInput:(id)input
{
  inputCopy = input;
  selectedTextRange = [inputCopy selectedTextRange];
  if ([selectedTextRange isEmpty] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    textRangeForServicesInteraction = [inputCopy textRangeForServicesInteraction];

    selectedTextRange = textRangeForServicesInteraction;
  }

  return selectedTextRange;
}

+ (CGRect)selectionBoundingBoxForTextInput:(id)input
{
  inputCopy = input;
  interactionAssistant = [inputCopy interactionAssistant];
  _editMenuAssistant = [interactionAssistant _editMenuAssistant];

  [_editMenuAssistant selectionBoundingBox];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsEmpty(v20) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    textRangeForServicesInteraction = [inputCopy textRangeForServicesInteraction];
    v11 = [inputCopy selectionRectsForRange:textRangeForServicesInteraction];
    [_editMenuAssistant selectionBoundingBoxForRects:v11];
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
  selectedTextRange = [(UITextInput *)self->_textInput selectedTextRange];
  textInput = self->_textInput;
  v38 = selectedTextRange;
  start = [selectedTextRange start];
  beginningOfDocument = [(UITextInput *)textInput positionFromPosition:start inDirection:3 offset:250];

  if (!beginningOfDocument || (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isPosition:beginningOfDocument atBoundary:1 inDirection:1], v7, (v8 & 1) == 0) && (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "positionFromPosition:toBoundary:inDirection:", beginningOfDocument, 1, 1), v10 = objc_claimAutoreleasedReturnValue(), beginningOfDocument, v9, (beginningOfDocument = v10) == 0))
  {
    beginningOfDocument = [(UITextInput *)self->_textInput beginningOfDocument];
  }

  v11 = self->_textInput;
  start2 = [v38 start];
  v13 = [(UITextInput *)v11 textRangeFromPosition:beginningOfDocument toPosition:start2];
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
  endOfDocument = [(UITextInput *)v18 positionFromPosition:v19 inDirection:2 offset:250];

  if (!endOfDocument || (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isPosition:endOfDocument atBoundary:1 inDirection:0], v21, (v22 & 1) == 0) && (-[UITextInput tokenizer](self->_textInput, "tokenizer"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "positionFromPosition:toBoundary:inDirection:", endOfDocument, 1, 0), v24 = objc_claimAutoreleasedReturnValue(), endOfDocument, v23, (endOfDocument = v24) == 0))
  {
    endOfDocument = [(UITextInput *)self->_textInput endOfDocument];
  }

  v25 = self->_textInput;
  v26 = [v38 end];
  v27 = [(UITextInput *)v25 textRangeFromPosition:v26 toPosition:endOfDocument];
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

- (void)convertRectToView:(id)view
{
  textInput = self->_textInput;
  viewCopy = view;
  textInputView = [(UITextInput *)textInput textInputView];
  [viewCopy convertRect:textInputView fromView:{self->_presentationRect.origin.x, self->_presentationRect.origin.y, self->_presentationRect.size.width, self->_presentationRect.size.height}];
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