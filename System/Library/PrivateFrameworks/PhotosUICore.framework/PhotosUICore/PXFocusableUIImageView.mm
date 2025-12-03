@interface PXFocusableUIImageView
- (BOOL)_isEligibleForFocusInteraction;
- (PXFocusableUIImageView)initWithCoder:(id)coder;
- (PXFocusableUIImageView)initWithFrame:(CGRect)frame;
- (id)focusEffect;
@end

@implementation PXFocusableUIImageView

- (id)focusEffect
{
  if ([(PXFocusableUIImageView *)self drawsFocusRing])
  {
    v3 = MEMORY[0x1E69DCA28];
    [(PXFocusableUIImageView *)self bounds];
    v4 = [v3 effectWithRect:?];
    [v4 setPosition:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if ([(PXFocusableUIImageView *)self isUserInteractionEnabled])
  {
    window = [(PXFocusableUIImageView *)self window];
    if (window)
    {
      v4 = ![(PXFocusableUIImageView *)self reusable];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (PXFocusableUIImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXFocusableUIImageView;
  v3 = [(PXFocusableUIImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_allowsFocus = 1;
    [(PXFocusableUIImageView *)v3 setUserInteractionEnabled:1];
  }

  return v4;
}

- (PXFocusableUIImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXFocusableUIImageView;
  v3 = [(PXFocusableUIImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsFocus = 1;
    [(PXFocusableUIImageView *)v3 setUserInteractionEnabled:1];
  }

  return v4;
}

@end