@interface PXFocusableUIImageView
- (BOOL)_isEligibleForFocusInteraction;
- (PXFocusableUIImageView)initWithCoder:(id)a3;
- (PXFocusableUIImageView)initWithFrame:(CGRect)a3;
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
    v3 = [(PXFocusableUIImageView *)self window];
    if (v3)
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

- (PXFocusableUIImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXFocusableUIImageView;
  v3 = [(PXFocusableUIImageView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_allowsFocus = 1;
    [(PXFocusableUIImageView *)v3 setUserInteractionEnabled:1];
  }

  return v4;
}

- (PXFocusableUIImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXFocusableUIImageView;
  v3 = [(PXFocusableUIImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsFocus = 1;
    [(PXFocusableUIImageView *)v3 setUserInteractionEnabled:1];
  }

  return v4;
}

@end