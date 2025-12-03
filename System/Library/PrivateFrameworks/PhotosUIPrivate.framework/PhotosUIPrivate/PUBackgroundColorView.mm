@interface PUBackgroundColorView
- (void)_puSetBackgroundColor:(id)color;
@end

@implementation PUBackgroundColorView

- (void)_puSetBackgroundColor:(id)color
{
  v3.receiver = self;
  v3.super_class = PUBackgroundColorView;
  [(PUBackgroundColorView *)&v3 setBackgroundColor:color];
}

@end