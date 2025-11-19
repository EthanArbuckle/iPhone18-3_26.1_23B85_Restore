@interface OKPresentationViewAllGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation OKPresentationViewAllGestureRecognizer

- (void)reset
{
  v2.receiver = self;
  v2.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v2 reset];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  if (![(OKPresentationViewAllGestureRecognizer *)self state])
  {
    [(OKPresentationViewAllGestureRecognizer *)self setState:1];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  if (![(OKPresentationViewAllGestureRecognizer *)self state])
  {
    [(OKPresentationViewAllGestureRecognizer *)self setState:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v6 touchesEnded:a3 withEvent:a4];
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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = OKPresentationViewAllGestureRecognizer;
  [(OKPresentationViewAllGestureRecognizer *)&v6 touchesCancelled:a3 withEvent:a4];
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