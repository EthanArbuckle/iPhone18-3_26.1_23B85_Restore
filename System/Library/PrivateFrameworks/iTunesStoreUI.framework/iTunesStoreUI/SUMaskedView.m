@interface SUMaskedView
- (CGPath)copyMaskPath;
- (void)_reloadMask;
- (void)dealloc;
- (void)setFrame:(CGRect)a3;
- (void)setMaskProvider:(id)a3;
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

- (void)setMaskProvider:(id)a3
{
  maskProvider = self->_maskProvider;
  if (maskProvider != a3)
  {

    self->_maskProvider = a3;

    [(SUMaskedView *)self _reloadMask];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v8 = [(SUMaskedView *)self layer];
    v9 = [v8 mask];
    v10 = v9;
    if (!v9 && v12)
    {
      v10 = objc_alloc_init(MEMORY[0x1E6979398]);
      [v8 setMask:v10];
    }

    [v10 setContents:{objc_msgSend(v12, "CGImage")}];
    v11 = v12;
    if (!v12)
    {
      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    }

    [v11 scale];
    [v10 setContentsScale:?];
    [v8 bounds];
    [v10 setFrame:?];
  }
}

@end