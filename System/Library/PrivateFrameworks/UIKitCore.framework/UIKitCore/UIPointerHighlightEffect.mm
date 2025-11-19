@interface UIPointerHighlightEffect
- (unint64_t)options;
@end

@implementation UIPointerHighlightEffect

- (unint64_t)options
{
  if (_UIPlasmaEnabled())
  {
    return 67873;
  }

  else
  {
    return 288;
  }
}

@end