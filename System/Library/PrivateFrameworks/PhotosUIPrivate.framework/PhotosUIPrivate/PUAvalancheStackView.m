@interface PUAvalancheStackView
- (CGRect)_imageContentFrame;
- (PUAvalancheStackView)init;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
@end

@implementation PUAvalancheStackView

- (CGRect)_imageContentFrame
{
  [(PUAvalancheStackView *)self contentScaleFactor];
  v4 = v3 * 2.5;
  v5 = [(CALayer *)self->_imageLayer contents];
  v6 = v5;
  if (self->_contentMode != 2 || v5 == 0)
  {
    v20 = v4 + v4;
    [(PUAvalancheStackView *)self frame];
    v18 = v8;
    [(PUAvalancheStackView *)self frame];
    v22 = v9 + v4 * -2.0;
    v16 = 0.0;
  }

  else
  {
    Width = CGImageGetWidth(v5);
    v11 = CGImageGetHeight(v6) + v4 * 2.0;
    [(PUAvalancheStackView *)self bounds];
    v16 = PURectWithSizeThatFitsInRect(Width, v11, v12, v13, v14, v15);
    v18 = v17;
    v20 = v19 + v4 * 2.0;
    v22 = v21 + v4 * -2.0;
  }

  v23 = PURoundRectToPixel(v16, v20, v18, v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)layoutSubviews
{
  [(PUAvalancheStackView *)self contentScaleFactor];
  v4 = v3 * 2.5;
  v5 = v3 * -0.5;
  [(PUAvalancheStackView *)self _imageContentFrame];
  v7 = v4 + v6;
  v9 = v8 - v4;
  v11 = v10 + v4 * -2.0;
  v12 = v4 + v5;
  v13 = v6 + v4 * 2.0;
  v14 = v8 + v4 * -2.0;
  v15 = v10 + v4 * -4.0;
  [(CALayer *)self->_imageLayer setFrame:?];
  [(CALayer *)self->_stackLayer0 setFrame:v7, v9, v11, v12];
  [(CALayer *)self->_stackLayer1 setFrame:v13, v14, v15, v12];
  v16 = [(CALayer *)self->_imageLayer contents];
  v20 = v16;
  if (v16)
  {
    Width = CGImageGetWidth(v16);
    [(CALayer *)self->_stackLayer0 setContentsScale:Width / v11];
    stackLayer1 = self->_stackLayer1;
    v19 = Width / v15;
  }

  else
  {
    [(CALayer *)self->_stackLayer0 setContentsScale:1.0];
    stackLayer1 = self->_stackLayer1;
    v19 = 1.0;
  }

  [(CALayer *)stackLayer1 setContentsScale:v19];
}

- (void)setImage:(id)a3
{
  v15 = a3;
  v4 = [(CALayer *)self->_imageLayer contents];
  v5 = v4;
  if (v4)
  {
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v5);
  }

  else
  {
    Height = 0;
    Width = 0;
  }

  imageLayer = self->_imageLayer;
  v9 = v15;
  -[CALayer setContents:](imageLayer, "setContents:", [v15 CGImage]);
  stackLayer0 = self->_stackLayer0;
  v11 = v15;
  -[CALayer setContents:](stackLayer0, "setContents:", [v15 CGImage]);
  stackLayer1 = self->_stackLayer1;
  v13 = v15;
  -[CALayer setContents:](stackLayer1, "setContents:", [v15 CGImage]);
  v14 = v15;
  if (Width != CGImageGetWidth([v15 CGImage]) || Height != CGImageGetHeight(objc_msgSend(v15, "CGImage")))
  {
    [(PUAvalancheStackView *)self setNeedsLayout];
  }
}

- (PUAvalancheStackView)init
{
  v26[6] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = PUAvalancheStackView;
  v2 = [(PUAvalancheStackView *)&v24 init];
  if (v2)
  {
    v25[0] = @"bounds";
    v3 = [MEMORY[0x1E695DFB0] null];
    v26[0] = v3;
    v25[1] = @"contents";
    v4 = [MEMORY[0x1E695DFB0] null];
    v26[1] = v4;
    v25[2] = @"contentsScale";
    v5 = [MEMORY[0x1E695DFB0] null];
    v26[2] = v5;
    v25[3] = @"onOrderIn";
    v6 = [MEMORY[0x1E695DFB0] null];
    v26[3] = v6;
    v25[4] = @"onOrderOut";
    v7 = [MEMORY[0x1E695DFB0] null];
    v26[4] = v7;
    v25[5] = @"sublayers";
    v8 = [MEMORY[0x1E695DFB0] null];
    v26[5] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:6];

    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageLayer = v2->_imageLayer;
    v2->_imageLayer = v10;

    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    stackLayer0 = v2->_stackLayer0;
    v2->_stackLayer0 = v12;

    v14 = objc_alloc_init(MEMORY[0x1E6979398]);
    stackLayer1 = v2->_stackLayer1;
    v2->_stackLayer1 = v14;

    [(CALayer *)v2->_imageLayer setOpaque:1];
    LODWORD(v16) = 1058642330;
    [(CALayer *)v2->_stackLayer0 setOpacity:v16];
    LODWORD(v17) = 1058642330;
    [(CALayer *)v2->_stackLayer1 setOpacity:v17];
    [(CALayer *)v2->_imageLayer setMasksToBounds:1];
    [(CALayer *)v2->_stackLayer0 setMasksToBounds:1];
    [(CALayer *)v2->_stackLayer1 setMasksToBounds:1];
    [(CALayer *)v2->_imageLayer setContentsGravity:*MEMORY[0x1E6979DF0]];
    v18 = *MEMORY[0x1E6979DB8];
    [(CALayer *)v2->_stackLayer0 setContentsGravity:*MEMORY[0x1E6979DB8]];
    [(CALayer *)v2->_stackLayer1 setContentsGravity:v18];
    [(CALayer *)v2->_imageLayer setActions:v9];
    [(CALayer *)v2->_stackLayer0 setActions:v9];
    [(CALayer *)v2->_stackLayer1 setActions:v9];
    v19 = [(PUAvalancheStackView *)v2 layer];
    [v19 addSublayer:v2->_imageLayer];

    v20 = [(PUAvalancheStackView *)v2 layer];
    [v20 addSublayer:v2->_stackLayer0];

    v21 = [(PUAvalancheStackView *)v2 layer];
    [v21 addSublayer:v2->_stackLayer1];

    v22 = [(PUAvalancheStackView *)v2 layer];
    [v22 setAllowsGroupOpacity:0];
  }

  return v2;
}

@end