@interface OKWidgetMapView
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKWidgetMapView

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKWidgetMapView;
  [(OKWidgetView *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKWidgetMapView;
  [(OKWidgetMapViewProxy *)&v2 dealloc];
}

@end