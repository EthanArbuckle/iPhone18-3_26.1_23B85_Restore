@interface OKPresentationViewProxy
- (void)commonInit;
- (void)dealloc;
- (void)handleAllGesture:(id)gesture;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation OKPresentationViewProxy

- (void)commonInit
{
  v4.receiver = self;
  v4.super_class = OKPresentationViewProxy;
  [(OFUIView *)&v4 commonInit];
  v3 = [[OKPresentationViewAllGestureRecognizer alloc] initWithTarget:self action:sel_handleAllGesture_];
  self->_allGestureRecognizer = v3;
  [(OKPresentationViewAllGestureRecognizer *)v3 setDelegate:self];
  [(OKPresentationViewAllGestureRecognizer *)self->_allGestureRecognizer setCancelsTouchesInView:0];
  [(OKPresentationViewProxy *)self setMultipleTouchEnabled:1];
  [(OKPresentationViewProxy *)self addGestureRecognizer:self->_allGestureRecognizer];
}

- (void)dealloc
{
  allGestureRecognizer = self->_allGestureRecognizer;
  if (allGestureRecognizer)
  {
    [-[OKPresentationViewAllGestureRecognizer view](allGestureRecognizer "view")];

    self->_allGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKPresentationViewProxy;
  [(OFUIView *)&v4 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OKPresentationViewProxy *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKPresentationViewProxy;
  [(OKPresentationViewProxy *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [-[OKPresentationViewProxy presentationViewController](self "presentationViewController")];
    [-[OKPresentationViewProxy presentationViewController](self "presentationViewController")];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(OKPresentationViewProxy *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = OKPresentationViewProxy;
  [(OKPresentationViewProxy *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [-[OKPresentationViewProxy presentationViewController](self "presentationViewController")];
    [-[OKPresentationViewProxy presentationViewController](self "presentationViewController")];
  }
}

- (void)handleAllGesture:(id)gesture
{
  state = [gesture state];
  if (state == 4 || state == 3)
  {
    presentationViewController = [(OKPresentationViewProxy *)self presentationViewController];

    [presentationViewController prepareCouchPotatoPlayback];
  }

  else if (state == 1)
  {
    presentationViewController2 = [(OKPresentationViewProxy *)self presentationViewController];

    [presentationViewController2 cancelCouchPotatoPlayback];
  }
}

@end