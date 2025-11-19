@interface GQDWebView
- (void)dealloc;
@end

@implementation GQDWebView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDWebView;
  [(GQDGraphic *)&v3 dealloc];
}

@end