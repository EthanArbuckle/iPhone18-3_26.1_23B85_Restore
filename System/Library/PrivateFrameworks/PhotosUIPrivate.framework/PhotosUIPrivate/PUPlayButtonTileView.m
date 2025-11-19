@interface PUPlayButtonTileView
- (BOOL)showAsPause;
- (PUPlayButtonTileView)init;
- (PUPlayButtonTileView)initWithCoder:(id)a3;
- (PUPlayButtonTileView)initWithFrame:(CGRect)a3;
- (PUPlayButtonTileView)initWithStyle:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setShowAsPause:(BOOL)a3;
- (void)setTarget:(id)a3 selector:(SEL)a4;
@end

@implementation PUPlayButtonTileView

- (PUPlayButtonTileView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUPlayButtonTileView.m" lineNumber:73 description:{@"%s is not available as initializer", "-[PUPlayButtonTileView initWithCoder:]"}];

  abort();
}

- (PUPlayButtonTileView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPlayButtonTileView.m" lineNumber:69 description:{@"%s is not available as initializer", "-[PUPlayButtonTileView init]"}];

  abort();
}

- (PUPlayButtonTileView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUPlayButtonTileView.m" lineNumber:65 description:{@"%s is not available as initializer", "-[PUPlayButtonTileView initWithFrame:]"}];

  abort();
}

- (void)setTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [(PUPlayButtonTileView *)self button];
  [v7 setTarget:v6 action:a4];
}

- (BOOL)showAsPause
{
  v2 = [(PUPlayButtonTileView *)self button];
  v3 = [v2 showAsPause];

  return v3;
}

- (void)setShowAsPause:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPlayButtonTileView *)self button];
  [v4 setShowAsPause:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = PUPlayButtonTileView;
  v5 = [(PUPlayButtonTileView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (PUPlayButtonTileView)initWithStyle:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = PUPlayButtonTileView;
  v4 = [(PUPlayButtonTileView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:3];
        button = v4->_button;
        v4->_button = v5;

        v7 = [MEMORY[0x1E69DC888] whiteColor];
        [(PXVideoOverlayButton *)v4->_button setTintColor:v7];
      }
    }

    else
    {
      v8 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:0];
      v9 = v4->_button;
      v4->_button = v8;
    }

    [(PXVideoOverlayButton *)v4->_button setAutoresizingMask:45];
    [(PUPlayButtonTileView *)v4 bounds];
    PXRectGetCenter();
    [(PXVideoOverlayButton *)v4->_button setCenter:?];
    [(PUPlayButtonTileView *)v4 addSubview:v4->_button];
  }

  return v4;
}

@end