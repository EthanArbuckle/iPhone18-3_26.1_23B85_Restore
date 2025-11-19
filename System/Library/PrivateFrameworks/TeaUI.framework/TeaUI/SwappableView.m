@interface SwappableView
- (void)layoutSubviews;
@end

@implementation SwappableView

- (void)layoutSubviews
{
  v2 = self;
  SwappableView.layoutSubviews()();
}

@end