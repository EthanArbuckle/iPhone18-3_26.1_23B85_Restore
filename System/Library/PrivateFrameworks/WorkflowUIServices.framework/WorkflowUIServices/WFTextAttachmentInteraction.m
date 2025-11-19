@interface WFTextAttachmentInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (UIEdgeInsets)textContainerInset;
- (UITapGestureRecognizer)tapGestureRecognizer;
- (UIView)view;
- (WFTextAttachmentInteractionDelegate)delegate;
- (id)attachmentAtPoint:(CGPoint)a3 characterRange:(_NSRange *)a4;
- (id)layoutManager;
- (id)textStorage;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)handleTextTap:(id)a3;
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFTextAttachmentInteraction *)self tapGestureRecognizer];

  if (v8 == v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [(WFTextAttachmentInteraction *)self view];
    [v6 locationInView:v11];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v15 = 0;
  v16 = 0;
  v5 = a4;
  v6 = [(WFTextAttachmentInteraction *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(WFTextAttachmentInteraction *)self attachmentAtPoint:&v15 characterRange:v8, v10];
  if (v11)
  {
    v12 = [(WFTextAttachmentInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 textAttachmentInteraction:self shouldRecognizeTapOnTextAttachment:v11 inCharacterRange:{v15, v16}];
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

- (void)handleTextTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v12 = 0;
    v13 = 0;
    v5 = [(WFTextAttachmentInteraction *)self view];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(WFTextAttachmentInteraction *)self attachmentAtPoint:&v12 characterRange:v7, v9];
    if (v10)
    {
      v11 = [(WFTextAttachmentInteraction *)self delegate];
      [v11 textAttachmentInteraction:self didTapTextAttachment:v10 inCharacterRange:{v12, v13}];
    }
  }
}

- (id)attachmentAtPoint:(CGPoint)a3 characterRange:(_NSRange *)a4
{
  y = a3.y;
  x = a3.x;
  [(WFTextAttachmentInteraction *)self textContainerInset];
  v9 = y - v8;
  [(WFTextAttachmentInteraction *)self textContainerInset];
  v11 = x - v10;
  v12 = [(WFTextAttachmentInteraction *)self layoutManager];
  v13 = [(WFTextAttachmentInteraction *)self textContainer];
  v14 = [v12 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v11, v9}];

  v15 = [(WFTextAttachmentInteraction *)self layoutManager];
  v16 = [(WFTextAttachmentInteraction *)self textContainer];
  v17 = [v15 glyphIndexForPoint:v16 inTextContainer:{v11, v9}];

  v18 = [(WFTextAttachmentInteraction *)self textStorage];
  v19 = [v18 length];

  v20 = 0;
  if (v14 < v19)
  {
    v21 = [(WFTextAttachmentInteraction *)self textStorage];
    v20 = [v21 attribute:*MEMORY[0x1E69DB5F8] atIndex:v14 effectiveRange:0];

    if (v20 && (-[WFTextAttachmentInteraction layoutManager](self, "layoutManager"), v22 = objc_claimAutoreleasedReturnValue(), -[WFTextAttachmentInteraction textContainer](self, "textContainer"), v23 = objc_claimAutoreleasedReturnValue(), [v22 boundingRectForGlyphRange:v17 inTextContainer:{1, v23}], v25 = v24, v27 = v26, v29 = v28, v31 = v30, v23, v22, v35.origin.x = v25, v35.origin.y = v27, v35.size.width = v29, v35.size.height = v31, v34.x = v11, v34.y = v9, CGRectContainsPoint(v35, v34)))
    {
      if (a4)
      {
        a4->location = v14;
        a4->length = 1;
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
  v2 = [(WFTextAttachmentInteraction *)self layoutManager];
  v3 = [v2 textStorage];

  return v3;
}

- (id)layoutManager
{
  v2 = [(WFTextAttachmentInteraction *)self textContainer];
  v3 = [v2 layoutManager];

  return v3;
}

- (void)dealloc
{
  v3 = [(WFTextAttachmentInteraction *)self view];
  v4 = [(WFTextAttachmentInteraction *)self tapGestureRecognizer];
  [v3 removeGestureRecognizer:v4];

  v5.receiver = self;
  v5.super_class = WFTextAttachmentInteraction;
  [(WFTextAttachmentInteraction *)&v5 dealloc];
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  v5 = [(WFTextAttachmentInteraction *)self view];
  v6 = [(WFTextAttachmentInteraction *)self tapGestureRecognizer];
  [v5 removeGestureRecognizer:v6];

  objc_storeWeak(&self->_view, v4);
  obj = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTextTap_];
  [obj setDelegate:self];
  [v4 addGestureRecognizer:obj];

  objc_storeWeak(&self->_tapGestureRecognizer, obj);
}

@end