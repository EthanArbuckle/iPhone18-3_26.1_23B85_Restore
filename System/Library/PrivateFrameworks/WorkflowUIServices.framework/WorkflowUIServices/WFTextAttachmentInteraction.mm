@interface WFTextAttachmentInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (UIEdgeInsets)textContainerInset;
- (UITapGestureRecognizer)tapGestureRecognizer;
- (UIView)view;
- (WFTextAttachmentInteractionDelegate)delegate;
- (id)attachmentAtPoint:(CGPoint)point characterRange:(_NSRange *)range;
- (id)layoutManager;
- (id)textStorage;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)handleTextTap:(id)tap;
@end

@implementation WFTextAttachmentInteraction

- (UITapGestureRecognizer)tapGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_tapGestureRecognizer);

  return WeakRetained;
}

- (UIEdgeInsets)textContainerInset
{
  top = self->_textContainerInset.top;
  left = self->_textContainerInset.left;
  bottom = self->_textContainerInset.bottom;
  right = self->_textContainerInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (WFTextAttachmentInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  tapGestureRecognizer = [(WFTextAttachmentInteraction *)self tapGestureRecognizer];

  if (tapGestureRecognizer == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    view = [(WFTextAttachmentInteraction *)self view];
    [recognizerCopy locationInView:view];
    v13 = v12;
    v15 = v14;

    v16 = [(WFTextAttachmentInteraction *)self attachmentAtPoint:0 characterRange:v13, v15];
    v9 = v16 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v15 = 0;
  v16 = 0;
  touchCopy = touch;
  view = [(WFTextAttachmentInteraction *)self view];
  [touchCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  v11 = [(WFTextAttachmentInteraction *)self attachmentAtPoint:&v15 characterRange:v8, v10];
  if (v11)
  {
    delegate = [(WFTextAttachmentInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = [delegate textAttachmentInteraction:self shouldRecognizeTapOnTextAttachment:v11 inCharacterRange:{v15, v16}];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)handleTextTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    v12 = 0;
    v13 = 0;
    view = [(WFTextAttachmentInteraction *)self view];
    [tapCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    v10 = [(WFTextAttachmentInteraction *)self attachmentAtPoint:&v12 characterRange:v7, v9];
    if (v10)
    {
      delegate = [(WFTextAttachmentInteraction *)self delegate];
      [delegate textAttachmentInteraction:self didTapTextAttachment:v10 inCharacterRange:{v12, v13}];
    }
  }
}

- (id)attachmentAtPoint:(CGPoint)point characterRange:(_NSRange *)range
{
  y = point.y;
  x = point.x;
  [(WFTextAttachmentInteraction *)self textContainerInset];
  v9 = y - v8;
  [(WFTextAttachmentInteraction *)self textContainerInset];
  v11 = x - v10;
  layoutManager = [(WFTextAttachmentInteraction *)self layoutManager];
  textContainer = [(WFTextAttachmentInteraction *)self textContainer];
  v14 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v11, v9}];

  layoutManager2 = [(WFTextAttachmentInteraction *)self layoutManager];
  textContainer2 = [(WFTextAttachmentInteraction *)self textContainer];
  v17 = [layoutManager2 glyphIndexForPoint:textContainer2 inTextContainer:{v11, v9}];

  textStorage = [(WFTextAttachmentInteraction *)self textStorage];
  v19 = [textStorage length];

  v20 = 0;
  if (v14 < v19)
  {
    textStorage2 = [(WFTextAttachmentInteraction *)self textStorage];
    v20 = [textStorage2 attribute:*MEMORY[0x1E69DB5F8] atIndex:v14 effectiveRange:0];

    if (v20 && (-[WFTextAttachmentInteraction layoutManager](self, "layoutManager"), v22 = objc_claimAutoreleasedReturnValue(), -[WFTextAttachmentInteraction textContainer](self, "textContainer"), v23 = objc_claimAutoreleasedReturnValue(), [v22 boundingRectForGlyphRange:v17 inTextContainer:{1, v23}], v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, v22, v35.origin.x = v25, v35.origin.y = v27, v35.size.width = v29, v35.size.height = v31, v34.x = v11, v34.y = v9, CGRectContainsPoint(v35, v34)))
    {
      if (range)
      {
        range->location = v14;
        range->length = 1;
      }
    }

    else
    {

      v20 = 0;
    }
  }

  return v20;
}

- (id)textStorage
{
  layoutManager = [(WFTextAttachmentInteraction *)self layoutManager];
  textStorage = [layoutManager textStorage];

  return textStorage;
}

- (id)layoutManager
{
  textContainer = [(WFTextAttachmentInteraction *)self textContainer];
  layoutManager = [textContainer layoutManager];

  return layoutManager;
}

- (void)dealloc
{
  view = [(WFTextAttachmentInteraction *)self view];
  tapGestureRecognizer = [(WFTextAttachmentInteraction *)self tapGestureRecognizer];
  [view removeGestureRecognizer:tapGestureRecognizer];

  v5.receiver = self;
  v5.super_class = WFTextAttachmentInteraction;
  [(WFTextAttachmentInteraction *)&v5 dealloc];
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  view = [(WFTextAttachmentInteraction *)self view];
  tapGestureRecognizer = [(WFTextAttachmentInteraction *)self tapGestureRecognizer];
  [view removeGestureRecognizer:tapGestureRecognizer];

  objc_storeWeak(&self->_view, viewCopy);
  obj = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTextTap_];
  [obj setDelegate:self];
  [viewCopy addGestureRecognizer:obj];

  objc_storeWeak(&self->_tapGestureRecognizer, obj);
}

@end