@interface SUMaskedView
- (CGPath)copyMaskPath;
- (void)_reloadMask;
- (void)dealloc;
- (void)setFrame:(CGRect)frame;
- (void)setMaskProvider:(id)provider;
@end

@implementation SUMaskedView

- (void)dealloc
{
  self->_maskProvider = 0;
  v3.receiver = self;
  v3.super_class = SUMaskedView;
  [(SUMaskedView *)&v3 dealloc];
}

- (CGPath)copyMaskPath
{
  [(SUMaskedView *)self frame];
  if (v4 <= 0.00000011920929 || v3 <= 0.00000011920929)
  {
    return 0;
  }

  result = [(SUMaskProvider *)self->_maskProvider copyPathForMaskWithSize:v3, v4];
  if (!result)
  {
    Mutable = CGPathCreateMutable();
    [(SUMaskedView *)self bounds];
    CGPathAddRect(Mutable, 0, v9);
    v8 = MEMORY[0x1C6915E50](Mutable);
    CGPathRelease(Mutable);
    return v8;
  }

  return result;
}

- (void)setMaskProvider:(id)provider
{
  maskProvider = self->_maskProvider;
  if (maskProvider != provider)
  {

    self->_maskProvider = provider;

    [(SUMaskedView *)self _reloadMask];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SUMaskedView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = SUMaskedView;
  [(SUMaskedView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(SUMaskedView *)self _reloadMask];
  }
}

- (void)_reloadMask
{
  [(SUMaskedView *)self frame];
  maskProvider = self->_maskProvider;
  if (maskProvider)
  {
    v6 = v4 <= 0.00000011920929;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v3 > 0.00000011920929)
  {
    v12 = [(SUMaskProvider *)maskProvider copyMaskImageWithSize:v3, v4];
    layer = [(SUMaskedView *)self layer];
    mask = [layer mask];
    v10 = mask;
    if (!mask && v12)
    {
      v10 = objc_alloc_init(MEMORY[0x1E6979398]);
      [layer setMask:v10];
    }

    [v10 setContents:{objc_msgSend(v12, "CGImage")}];
    mainScreen = v12;
    if (!v12)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    }

    [mainScreen scale];
    [v10 setContentsScale:?];
    [layer bounds];
    [v10 setFrame:?];
  }
}

@end