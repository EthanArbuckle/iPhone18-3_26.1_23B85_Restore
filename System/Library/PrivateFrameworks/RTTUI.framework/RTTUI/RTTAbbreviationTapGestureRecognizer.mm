@interface RTTAbbreviationTapGestureRecognizer
- (RTTUIAbbreviationView)abbrevationView;
- (void)ignoreTouch:(id)touch forEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation RTTAbbreviationTapGestureRecognizer

- (void)ignoreTouch:(id)touch forEvent:(id)event
{
  v4 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView:touch];
  [v4 setHighlighted:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = RTTAbbreviationTapGestureRecognizer;
  [(RTTAbbreviationTapGestureRecognizer *)&v6 touchesBegan:began withEvent:event];
  abbrevationView = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
  [abbrevationView setHighlighted:1];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = RTTAbbreviationTapGestureRecognizer;
  [(RTTAbbreviationTapGestureRecognizer *)&v6 touchesEnded:ended withEvent:event];
  abbrevationView = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
  [abbrevationView setHighlighted:0];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = RTTAbbreviationTapGestureRecognizer;
  movedCopy = moved;
  [(RTTAbbreviationTapGestureRecognizer *)&v12 touchesMoved:movedCopy withEvent:event];
  anyObject = [movedCopy anyObject];

  view = [anyObject view];
  superview = [view superview];
  abbrevationView = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];

  if (superview != abbrevationView)
  {
    abbrevationView2 = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
    [abbrevationView2 setHighlighted:0];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = RTTAbbreviationTapGestureRecognizer;
  [(RTTAbbreviationTapGestureRecognizer *)&v6 touchesCancelled:cancelled withEvent:event];
  abbrevationView = [(RTTAbbreviationTapGestureRecognizer *)self abbrevationView];
  [abbrevationView setHighlighted:0];
}

- (RTTUIAbbreviationView)abbrevationView
{
  WeakRetained = objc_loadWeakRetained(&self->_abbrevationView);

  return WeakRetained;
}

@end