@interface UISegmentedControlPointerHighlightEffect
- (unint64_t)options;
@end

@implementation UISegmentedControlPointerHighlightEffect

- (unint64_t)options
{
  v3.receiver = self;
  v3.super_class = UISegmentedControlPointerHighlightEffect;
  return [(UIPointerHighlightEffect *)&v3 options]& 0xFFFFFFFFFFFFFEFFLL;
}

@end