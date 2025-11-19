@interface MRMarimbaLayerView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)marimbaInteractivityIsEnabled;
- (MRMarimbaLayerView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)pinch:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)tap:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation MRMarimbaLayerView

- (MRMarimbaLayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = MRMarimbaLayerView;
  [(MRMarimbaLayerView *)&v10 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  marimbaLayer = self->_marimbaLayer;
  if (marimbaLayer)
  {
    if (![(MRMarimbaLayer *)marimbaLayer renderer]|| ![(MRRenderer *)[(MRMarimbaLayer *)self->_marimbaLayer renderer] orientation])
    {
      v5 = [+[UIApplication sharedApplication](UIApplication statusBarOrientation];
      v6 = self->_marimbaLayer;
      [(MRMarimbaLayerView *)self bounds];
      v8 = v7;
      [(MRMarimbaLayerView *)self bounds];
      [(MRMarimbaLayer *)v6 beginMorphingToAspectRatio:v5 andOrientation:0 withDuration:v8 / v9 switchToDocument:0.0];
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

- (void)pinch:(id)a3
{
  if ([(MRMarimbaLayerView *)self marimbaInteractivityIsEnabled])
  {
    v5 = [(MRMarimbaLayerView *)self superview];

    [v5 pinchIn:a3];
  }
}

- (void)tap:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    v5 = [(MRMarimbaLayerView *)self superview];
    [a3 locationInView:self];

    [v5 marimbaWasSingleTappedAtPoint:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v5 = [-[MRMarimbaLayerView superview](self "superview")];
  if (self->_tapRecognizer != a3)
  {
    if (self->_pinchRecognizer == a3)
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

    else if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([a3 velocityInView:self], !-[MRRenderer canGoToMoreSlides:](-[MRMarimbaLayer renderer](self->_marimbaLayer, "renderer"), "canGoToMoreSlides:", v6 > 0.0)))
    {
      v10.receiver = self;
      v10.super_class = MRMarimbaLayerView;
      LOBYTE(v5) = [(MRMarimbaLayerView *)&v10 gestureRecognizerShouldBegin:a3];
      return v5;
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  if (v5)
  {
    v7 = [(MRMarimbaLayerView *)self superview];

    LOBYTE(v5) = [v7 wantsSingleTap];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    touchSet = self->_touchSet;
    if (touchSet)
    {
      v7 = [(MRTouchSet *)touchSet updateWithUITouches:a3 inView:self];
    }

    else
    {
      v8 = [[MRTouchSet alloc] initWithUITouches:a3 inView:self];
      self->_touchSet = v8;
      v7 = [(MRTouchSet *)v8 touches];
    }

    v9 = v7;
    marimbaLayer = self->_marimbaLayer;

    [(MRMarimbaLayer *)marimbaLayer touchesBegan:v9];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    v6 = [(MRTouchSet *)self->_touchSet updateWithUITouches:a3 inView:self];
    marimbaLayer = self->_marimbaLayer;

    [(MRMarimbaLayer *)marimbaLayer touchesMoved:v6];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    [(MRMarimbaLayer *)self->_marimbaLayer touchesCancelled:[(MRTouchSet *)self->_touchSet updateWithUITouches:a3 inView:self]];
    if (![(MRTouchSet *)self->_touchSet isActive])
    {

      self->_touchSet = 0;
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([-[MRMarimbaLayerView superview](self superview])
  {
    [(MRMarimbaLayer *)self->_marimbaLayer touchesEnded:[(MRTouchSet *)self->_touchSet updateWithUITouches:a3 inView:self]];
    if (![(MRTouchSet *)self->_touchSet isActive])
    {

      self->_touchSet = 0;
    }
  }
}

@end