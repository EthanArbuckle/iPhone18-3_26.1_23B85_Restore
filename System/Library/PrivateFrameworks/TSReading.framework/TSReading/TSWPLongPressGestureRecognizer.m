@interface TSWPLongPressGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TSWPLongPressGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSWPLongPressGestureRecognizer;
  [(TSWPLongPressGestureRecognizer *)&v6 touchesBegan:a3 withEvent:?];
  if ([objc_msgSend(a4 "allTouches")] >= 2)
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