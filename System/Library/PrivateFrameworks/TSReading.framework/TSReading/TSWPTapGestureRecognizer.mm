@interface TSWPTapGestureRecognizer
- (void)reset;
@end

@implementation TSWPTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = TSWPTapGestureRecognizer;
  [(TSWPTapGestureRecognizer *)&v3 reset];
  [(TSWPTapGestureRecognizer *)self delegate];
  [TSUProtocolCast() didReset:self];
}

@end