@interface PUAvalancheStackView
- (CGRect)_imageContentFrame;
- (PUAvalancheStackView)init;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation PUAvalancheStackView

- (CGRect)_imageContentFrame
{
  [(PUAvalancheStackView *)self contentScaleFactor];
  v4 = v3 * 2.5;
  contents = [(CALayer *)self->_imageLayer contents];
  v6 = contents;
  if (self->_contentMode != 2 || contents == 0)
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
    Width = CGImageGetWidth(contents);
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
  contents = [(CALayer *)self->_imageLayer contents];
  v20 = contents;
  if (contents)
  {
    Width = CGImageGetWidth(contents);
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

- (void)setImage:(id)image
{
  imageCopy = image;
  contents = [(CALayer *)self->_imageLayer contents];
  v5 = contents;
  if (contents)
  {
    Width = CGImageGetWidth(contents);
    Height = CGImageGetHeight(v5);
  }

  else
  {
    Height = 0;
    Width = 0;
  }

  imageLayer = self->_imageLayer;
  v9 = imageCopy;
  -[CALayer setContents:](imageLayer, "setContents:", [imageCopy CGImage]);
  stackLayer0 = self->_stackLayer0;
  v11 = imageCopy;
  -[CALayer setContents:](stackLayer0, "setContents:", [imageCopy CGImage]);
  stackLayer1 = self->_stackLayer1;
  v13 = imageCopy;
  -[CALayer setContents:](stackLayer1, "setContents:", [imageCopy CGImage]);
  v14 = imageCopy;
  if (Width != CGImageGetWidth([imageCopy CGImage]) || Height != CGImageGetHeight(objc_msgSend(imageCopy, "CGImage")))
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
    null = [MEMORY[0x1E695DFB0] null];
    v26[0] = null;
    v25[1] = @"contents";
    null2 = [MEMORY[0x1E695DFB0] null];
    v26[1] = null2;
    v25[2] = @"contentsScale";
    null3 = [MEMORY[0x1E695DFB0] null];
    v26[2] = null3;
    v25[3] = @"onOrderIn";
    null4 = [MEMORY[0x1E695DFB0] null];
    v26[3] = null4;
    v25[4] = @"onOrderOut";
    null5 = [MEMORY[0x1E695DFB0] null];
    v26[4] = null5;
    v25[5] = @"sublayers";
    null6 = [MEMORY[0x1E695DFB0] null];
    v26[5] = null6;
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
    layer = [(PUAvalancheStackView *)v2 layer];
    [layer addSublayer:v2->_imageLayer];

    layer2 = [(PUAvalancheStackView *)v2 layer];
    [layer2 addSublayer:v2->_stackLayer0];

    layer3 = [(PUAvalancheStackView *)v2 layer];
    [layer3 addSublayer:v2->_stackLayer1];

    layer4 = [(PUAvalancheStackView *)v2 layer];
    [layer4 setAllowsGroupOpacity:0];
  }

  return v2;
}

@end