@interface TSWPLongPressGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation TSWPLongPressGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = TSWPLongPressGestureRecognizer;
  [(TSWPLongPressGestureRecognizer *)&v6 touchesBegan:began withEvent:?];
  if ([objc_msgSend(event "allTouches")] >= 2)
  {
    [(TSWPLongPressGestureRecognizer *)self setState:5];
  }
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSWPLongPressGestureRecognizer;
  [(TSWPLongPressGestureRecognizer *)&v3 reset];
  [(TSWPLongPressGestureRecognizer *)self delegate];
  [TSUProtocolCast() didReset:self];
}

@end