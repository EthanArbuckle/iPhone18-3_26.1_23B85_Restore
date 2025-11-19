@interface RTTAbbreviationTapGestureRecognizer
- (RTTUIAbbreviationView)abbrevationView;
- (void)ignoreTouch:(id)a3 forEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation RTTAbbreviationTapGestureRecognizer

- (void)ignoreTouch:(id)a3 forEvent:(id)a4
{
  v4 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView:a3];
  [v4 setHighlighted:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = RTTAbbreviationTapGestureRecognizer;
  [(RTTAbbreviationTapGestureRecognizer *)&v6 touchesBegan:a3 withEvent:a4];
  v5 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
  [v5 setHighlighted:1];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = RTTAbbreviationTapGestureRecognizer;
  [(RTTAbbreviationTapGestureRecognizer *)&v6 touchesEnded:a3 withEvent:a4];
  v5 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
  [v5 setHighlighted:0];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = RTTAbbreviationTapGestureRecognizer;
  v6 = a3;
  [(RTTAbbreviationTapGestureRecognizer *)&v12 touchesMoved:v6 withEvent:a4];
  v7 = [v6 anyObject];

  v8 = [v7 view];
  v9 = [v8 superview];
  v10 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];

  if (v9 != v10)
  {
    v11 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
    [v11 setHighlighted:0];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = RTTAbbreviationTapGestureRecognizer;
  [(RTTAbbreviationTapGestureRecognizer *)&v6 touchesCancelled:a3 withEvent:a4];
  v5 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
  [v5 setHighlighted:0];
}

- (RTTUIAbbreviationView)abbrevationView
{
  WeakRetained = objc_loadWeakRetained(&self->_abbrevationView);

  return WeakRetained;
}

@end