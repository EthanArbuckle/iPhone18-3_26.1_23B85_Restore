@interface PLFlatVideoOverlayButton
- (PLFlatVideoOverlayButton)initWithStyle:(int64_t)a3;
- (id)_createOverlayImageWithBackgroundWhite:(double)a3 backgroundAlpha:(double)a4 glyphAlpha:(double)a5;
- (void)_handleTap:(id)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
@end

@implementation PLFlatVideoOverlayButton

- (id)_createOverlayImageWithBackgroundWhite:(double)a3 backgroundAlpha:(double)a4 glyphAlpha:(double)a5
{
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [MEMORY[0x277D755B8] imageNamed:@"PLVideoOverlayBackgroundMask" inBundle:v8];
  v10 = [MEMORY[0x277D755B8] imageNamed:@"PLVideoOverlayGlyphMask" inBundle:v8];
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [v9 size];
  width = v18.width;
  height = v18.height;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetGrayFillColor(CurrentContext, a3, a4);
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = width;
  v19.size.height = height;
  CGContextFillRect(CurrentContext, v19);
  [v9 drawAtPoint:23 blendMode:v11 alpha:{v12, 1.0}];
  [v10 drawAtPoint:23 blendMode:v11 alpha:{v12, 1.0}];
  [v10 drawAtPoint:0 blendMode:v11 alpha:{v12, a5}];
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v16;
}

uint64_t __51__PLFlatVideoOverlayButton__highlightedButtonImage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createOverlayImageWithBackgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.5];
  _highlightedButtonImage_image = result;
  return result;
}

uint64_t __46__PLFlatVideoOverlayButton__normalButtonImage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _createOverlayImageWithBackgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.300000012];
  _normalButtonImage_image = result;
  return result;
}

- (void)_handleTap:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    target = self->_target;
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    [target performSelector:action withObject:self];
  }
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  self->_target = a3;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  self->_action = v4;
}

- (PLFlatVideoOverlayButton)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PLFlatVideoOverlayButton;
  v4 = [(PLFlatVideoOverlayButton *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = a3;
    [(PLFlatVideoOverlayButton *)v4 setImage:[(PLFlatVideoOverlayButton *)v4 _normalButtonImage] forState:0];
    [(PLFlatVideoOverlayButton *)v5 setImage:[(PLFlatVideoOverlayButton *)v5 _highlightedButtonImage] forState:1];
    [(PLFlatVideoOverlayButton *)v5 sizeToFit];
    [(PLFlatVideoOverlayButton *)v5 setDeliversTouchesForGesturesToSuperview:0];
    [(PLFlatVideoOverlayButton *)v5 addTarget:v5 action:sel__handleTap_ forControlEvents:64];
  }

  return v5;
}

@end