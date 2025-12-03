@interface NCSecondaryClickGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation NCSecondaryClickGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = NCSecondaryClickGestureRecognizer;
  eventCopy = event;
  [(NCSecondaryClickGestureRecognizer *)&v8 touchesBegan:began withEvent:eventCopy];
  LODWORD(began) = [(NCSecondaryClickGestureRecognizer *)self isSecondaryClickEvent:eventCopy, v8.receiver, v8.super_class];

  if (began)
  {
    v7 = 1;
  }

  else
  {
    v7 = 5;
  }

  [(NCSecondaryClickGestureRecognizer *)self setState:v7];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = NCSecondaryClickGestureRecognizer;
  eventCopy = event;
  [(NCSecondaryClickGestureRecognizer *)&v7 touchesEnded:ended withEvent:eventCopy];
  LODWORD(ended) = [(NCSecondaryClickGestureRecognizer *)self isSecondaryClickEvent:eventCopy, v7.receiver, v7.super_class];

  if (ended)
  {
    [(NCSecondaryClickGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = NCSecondaryClickGestureRecognizer;
  eventCopy = event;
  [(NCSecondaryClickGestureRecognizer *)&v7 touchesCancelled:cancelled withEvent:eventCopy];
  LODWORD(cancelled) = [(NCSecondaryClickGestureRecognizer *)self isSecondaryClickEvent:eventCopy, v7.receiver, v7.super_class];

  if (cancelled)
  {
    [(NCSecondaryClickGestureRecognizer *)self setState:4];
  }
}

@end