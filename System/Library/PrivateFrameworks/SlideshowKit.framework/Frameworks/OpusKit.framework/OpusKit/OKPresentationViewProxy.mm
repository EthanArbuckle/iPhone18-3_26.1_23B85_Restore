@interface OKPresentationViewProxy
- (void)commonInit;
- (void)dealloc;
- (void)handleAllGesture:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)handleAllGesture:(id)a3
{
  v4 = [a3 state];
  if (v4 == 4 || v4 == 3)
  {
    v6 = [(OKPresentationViewProxy *)self presentationViewController];

    [v6 prepareCouchPotatoPlayback];
  }

  else if (v4 == 1)
  {
    v5 = [(OKPresentationViewProxy *)self presentationViewController];

    [v5 cancelCouchPotatoPlayback];
  }
}

@end