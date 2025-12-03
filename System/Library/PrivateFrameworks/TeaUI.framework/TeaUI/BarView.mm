@interface BarView
- (void)layoutSubviews;
@end

@implementation BarView

- (void)layoutSubviews
{
  selfCopy = self;
  BarView.layoutSubviews()();
}

@end