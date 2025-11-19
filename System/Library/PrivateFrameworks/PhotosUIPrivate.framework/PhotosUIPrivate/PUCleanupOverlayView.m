@interface PUCleanupOverlayView
- (NUMediaView)mediaView;
- (PUCleanupOverlayView)initWithMediaView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PUCleanupOverlayView

- (NUMediaView)mediaView
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);

  return WeakRetained;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PUCleanupOverlayView *)self mediaView];
  v9 = [v8 hitTest:v7 withEvent:{x, y}];

  return v9;
}

- (PUCleanupOverlayView)initWithMediaView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUCleanupOverlayView.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v10.receiver = self;
  v10.super_class = PUCleanupOverlayView;
  v6 = [(PUCleanupOverlayView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_mediaView, v5);
    [(PUCleanupOverlayView *)v7 setBackgroundColor:0];
  }

  return v7;
}

@end