@interface TVRMatchPointTouchProcessor
- (id)_artworkView;
- (int64_t)_pressTypeForLocationInTouchpadView:(CGPoint)a3;
- (void)_handleTap:(id)a3;
- (void)_sendButtonPressToDelegate:(int64_t)a3;
- (void)setTouchpadView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation TVRMatchPointTouchProcessor

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(TVRTouchProcessor *)self touchpadView];
  v7 = [v6 haptic];
  [v7 userInteractionBegan];

  v8 = [v5 anyObject];

  v9 = [(TVRTouchProcessor *)self touchpadView];
  [v8 locationInView:v9];
  v11 = v10;
  v13 = v12;

  v14 = [(TVRMatchPointTouchProcessor *)self _pressTypeForLocationInTouchpadView:v11, v13];
  self->_highlightedButtonType = v14;
  artworkView = self->_artworkView;

  [(_TVRMatchPointArtworkView *)artworkView highlightForButtonType:v14 enabled:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(TVRTouchProcessor *)self touchpadView:a3];
  v6 = [v5 haptic];
  [v6 userInteractionEnded];

  artworkView = self->_artworkView;
  highlightedButtonType = self->_highlightedButtonType;

  [(_TVRMatchPointArtworkView *)artworkView highlightForButtonType:highlightedButtonType enabled:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [(TVRTouchProcessor *)self touchpadView:a3];
  v6 = [v5 haptic];
  [v6 userInteractionCancelled];

  artworkView = self->_artworkView;
  highlightedButtonType = self->_highlightedButtonType;

  [(_TVRMatchPointArtworkView *)artworkView highlightForButtonType:highlightedButtonType enabled:0];
}

- (void)setTouchpadView:(id)a3
{
  v4 = a3;
  if (self->_tapGesture)
  {
    v5 = [(TVRTouchProcessor *)self touchpadView];
    [v5 removeGestureRecognizer:self->_tapGesture];
  }

  [(_TVRMatchPointArtworkView *)self->_artworkView removeFromSuperview];
  v11.receiver = self;
  v11.super_class = TVRMatchPointTouchProcessor;
  [(TVRTouchProcessor *)&v11 setTouchpadView:v4];
  tapGesture = self->_tapGesture;
  if (!tapGesture)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    v8 = self->_tapGesture;
    self->_tapGesture = v7;

    tapGesture = self->_tapGesture;
  }

  [v4 addGestureRecognizer:tapGesture];
  v9 = [TVRButtonHaptic hapticForView:v4];
  [v4 setHaptic:v9];

  v10 = [(TVRMatchPointTouchProcessor *)self _artworkView];
  [v4 bounds];
  [v10 setFrame:?];
  [v4 addSubview:v10];
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

- (void)_handleTap:(id)a3
{
  v10 = a3;
  if ([v10 state] == 3)
  {
    v4 = [(TVRTouchProcessor *)self touchpadView];
    [v10 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(TVRMatchPointTouchProcessor *)self _pressTypeForLocationInTouchpadView:v6, v8];
    if (v9 != 9999)
    {
      [(TVRMatchPointTouchProcessor *)self _sendButtonPressToDelegate:v9];
    }
  }
}

- (int64_t)_pressTypeForLocationInTouchpadView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  artworkView = self->_artworkView;
  v7 = [(TVRTouchProcessor *)self touchpadView];
  [v7 convertPoint:self->_artworkView toView:{x, y}];
  LOBYTE(artworkView) = [(_TVRMatchPointArtworkView *)artworkView touchLocationIsConsideredCenter:?];

  if (artworkView)
  {
    return 1;
  }

  v9 = [(TVRTouchProcessor *)self touchpadView];
  [v9 bounds];
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

- (void)_sendButtonPressToDelegate:(int64_t)a3
{
  [(TVRTouchProcessor *)self sendPressBegan:?];

  [(TVRTouchProcessor *)self sendPressEnded:a3];
}

@end