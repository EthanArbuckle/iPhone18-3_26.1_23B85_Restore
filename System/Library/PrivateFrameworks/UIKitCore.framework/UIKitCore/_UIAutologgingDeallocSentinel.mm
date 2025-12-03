@interface _UIAutologgingDeallocSentinel
- (void)dealloc;
@end

@implementation _UIAutologgingDeallocSentinel

- (void)dealloc
{
  if (![(_UIAutologgingDeallocSentinel *)self called])
  {
    message = [(_UIAutologgingDeallocSentinel *)self message];
    NSLog(&stru_1EFB25450.isa, message);
  }

  v4.receiver = self;
  v4.super_class = _UIAutologgingDeallocSentinel;
  [(_UIAutologgingDeallocSentinel *)&v4 dealloc];
}

@end