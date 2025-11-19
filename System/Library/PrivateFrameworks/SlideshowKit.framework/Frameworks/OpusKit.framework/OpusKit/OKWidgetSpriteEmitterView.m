@interface OKWidgetSpriteEmitterView
- (void)commonInit;
- (void)dealloc;
@end

@implementation OKWidgetSpriteEmitterView

- (void)commonInit
{
  v2.receiver = self;
  v2.super_class = OKWidgetSpriteEmitterView;
  [(OKWidgetView *)&v2 commonInit];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKWidgetSpriteEmitterView;
  [(OKWidgetSpriteEmitterViewProxy *)&v2 dealloc];
}

@end