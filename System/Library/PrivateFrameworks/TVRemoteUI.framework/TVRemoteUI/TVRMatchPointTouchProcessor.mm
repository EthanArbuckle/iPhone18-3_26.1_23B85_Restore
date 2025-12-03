@interface TVRMatchPointTouchProcessor
- (id)_artworkView;
- (int64_t)_pressTypeForLocationInTouchpadView:(CGPoint)view;
- (void)_handleTap:(id)tap;
- (void)_sendButtonPressToDelegate:(int64_t)delegate;
- (void)setTouchpadView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TVRMatchPointTouchProcessor

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  touchpadView = [(TVRTouchProcessor *)self touchpadView];
  haptic = [touchpadView haptic];
  [haptic userInteractionBegan];

  anyObject = [beganCopy anyObject];

  touchpadView2 = [(TVRTouchProcessor *)self touchpadView];
  [anyObject locationInView:touchpadView2];
  v11 = v10;
  v13 = v12;

  v14 = [(TVRMatchPointTouchProcessor *)self _pressTypeForLocationInTouchpadView:v11, v13];
  self->_highlightedButtonType = v14;
  artworkView = self->_artworkView;

  [(_TVRMatchPointArtworkView *)artworkView highlightForButtonType:v14 enabled:1];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [(TVRTouchProcessor *)self touchpadView:ended];
  haptic = [v5 haptic];
  [haptic userInteractionEnded];

  artworkView = self->_artworkView;
  highlightedButtonType = self->_highlightedButtonType;

  [(_TVRMatchPointArtworkView *)artworkView highlightForButtonType:highlightedButtonType enabled:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = [(TVRTouchProcessor *)self touchpadView:cancelled];
  haptic = [v5 haptic];
  [haptic userInteractionCancelled];

  artworkView = self->_artworkView;
  highlightedButtonType = self->_highlightedButtonType;

  [(_TVRMatchPointArtworkView *)artworkView highlightForButtonType:highlightedButtonType enabled:0];
}

- (void)setTouchpadView:(id)view
{
  viewCopy = view;
  if (self->_tapGesture)
  {
    touchpadView = [(TVRTouchProcessor *)self touchpadView];
    [touchpadView removeGestureRecognizer:self->_tapGesture];
  }

  [(_TVRMatchPointArtworkView *)self->_artworkView removeFromSuperview];
  v11.receiver = self;
  v11.super_class = TVRMatchPointTouchProcessor;
  [(TVRTouchProcessor *)&v11 setTouchpadView:viewCopy];
  tapGesture = self->_tapGesture;
  if (!tapGesture)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    v8 = self->_tapGesture;
    self->_tapGesture = v7;

    tapGesture = self->_tapGesture;
  }

  [viewCopy addGestureRecognizer:tapGesture];
  v9 = [TVRButtonHaptic hapticForView:viewCopy];
  [viewCopy setHaptic:v9];

  _artworkView = [(TVRMatchPointTouchProcessor *)self _artworkView];
  [viewCopy bounds];
  [_artworkView setFrame:?];
  [viewCopy addSubview:_artworkView];
}

- (id)_artworkView
{
  artworkView = self->_artworkView;
  if (!artworkView)
  {
    v4 = [_TVRMatchPointArtworkView alloc];
    v5 = [(_TVRMatchPointArtworkView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_artworkView;
    self->_artworkView = v5;

    [(_TVRMatchPointArtworkView *)self->_artworkView setAutoresizingMask:18];
    artworkView = self->_artworkView;
  }

  return artworkView;
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    touchpadView = [(TVRTouchProcessor *)self touchpadView];
    [tapCopy locationInView:touchpadView];
    v6 = v5;
    v8 = v7;

    v9 = [(TVRMatchPointTouchProcessor *)self _pressTypeForLocationInTouchpadView:v6, v8];
    if (v9 != 9999)
    {
      [(TVRMatchPointTouchProcessor *)self _sendButtonPressToDelegate:v9];
    }
  }
}

- (int64_t)_pressTypeForLocationInTouchpadView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  artworkView = self->_artworkView;
  touchpadView = [(TVRTouchProcessor *)self touchpadView];
  [touchpadView convertPoint:self->_artworkView toView:{x, y}];
  LOBYTE(artworkView) = [(_TVRMatchPointArtworkView *)artworkView touchLocationIsConsideredCenter:?];

  if (artworkView)
  {
    return 1;
  }

  touchpadView2 = [(TVRTouchProcessor *)self touchpadView];
  [touchpadView2 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  v18 = CGRectGetHeight(v22) - x;
  v19 = y >= x;
  if (y < x && y < v18)
  {
    return 12;
  }

  if (y < v18)
  {
    v19 = 1;
  }

  if (!v19)
  {
    return 15;
  }

  v20 = y < v18 || y < x;
  v21 = 13;
  if (v20)
  {
    v21 = 9999;
  }

  if (y < x || !v20 || y >= v18)
  {
    return v21;
  }

  else
  {
    return 14;
  }
}

- (void)_sendButtonPressToDelegate:(int64_t)delegate
{
  [(TVRTouchProcessor *)self sendPressBegan:?];

  [(TVRTouchProcessor *)self sendPressEnded:delegate];
}

@end