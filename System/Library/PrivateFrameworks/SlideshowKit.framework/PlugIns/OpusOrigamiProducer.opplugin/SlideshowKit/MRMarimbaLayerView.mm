@interface MRMarimbaLayerView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)marimbaInteractivityIsEnabled;
- (MRMarimbaLayerView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)pinch:(id)pinch;
- (void)setFrame:(CGRect)frame;
- (void)tap:(id)tap;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation MRMarimbaLayerView

- (MRMarimbaLayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = MRMarimbaLayerView;
  v7 = [(MRMarimbaLayerView *)&v11 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(MRMarimbaLayerView *)v7 setOpaque:1];
    v9 = objc_alloc_init(MRMarimbaLayer);
    v8->_marimbaLayer = v9;
    [(MRMarimbaLayer *)v9 setOpaque:1];
    [-[MRMarimbaLayerView layer](v8 "layer")];
    [(MRMarimbaLayerView *)v8 setFrame:x, y, width, height];
  }

  return v8;
}

- (void)dealloc
{
  self->_marimbaLayer = 0;

  self->_pinchRecognizer = 0;
  self->_tapRecognizer = 0;
  v3.receiver = self;
  v3.super_class = MRMarimbaLayerView;
  [(MRMarimbaLayerView *)&v3 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = MRMarimbaLayerView;
  [(MRMarimbaLayerView *)&v10 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  marimbaLayer = self->_marimbaLayer;
  if (marimbaLayer)
  {
    if (![(MRMarimbaLayer *)marimbaLayer renderer]|| ![(MRRenderer *)[(MRMarimbaLayer *)self->_marimbaLayer renderer] orientation])
    {
      statusBarOrientation = [+[UIApplication sharedApplication](UIApplication statusBarOrientation];
      v6 = self->_marimbaLayer;
      [(MRMarimbaLayerView *)self bounds];
      v8 = v7;
      [(MRMarimbaLayerView *)self bounds];
      [(MRMarimbaLayer *)v6 beginMorphingToAspectRatio:statusBarOrientation andOrientation:0 withDuration:v8 / v9 switchToDocument:0.0];
      [(MRMarimbaLayer *)self->_marimbaLayer endMorphing];
    }

    [(MRMarimbaLayerView *)self bounds];
    [(MRMarimbaLayer *)self->_marimbaLayer setFrame:?];
  }
}

- (BOOL)marimbaInteractivityIsEnabled
{
  v3 = [-[MRMarimbaLayerView superview](self "superview")];
  if (v3)
  {
    marimbaLayer = self->_marimbaLayer;

    LOBYTE(v3) = [(MRMarimbaLayer *)marimbaLayer interactivityIsEnabled];
  }

  return v3;
}

- (void)pinch:(id)pinch
{
  if ([(MRMarimbaLayerView *)self marimbaInteractivityIsEnabled])
  {
    superview = [(MRMarimbaLayerView *)self superview];

    [superview pinchIn:pinch];
  }
}

- (void)tap:(id)tap
{
  if ([tap state] == &dword_0 + 3)
  {
    superview = [(MRMarimbaLayerView *)self superview];
    [tap locationInView:self];

    [superview marimbaWasSingleTappedAtPoint:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v5 = [-[MRMarimbaLayerView superview](self "superview")];
  if (self->_tapRecognizer != begin)
  {
    if (self->_pinchRecognizer == begin)
    {
      if (!v5)
      {
        return v5;
      }

      if (![(MRRenderer *)[(MRMarimbaLayer *)self->_marimbaLayer renderer] currentFocusedSlideAsset])
      {
        [(UIPinchGestureRecognizer *)self->_pinchRecognizer scale];
        LOBYTE(v5) = v8 < 1.0;
        return v5;
      }
    }

    else if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([begin velocityInView:self], !-[MRRenderer canGoToMoreSlides:](-[MRMarimbaLayer renderer](self->_marimbaLayer, "renderer"), "canGoToMoreSlides:", v6 > 0.0)))
    {
      v10.receiver = self;
      v10.super_class = MRMarimbaLayerView;
      LOBYTE(v5) = [(MRMarimbaLayerView *)&v10 gestureRecognizerShouldBegin:begin];
      return v5;
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  if (v5)
  {
    superview = [(MRMarimbaLayerView *)self superview];

    LOBYTE(v5) = [superview wantsSingleTap];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    touchSet = self->_touchSet;
    if (touchSet)
    {
      touches = [(MRTouchSet *)touchSet updateWithUITouches:began inView:self];
    }

    else
    {
      v8 = [[MRTouchSet alloc] initWithUITouches:began inView:self];
      self->_touchSet = v8;
      touches = [(MRTouchSet *)v8 touches];
    }

    v9 = touches;
    marimbaLayer = self->_marimbaLayer;

    [(MRMarimbaLayer *)marimbaLayer touchesBegan:v9];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    v6 = [(MRTouchSet *)self->_touchSet updateWithUITouches:moved inView:self];
    marimbaLayer = self->_marimbaLayer;

    [(MRMarimbaLayer *)marimbaLayer touchesMoved:v6];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    [(MRMarimbaLayer *)self->_marimbaLayer touchesCancelled:[(MRTouchSet *)self->_touchSet updateWithUITouches:cancelled inView:self]];
    if (![(MRTouchSet *)self->_touchSet isActive])
    {

      self->_touchSet = 0;
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    [(MRMarimbaLayer *)self->_marimbaLayer touchesEnded:[(MRTouchSet *)self->_touchSet updateWithUITouches:ended inView:self]];
    if (![(MRTouchSet *)self->_touchSet isActive])
    {

      self->_touchSet = 0;
    }
  }
}

@end