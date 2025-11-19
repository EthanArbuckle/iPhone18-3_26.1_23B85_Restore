@interface BarView
- (void)layoutSubviews;
@end

@implementation BarView

- (void)layoutSubviews
{
  v2 = self;
  BarView.layoutSubviews()();
}

@end