@interface OKWidgetMicaView
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKWidgetMicaView

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKWidgetMicaView;
  [(OKWidgetView *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKWidgetMicaView;
  [(OKWidgetMicaViewProxy *)&v2 dealloc];
}

@end