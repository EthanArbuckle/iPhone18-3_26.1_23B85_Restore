@interface UIScribbleInteractionWrapper
- (BOOL)focusWillTransformElement:(id)element;
- (BOOL)isElementContainer;
- (BOOL)isElementFocused:(id)focused;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldBeginAtLocation:(CGPoint)location;
- (BOOL)shouldDisableInputAssistant;
- (BOOL)supportsShouldBegin;
- (CGRect)frameForElement:(id)element;
- (NSString)description;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)insets element:(id)element;
- (UIInteraction)interaction;
- (UIScribbleInteractionWrapper)initWithCustomScribbleInteraction:(id)interaction indirectScribbleInteraction:(id)scribbleInteraction;
- (UIView)view;
- (void)didFinishWritingInElement:(id)element;
- (void)focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)willBeginWritingInElement:(id)element;
@end

@implementation UIScribbleInteractionWrapper

- (UIScribbleInteractionWrapper)initWithCustomScribbleInteraction:(id)interaction indirectScribbleInteraction:(id)scribbleInteraction
{
  interactionCopy = interaction;
  scribbleInteractionCopy = scribbleInteraction;
  v11.receiver = self;
  v11.super_class = UIScribbleInteractionWrapper;
  v8 = [(UIScribbleInteractionWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scribbleInteraction, interactionCopy);
    objc_storeWeak(&v9->_indirectInteraction, scribbleInteractionCopy);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    v7 = objc_loadWeakRetained(v5 + 1);
    if (WeakRetained == v7)
    {
      v9 = objc_loadWeakRetained(&self->_indirectInteraction);
      v10 = objc_loadWeakRetained(v5 + 2);
      v8 = v9 == v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UIScribbleInteractionWrapper;
  v3 = [(UIScribbleInteractionWrapper *)&v8 description];
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v5 = objc_loadWeakRetained(&self->_indirectInteraction);
  v6 = [v3 stringByAppendingFormat:@" %@, %@", WeakRetained, v5];

  return v6;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v4 = objc_loadWeakRetained(&self->_indirectInteraction);
  v5 = v4;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  view = [v4 view];

  return view;
}

- (UIInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v4 = objc_loadWeakRetained(&self->_indirectInteraction);
  v5 = v4;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (BOOL)supportsShouldBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  delegate = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (CGRect)frameForElement:(id)element
{
  elementCopy = element;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  delegate = [WeakRetained delegate];
  v11 = delegate;
  if (elementCopy && WeakRetained)
  {
    [delegate indirectScribbleInteraction:WeakRetained frameForElement:elementCopy];
    v5 = v12;
    v6 = v13;
    v7 = v14;
    v8 = v15;
  }

  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)focusWillTransformElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [delegate scribbleInteractionShouldDelayFocus:WeakRetained];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  delegate = [WeakRetained delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = [delegate indirectScribbleInteraction:WeakRetained shouldDelayFocusForElement:elementCopy];
LABEL_6:
  v8 = v7;
LABEL_8:

  return v8;
}

- (BOOL)shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate scribbleInteraction:WeakRetained shouldBeginAtLocation:{x, y}];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)willBeginWritingInElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
    [WeakRetained _setHandlingWritingCount:{objc_msgSend(WeakRetained, "_handlingWritingCount") + 1}];
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate indirectScribbleInteraction:WeakRetained willBeginWritingInElement:elementCopy];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    [WeakRetained _setHandlingWriting:1];
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scribbleInteractionWillBeginWriting:WeakRetained];
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  view = [(UIScribbleInteractionWrapper *)self view];
  [defaultCenter postNotificationName:@"_UIScribbleWillBeginWriting" object:view];
}

- (void)didFinishWritingInElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
    [WeakRetained _setHandlingWritingCount:{objc_msgSend(WeakRetained, "_handlingWritingCount") - 1}];
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate indirectScribbleInteraction:WeakRetained didFinishWritingInElement:elementCopy];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    [WeakRetained _setHandlingWriting:0];
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scribbleInteractionDidFinishWriting:WeakRetained];
    }
  }
}

- (void)requestElementsInRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__UIScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke;
    v12[3] = &unk_1E70FDA40;
    v13 = completionCopy;
    [delegate indirectScribbleInteraction:WeakRetained requestElementsInRect:v12 completion:{x, y, width, height}];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

void __65__UIScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__UIScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke_2;
  v6[3] = &unk_1E70F4A50;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  elementCopy = element;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__UIScribbleInteractionWrapper_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    v13[3] = &unk_1E711B1D0;
    v14 = completionCopy;
    [delegate indirectScribbleInteraction:WeakRetained focusElementIfNeeded:elementCopy referencePoint:v13 completion:{x, y}];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __92__UIScribbleInteractionWrapper_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)insets element:(id)element
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v11 = objc_loadWeakRetained(&self->_indirectInteraction);
  v12 = v11;
  if (elementCopy && v11)
  {
    delegate = [v11 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate _indirectScribbleInteraction:v12 hitToleranceInsetsForElement:elementCopy defaultInsets:{top, left, bottom, right}];
LABEL_8:
      top = v14;
      left = v15;
      bottom = v16;
      right = v17;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (WeakRetained)
  {
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate _scribbleInteraction:WeakRetained hitToleranceInsetsWithDefaultInsets:{top, left, bottom, right}];
      goto LABEL_8;
    }

LABEL_9:
  }

  v18 = top;
  v19 = left;
  v20 = bottom;
  v21 = right;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (BOOL)isElementContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)isElementFocused:(id)focused
{
  focusedCopy = focused;
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  delegate = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate indirectScribbleInteraction:WeakRetained isElementFocused:focusedCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldDisableInputAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v4 = objc_loadWeakRetained(&self->_indirectInteraction);
  if (WeakRetained)
  {
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [delegate _scribbleInteractionShouldDisableInputAssistant:WeakRetained];
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    delegate2 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [delegate2 _indirectScribbleInteractionShouldDisableInputAssistant:v4];
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_12:

  return v6;
}

@end