@interface _PUOneUpCropUIButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_PUOneUpCropUIButtonDelegate)delegate;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _PUOneUpCropUIButton

- (_PUOneUpCropUIButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v13.receiver = self;
  v13.super_class = _PUOneUpCropUIButton;
  v7 = [(_PUOneUpCropUIButton *)&v13 pointInside:event withEvent:?];
  [(_PUOneUpCropUIButton *)self bounds];
  if (!CGRectIsEmpty(v15))
  {
    PXEdgeInsetsInvert();
    PXEdgeInsetsInsetRect();
    if (v7)
    {
      return 1;
    }

    else
    {
      v14.x = x;
      v14.y = y;
      return CGRectContainsPoint(*&v8, v14);
    }
  }

  return v7;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v5 touchesCancelled:cancelled withEvent:event];
  [(_PUOneUpCropUIButton *)self setBeingTouched:0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v5 touchesEnded:ended withEvent:event];
  [(_PUOneUpCropUIButton *)self setBeingTouched:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v5 touchesBegan:began withEvent:event];
  [(_PUOneUpCropUIButton *)self setBeingTouched:1];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v7 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  delegate = [(_PUOneUpCropUIButton *)self delegate];
  [delegate oneUpCropUIButton:self menuPresentedDidChange:0];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v7 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  delegate = [(_PUOneUpCropUIButton *)self delegate];
  [delegate oneUpCropUIButton:self menuPresentedDidChange:1];
}

@end