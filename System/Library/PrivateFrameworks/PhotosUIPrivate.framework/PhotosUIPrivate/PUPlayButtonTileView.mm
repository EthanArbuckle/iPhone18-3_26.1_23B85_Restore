@interface PUPlayButtonTileView
- (BOOL)showAsPause;
- (PUPlayButtonTileView)init;
- (PUPlayButtonTileView)initWithCoder:(id)coder;
- (PUPlayButtonTileView)initWithFrame:(CGRect)frame;
- (PUPlayButtonTileView)initWithStyle:(int64_t)style;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setShowAsPause:(BOOL)pause;
- (void)setTarget:(id)target selector:(SEL)selector;
@end

@implementation PUPlayButtonTileView

- (PUPlayButtonTileView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayButtonTileView.m" lineNumber:73 description:{@"%s is not available as initializer", "-[PUPlayButtonTileView initWithCoder:]"}];

  abort();
}

- (PUPlayButtonTileView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayButtonTileView.m" lineNumber:69 description:{@"%s is not available as initializer", "-[PUPlayButtonTileView init]"}];

  abort();
}

- (PUPlayButtonTileView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPlayButtonTileView.m" lineNumber:65 description:{@"%s is not available as initializer", "-[PUPlayButtonTileView initWithFrame:]"}];

  abort();
}

- (void)setTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  button = [(PUPlayButtonTileView *)self button];
  [button setTarget:targetCopy action:selector];
}

- (BOOL)showAsPause
{
  button = [(PUPlayButtonTileView *)self button];
  showAsPause = [button showAsPause];

  return showAsPause;
}

- (void)setShowAsPause:(BOOL)pause
{
  pauseCopy = pause;
  button = [(PUPlayButtonTileView *)self button];
  [button setShowAsPause:pauseCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = PUPlayButtonTileView;
  v5 = [(PUPlayButtonTileView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (PUPlayButtonTileView)initWithStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = PUPlayButtonTileView;
  v4 = [(PUPlayButtonTileView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    if (style)
    {
      if (style == 1)
      {
        v5 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:3];
        button = v4->_button;
        v4->_button = v5;

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(PXVideoOverlayButton *)v4->_button setTintColor:whiteColor];
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