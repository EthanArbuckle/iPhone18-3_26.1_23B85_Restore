@interface _PUOneUpCropUIButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_PUOneUpCropUIButtonDelegate)delegate;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _PUOneUpCropUIButton

- (_PUOneUpCropUIButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = _PUOneUpCropUIButton;
  v7 = [(_PUOneUpCropUIButton *)&v13 pointInside:a4 withEvent:?];
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v5 touchesCancelled:a3 withEvent:a4];
  [(_PUOneUpCropUIButton *)self setBeingTouched:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v5 touchesEnded:a3 withEvent:a4];
  [(_PUOneUpCropUIButton *)self setBeingTouched:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v5 touchesBegan:a3 withEvent:a4];
  [(_PUOneUpCropUIButton *)self setBeingTouched:1];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v7 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  v6 = [(_PUOneUpCropUIButton *)self delegate];
  [v6 oneUpCropUIButton:self menuPresentedDidChange:0];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = _PUOneUpCropUIButton;
  [(_PUOneUpCropUIButton *)&v7 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  v6 = [(_PUOneUpCropUIButton *)self delegate];
  [v6 oneUpCropUIButton:self menuPresentedDidChange:1];
}

@end