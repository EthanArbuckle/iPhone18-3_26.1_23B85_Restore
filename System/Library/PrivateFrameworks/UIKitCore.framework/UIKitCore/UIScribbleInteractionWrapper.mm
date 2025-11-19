@interface UIScribbleInteractionWrapper
- (BOOL)focusWillTransformElement:(id)a3;
- (BOOL)isElementContainer;
- (BOOL)isElementFocused:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldBeginAtLocation:(CGPoint)a3;
- (BOOL)shouldDisableInputAssistant;
- (BOOL)supportsShouldBegin;
- (CGRect)frameForElement:(id)a3;
- (NSString)description;
- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3 element:(id)a4;
- (UIInteraction)interaction;
- (UIScribbleInteractionWrapper)initWithCustomScribbleInteraction:(id)a3 indirectScribbleInteraction:(id)a4;
- (UIView)view;
- (void)didFinishWritingInElement:(id)a3;
- (void)focusElement:(id)a3 initialFocusSelectionReferencePoint:(CGPoint)a4 completion:(id)a5;
- (void)requestElementsInRect:(CGRect)a3 completion:(id)a4;
- (void)willBeginWritingInElement:(id)a3;
@end

@implementation UIScribbleInteractionWrapper

- (UIScribbleInteractionWrapper)initWithCustomScribbleInteraction:(id)a3 indirectScribbleInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIScribbleInteractionWrapper;
  v8 = [(UIScribbleInteractionWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scribbleInteraction, v6);
    objc_storeWeak(&v9->_indirectInteraction, v7);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

  v6 = [v4 view];

  return v6;
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
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (CGRect)frameForElement:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  v10 = [WeakRetained delegate];
  v11 = v10;
  if (v4 && WeakRetained)
  {
    [v10 indirectScribbleInteraction:WeakRetained frameForElement:v4];
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

- (BOOL)focusWillTransformElement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    v6 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 scribbleInteractionShouldDelayFocus:WeakRetained];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  v6 = [WeakRetained delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = [v6 indirectScribbleInteraction:WeakRetained shouldDelayFocusForElement:v4];
LABEL_6:
  v8 = v7;
LABEL_8:

  return v8;
}

- (BOOL)shouldBeginAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v6 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 scribbleInteraction:WeakRetained shouldBeginAtLocation:{x, y}];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)willBeginWritingInElement:(id)a3
{
  v8 = a3;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
    [WeakRetained _setHandlingWritingCount:{objc_msgSend(WeakRetained, "_handlingWritingCount") + 1}];
    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 indirectScribbleInteraction:WeakRetained willBeginWritingInElement:v8];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    [WeakRetained _setHandlingWriting:1];
    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 scribbleInteractionWillBeginWriting:WeakRetained];
    }
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = [(UIScribbleInteractionWrapper *)self view];
  [v6 postNotificationName:@"_UIScribbleWillBeginWriting" object:v7];
}

- (void)didFinishWritingInElement:(id)a3
{
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
    [WeakRetained _setHandlingWritingCount:{objc_msgSend(WeakRetained, "_handlingWritingCount") - 1}];
    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 indirectScribbleInteraction:WeakRetained didFinishWritingInElement:v6];
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
    [WeakRetained _setHandlingWriting:0];
    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 scribbleInteractionDidFinishWriting:WeakRetained];
    }
  }
}

- (void)requestElementsInRect:(CGRect)a3 completion:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  v11 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__UIScribbleInteractionWrapper_requestElementsInRect_completion___block_invoke;
    v12[3] = &unk_1E70FDA40;
    v13 = v9;
    [v11 indirectScribbleInteraction:WeakRetained requestElementsInRect:v12 completion:{x, y, width, height}];
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
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

- (void)focusElement:(id)a3 initialFocusSelectionReferencePoint:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  v12 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__UIScribbleInteractionWrapper_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
    v13[3] = &unk_1E711B1D0;
    v14 = v10;
    [v12 indirectScribbleInteraction:WeakRetained focusElementIfNeeded:v9 referencePoint:v13 completion:{x, y}];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
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

- (UIEdgeInsets)hitToleranceInsetsWithDefaultInsets:(UIEdgeInsets)a3 element:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_scribbleInteraction);
  v11 = objc_loadWeakRetained(&self->_indirectInteraction);
  v12 = v11;
  if (v9 && v11)
  {
    v13 = [v11 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v13 _indirectScribbleInteraction:v12 hitToleranceInsetsForElement:v9 defaultInsets:{top, left, bottom, right}];
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
    v13 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v13 _scribbleInteraction:WeakRetained hitToleranceInsetsWithDefaultInsets:{top, left, bottom, right}];
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

- (BOOL)isElementFocused:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_indirectInteraction);
  v6 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 indirectScribbleInteraction:WeakRetained isElementFocused:v4];
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
    v5 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 _scribbleInteractionShouldDisableInputAssistant:WeakRetained];
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
    v7 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v7 _indirectScribbleInteractionShouldDisableInputAssistant:v4];
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