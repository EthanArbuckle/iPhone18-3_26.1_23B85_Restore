@interface OKPresentationViewAllGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation OKPresentationViewAllGestureRecognizer

- (void)reset
{
  v2.receiver = self;
  v2.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v2 reset];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  if (![(OKPresentationViewAllGestureRecognizer *)self state])
  {
    [(OKPresentationViewAllGestureRecognizer *)self setState:1];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  if (![(OKPresentationViewAllGestureRecognizer *)self state])
  {
    [(OKPresentationViewAllGestureRecognizer *)self setState:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v6 touchesEnded:ended withEvent:event];
  if ([(OKPresentationViewAllGestureRecognizer *)self state])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(OKPresentationViewAllGestureRecognizer *)self setState:v5];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v6 touchesCancelled:cancelled withEvent:event];
  if ([(OKPresentationViewAllGestureRecognizer *)self state])
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(OKPresentationViewAllGestureRecognizer *)self setState:v5];
}

@end