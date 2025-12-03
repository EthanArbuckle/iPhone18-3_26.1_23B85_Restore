@interface SwappableView
- (void)layoutSubviews;
@end

@implementation SwappableView

- (void)layoutSubviews
{
  selfCopy = self;
  SwappableView.layoutSubviews()();
}

@end