@interface PUCleanupOverlayView
- (NUMediaView)mediaView;
- (PUCleanupOverlayView)initWithMediaView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PUCleanupOverlayView

- (NUMediaView)mediaView
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);

  return WeakRetained;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  mediaView = [(PUCleanupOverlayView *)self mediaView];
  v9 = [mediaView hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

- (PUCleanupOverlayView)initWithMediaView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCleanupOverlayView.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v10.receiver = self;
  v10.super_class = PUCleanupOverlayView;
  v6 = [(PUCleanupOverlayView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_mediaView, viewCopy);
    [(PUCleanupOverlayView *)v7 setBackgroundColor:0];
  }

  return v7;
}

@end